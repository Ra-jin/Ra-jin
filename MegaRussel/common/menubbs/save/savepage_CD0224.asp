<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
'#############################################
' 통합게시판 CD0224(학습자료실) 세이브처리 수행
'---------------------------------------------
' redirect 경로를 함께 전달받아, 작업수행 후 해당 경로로 redirect한다
'#############################################
Call formFilter() ' SQL 인젝션 문자열 필터링

Dim oDext
Dim sDefaultPath : sDefaultPath = "/Data/"
Dim sFileSaveFolder
Dim sMemberId
Dim aTmp
Set oDext = Server.CreateObject("DEXT.FileUpload")

oDext.AutoMakeFolder = True
oDext.DefaultPath = Server.MapPath(sDefaultPath)

'학습자료실 첨부파일폴더
sFileSaveFolder = sDefaultPath & "iBoard/attach/"

'Request값 변수답기
Dim rFlag, rCode, rTitle, rClassGubun, rSubjectGubun, rContents, rDeleteFile, rRenameFile, rBBSGubun, rRedirect

rFlag         = oDext("flag")
rCode         = oDext("code")
rTitle        = oDext("title")
rClassGubun   = oDext("classgubun")
rContents     = oDext("contents")
rSubjectGubun = oDext("subjectgubun")
rDeleteFile   = oDext("deletefiles")
rRenameFile   = oDext("renamefiles")
rRedirect     = oDext("redirect")
sMemberId     = GetLoginCookie("MemId")
rBBSGubun     = "CD0224" '학습자료실 게시판 구분코드

'If GetLoginCookie("MemId") = "" Then
'	Response.Write "로그인 필요합니다"
'End If



'Response.End

'각flag에 맞게 처리 시작
Dim sSql, sFilePath, sFileName, sFileLen, aTmpRen
Dim nMaxSize, sEnableExt
If rFlag = "modify" Then '수정
	Call objDb.begin()
	'--내용수정
	sSql = ""
	sSql = sSql & vbCrlf & "UPDATE MG_BBS SET CONTENTS_PC = '" & SafeQuery(rContents) & "'"
	sSql = sSql & vbCrlf & "                 ,CLASS_GUBUN = '" & SafeQuery(rClassGubun) & "'"
	sSql = sSql & vbCrlf & "                 ,SUBJECT_GUBUN = '" & SafeQuery(rSubjectGubun) & "'"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(rCode)
	sSql = sSql & vbCrlf & "AND    REG_ID = '" & SafeQuery(sMemberId) & "'"
	'topre sSql
	'Response.End
	Call objDb.sqlExecute(sSql)
	
	'--. 첨부파일 처리를 한다
	nMaxSize = 1024 * 1024 * 15 '15M사이즈
	sEnableExt = "ppt,pptx,xls,xlsx,doc,docx,hwp,pdf,jpg,gif,png,zip"
	
	If HandleAttachFile(rCode, "", oDext("uploadfile"), oDext("renamefile"), rDeleteFile, sFileSaveFolder, nMaxSize, sEnableExt) = False Then
		Call objDb.rollback()
		js_back("")
		Response.End
	End IF
	Call objDb.trans("")
	
	
	
Elseif rFlag = "delete" Then '삭제
	sSql = ""
	sSql = sSql & vbCrlf & "UPDATE MG_BBS SET USE_VIEW = 'N'"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(rCode)
	sSql = sSql & vbCrlf & "AND    REG_ID = '" & SafeQuery(GetLoginCookie("MemId")) & "'"
	Call objDb.sqlExecute(sSql)
	
	
	
End If

'경로를 전달받지 못한경우
If rRedirect = "" Then
	sMsg = ""
	If IsDevSvr() = True Then '개발서버에서만 경고메세지 출력
		sMsg = "redirect 경로를 전달받지 못하여, 메인페이지로 이동합니다."
	End If
	Call js_redirect(GetCampusDirDetail("/" & Request.Cookies("_CAMPUS_CODE_DETAIL_")), sMsg)
End If
Call Redirect(rRedirect)







