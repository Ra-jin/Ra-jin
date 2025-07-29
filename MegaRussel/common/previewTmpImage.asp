<%@Language=Vbscript%>
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel_yj/apply/jaejung/inc_apply.asp" -->
<!--METADATA TYPE= "typelib"  NAME= "ADODB Type Library" FILE="C:\Program Files\Common Files\SYSTEM\ADO\msado15.dll"  -->
<%
formFilter() ' SQL 인젝션 문자열 필터링

Response.Buffer = True
Server.ScriptTimeout = 1000

Dim fileFullPath, realFileName, filepath
fileFullPath = gPhotoSaveTmpUrl & Request("pFileName")
filepath = Server.MapPath(fileFullPath)

If Not gLoginOk Then
	ScriptBegin
	ScriptWrite "alert('로그인 후 이용하실 수 있습니다.');"
	ScriptWrite "history.back();"
	ScriptEnd
	Response.End
End If

Dim fs : Set fs = Server.CreateObject("Scripting.FileSystemObject")
If Not fs.FileExists(filepath) Then
	Response.Write "파일이 존재하지 않습니다."
	Response.End
End If

' 확장자 체크
arrServerFileName = Split(fileFullPath, ".")
file_ext_lower = Trim(LCase(arrServerFileName(UBound(arrServerFileName))))

If file_ext_lower = "asp" Or file_ext_lower = "inc" Or file_ext_lower = "asa" Or file_ext_lower = "js" Or file_ext_lower = "" Then
	Response.End
End If

Set objStream = Server.CreateObject("ADODB.Stream")
objStream.Type = 1 ' Binary
objStream.Open
objStream.LoadFromFile filePath

' MIME 타입 설정 함수
Function GetMimeType(file_ext_lower)
	Select Case ext
		Case "jpg", "jpeg": GetMimeType = "image/jpeg"
'		Case "png": GetMimeType = "image/png"
'		Case "gif": GetMimeType = "image/gif"
'		Case "bmp": GetMimeType = "image/bmp"
'		Case "pdf": GetMimeType = "application/pdf"
'		Case Else: GetMimeType = "application/octet-stream"
	End Select
End Function
Response.ContentType = GetMimeType(ext) ' 또는 동적으로 확장자 확인
Response.BinaryWrite objStream.Read
objStream.Close
Set objStream = Nothing

' 최종 응답
'Response.ContentType = "text/plain"
'Response.Write "data:" & GetMimeType(file_ext_lower) & ";base64," & base64Str
%>