'----------------------------------------------------------------------------
' 첨부파일 핸들링 - /admin/campus/campus_bbs_save.asp 파일에 정의되어있는 함수를 그대로 이용
'----------------------------------------------------------------------------
' sBBSCode              : 게시물번호
' oUploadFile           : 첨부파일 업로드객체
' sRenameFileSting      : 변경할 파일명 스트링(,구분)
' sDeleteFileCodeString : 삭제할 첨부파일코드 스트링(,구분)
' sSaveFolder           : 저장대상 폴더
' nMaxSize              : 최대허용 크기(0 = 없음)
' sExtFilter            : 업로드허용 확장자(,구분)
'----------------------------------------------------------------------------
Function HandleAttachFile(sBBSCode, sSessionCode, oUploadFile, sRenameFileString, sDeleteFileCodeString, sSaveFolder, nMaxSize, sExtFilter)
	Dim sUploadedFilePath, sDeleteFilePath, sUploadedFilePathString, nFileCount
	Dim sFileName, nFileSize, sFilePath
	Dim sSql
	Dim aTmp, i, bOk, aTmpRen

	
	HandleAttachFile = True
	aTmpRen = Split(sRenameFileString, ",")
	
	'0-1. 업로드가능한 파일 최대크기 지정되면 일단 체크부터
	If CDbl(nMaxSize) > 0 Then '너무큰 수 입력시 오버플로 발생가능성 존재
		If oUploadFile.Count > 0 Then
			For i = 1 To oUploadFile.Count
				If oUploadFile(i).FileName <> "" Then
					If oUploadFile(i).FileLen > nMaxSize Then
						js_back("파일이 너무 큽니다.\n최대 " & CalcByte(nMaxSize, False) & " 제한.")
						HandleAttachFile = False
						Exit Function
					End If
				End If
			Next
		End If
	End If
	
	'0-2. 확장자 필터링
	If sExtFilter <> "" Then
		If oUploadFile.Count > 0 Then
			bOk = True
			For i = 1 To oUploadFile.Count
				If oUploadFile(i).FileName <> "" Then
					If HasValue(oUploadFile(i).FileExtension, sExtFilter, ",", True) = False Then 'method.asp 에 정의된 함수
						bOk = False
						Exit For
					End If
				End If
			Next
			
			If bOk = False Then '허용된 확장자가 아닌경우
				js_back("허용되지 않은 확장자의 파일이 등록되었습니다.\n`" & sExtFilter & "` 파일만 등록 가능합니다")
				HandleAttachFile = False
				Exit Function
			End If
		End If
	End If
	
	
	'1. 업로드할파일 처리
	sUploadedFilePathString = ""
	If oUploadFile.Count > 0 Then
		'1-1. 업로드 & DB저장처리
		For i = 1 To oUploadFile.Count
			If oUploadFile(i).FileName <> "" Then
				sFileName = oUploadFile(i).FileName
				nFileSize = oUploadFile(i).FileLen
				sUploadedFilePath = DextFileUpload(oUploadFile(i), sSaveFolder)

				If UBound(aTmpRen) >= i Then 'rename배열이 넘어와야한다(다중업로드ActiveX 사용시 rename스트링을 전달하지 못하기 때문에 처리)
					If Trim(aTmpRen(i)) <> "" Then
						sFileName = Trim(aTmpRen(i))
					End If
				End If
				
				sSql = ""
				sSql = sSql & vbCrlf & "DECLARE @BBS_CODE INT"
				sSql = sSql & vbCrlf & "       ,@SESSION_CODE VARCHAR(100)"
				sSql = sSql & vbCrlf & ""
				sSql = sSql & vbCrlf & "SET @BBS_CODE     = " & CNull(SafeQuery(sBBSCode), "NULL", False)
				sSql = sSql & vbCrlf & "SET @SESSION_CODE = " & CNull(SafeQuery(sSessionCode), "", True)
				sSql = sSql & vbCrlf & ""
				sSql = sSql & vbCrlf & "INSERT INTO MG_BBS_ATTACH ([BBS_CODE], [SESSION_CODE], [FILENAME], [FILEPATH], [FILESIZE], [SEQ], [REGDATE])"
				sSql = sSql & vbCrlf & "SELECT @BBS_CODE AS [BBS_CODE]"
				sSql = sSql & vbCrlf & "      ,@SESSION_CODE AS SESSION_CODE"
				sSql = sSql & vbCrlf & "      ,N'" & SafeQuery(sFileName) & "' AS [FILENAME]"
				sSql = sSql & vbCrlf & "      ,N'" & SafeQuery(sUploadedFilePath) & "'  AS [FILEPATH]"
				sSql = sSql & vbCrlf & "      ," & SafeQuery(nFileSize) & "   AS [FILESIZE]"
				sSql = sSql & vbCrlf & "      ,CASE WHEN @BBS_CODE IS NULL THEN (SELECT ISNULL(MAX(SEQ), 0) + 1"
				sSql = sSql & vbCrlf & "                                         FROM   MG_BBS_ATTACH"
				sSql = sSql & vbCrlf & "                                         WHERE  SESSION_CODE = @SESSION_CODE)"
				sSql = sSql & vbCrlf & "            ELSE (SELECT ISNULL(MAX(SEQ), 0) + 1"
				sSql = sSql & vbCrlf & "                  FROM   MG_BBS_ATTACH"
				sSql = sSql & vbCrlf & "                  WHERE  BBS_CODE = @BBS_CODE)"
				sSql = sSql & vbCrlf & "       END AS [SEQ]"
				sSql = sSql & vbCrlf & "      ,GETDATE()                    AS [REGDATE]"
				Call objDb.sqlExecute(sSql)
				
				If sUploadedFilePathString <> "" Then
					sUploadedFilePathString = sUploadedFilePathString & ","
				End If
				sUploadedFilePathString = sUploadedFilePathString & sFileRealPath
			End If
		Next 'oUploadFile.Count - end
		
		'1-2. 저장된 파일들 중 암호화된파일이 있는지 검사한다.
		If sUploadedFilePathString <> "" Then
			aTmp = Split(sUploadedFilePathString, ",")
			bOk = True
			For i = 0 To UBound(aTmp)
				If SecurityFileOk(aTmp(i)) = "Y" Then '단하나라도 암호화된파일이 존재하면 실패
					bOk = False
					Exit For
				End IF
			Next
			
			'실패한경우 모두삭제하고 False값 리턴
			If bOk = False Then
				For i = 0 To UBound(aTmp)
					fileDelete(aTmp(i))
				Next
				'objDb.rollback()
				js_back("첨부된 파일중 암호화된 파일이 존재합니다.\n암호해제 후 다시 업로드 해주세요.")
				HandleAttachFile = False
				Exit Function
			End If
		End If
	End If
	
	'2. 삭제할 첨부파일이 있는지 체크후 삭제한다(첨부파일 코드를 , 구분자로 넘긴다)
	sDeleteFilePath = ""
	If sDeleteFileCodeString <> "" Then
		'2-1 DB삭제처리
		aTmp = Split(sDeleteFileCodeString, ",")
		For i = 0 To UBound(aTmp)
			If Trim(aTmp(i)) <> "" Then
				sSql = ""
				sSql = sSql & vbCrlf & "SET NOCOUNT ON"
				sSql = sSql & vbCrlf & "SELECT FILEPATH FROM MG_BBS_ATTACH WHERE CODE = " & SafeQuery(aTmp(i))
				sSql = sSql & vbCrlf & "DELETE FROM MG_BBS_ATTACH WHERE CODE = " & SafeQuery(aTmp(i))
				sSql = sSql & vbCrlf & "SET NOCOUNT OFF"
				Set oRs = objDb.sqlQueryNew(sSql, 1)
				If Not oRs.EOF Then
					'println aTmp(i) & " 삭제함"
					If sDeleteFilePath <> "" Then
						sDeleteFilePath = sDeleteFilePath & ","
					End IF
					sDeleteFilePath = sDeleteFilePath & oRs("FILEPATH")
				End If
				oRs.Close
				Set oRs = Nothing
			End If
		Next
				
		'2-2 실제 파일삭제처리
		aTmp = Split(sDeleteFilePath, ",")
		For i = 0 To UBound(aTmp)
			fileDelete(aTmp(i))
		Next
	End If
	
End Function


%>
