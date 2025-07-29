<!-- #include virtual="/campus_common/mem_pds/inc_mem_pds.asp" -->
<!-- #include virtual="/Public/class.Page.asp" -->
<!-- #include virtual="/admin/campus/lib/bbs.asp" -->
<%
'##################################################################################
' 메뉴설정 게시판 페이지
'----------------------------------------------------------------------------------
' !! /library/include/common/sub_menu.asp 파일에서 정의되는 변수들 !!
' !! /Public/class.Page.asp 파일이 함께 인클루드 되어있어야 함
' gMenuBBSNaviCode  : 현재메뉴에 해당하는 메뉴코드
' gMenuBBSGubunCode : 현재메뉴에 해당하는 게시판유형코드
' gMenuBBSName      : 현재메뉴에 해당하는 메뉴명
' gMenuBBSPageDesc  : 현재메뉴에 해당하는 페이지설명
'##################################################################################

Function GetCheckTeacherDetail(sCampusCode, sMemberId) 
	Dim sRv : sRv = ""

	If ValueCheck(sMemberId) = True Then 
		strSql = ""
		strSql = strSql & " SELECT DISTINCT tc_class "
		strSql = strSql & " FROM MG_Teacher (NOLOCK) A "
		strSql = strSql & " 	INNER JOIN MG_Teacher_Sub (NOLOCK) B ON A.code = B.tc_code "
		strSql = strSql & " 	INNER JOIN MG_MEMBER (NOLOCK) C ON A.tc_id = C.uId "
		strSql = strSql & " WHERE tc_ccode_detail = '"&sCampusCode&"' AND ts_pds_ok = 'Y' AND A.tc_id = '" & sMemberId & "' "
		set objRs = objDB.sqlQuery(strSql,1)
		sRv = "0"
		If not (objRs.bof and objRs.eof) then
			While Not objRs.EoF 
				sRv = sRv & "," & GetTeacherClsSwap(Trim(objRs(0)))
				objRs.MoveNext()
			Wend 
		end if
		objRs.close
		set objRs = Nothing
	End If 

	GetCheckTeacherDetail = sRv
End Function 


Function GetTeacherAreaDetail(sCampusCodeDetail, sMemberId) 
	Dim sRv : sRv = ""

	If ValueCheck(sMemberId) = True Then 
		strSql = ""
		strSql = strSql & " SELECT DISTINCT tc_area "
		strSql = strSql & " FROM MG_Teacher (NOLOCK) A "
		strSql = strSql & " 	INNER JOIN MG_Teacher_Sub (NOLOCK) B ON A.code = B.tc_code"
		strSql = strSql & " 	INNER JOIN MG_MEMBER (NOLOCK) C ON A.tc_id = C.uId "
		strSql = strSql & " WHERE tc_ccode_detail = '" & sCampusCodeDetail & "' AND ts_pds_ok = 'Y' AND A.tc_id = '" & sMemberId & "' "
		set objRs = objDB.sqlQuery(strSql,1)
		sRv = "0"
		If not (objRs.bof and objRs.eof) then
			While Not objRs.EoF 
				sRv = sRv & "," & Trim(objRs(0))
				objRs.MoveNext()
			Wend 
		end if
		objRs.close
		set objRs = Nothing
	End If 
	

	GetTeacherAreaDetail = sRv
End Function

Function GetCurrParam(oDic)
	GetCurrParam = ""
	GetCurrParam = GetCurrParam & "curPage=" & Server.URLEncode(oDic("curPage"))
	GetCurrParam = GetCurrParam & "&searchword=" & Server.URLEncode(oDic("searchword"))
	GetCurrParam = GetCurrParam & "&searchtype=" & Server.URLEncode(oDic("searchtype"))
	GetCurrParam = GetCurrParam & "&classgubun=" & Server.URLEncode(oDic("classgubun"))
	GetCurrParam = GetCurrParam & "&subjectgubun=" & Server.URLEncode(oDic("subjectgubun"))
End Function







'#############################################################################################################################
' 리스트 관련함수 시작
'#############################################################################################################################
Sub MenuBBSDrawPage_List(sNaviCode, sBBSGubun, bUseHot, nCurPage, nCountPerPage, nPagePerBlock, bUseSearch, sListPage, sViewPage, sWritepage, ByRef oRequestDic)
	Select Case CStr(sBBSGubun)
		Case "CD0222" '공지사항
			Call MenuBBSDrawPage_List_CD0222(sNaviCode, bUseHot, nCurPage, nCountPerPage, nPagePerBlock, bUseSearch, sListPage, sViewPage, sWritepage, oRequestDic)
		Case "CD0223" '캠퍼스생활
			Call MenuBBSDrawPage_List_CD0223(sNaviCode, bUseHot, nCurPage, nCountPerPage, nPagePerBlock, bUseSearch, sListPage, sViewPage, sWritepage, oRequestDic)
		Case "CD0224" '학습자료실
			Call MenuBBSDrawPage_List_CD0224(sNaviCode, bUseHot, nCurPage, nCountPerPage, nPagePerBlock, bUseSearch, sListPage, sViewPage, sWritepage, oRequestDic)
	End Select
End Sub

'**** 공지사항 리스트
Sub MenuBBSDrawPage_List_CD0222(sNaviCode, bUseHot, nCurPage, nCountPerPage, nPagePerblock, bUseSearch, sListPage, sViewPage, sWritepage, ByRef oDic)
	Dim nTotalCount
	Dim sSql, sWhere, oRs
	
	If valuecheck(oDic("curPage")) = False Or IsNumeric(oDic("curPage")) = False Then
		oDic("curPage") = "1"
	End If

	
	'**** 검색 옵션스트링 생성
	Dim arrSearchTypeName, arrSearchTypeValue
	Dim sSearchTypeOptionHTML
	arrSearchTypeName = Array("제목", "내용")
	arrSearchTypeValue = Array("S", "C")
	sSearchTypeOptionHTML = CreateOptionString(arrSearchTypeName, arrSearchTypeValue, oDic("searchtype"), "제목 + 내용")
	
	'**** 반분류 HTML생성
	Dim arrClassGubunName(), arrClassGubunValue()
	Dim sClassGubunOptionHTML
	sSql = ""
	sSql = sSql & vbCrlf & "SELECT CODE, NAME"
	sSql = sSql & vbCrlf & "FROM   MG_CODE_SUB(NOLOCK)"
	sSql = sSql & vbCrlf & "WHERE  PCODE = 'CD0014'"
	If GetCampusVarsSiteMGC("_CAMPUS_CODE_") = "CD0001" Then '강남일때 단과반 삭제
	sSql = sSql & vbCrlf & "AND    CODE <> 'CD0023'"
	End If
	sSql = sSql & vbCrlf & "ORDER  BY SEQ ASC"
	Set oRs = objDb.sqlQueryNew(sSql, 1)
	Call ConvertOptionArray(oRs.GetRows(), arrClassGubunValue, arrClassGubunName)
	oRs.Close
	Set oRs = Nothing
	sClassGubunOptionHTML = CreateOptionString(arrClassGubunName, arrClassGubunValue, oDic("classgubun"), "-분류-")
	
	'**** 조건문생성
	'[MG_BBS] 조건문생성
	sWhere = ""
	sWhere = CombineWhere(sWhere, "T.NAVI_CODE = " & sNaviCode)
	sWhere = CombineWhere(sWhere, "B.DEL_FG = 'N'")
	sWhere = CombineWhere(sWhere, "B.USE_VIEW = 'Y'")
	'반분류
	If oDic("classgubun") <> "" Then
		sWhere = CombineWhere(sWhere, "B.CLASS_GUBUN = '" & SafeQuery(oDic("classgubun")) & "'")
	End If
	'검색어
	If oDic("searchword") <> "" Then
		Select Case CStr(oDic("serachtype"))
			Case "T"  '제목
				sWhere = CombineWhere(sWhere, "B.TITLE LIKE '%" & SafeQuery(oDic("searchword")) & "%'")
			Case "C"  '내용
				sWhere = CombineWhere(sWhere, "B.CONTENTS_PC LIKE '%" & SafeQuery(oDic("searchword")) & "%'")
			Case Else '제목+내용
				sWhere = CombineWhere(sWhere, "(B.TITLE LIKE '%" & SafeQuery(oDic("searchword")) & "%' OR B.CONTENTS_PC LIKE '%" & SafeQuery(oDic("searchword")) & "%')")
		End Select
	End If
	
	'**** 전체갯수 조회
	SsQL = ""
	sSql = sSql & vbCrlf & "SELECT COUNT(*)"
	sSql = sSql & vbCrlf & "FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON B.CODE = T.BBS_CODE"
	if sWhere <> "" Then
	sSql = sSql & vbCrlf & "WHERE  " & sWhere
	End If
	nTotalCount = objDb.sqlResult(sSql)
	'TOPRE sSql
	
	'** 페이징계산
	Dim sPageLink
	Set objPG = new Page
	Set arrimg = server.CreateObject("Scripting.Dictionary")
	arrimg("nexts") = Application("img_path")&"/library/image/mypage/list_arrow_f.png"
	arrimg("prevs") = Application("img_path")&"/library/image/mypage/list_arrow_p.png"
	objPG.setImage arrimg
	objPG.setMode 2
	objPG.setInit nTotalCount, nCountPerPage, nPagePerBlock ' 페이지 갯수 에 대한 계산.
	sPageLink = objPG.getPage()
	Set objPG = Nothing
	
	
	'**** 리스트HTML생성
	Dim sOrderBy
	Dim sListHTML
	'ORDER BY 결정
	If bUseHot = True Then 'HOT을 사용할경우
		sOrderBy = "SEQ_HOT ASC, REG_DATE DESC"
	Else
		sOrderBy = "REG_DATE DESC"
	End If
'	sSql = ""
'	sSql = sSql & vbCrlf & "WITH BBSLIST AS"
'	sSql = sSql & vbCrlf & "("
'	sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY SEQ_HOT ASC, REG_DATE DESC) AS ROWNUMBER"
'	sSql = sSql & vbCrlf & "          ,*"
'	sSql = sSql & vbCrlf & "    FROM   (SELECT B.CODE"
'	sSql = sSql & vbCrlf & "                  ,B.TITLE"
'	sSql = sSql & vbCrlf & "                  ,B.HIT"
'	sSql = sSql & vbCrlf & "                  ,(SELECT Z.NAME FROM MG_CODE_SUB(NOLOCK) Z WHERE Z.CODE = B.CLASS_GUBUN) AS CLASS_GUBUN_NAME"
'	sSql = sSql & vbCrlf & "                  ,B.REG_DATE"
'	sSql = sSql & vbCrlf & "                  ,B.USE_HOT"
'	sSql = sSql & vbCrlf & "                  ,CASE WHEN USE_HOT = 'Y' THEN 1"
'	sSql = sSql & vbCrlf & "                        ELSE 2"
'	sSql = sSql & vbCrlf & "                   END AS SEQ_HOT"
'	sSql = sSql & vbCrlf & "            FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON B.CODE = T.BBS_CODE"
'	If sWhere <> "" Then
'	sSql = sSql & vbCrlf & "            WHERE  " & sWhere
'	End If
'	sSql = sSql & vbCrlf & "           ) LIST"
'	sSql = sSql & vbCrlf & ")"
'	sSql = sSql & vbCrlf & "SELECT *"
'	sSql = sSql & vbCrlf & "FROM   BBSLIST"
'	sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((oDic("curPage") - 1) * nCountPerPage) + 1) & " AND " & (oDic("curPage") * nCountPerPage)
'	sSql = sSql & vbCrlf & "ORDER  BY SEQ_HOT ASC, REG_DATE DESC"
	
	'--2005버전용 쿼리문 재생성
	sSql = ""
	sSql = sSql & vbCrlf & "SELECT *"
	sSql = sSql & vbCrlf & "FROM"
	sSql = sSql & vbCrlf & "("
	sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY SEQ_HOT ASC, REG_DATE DESC, CODE DESC) AS ROWNUMBER"
	sSql = sSql & vbCrlf & "          ,*"
	sSql = sSql & vbCrlf & "    FROM   (SELECT B.CODE"
	sSql = sSql & vbCrlf & "                  ,B.TITLE"
	sSql = sSql & vbCrlf & "                  ,B.HIT"
	sSql = sSql & vbCrlf & "                  ,(SELECT Z.NAME FROM MG_CODE_SUB(NOLOCK) Z WHERE Z.CODE = B.CLASS_GUBUN) AS CLASS_GUBUN_NAME"
	sSql = sSql & vbCrlf & "                  ,B.REG_DATE"
	sSql = sSql & vbCrlf & "                  ,B.USE_HOT"
	sSql = sSql & vbCrlf & "                  ,CASE WHEN USE_HOT = 'Y' AND ( (GETDATE() < CONVERT(VARCHAR(10), DATEADD(d, ISNULL(HOT_PERIOD, 0), REG_DATE), 121) + ' 00:00:00') OR (GETDATE() >= HOT_STDATE AND GETDATE() <= HOT_EDDATE) ) THEN 1"
	sSql = sSql & vbCrlf & "                        ELSE 2"
	sSql = sSql & vbCrlf & "                   END AS SEQ_HOT"
	sSql = sSql & vbCrlf & "            FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON B.CODE = T.BBS_CODE"
	If sWhere <> "" Then
	sSql = sSql & vbCrlf & "            WHERE  " & sWhere
	End If
	sSql = sSql & vbCrlf & "           ) LIST"
	sSql = sSql & vbCrlf & ") WRAP"
	sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((oDic("curPage") - 1) * nCountPerPage) + 1) & " AND " & (oDic("curPage") * nCountPerPage)
	sSql = sSql & vbCrlf & "ORDER  BY ROWNUMBER ASC"
	Set oRs = objDb.sqlQueryNew(sSql, 1)
	'topre sSql
	'Response.WRITE sSql
	
	Dim nRowNum, sClassGubun, sTitle, sRegdate, sHit, sUseHot, sCode, sSeqHot
	sListHTML = ""
	Do Until oRs.EOF
		sCode       = oRs("CODE")
		nRowNum     = CInt(oRs("ROWNUMBER"))
		sTitle      = oRs("TITLE")
		sClassGubun = oRs("CLASS_GUBUN_NAME")
		sRegDate    = oRs("REG_DATE")
		sHit        = oRs("HIT")
		sUseHot     = oRs("USE_HOT")
		sSeqHot     = oRs("SEQ_HOT")
		
		nRowNum = (nTotalCount - nRowNum) + 1
		
		sListHTML = sListHTML & "<tr " & IIF((bUseHot = True) And (sSeqHot = 1), "class=""board_tr_hot""", "") & ">"
		sListHTML = sListHTML & "<td>" & IIF((bUseHot = True) And (sSeqHot = 1), "<span class=""ir_txt hot"">hot</span>", nRowNum) & "</td>"
		sListHTML = sListHTML & "<td>" & sClassGubun & "</td>"
		sListHTML = sListHTML & "<td class=""subjectLine ellipsis""><a href=""" & sViewPage & "?code=" & sCode & "&" & GetCurrParam(oDic) & """>" & sTitle & "</a>"
		If DateDiff("d", sRegDate, Now()) < 2 Then
			sListHTML = sListHTML & "<span class=""ir_ico bbsNew"">new</span>"
		End If
		sListHTML = sListHTML & "</td>"
		sListHTML = sListHTML & "<td>" & Left(CStr(sRegDate), 10) & "</td>"
		sListHTML = sListHTML & "<td>" & sHit & "</td>"
		sListHTML = sListHTML & "</tr>"
		oRs.MoveNext
	Loop
	oRs.Close
	Set oRs = Nothing
	'내용이 없을경우
	If sListHTML = "" Then
		sListHTML = sListHTML & "<tr><td colspan=""5"" align=""center"">등록된 게시물이 없습니다.</td></tr>"
	End If
	%>	
	<script type="text/javascript">
	function getSearchForm() {
		return document.getElementById("frmSearch");
	}
	</script>
	<% If bUseSearch = True Then %>
	<!-- 게시판 상단 검색 -->
	<form id="frmSearch" action="?" method="GET">
		<fieldset>
			<legend class="blind">게시판 검색</legend>
			<div class="searchArea">
				<%
				'** 인트로페이지 공지사항인 경우에는 "분류" 검색이 표시되지 않아야한다. / 인트로 > 학습프로그램 > 논구술의 힘 > 수시논술 적중 문항 게시판도..
				%>
				<% If CStr(sNaviCode) <> "351" And CStr(sNaviCode) <> IIF(IsDevSvr(), "1094", "1241") And CStr(sNaviCode) <> IIF(IsDevSvr(), "1097", "1277") Then %>
					<div class="selectBox">
						<label for="classgubun" id="lblClassGubun">-분류-</label>
						<select class="search" name="classgubun" id="classgubun" viewtype="selectbox"><%=sClassGubunOptionHTML%></select>
					</div>
				<% End If %>
				<div class="selectBox">
					<label for="searchtype" id="lblSearchType">제목 + 내용</label>
					<select class="search" name="searchtype" id="searchtype" viewtype="selectbox"><%=sSearchTypeOptionHTML%></select>
				</div>
				<input name="searchword" id="keyword" type="text" value="<%=oDic("searchword")%>" class="inputBox" style="width:198px;" />
				<a href="javascript:;" onclick="javascript:getSearchForm().submit();" class="btn_search"><span>검색</span></a>
			</div>
		</fieldset>
	</form>	
	<!-- // 게시판 상단 검색 -->
	<% End If %>
	<div class="board_list_type_01 mt10">
		<table summary="공지사항 리스트">
			<caption class="blind">공지사항 리스트</caption>
			<colgroup>
				<col width="72px" style="width:72px;">
				<col width="87px" style="width:87px;">
				<col width="*">
				<col width="85px" style="width:85px;">
				<col width="75px" style="width:75px;">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<th scope="col">분류</th>
					<th scope="col">제목</th>
					<th scope="col">등록일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<%=sListHTML%>
			</tbody>
		</table>
	</div>
	<!--페이징영역-->
	<div class="board_list_paging_01"><%=sPageLink%></div>
	<%
End Sub




'**** 캠퍼스생활 리스트
Sub MenuBBSDrawPage_List_CD0223(sNaviCode, bUseHot, nCurPage, nCountPerPage, nPagePerblock, bUseSearch, sListPage, sViewPage, sWritepage, ByRef oDic)
	Dim nTotalCount
	Dim sSql
	Dim sWhere, sWhere2
	Dim selyy, selmm
	Dim strUrl
	
	If valuecheck(oDic("curPage")) = False Or IsNumeric(oDic("curPage")) = False Then
		oDic("curPage") = "1"
	End If
	
	strUrl = GetCurrParam(oDic)
	strUrl = strUrl & "&selyear=" & oDic("selyear") & "&selmonth=" & oDic("selmonth")
	
	
	
	'** 조건문생성
	'[MG_BBS] 조건문생성
	sWhere1 = ""
	sWhere1 = CombineWhere(sWhere1, "T.NAVI_CODE = " & sNaviCode)
	sWhere1 = CombineWhere(sWhere1, "B.DEL_FG = 'N'")
	sWhere1 = CombineWhere(sWhere1, "B.USE_VIEW = 'Y'")
	If valuecheck(oDic("selyear")) = True Then
		sWhere1 = CombineWhere(sWhere1, "B.REG_YEAR = '" & SafeQuery(FillZeroNum(oDic("selyear"), 4)) & "'")
	End If
	If valuecheck(oDic("selmonth")) = True Then
		sWhere1 = CombineWhere(sWhere1, "B.REG_MONTH = '" & SafeQuery(FillZeroNum(oDic("selmonth"), 2)) & "'")
	End If

	'[MG_MEDIA] 조건문생성
	sWhere2 = ""
	sWhere2 = CombineWhere(sWhere2, "M.MD_CAMPUS_DETAIL = '" & GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") & "'")
	sWhere2 = CombineWhere(sWhere2, "M.MD_STATE = 'D'")
	If valuecheck(oDic("selyear")) = True Then
		sWhere2 = CombineWhere(sWhere2, "CONVERT(VARCHAR(4),M.MD_REGDATE2,112) = '" & SafeQuery(oDic("selyear")) & "'")
	End If
	If valuecheck(oDic("selmonth")) = True Then
		sWhere2 = CombineWhere(sWhere2, "CAST(MONTH(M.MD_REGDATE2) AS VARCHAR) = '" & SafeQuery(oDic("selmonth")) & "'")
	End If
	
	
	
	'** 전체카운트조회
	sSql = ""
	sSql = sSql & vbCrlf & "SELECT SUM(CNT) AS CNT"
	sSql = sSql & vbCrlf & "FROM   (SELECT COUNT(*) AS CNT"
	sSql = sSql & vbCrlf & "        FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON T.BBS_CODE = B.CODE"
	If sWhere1 <> "" Then
	sSql = sSql & vbCrlf & "        WHERE  " & sWhere1
	End If
	sSql = sSql & vbCrlf & "        "
	sSql = sSql & vbCrlf & "        UNION ALL"
	sSql = sSql & vbCrlf & "        "
	sSql = sSql & vbCrlf & "        SELECT COUNT(*) AS CNT"
	sSql = sSql & vbCrlf & "        FROM   MG_MEDIA(NOLOCK) M"
	If sWhere2 <> "" Then
	sSql = sSql & vbCrlf & "        WHERE  " & sWhere2
	End If
	sSql = sSql & vbCrlf & "       ) A"	
	nTotalCount = objDb.sqlResult(sSql)
	'topre sSql
	'println nTotalCount
	
	
	'** 페이징계산
	Dim sPageLink
	Set objPG = new Page
	Set arrimg = server.CreateObject("Scripting.Dictionary")
	arrimg("nexts") = Application("img_path")&"/library/image/mypage/list_arrow_f.png"
	arrimg("prevs") = Application("img_path")&"/library/image/mypage/list_arrow_p.png"
	objPG.setImage arrimg
	objPG.setMode 2
	objPG.setInit nTotalCount, nCountPerPage, nPagePerBlock ' 페이지 갯수 에 대한 계산.
	sPageLink = objPG.getPage()
	Set objPG = Nothing
	
	'topre sSql
	
	'** 리스트생성
	Dim sOrderBy
	Dim nBBSLoop, sCode, sTitle, sSummary, sContentPC, sRegDate, sUseHot, nHit, sImageTitlePath, sCampuslifeGubunName, sMediaType, sMediaUrl, sHref, sImgSrc, sHrefImg
	Dim sListHTML
	'ORDER BY 결정
	If bUseHot = True Then 'HOT을 사용할경우
		sOrderBy = "SEQ_HOT ASC, REG_DATE DESC, CODE DESC"
	Else
		sOrderBy = "REG_DATE DESC, CODE DESC"
	End If
	
'	sSql = ""
'	sSql = sSql & vbCrlf & "WITH TBL_LIST AS"
'	sSql = sSql & vbCrlf & "("
'	sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY " & sOrderBy & ") AS ROWNUMBER"
'	sSql = sSql & vbCrlf & "          ,*"
'	sSql = sSql & vbCrlf & "    FROM   (SELECT B.CODE"
'	sSql = sSql & vbCrlf & "                  ,B.TITLE"
'	sSql = sSql & vbCrlf & "                  ,B.SUMMARY"
'	sSql = sSql & vbCrlf & "                  ,B.CONTENTS_PC"
'	sSql = sSql & vbCrlf & "                  ,B.USE_HOT"
'	sSql = sSql & vbCrlf & "                  ,B.HIT"
'	sSql = sSql & vbCrlf & "                  ,ISNULL((SELECT Z.FILEPATH"
'	sSql = sSql & vbCrlf & "                           FROM   MG_BBS_ATTACH(NOLOCK) Z"
'	sSql = sSql & vbCrlf & "                           WHERE  Z.BBS_CODE = B.CODE"
'	sSql = sSql & vbCrlf & "                           AND    SEQ = 0), '') AS IMAGE_TITLE_PATH"
'	sSql = sSql & vbCrlf & "                  ,(SELECT Z.NAME"
'	sSql = sSql & vbCrlf & "                    FROM   MG_CODE_SUB(NOLOCK) Z"
'	sSql = sSql & vbCrlf & "                    WHERE  Z.CODE = B.CAMPUSLIFE_GUBUN) AS CAMPUSLIFE_GUBUN_NAME"
'	sSql = sSql & vbCrlf & "                  ,B.REG_DATE"
'	sSql = sSql & vbCrlf & "                  ,CASE B.USE_HOT WHEN 'Y' THEN 1"
'	sSql = sSql & vbCrlf & "                                  WHEN 'N' THEN 2"
'	sSql = sSql & vbCrlf & "                   END AS SEQ_HOT"
'	sSql = sSql & vbCrlf & "                  ,'PHOTO' AS MEDIA_TYPE"
'	sSql = sSql & vbCrlf & "                  ,'' AS MEDIA_URL"
'	sSql = sSql & vbCrlf & "            FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON T.BBS_CODE = B.CODE"
'	If sWhere1 <> "" Then
'	sSql = sSql & vbCrlf & "            WHERE  " & sWhere1
'	End If
'	sSql = sSql & vbCrlf & "            "
'	sSql = sSql & vbCrlf & "            UNION ALL"
'	sSql = sSql & vbCrlf & "            "
'	sSql = sSql & vbCrlf & "            SELECT M.CODE"
'	sSql = sSql & vbCrlf & "                  ,M.MD_SUBJECT"
'	sSql = sSql & vbCrlf & "                  ,'' AS SUMMARY"
'	sSql = sSql & vbCrlf & "                  ,'' AS CONTENTS_PC"
'	sSql = sSql & vbCrlf & "                  ,'N' AS USE_HOT"
'	sSql = sSql & vbCrlf & "                  ,M.MD_VISIT"
'	sSql = sSql & vbCrlf & "                  ,'/Data/Media/' + M.MD_IMAGE AS IMAGE_TITLE_PATH"
'	sSql = sSql & vbCrlf & "                  ,'공통' AS CAMPUSLIFE_GUBUN_NAME"
'	sSql = sSql & vbCrlf & "                  ,M.MD_REGDATE2 AS REG_DATE"
'	sSql = sSql & vbCrlf & "                  ,2 AS SEQ_HOT"
'	sSql = sSql & vbCrlf & "                  ,'MOVIE' AS MEDIA_TYPE"
'	sSql = sSql & vbCrlf & "                  ,M.MD_MEDIA_URL AS MEDIA_URL"
'	sSql = sSql & vbCrlf & "            FROM   MG_MEDIA(NOLOCK) M"
'	If sWhere2 <> "" Then
'	sSql = sSql & vbCrlf & "            WHERE  " & sWhere2
'	End If
'	sSql = sSql & vbCrlf & "            ) LIST"
'	sSql = sSql & vbCrlf & ")"
'	sSql = sSql & vbCrlf & "SELECT *"
'	sSql = sSql & vbCrlf & "FROM   TBL_LIST"
'	sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((oDic("curPage") - 1) * nCountPerPage) + 1) & " AND " & (oDic("curPage") * nCountPerPage)
'	sSql = sSql & vbCrlf & "ORDER  BY " & sOrderBy
	
	'--2005버전용 쿼리문 재생성
	sSql = ""
	sSql = sSql & vbCrlf & "SELECT *"
	sSql = sSql & vbCrlf & "FROM"
	sSql = sSql & vbCrlf & "("
	sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY " & sOrderBy & ") AS ROWNUMBER"
	sSql = sSql & vbCrlf & "          ,*"
	sSql = sSql & vbCrlf & "    FROM   (SELECT B.CODE"
	sSql = sSql & vbCrlf & "                  ,B.TITLE"
	sSql = sSql & vbCrlf & "                  ,B.SUMMARY"
	sSql = sSql & vbCrlf & "                  ,B.CONTENTS_PC"
	sSql = sSql & vbCrlf & "                  ,B.USE_HOT"
	sSql = sSql & vbCrlf & "                  ,B.LOGIN_FG"
	sSql = sSql & vbCrlf & "                  ,B.HIT"
	sSql = sSql & vbCrlf & "                  ,ISNULL((SELECT Case When Z.FILEPATH_M is not null and Z.FILEPATH_M <> '' Then Z.FILEPATH_M else Z.FILEPATH  end "
	sSql = sSql & vbCrlf & "                           FROM   MG_BBS_ATTACH(NOLOCK) Z"
	sSql = sSql & vbCrlf & "                           WHERE  Z.BBS_CODE = B.CODE"
	sSql = sSql & vbCrlf & "                           AND    SEQ = 0), '') AS IMAGE_TITLE_PATH"
	sSql = sSql & vbCrlf & "                  ,(SELECT Z.NAME"
	sSql = sSql & vbCrlf & "                    FROM   MG_CODE_SUB(NOLOCK) Z"
	sSql = sSql & vbCrlf & "                    WHERE  Z.CODE = B.CAMPUSLIFE_GUBUN) AS CAMPUSLIFE_GUBUN_NAME"
	sSql = sSql & vbCrlf & "                  ,B.REG_DATE"
	'sSql = sSql & vbCrlf & "                  ,CASE WHEN USE_HOT = 'Y' AND ( (GETDATE() < CONVERT(VARCHAR(10), DATEADD(d, ISNULL(HOT_PERIOD, 0), REG_DATE), 121) + ' 00:00:00') OR (GETDATE() >= HOT_STDATE AND GETDATE() <= HOT_EDDATE) ) THEN 1"
	sSql = sSql & vbCrlf & "                  ,CASE WHEN USE_HOT = 'Y' THEN 1"
	sSql = sSql & vbCrlf & "                        ELSE 2"
	sSql = sSql & vbCrlf & "                   END AS SEQ_HOT"
	sSql = sSql & vbCrlf & "                  ,'PHOTO' AS MEDIA_TYPE"
	sSql = sSql & vbCrlf & "                  ,'' AS MEDIA_URL"
	sSql = sSql & vbCrlf & "                  ,datediff(DD, reg_date, getdate()) dtDff"
	sSql = sSql & vbCrlf & "            FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON T.BBS_CODE = B.CODE"
	If sWhere1 <> "" Then
	sSql = sSql & vbCrlf & "            WHERE  " & sWhere1
	End If
	sSql = sSql & vbCrlf & "            "
	sSql = sSql & vbCrlf & "            UNION ALL"
	sSql = sSql & vbCrlf & "            "
	sSql = sSql & vbCrlf & "            SELECT M.CODE"
	sSql = sSql & vbCrlf & "                  ,M.MD_SUBJECT"
	sSql = sSql & vbCrlf & "                  ,'' AS SUMMARY"
	sSql = sSql & vbCrlf & "                  ,'' AS CONTENTS_PC"
	sSql = sSql & vbCrlf & "                  ,'N' AS USE_HOT"
	sSql = sSql & vbCrlf & "                  ,'N' AS LOGIN_FG"
	sSql = sSql & vbCrlf & "                  ,M.MD_VISIT"
	sSql = sSql & vbCrlf & "                  ,'/Data/Media/' + M.MD_IMAGE AS IMAGE_TITLE_PATH"
	sSql = sSql & vbCrlf & "                  ,'공통' AS CAMPUSLIFE_GUBUN_NAME"
	sSql = sSql & vbCrlf & "                  ,M.MD_REGDATE2 AS REG_DATE"
	sSql = sSql & vbCrlf & "                  ,2 AS SEQ_HOT"
	sSql = sSql & vbCrlf & "                  ,'MOVIE' AS MEDIA_TYPE"
	sSql = sSql & vbCrlf & "                  ,M.MD_MEDIA_URL AS MEDIA_URL"
	sSql = sSql & vbCrlf & "                  ,datediff(DD, md_regdate, getdate()) dtDff"
	sSql = sSql & vbCrlf & "            FROM   MG_MEDIA(NOLOCK) M"
	If sWhere2 <> "" Then
	sSql = sSql & vbCrlf & "            WHERE  " & sWhere2
	End If
	sSql = sSql & vbCrlf & "            ) LIST"
	sSql = sSql & vbCrlf & ") WRAP"
	sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((oDic("curPage") - 1) * nCountPerPage) + 1) & " AND " & (oDic("curPage") * nCountPerPage)
	sSql = sSql & vbCrlf & "ORDER  BY ROWNUMBER"
	'sSql = sSql & vbCrlf & "ORDER  BY " & sOrderBy
	'topre sSql
	Set oRs = objDb.sqlQueryNew(sSql, 1)
	
	Dim sViewPageMovie, aTmp, aTmp2, sTmp
	sViewPageMovie = ""
	
	'Movie View 페이지 URL생성
	aTmp = split(sViewPage, "/")
	sTmp = aTmp(UBound(aTmp))
	aTmp2 = Split(sTmp, ".")
	If UBound(aTmp) > 0 Then
		For i = UBound(aTmp) - 1 To 0 Step -1
			sViewPageMovie = aTmp(i) & "/" & sViewPageMovie
		Next
	End If
	sViewPageMovie = sViewPageMovie & aTmp2(0) & "_movie." & aTmp2(1)
	
	
	sListHTML = ""
	If Not oRs.EOF Then
		nBBSLoop = 0
		Do Until oRs.EOF
			nBBSLoop = nBBSLoop + 1
			sCode = oRs("CODE")
			sTitle = oRs("TITLE")
			sSummary = oRs("SUMMARY")
			sContentPC = oRs("CONTENTS_PC")
			'sRegName = oRs("REG_NAME")
			sRegDAte = oRs("REG_DATE")
			sUseHot = oRs("USE_HOT")
			sLoginFg = oRs("LOGIN_FG")
			nHit    = oRs("HIT")
			sImageTitlePath = oRs("IMAGE_TITLE_PATH")
			sCampuslifeGubunName = oRs("CAMPUSLIFE_GUBUN_NAME")
			sMediaType = oRs("MEDIA_TYPE")
			sMediaUrl  = oRs("MEDIA_URL")
			nDtDff = oRs("dtDff")
			sSeqHot = oRs("SEQ_HOT")

		If Not gLoginOk And sLoginFg = "Y" Then
			sHref = "javascript:alert('로그인해 주세요.');"
			sHrefImg = "javascript:alert('로그인해 주세요.');"
		Else
			sHref = "javascript:articleView('" & sCode & "', '" & sMediaType & "');"
			If sMediaType = "MOVIE"Then '동영상이면서, 동영상url이 존재할때는 팝업으로 바로열기
				sHref = sViewPage & "?code=" & sCode & "&mediatype=MOVIE&" & strUrl
				If  sMediaUrl <> "" Then
					sHrefImg = "javascript:void(window.open('" & sMediaUrl & "&RIGHT_TAB=OFF','DNGPlayer','width=740,height=522,top=0,left=0'));"
				Else
					sHrefImg = sHref
				End If
			Else
				sHref = sViewPage & "?code=" & sCode & "&mediatype=PHOTO&" & strUrl
				sHrefImg = sHref
			End If
		End If
			
			sImgSrc = "/Public/EtcView.asp?C=BigThumb&F="& Server.URLEncode(sImageTitlePath)
	
			sListHTML= sListHTML & "<li"
			If sSeqHot = 1 Then
				sListHTML= sListHTML & " class=""camplife_list_hot"">"
				sListHTML= sListHTML & "<span class=""camplife_list_hoticon"">HOT></span"
			End If
			sListHTML = sListHTML & ">"
			sListHTML = sListHTML & "<div class=""camplife_list_photo"">"
			sListHTML = sListHTML & "	<a href=""" & sHrefImg & ";"">"
			sListHTML = sListHTML & "		<img src=""" & sImgSrc & """ alt="""" width=""148"" height=""111"" onerror=""this.src='"&Application("img_path")&"/library/image/subpage/no_image.png'"">"
			If sMediaType = "MOVIE" Then
				sListHTML = sListHTML & "<span class=""camplife_list_vod"">동영상 보기</span>"
			End If
			sListHTML = sListHTML & "	</a>"
			sListHTML = sListHTML & "</div>"
			
			sListHTML = sListHTML & "<div class=""camplife_list_cont"">"
			sListHTML = sListHTML & "	<div class=""camplife_list_title"">"
			If sCampuslifeGubunName <> "Heroes" Then
			sListHTML= sListHTML & "		<span class=""index " & IIF((nBBSLoop Mod 2) = 0, "", "bg_gray") & """>" & sCampuslifeGubunName & "</span>"
			End If
			sListHTML= sListHTML & "		<a href=""" & sHref & """ class=""tit"">" & strlen(sTitle, 25) & "</a>"
			If nDtDff <= 7 Then
			sListHTML= sListHTML & "		<img src=""" & Application("img_path") & "/library/common/icon/icon_new_campus.png"" alt="""" width=""20"" height=""20"">"
			End If
			sListHTML= sListHTML & "	</div>"
			sListHTML= sListHTML & "	<p>"
			If Trim(sSummary) <> "" Then
				sListHTML= sListHTML & "<a href=""" & sHref & """>" & strlen2(sSummary, 144) & "</a>"
			End If
			sListHTML= sListHTML & "	</p>"
			sListHTML= sListHTML & "	<p>"
			sListHTML= sListHTML & "		<span class=""camplife_list_hits"">조회수 : " & FormatNumber(nHit, 0) & "</span>"
			sListHTML= sListHTML & "	</p>"
			sListHTML= sListHTML & "</div>"
			
			sListHTML= sListHTML & "<div class=""camplife_list_sort"">"
			sListHTML= sListHTML & "	<span class=""camplife_list_month"">" & Replace(Mid(sRegDate, 6, 5),"-", ".") & "</span><span class=""camplife_list_year"">" & Left(sRegDate, 4) & "</span>"
			sListHTML= sListHTML & "</div>"
			sListHTML= sListHTML & "</li>"
			
			oRs.MoveNext
		Loop
	Else
		sPageLink = ""
		sListHTML = ""
		sListHTML = sListHTML & "<li>"
		sListHTML = sListHTML & "    <div style=""text-align:center;margin:18px 0 18px 0;"">"
		sListHTML = sListHTML & "    	<span>등록된 게시물이 없습니다.</span>"
		sListHTML = sListHTML & "	</div>"
		sListHTML = sListHTML & "</li>"
	End If
	oRs.Close
	Set oRs = Nothing
	%>
	<script type="text/javascript">
	$(document).ready(function() {
		setSelectBoxString("yy");
		setSelectBoxString("mm");
	});
	function setSelectBoxString(sType) {
		switch(sType.toLowerCase()) {
			case "yy":
				$("label[for=selyear]").text($("#selyear option:selected").text());
				break;
			case "mm":
				$("label[for=selmonth]").text($("#selmonth option:selected").text());
				break;
		}
	}
	function articleView(code, sel) {
		if (sel == "PHOTO") {
			location.href= "<%=sViewPage%>?code=" + code + "&curPage=<%=oDic("curPage")%>&classcode=<%=oDic("classcode")%>";
		}
		else {
			location.href= "/campus_common/campus/movie_life_view.asp?code=" + code + "&curPage=<%=oDic("curPage")%>&classcode=<%=oDic("classcode")%>";
		}
	}
	
	function selday() {
		location.href = "?selyear=" + $("#selyear").val() + "&selmonth="+$("#selmonth").val() + "&classcode=<%=oDic("classcode")%>";
	}
	</script>
	
	<div class="searchArea">
		<div class="selectBox">
			<label for="selyear">::: 전체 :::</label>
			<select id="selyear" name="selyear" onchange="setSelectBoxString('yy');selday();">
			<option value="">::: 전체 :::</option>
			<% For selyy = year(NOW) TO 2008 Step -1%>
			<option value="<%=selyy%>" <%If Cstr(selyy) = oDic("selyear") Then%>selected<%End if%>><%=selyy%>년</option>
			<% NEXT %>
			</select>
		</div>
		
		<div class="selectBox">
			<label for="selmonth">::: 전체 :::</label>
			<select id="selmonth" name="selmonth" onchange="setSelectBoxString('mm');selday();">
			<option value="">::: 전체 :::</option>
			<% For selmm = 1 TO 12%>
			<option value="<%=selmm%>" <%If Cstr(selmm) = oDic("selmonth") Then%>selected<%End if%>><%=selmm%>월</option>
			<% NEXT %>
			</select>
		</div>
	</div>
	
	<div id="div_photo_life" class="mt20">
        <!--
			HOT 설정 : class="camplife_list_hot", class="camplife_list_hoticon"
			VOD 설정 : class="camplife_list_vod"
		-->

        <ul class="camplife_list">
        	<%=sListHTML%>
        </ul>
        <div class="board_list_paging_01">
        	<%=sPageLink%>
        </div>

    </div>
	<%
End Sub



















'**** 학습자료실 리스트
Sub MenuBBSDrawPage_List_CD0224(sNaviCode, bUseHot, nCurPage, nCountPerPage, nPagePerblock, bUseSearch, sListPage, sViewPage, sWritepage, ByRef oDic)
	Dim nTotalCount
	Dim sSql, sWhere, oRs, strUrl
	
	If valuecheck(oDic("curPage")) = False Or IsNumeric(oDic("curPage")) = False Then
		oDic("curPage") = "1"
	End If
	
	strUrl = GetCurrParam(oDic)
'	strUrl = strUrl & "curPage=" & oDic("curPage")
'	strUrl = strUrl & "&subjectgubun=" & oDic("subjectgubun")
'	strUrl = strUrl & "&searchtype=" & oDic("searchtype")
'	strUrl = strUrl & "&searchword=" & oDic("searchword")

	Dim sBbsExcptSC, sBbsExcptNRJ
	sBbsExcptSC = IIF(sNaviCode=802, True, False)	' 서초>입시전략
	sBbsExcptNRJ = IIF(sNaviCode=(IIF(IsDevSvr(), 1089, 1224)), True, False)	' 노량진>가정통신문
	
	'**** 검색 옵션스트링 생성
	Dim arrSearchTypeName, arrSearchTypeValue
	Dim sSearchTypeOptionHTML
	arrSearchTypeName = Array("제목", "내용")
	arrSearchTypeValue = Array("S", "C")
	sSearchTypeOptionHTML = CreateOptionString(arrSearchTypeName, arrSearchTypeValue, oDic("searchtype"), "제목 + 내용")

If sBbsExcptSC = True Then
	'**** 검색 옵션스트링 생성
	Dim arrSearchVal, arrSearchLen
	arrSearchLen = (year(date)+1) - 2016
	ReDim arrSearchVal(arrSearchLen)
	For iiast = 0 To arrSearchLen
		arrSearchVal(iiast) = (year(date)+1) - iiast
	Next
	Dim arrSearchTypeName1, arrSearchTypeValue1
	Dim sSearchTypeOptionHTML1
	arrSearchTypeName1 = arrSearchVal
	arrSearchTypeValue1 = arrSearchVal
	sSearchTypeOptionHTML1 = CreateOptionString(arrSearchTypeName1, arrSearchTypeValue1, oDic("occurdate"), "학년도")

	'**** 검색 옵션스트링 생성
	Dim arrSearchTypeName2, arrSearchTypeValue2
	Dim sSearchTypeOptionHTML2
	arrSearchTypeName2 = Array("수시", "정시")
	arrSearchTypeValue2 = Array("S", "F")
	sSearchTypeOptionHTML2 = CreateOptionString(arrSearchTypeName2, arrSearchTypeValue2, oDic("seasongubun"), "전체")
End If
	
	'** 영역(과목) OPTION생성(구버젼쿼리그대로)
	Dim arrSubjectValue(), arrSubjectName()
	Dim sOptionHTMLSubject
	sSql = ""
	sSql = sSql & " SELECT B.TC_AREA, C.NAME "
	sSql = sSql & " FROM MG_TEACHER (NOLOCK) A "
	sSql = sSql & " 	INNER JOIN MG_TEACHER_SUB (NOLOCK) B ON A.CODE = B.TC_CODE "
	sSql = sSql & " 	INNER JOIN MG_CODE (NOLOCK) C ON B.TC_AREA = C.CODE "
	sSql = sSql & " WHERE C.KIND='class' and C.CODE <> 'CD0044' "
	sSql = sSql & "		AND B.TC_CCODE_DETAIL='" & GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") & "'"
	sSql = sSql & " GROUP BY B.TC_AREA, C.NAME "
	sSql = sSql & " ORDER BY B.TC_AREA "
	Set oRs = objDB.sqlQuery(sSql, 1)
	If Not oRs.EOF Then
		Call ConvertOptionArray(oRs.GetRows(), arrSubjectValue, arrSubjectName)
		sOptionHTMLSubject = CreateOptionString(arrSubjectName, arrSubjectValue, oDic("subjectgubun"), "전체영역")
	End If
	oRs.Close
	Set oRs = Nothing
	
	
	'**** 조건문생성
	'[MG_BBS] 조건문생성
	sWhere = ""
	sWhere = CombineWhere(sWhere, "T.NAVI_CODE = " & sNaviCode)
	sWhere = CombineWhere(sWhere, "B.DEL_FG = 'N'")
	sWhere = CombineWhere(sWhere, "B.USE_VIEW = 'Y'")
	'반분류
	If oDic("subjectgubun") <> "" Then
		sWhere = CombineWhere(sWhere, "B.SUBJECT_GUBUN = '" & SafeQuery(oDic("subjectgubun")) & "'")
	End If
	'구분1 - 학년도
	If oDic("occurdate") <> "" Then
		sWhere = CombineWhere(sWhere, "B.OCCUR_DATE = '" & SafeQuery(oDic("occurdate")) & "'")
	End If
	'구분2
	If oDic("seasongubun") <> "" Then
		sWhere = CombineWhere(sWhere, "B.SEASON_GUBUN = '" & SafeQuery(oDic("seasongubun")) & "'")
	End If
	'검색어
	If oDic("searchword") <> "" Then
		Select Case CStr(oDic("serachtype"))
			Case "T"  '제목
				sWhere = CombineWhere(sWhere, "B.TITLE LIKE '%" & SafeQuery(oDic("searchword")) & "%'")
			Case "C"  '내용
				sWhere = CombineWhere(sWhere, "B.CONTENTS_PC LIKE '%" & SafeQuery(oDic("searchword")) & "%'")
			Case Else '제목+내용
				sWhere = CombineWhere(sWhere, "(B.TITLE LIKE '%" & SafeQuery(oDic("searchword")) & "%' OR B.CONTENTS_PC LIKE '%" & SafeQuery(oDic("searchword")) & "%')")
		End Select
	End If
	
	'**** 전체갯수 조회
	SsQL = ""
	sSql = sSql & vbCrlf & "SELECT COUNT(*)"
	sSql = sSql & vbCrlf & "FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON B.CODE = T.BBS_CODE"
	if sWhere <> "" Then
	sSql = sSql & vbCrlf & "WHERE  " & sWhere
	End If
	nTotalCount = objDb.sqlResult(sSql)
	
	'** 페이징계산
	Dim sPageLink
	Set objPG = new Page
	Set arrimg = server.CreateObject("Scripting.Dictionary")
	arrimg("nexts") = Application("img_path")&"/library/image/mypage/list_arrow_f.png"
	arrimg("prevs") = Application("img_path")&"/library/image/mypage/list_arrow_p.png"
	objPG.setImage arrimg
	objPG.setMode 2
	objPG.setInit nTotalCount, nCountPerPage, nPagePerBlock ' 페이지 갯수 에 대한 계산.
	sPageLink = objPG.getPage()
	Set objPG = Nothing
	
	
	'**** 리스트HTML생성
	Dim sOrderBy
	Dim sListHTML
	Dim strParam : strParam = currParam()
	'ORDER BY 결정
	If bUseHot = True Then 'HOT을 사용할경우
		sOrderBy = "SEQ_HOT ASC, REG_DATE DESC"
	Else
		sOrderBy = "REG_DATE DESC"
	End If
'	sSql = ""
'	sSql = sSql & vbCrlf & "WITH BBSLIST AS"
'	sSql = sSql & vbCrlf & "("
'	sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY SEQ_HOT ASC, REG_DATE DESC) AS ROWNUMBER"
'	sSql = sSql & vbCrlf & "          ,*"
'	sSql = sSql & vbCrlf & "    FROM   (SELECT B.CODE"
'	sSql = sSql & vbCrlf & "                  ,B.TITLE"
'	sSql = sSql & vbCrlf & "                  ,B.HIT"
'	sSql = sSql & vbCrlf & "                  ,ISNULL((SELECT Z.NAME FROM MG_CODE(NOLOCK) Z WHERE Z.CODE = B.SUBJECT_GUBUN), '전체') AS SUBJECT_GUBUN_NAME"
'	sSql = sSql & vbCrlf & "                  ,B.REG_DATE"
'	sSql = sSql & vbCrlf & "                  ,B.USE_HOT"
'	sSql = sSql & vbCrlf & "                  ,CASE WHEN USE_HOT = 'Y' THEN 1"
'	sSql = sSql & vbCrlf & "                        ELSE 2"
'	sSql = sSql & vbCrlf & "                   END AS SEQ_HOT"
'	sSql = sSql & vbCrlf & "            FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON B.CODE = T.BBS_CODE"
'	If sWhere <> "" Then
'	sSql = sSql & vbCrlf & "            WHERE  " & sWhere
'	End If
'	sSql = sSql & vbCrlf & "           ) LIST"
'	sSql = sSql & vbCrlf & ")"
'	sSql = sSql & vbCrlf & "SELECT *"
'	sSql = sSql & vbCrlf & "FROM   BBSLIST"
'	sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((oDic("curPage") - 1) * nCountPerPage) + 1) & " AND " & (oDic("curPage") * nCountPerPage)
'	sSql = sSql & vbCrlf & "ORDER  BY SEQ_HOT ASC, REG_DATE DESC"
	
	'-- 2005버전용 쿼리문 재생성
	sSql = ""
	sSql = sSql & vbCrlf & "SELECT *"
	sSql = sSql & vbCrlf & "FROM"
	sSql = sSql & vbCrlf & "("
	sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY SEQ_HOT ASC, REG_DATE DESC, CODE DESC) AS ROWNUMBER"
	sSql = sSql & vbCrlf & "          ,*"
	sSql = sSql & vbCrlf & "    FROM   (SELECT B.CODE"
	sSql = sSql & vbCrlf & "                  ,B.TITLE"
	sSql = sSql & vbCrlf & "                  ,B.HIT"
	sSql = sSql & vbCrlf & "                  ,ISNULL((SELECT Z.NAME FROM MG_CODE(NOLOCK) Z WHERE Z.CODE = B.SUBJECT_GUBUN), '전체') AS SUBJECT_GUBUN_NAME"
	sSql = sSql & vbCrlf & "                  ,B.REG_DATE"
	sSql = sSql & vbCrlf & "                  ,B.USE_HOT"
	sSql = sSql & vbCrlf & "                  ,CASE WHEN USE_HOT = 'Y' AND ( (GETDATE() < CONVERT(VARCHAR(10), DATEADD(d, ISNULL(HOT_PERIOD, 0), REG_DATE), 121) + ' 00:00:00') OR (GETDATE() >= HOT_STDATE AND GETDATE() <= HOT_EDDATE) ) THEN 1"
	sSql = sSql & vbCrlf & "                        ELSE 2"
	sSql = sSql & vbCrlf & "                   END AS SEQ_HOT"
	sSql = sSql & vbCrlf & "                   ,(case when SEASON_GUBUN = 'S' then '수시' when SEASON_GUBUN = 'F' then '정시' else '전체' end) as SEASON_GUBUN "
	sSql = sSql & vbCrlf & "            FROM   MG_BBS(NOLOCK) B INNER JOIN MG_BBS_TARGET_NAVI(NOLOCK) T ON B.CODE = T.BBS_CODE"
	If sWhere <> "" Then
	sSql = sSql & vbCrlf & "            WHERE  " & sWhere
	End If
	sSql = sSql & vbCrlf & "           ) LIST"
	sSql = sSql & vbCrlf & ") WRAP"
	sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((oDic("curPage") - 1) * nCountPerPage) + 1) & " AND " & (oDic("curPage") * nCountPerPage)
	sSql = sSql & vbCrlf & "ORDER  BY ROWNUMBER"
	'sSql = sSql & vbCrlf & "ORDER  BY SEQ_HOT ASC, REG_DATE DESC"
	'topre sSql
	Set oRs = objDb.sqlQueryNew(sSql, 1)
	
	
	Dim nRowNum, sSubjectGubun, sTitle, sRegdate, sHit, sUseHot, sCode
	sListHTML = ""
	Do Until oRs.EOF
		sCode         = oRs("CODE")
		nRowNum       = CInt(oRs("ROWNUMBER"))
		sTitle        = oRs("TITLE")
		sSubjectGubun = oRs("SUBJECT_GUBUN_NAME")
		sRegDate      = oRs("REG_DATE")
		sHit          = oRs("HIT")
		sUseHot       = oRs("USE_HOT")
		sSeasonGubun  = oRs("SEASON_GUBUN")
		sSeqHot     = oRs("SEQ_HOT")
		
		nRowNum = (nTotalCount - nRowNum) + 1
		
		sListHTML = sListHTML & "<tr " & IIF((bUseHot = True) And (sSeqHot = 1), "class=""board_tr_hot""", "") & ">"
		sListHTML = sListHTML & "<td>" & IIF((bUseHot = True) And (sSeqHot = 1), "<span class=""ir_txt hot"">hot</span>", nRowNum) & "</td>"
		If sBbsExcptNRJ = False Then
		sListHTML = sListHTML & "<td>" & IIF(sNaviCode=802, sSeasonGubun, sSubjectGubun) & "</td>"
		End If
		sListHTML = sListHTML & "<td class=""subjectLine ellipsis""><a href=""" & sViewPage & "?code=" & sCode & "&" & strUrl & """>" & sTitle & "</a>"
		If DateDiff("d", sRegDate, Now()) < 2 Then
			sListHTML = sListHTML & "<span class=""ir_ico bbsNew"">new</span>"
		End If
		sListHTML = sListHTML & "</td>"
		sListHTML = sListHTML & "<td>" & Left(CStr(sRegDate), 10) & "</td>"
		sListHTML = sListHTML & "<td>" & sHit & "</td>"
		sListHTML = sListHTML & "</tr>"
		oRs.MoveNext
	Loop
	oRs.Close
	Set oRs = Nothing
	'내용이 없을경우
	If sListHTML = "" Then
		sListHTML = sListHTML & "<tr><td colspan=""" & IIF(sBbsExcptNRJ=True, "4", "5") & """ align=""center"">목록이 없습니다</td></tr>"
	End If
	%>	
	<script type="text/javascript">
	function getSearchForm() {
		return document.getElementById("frmSearch");
	}
	$(document).ready(function() {
		<% If sBbsExcptSC = True Then %>
		$("#lblOccurDate").text($("#occurdate option:selected").text());
		$("#lblSeasonGubun").text($("#seasongubun option:selected").text());
		<% Else %>
		$("#lblSubjectGubun").text($("#subjectgubun option:selected").text());
		<% End If %>
		$("#lblSearchType").text($("#searchtype option:selected").text());
	});
	</script>
	<% If bUseSearch = True Then %>
	<!-- 게시판 상단 검색 -->
	<form id="frmSearch" action="?" method="GET">
		<fieldset>
		<legend class="blind">게시판 검색</legend>
		<div class="searchArea">
			<% If sBbsExcptSC = True Then %>
			<div class="selectBox">
				<label for="sOCode" id="lblOccurDate">학년도</label>
				<select class="search" name="occurdate" id="occurdate"><%=sSearchTypeOptionHTML1%></select>
			</div>
			<div class="selectBox">
				<label for="sSCode" id="lblSeasonGubun">전체</label>
				<select class="search" name="seasongubun" id="seasongubun"><%=sSearchTypeOptionHTML2%></select>
			</div>
			<% Else %>
				<% If sBbsExcptNRJ = False Then %>
			<div class="selectBox">
				<label for="sGCode" id="lblSubjectGubun">-전체영역-</label>
				<select class="search" name="subjectgubun" id="subjectgubun"><%=sOptionHTMLSubject%></select>
			</div>
				<% End If %>
			<% End If %>
			<div class="selectBox">
				<label for="keyfield" id="lblSearchType">제목 + 내용</label>
				<select class="search" name="searchtype" id="searchtype"><%=sSearchTypeOptionHTML%></select>
			</div>
			<input name="searchword" id="keyword" type="text" value="<%=oDic("searchword")%>" class="inputBox" style="width:198px;" />
			<a href="javascript:;" onclick="javascript:getSearchForm().submit();" class="btn_search"><span>검색</span></a>
		</div>
	</form>	
	<!-- // 게시판 상단 검색 -->
	<% End If %>
	<div class="board_list_type_01 mt10">
		<table cellpadding="0" cellspacing="0" border="0" summary="공지사항 리스트">
			<caption class="blind">공지사항 리스트</caption>
			<colgroup>
				<col width="72px">
				<% If sBbsExcptNRJ = False Then %>
				<col width="87px">
				<% End If %>
				<col width=".*">
				<col width="85px">
				<col width="75px">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">번호</th>
					<% If sBbsExcptNRJ = False Then %>
					<th scope="col"><%=IIF(sBbsExcptSC=True, "분류", "영역")%></th>
					<% End If %>
					<th scope="col">제목</th>
					<th scope="col">등록일</th>
					<th scope="col">조회수</th>
				</tr>
			</thead>
			<tbody>
				<%=sListHTML%>
			</tbody>
		</table>
	</div>
	<!--페이징영역-->
	<div class="board_list_paging_01"><%=sPageLink%></div>
	<%
End Sub
'#############################################################################################################################
' 리스트 관련함수 끝
'#############################################################################################################################































'#############################################################################################################################
' 뷰페이지 관련함수 시작
'#############################################################################################################################
Sub MenuBBSDrawPage_View(sBBSGubun, sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
	If ValueCheck(sBBSCode) = False Then
		Redirect sListPage
		Response.End
	End If
	Select Case CStr(sBBSGubun)
		Case "CD0222" '공지사항
			Call MenuBBSDrawPage_View_CD0222(sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
		Case "CD0223" '캠퍼스생활
			Call MenuBBSDrawPage_View_CD0223(sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
		Case "CD0224" '학습자료실
			Call MenuBBSDrawPage_View_CD0224(sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
	End Select
End SUb




'-- 공지사항
Sub MenuBBSDrawPage_View_CD0222(sBBSCode, sListPage, sViewPage, sWritepage, oDic)
	Dim sSql, strUrl
	
	strUrl = GetCurrParam(oDic)
'	strUrl = strUrl & "curPage=" & oDic("curPage")
'	strUrl = strUrl & "&subjectgubun=" & oDic("subjectgubun")
'	strUrl = strUrl & "&searchtype=" & oDic("searchtype")
'	strUrl = strUrl & "&searchword=" & oDic("searchword")
	
	'**** 게시물정보
	Dim sHit, sTitle, sClassGubunName, sContents, sRegDate
	sSql = ""
	sSql = sSql & vbCrlf & "SET NOCOUNT ON"
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "UPDATE MG_BBS SET HIT= HIT + 1"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "SET NOCOUNT OFF"
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "SELECT B.TITLE"
	sSql = sSql & vbCrlf & "      ,(SELECT Z.NAME FROM MG_CODE_SUB(NOLOCK) Z WHERE Z.CODE = B.CLASS_GUBUN) AS CLASS_GUBUN_NAME"
	sSql = sSql & vbCrlf & "      ,B.CONTENTS_PC"
	sSql = sSql & vbCrlf & "      ,B.HIT"
	sSql = sSql & vbCrlf & "      ,B.REG_DATE"
	sSql = sSql & vbCrlf & "      ,B.FAIR_CODE"
	sSql = sSql & vbCrlf & "      ,d.CCODE_DETAIL"
	sSql = sSql & vbCrlf & "FROM   MG_BBS(NOLOCK) B"
	sSql = sSql & vbCrlf & " 	inner join MG_BBS_TARGET_NAVI c with(nolock) on B.CODE = c.BBS_CODE "
	sSql = sSql & vbCrlf & " 	inner join MG_NAVI d with(nolock) on c.NAVI_CODE = d.CODE "
	sSql = sSql & vbCrlf & "WHERE  B.CODE = " & SafeQuery(sBBSCode)	
	Set oRs = objDb.sqlQuery(sSql, 1)
	If Not oRs.EOF Then
		sHit            = oRs("HIT")
		sTitle          = oRs("TITLE")
		sClassGubunName = oRs("CLASS_GUBUN_NAME")
		sContents       = oRs("CONTENTS_PC")
		sRegDate        = oRs("REG_DATE")
		sFairCode       = oRs("FAIR_CODE")
		sCcodeDetail    = oRs("CCODE_DETAIL")
	Else
		Call AlertAndPageMove( "해당 글이 존재하지 않습니다.", sListPage & "?" & strUrl, "" )
	End If
	oRs.Close
	Set oRs = Nothing
	
	'**** 첨부파일정보
	Dim sAttachHTML, sFilePath, sFileName
	sSql = ""
	sSql = sSql & vbCrlf & "SELECT FILENAME"
	sSql = sSql & vbCrlf & "      ,FILEPATH"
	sSql = sSql & vbCrlf & "FROM   MG_BBS_ATTACH(NOLOCK)"
	sSql = sSql & vbCrlf & "WHERE  BBS_CODE = " & SafeQuery(sBBSCode)
	sSql = sSql & vbCrlf & "AND    SEQ > 0"
	sSql = sSql & vbCrlf & "ORDER  BY SEQ ASC"
	Set oRs = objDb.sqlQueryNew(sSql, 1)
	sAttachHTML = ""
	Do Until oRs.EOF
		sFilePath = oRs("FILEPATH")
		sFileName = oRs("FILENAME")
		If sAttachHTML <> "" Then
			sAttachHTML = sAttachHTML & "&nbsp;&nbsp;&nbsp;&nbsp;<br>"
		End If
		sAttachHTML = sAttachHTML & "<a href=""/Public/Down.asp?fileFullPath=" & Server.URLEncode(sFilePath) & "&realFileName=" & Server.URLEncode(sFileName) & """><span class=""ir_ico bbsFile mb5"">다운로드</span>" & sFileName & "</a>" 
		'sAttachHTML = sAttachHTML & "<a href=""/Public/Down.asp?fileFullPath=" & sFilePath & "&realFileName=" & sFileName & """><span class=""ir_ico bbsFile"">다운로드</span>" & sFileName & "</a>"
		oRs.MoveNext
	Loop
	oRs.Close
	Set oRs = Nothing

	'**** 설명회정보
	If ValueCheck(sFairCode) = True Then
		sFairCodeArr = Split(sFairCode, "|")
		sSqlOrder = " order by reg_date "
		If isarray(sFairCodeArr) Then
			sSqlOrder = " order by (case "
			For iifc = 0 To ubound(sFairCodeArr, 1)
				sSqlOrder = sSqlOrder & " when code = " & sFairCodeArr(iifc) & " Then " & iifc
			Next
			sSqlOrder = sSqlOrder & " end) asc "
		End If

		sSql = ""
		sSql = sSql & vbCrlf & " select code, fair_title, fair_date, target_grade, fair_place, sdate, edate "
		sSql = sSql & vbCrlf & " 	, (select top 1 CAMPUS_CODE_DETAIL from MG_ADMISSION_FAIR_INFO_CAMPUS where FAIR_CODE = a.code) sCcodeDetail "
		sSql = sSql & vbCrlf & " from MG_Admission_Fair_Info a "
		sSql = sSql & vbCrlf & " where code in (" & Replace(sFairCode, "|", ",") & ") " & sSqlOrder
		Set oRs = objDb.sqlQueryNew(sSql, 1)
		If Not oRs.EOF Then
			arrFairInfo = oRs.getrows
			sCcodeDetail = arrFairInfo(7, 0)
		End If
		oRs.Close

		fSiteDomainURl = GetCampusDetailUrlSiteMGC(sCcodeDetail,false)
		If Len(fSiteDomainURl) <> 0 And Not isnull(fSiteDomainURl) Then
			fSiteDomainURl = Replace(fSiteDomainURl,"http://","")
		Else
			fSiteDomainURl = "campus.megastudy.net"
		End If

		' 푸터 이미지
		Select Case UCase(CStr(Trim(GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_"))))			
			Case "CD0205" : fair_foot_img = ""				'강남고등관 / gangnams.megastudy.net
			Case "CD0206" : fair_foot_img = "foot_gn.gif"	'강남재수관 / gangnam.megastudy.net
			Case "CD0207" : fair_foot_img = ""				'서초고등관 / seochos.megastudy.net
			Case "CD0208" : fair_foot_img = "foot_sc.gif"	'서초재수관 / seocho.megastudy.net
			Case "CD0209" : fair_foot_img = "foot_gb1.gif"	'강북고등관 / gangbuks.megastudy.net
			Case "CD0210" : fair_foot_img = "foot_gb.gif"	'강북재수관 / gangbuk.megastudy.net
			Case "CD0211" : fair_foot_img = "foot_nrj.gif"	'노량진재수관 / noryangjin.megastudy.net
			Case "CD0212" : fair_foot_img = ""				'노량진단과 / nrj.megastudy.net
			Case "CD0213" : fair_foot_img = "foot_ss.gif"	'신촌 / sinchon.megastudy.net
			Case "CD0214" : fair_foot_img = "foot_sb1.gif"	'성북고등관 / seongbuks.megastudy.net
			Case "CD0239" : fair_foot_img = "foot_sb.gif"	'성북재수관 / seongbuk.megastudy.net
			Case "CD0215" : fair_foot_img = "foot_gd1.gif"	'강동고등관 / gangdongs.megastudy.net
			Case "CD0240" : fair_foot_img = "foot_gd.gif"	'강동재수관 / gangdong.megastudy.net
			Case "CD0216" : fair_foot_img = ""				'평촌고등관 / pyeongchons.megastudy.net
			Case "CD0217" : fair_foot_img = "foot_pc.gif"	'평촌재수관 / pyeongchon.megastudy.net
			Case "CD0220" : fair_foot_img = "foot_ygm.gif"	'양지본관 / yangji.megastudy.net
			Case "CD0243" : fair_foot_img = "foot_scb.gif"	'양지신관 / seochob.megastudy.net
			Case "CD0251" : fair_foot_img = "foot_bc.gif"	'부천 재수관 / bucheon.megastudy.net
			Case "CD0253" : fair_foot_img = "foot_bd.gif"	'분당 재수관 / bundang.megastudy.net
			Case "CD0255" : fair_foot_img = "foot_is.gif"	'일산 재수관 / ilsan.megastudy.net
			Case "CD0259" : fair_foot_img = "foot_yj.gif"	'양주고등관 / yangju.megastudy.net
			Case Else : fair_foot_img = ""					'그 이외의 경우
		End Select
	End If
	%>
	
	<script type="text/javascript">
	function goList() {
		var sUrl = "<%=sListPage%>?<%=strUrl%>";
		window.location.href = sUrl;
	}
	</script>
	
	<div class="board_view_type_01">
		<table summary="공지사항 뷰">
			<caption class="blind">공지사항 뷰</caption>
			<colgroup>
				<col width="110px">
				<col width="360px">
				<col width="70px">
				<col width="100px">
				<col width="70px">
				<col width="78px">
			</colgroup>
			<tbody>
			<tr>
				<th scope="row">제목</th>
				<td colspan="5" class="subjectLine"><%=sTitle%></td>
			</tr>
			<% 
			'###################################################
			' 인트로페이지 뷰영역 하드코딩 시작
			'---------------------------------------------------
			' 인트로페이지의 공지사항인 경우에는
			' 공통게시판의 공지사항과 다르게 표시되어야 함.
			'---------------------------------------------------
			' 개발완료 후 변동사항이 생기는 바람에,
			' 어쭐 수 없이 페이지명으로 구분하도록 함...
			'###################################################
			If sViewPage = "/common/notice/notice_view.asp" Then 
			%>
				<tr>
					<th scope="row">첨부파일</th>
					<td class="file"><%=sAttachHTML%></td>
					<th scope="row">등록일</th>
					<td class="date"><%=Left(sRegDate,10)%></td>
					<th scope="row">조회수</th>
					<td class="hit"><%=FormatNumber(sHit, 0)%></td>
				</tr>
			<%
			Else
			%>
				<tr>
					<th scope="row">분류</th>
					<td><%=sClassGubunName%></td>
					<th scope="row">등록일</th>
					<td class="date"><%=Left(sRegDate,10)%></td>
					<th scope="row">조회</th>
					<td class="hit"><%=FormatNumber(sHit, 0)%></td>
				</tr>
				<tr>
					<th scope="row">첨부파일</th>
					<td colspan="5" class="file">
						<%=sAttachHTML%>
					</td>
				</tr>
			<%
			End If
			'###################################################
			' 인트로페이지 뷰영역 하드코딩 끝
			'###################################################
			%>
				<tr>
					<td class="content_view" colspan="6">
						<div class="viewArea">
							<%=sContents%>
						</div>
					</td>
				</tr>
			</tbody>
		</table>

	<% If isArray(arrFairInfo) Then %>
	<div class="business_tblWrap">
		<ul class="briefingList">
		<%
			For iifi = 0 To UBound(arrFairInfo, 2)

				fair_code = arrFairInfo(0, iifi)
				fair_title = arrFairInfo(1, iifi)
				fair_date = arrFairInfo(2, iifi)
				fair_target_grade = arrFairInfo(3, iifi)
				If ValueCheck(fair_target_grade) Then
					fair_target_grade = Replace(fair_target_grade, "^", ", ")
				End If
				fair_place = arrFairInfo(4, iifi)
				fair_edate = arrFairInfo(6, iifi)

				strSql = ""
				strSql = strSql & " SELECT fair_subject, fair_content "
				strSql = strSql & " FROM MG_Admission_Fair_Info_Content (NOLOCK) "
				strSql = strSql & " WHERE fair_code = " & fair_code
				strSql = strSql & " ORDER BY ord_no ASC "
				Set objRs = objDb.sqlQuery(strSql, 3)
				If Not (objRs.EoF And objRs.BoF) Then
					arrFairContent = objRs.getrows
				End If
				objRs.close
				Set objRs = Nothing
		%>
		<li>
			<h4 class="tit"><%=fair_title%></h4>
			<table summary="설명회" class="tbl">
				<colgroup>
					<col style="width:120px">
					<col width="">
				</colgroup>
				<tbody>
				<tr>
					<th>일시</th>
					<td><%=fair_date%></td>
				</tr>
				<tr>
					<th>대상</th>
					<td><%=fair_target_grade%></td>
				</tr>
				<tr>
					<th>장소</th>
					<td><%=fair_place%></td>
				</tr>
				<%
					If isarray(arrFairContent) = True Then
						For nLoopCnt = 0 To ubound(arrFairContent,2)
				%>
				<tr>
					<th><%=LineArrange(arrFairContent(0,nLoopCnt))%></th>
					<td><%=LineArrange(arrFairContent(1,nLoopCnt))%></td>
				</tr>
				<%
						Next
					End If
				%>
				</tbody>
			</table>
			<div class="btnArea">
			<% If Now() > fair_edate Then %>
				<span class="btn btn_big btn_gray">예약마감</span>
			<% Else %>
				<a href="javascript:;" onclick="javascript:MM_openBrWindow('http://<%=fSiteDomainURl%>/app_<%=fair_code%>','popup_pyeongchon','width=598,height=700,scrollbars=yes');" class="btn btn_big btn_red">사전예약하기</a>
			<% End If %>
			</div>
		</li>
		<%
			Next
		%>
		</ul>
		<% If ValueCheck(fair_foot_img) = True Then %>
		<div class="footerArea">		
			<img src="<%=Application("img_path")%>/library/intro/<%=fair_foot_img%>">		
		</div>
		<% End If %>
	</div>
	<% End If %>

	</div>
	<div class="btnDiv taR mt25">
		<a href="javascript:goList()" class="btn_icon2 dark_list"><span>목록으로</span></a>
	</div>

	
<%
End Sub






'-- 캠퍼스생활
Sub MenuBBSDrawPage_View_CD0223(sBBSCode, sListPage, sViewPage, sWritepage, oDic)
	Dim sSql
	Dim strUrl
	Dim oReg
	strUrl = ""
	strUrl = strUrl & GetCurrParam(oDic)

	sSql = ""
	If oDic("mediatype") = "MOVIE" Then '동영상
		sSql = sSql & vbCrlf & "SET NOCOUNT ON"
		sSql = sSql & vbCrlf & ""
		sSql = sSql & vbCrlf & "UPDATE MG_Media SET md_visit = md_visit + 1"
		sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
		sSql = sSql & vbCrlf & ""
		sSql = sSql & vbCrlf & "SET NOCOUNT OFF"
		sSql = sSql & vbCrlf & ""
		sSql = sSql & vbCrlf & "SELECT md_subject AS TITLE"
		sSql = sSql & vbCrlf & "      ,md_contents AS CONTENTS_PC"
		sSql = sSql & vbCrlf & "      ,md_visit AS HIT"
		sSql = sSql & vbCrlf & "      ,md_regdate AS REG_DATE"
		sSql = sSql & vbCrlf & "      ,md_size"
		sSql = sSql & vbCrlf & "      ,md_media"
		sSql = sSql & vbCrlf & "      ,md_media_url"
		sSql = sSql & vbCrlf & "FROM   MG_Media(NOLOCK)"
		sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
		
	ElseIf oDic("mediatype") = "PHOTO" Then '포토
		sSql = sSql & vbCrlf & "SET NOCOUNT ON"
		sSql = sSql & vbCrlf & ""
		sSql = sSql & vbCrlf & "UPDATE MG_BBS SET HIT = HIT + 1"
		sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
		sSql = sSql & vbCrlf & ""
		sSql = sSql & vbCrlf & "SET NOCOUNT OFF"
		sSql = sSql & vbCrlf & ""
		sSql = sSql & vbCrlf & "SELECT TITLE"
		sSql = sSql & vbCrlf & "      ,CONTENTS_PC"
		sSql = sSql & vbCrlf & "      ,HIT"
		sSql = sSql & vbCrlf & "      ,REG_DATE"
		sSql = sSql & vbCrlf & "FROM   MG_BBS(NOLOCK)"
		sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
	Else
		Call AlertAndPageMove( "잘못된 접근입니다.", sListPage & "?" & strUrl, "" )
	End If
	
	Set oRs = objDb.sqlQuery(sSql, 1)
	If Not oRs.EOF Then
		sTitle    = oRs("TITLE")
		sHit      = oRs("HIT")
		sRegDate  = Left(CStr(oRs("REG_DATE")), 10)
		sContents = oRs("CONTENTS_PC")
		If oDic("mediatype") = "MOVIE" Then '동영상게시글인경우
			mdSize     = oRs("md_size")
			mdMedia    = oRs("md_media")
			mdMediaUrl = oRs("md_media_url")
		End If
		
		'********************************************
		' 캠퍼스생활 형태 게시판의 경우
		' 에디터로 올린 사진의 경우, IMG태그에 직접 지정된 style 태그를 지운다
		' (style.css 에서 max-width 지정 으로 인해, 발생되는 문제 해결을 위해)
		' - 브라우져상에서 스크립트로 처리하기로 함
		'********************************************
'		Set oReg = New RegExp
'		oReg.IgnoreCase = True
'		oReg.Global = True
'		oReg.Pattern = "<img([^>]*)(style(\s?)=(\s?)(\""|')([^""']*)(\""|'))([^>]*)>"
'		If oReg.Execute(sContents).Count > 0 Then   'style이 포함된 이미지태그가 있는 경우 style을 통채로 날린다
'			'oReg.Pattern = "(style(\s?)=(\s?)(\""|')([^""']*)(\""|'))"
'			'sContents = oReg.Replace(sContents, "")
'		End If
'		Set oReg = Nothing
		
	Else
		Call AlertAndPageMove( "해당 글이 존재하지 않습니다.", sListPage & "?" & strUrl, "" )
	End If
	oRs.Close
	Set oRs = Nothing
	%>
	<script type="text/javascript">
	function goList() {
		window.location.href = "<%=sListPage%>?<%=GetCurrParam(oDic)%>&selyear=<%=oDic("selyear")%>&selmonth=<%=oDic("selmonth")%>"
	}
	function ImageList() {
		document.getElementById("loadingBar2").style.display="block";
		document.getElementById("divListArea2").style.display="none";
	
		$.ajax({
			type:"GET",
			url: "/common/menubbs/photolife/photo_life_view_image_ajax.asp",
			data: "Code=<%=sBBSCode%>",
			dataType:"html",
			success: function(html,textStatus) {
				document.getElementById("divListArea2").innerHTML = html;
				document.getElementById("loadingBar2").style.display="none";
				document.getElementById("divListArea2").style.display="block";
				//setContentHeight()
			},
			error: function(xhr, textStatus, errorThrown) {
				alert("이미지 로딩중 오류 발생");
			},
			complete: function(xhr, textStatus) {
				//setContentHeight();
			}
		});
	}
	
	$(document).ready(function() {
		if("<%=oDic("mediatype")%>" == "PHOTO") //사진게시판인경우에만 사진로딩
			ImageList();
		
		//이미지태그의 style 제거(height속성 제거)
		var aImg = $("#spnTmp img");
		for(var i=0; i<aImg.length; i++) {
			$(aImg[i]).css("height", "auto");
		}
		
		
	});
	</script>
	<!--사진 게시판-->
	<!--<div id="div_photo_life" <%If bTabMenuUseLess = False Then%>class="normal_tab_in"<%End If%> style="display:block; position:static">-->
	<div id="div_photo_life" style="display:block; position:static">
		<div class="board_view_type_01">
			<table summary="제목, 등록일, 조회수">
			<colgroup>
			<col width="90"/>
			<col width="*"/>
			<col width="90"/>
			<col width="*"/>
			</colgroup>
			<tbody>
				<tr>
					<th scope="row">제목</th>
					<td colspan="3" class="subjectLine"><strong><%=sTitle%></strong></td>
				</tr>
				<tr>
					<th scope="row">조회수</th>
					<td>
						<%=sHit%>
						<input type="hidden" name="Selectedimg" id="Selectedimg" value="<%=fCode%>"/>
						<input type="hidden" name="ViewPath" id="ViewPath" value="<%=toppath%>"/>
						<input type="hidden" name="dbCode" id="dbCode" value="<%=Code%>"/>
					</td>
					<th scope="row">등록일</th>
					<td><%=sRegDate%></td>
				</tr>
				<tr>
					<td class="content_view" colspan="4">
	
						<div class="viewArea">
							<span id="spnTmp">
							<%=sContents%>
							</span>
							<br /><br />
							<div class="board_view_img">
								<%
									'---------------------------------------
									' 동영상 게시글인 경우 시작
									'---------------------------------------
									If oDic("mediatype") = "MOVIE" Then
										nWidth="323" : nHeight="295"
										If mdSize = "wide" Then
											nWidth="435" : nHeight="300"
										End If
										
										If mdMedia <> "" OR mdMediaUrl <> "" Then
											If mdMedia <> "" Then
												mdMedia = "/Data/Media/" & mdMedia
												%>
												<embed type="application/x-mplayer2" src="<%=mdMedia%>" ShowControls="true" width="<%=nWidth%>" height="<%=nHeight%>"></embed>
												<%
											Else
												mdMedia = mdMediaUrl
												%>
												<iframe src="<%=mdMedia%>" width="<%=nWidth%>" height="<%=nHeight%>" marginwidth="0" marginheight="0" scrolling="No" frameborder="0"></iframe>
												<%
											End If
										Else
										%>
											<br><br><br><br><br><br><br><br><br>
											<center><b>영상이 없습니다.</b></center>
										<%
										End If
									'---------------------------------------
									' 동영상 게시글인 경우 끝
									'---------------------------------------
								%>
									
								<%
									'---------------------------------------
									' 일반 사진데이터 게시글인 경우 시작
									'---------------------------------------
									Else
								%>
									<br>
									<div id="loadingBar2" style="">
										<table border="0" cellspacing="0" cellpadding="0" width="100%">
										<tr>
											<td align="center"><img src="<%=Application("img_path")%>/library/common/Loading.gif"></td>
										</tr>
										<tr>
											<td align="center" height="10">&nbsp;</td>
										</tr>
										<tr>
											<td align="center">이미지를 가져오는 중 입니다.</td>
										</tr>
										</table>
									</div>
									<div id="divListArea2" style="display:none;"></div>
								<%
									'---------------------------------------
									' 일반 사진데이터 게시글인 경우 끝
									'---------------------------------------
									End If
								%>
							</div>
						</div>
	
					</td>
				</tr>
			</tbody>
			</table>
		</div>
	
		<div class="btnDiv taR mt15">
			<a href="javascript:goList();" class="btn_icon2 dark_list"><span>목록으로</span></a>
		</div>
		
		<% Call MenuBBSUseComment(sBBSCode) '캠퍼스생활은 코멘트도 보여준다 %>
		
	</div>
	<!--사진 게시판-->
<%
End Sub






'-- 학습자료실
Sub MenuBBSDrawPage_View_CD0224(sBBSCode, sListPage, sViewPage, sWritepage, oDic)
	Dim sSql
	Dim bRegAuth, sTeacherCheck, strUrl
	
	strUrl = GetCurrParam(oDic)
	'strUrl = strUrl & "curPage=" & oDic("curPage") & "&subjectgubun=" & oDic("subjectgubun") & "&searchtype=" & oDic("searchtype") & "&searchwrod=" & oDic("searchword")

	Dim sNaviCode
	sSql = "SELECT NAVI_CODE FROM MG_BBS_TARGET_NAVI WHERE BBS_CODE = " & SafeQuery(sBBSCode)
	Set oRs = objDb.sqlQuery(sSql, 1)
	If Not oRs.EOF Then
		sNaviCode = oRs("NAVI_CODE")
	End If
	oRs.Close

	Dim sBbsExcptSC, sBbsExcptNRJ
	sBbsExcptSC = IIF(sNaviCode=802, True, False)	' 서초>입시전략
	sBbsExcptNRJ = IIF(sNaviCode=(IIF(IsDevSvr(), 1089, 1224)), True, False)	' 노량진>가정통신문

	
	'**** 게시물정보
	Dim sHit, sTitle, sClassGubunName, sSubjectGubunName, sContents, sRegDate, sRegName, sRegCode
	sSql = ""
	sSql = sSql & vbCrlf & "SET NOCOUNT ON"
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "UPDATE MG_BBS SET HIT= HIT + 1"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "SET NOCOUNT OFF"
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "SELECT B.TITLE"
	If sBbsExcptSC = True Then
	sSql = sSql & vbCrlf & "      ,OCCUR_DATE AS CLASS_GUBUN_NAME"
	sSql = sSql & vbCrlf & "      ,(case when SEASON_GUBUN = 'S' then '수시' when SEASON_GUBUN = 'F' then '정시' else '전체' end) AS SUBJECT_GUBUN_NAME"
	Else
	sSql = sSql & vbCrlf & "      ,(SELECT Z.NAME FROM MG_CODE_SUB(NOLOCK) Z WHERE Z.CODE = B.CLASS_GUBUN) AS CLASS_GUBUN_NAME"
	sSql = sSql & vbCrlf & "      ,(SELECT Z.NAME FROM MG_CODE(NOLOCK) Z WHERE Z.CODE = B.SUBJECT_GUBUN) AS SUBJECT_GUBUN_NAME"
	End If
	sSql = sSql & vbCrlf & "      ,B.CONTENTS_PC"
	sSql = sSql & vbCrlf & "      ,B.REG_NAME"
	sSql = sSql & vbCrlf & "      ,B.REG_CODE"
	sSql = sSql & vbCrlf & "      ,B.HIT"
	sSql = sSql & vbCrlf & "      ,B.REG_DATE"
	sSql = sSql & vbCrlf & "FROM   MG_BBS(NOLOCK) B"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
	Set oRs = objDb.sqlQuery(sSql, 1)
	If Not oRs.EOF Then
		sHit              = oRs("HIT")
		sTitle            = oRs("TITLE")
		sClassGubunName   = oRs("CLASS_GUBUN_NAME")
		sSubjectGubunName = oRs("SUBJECT_GUBUN_NAME")
		sContents         = oRs("CONTENTS_PC")
		sRegDate          = oRs("REG_DATE")
		sRegName          = oRs("REG_NAME")
		sRegCode          = oRs("REG_CODE")
	Else
		Call AlertAndPageMove( "해당 글이 존재하지 않습니다.", sListPage & "?" & strUrl, "" )
	End If
	oRs.Close
	Set oRs = Nothing
	
	
	
	'**** 첨부파일정보
	Dim sAttachHTML, sFilePath, sFileName
	sSql = ""
	sSql = sSql & vbCrlf & "SELECT FILENAME"
	sSql = sSql & vbCrlf & "      ,FILEPATH"
	sSql = sSql & vbCrlf & "FROM   MG_BBS_ATTACH(NOLOCK)"
	sSql = sSql & vbCrlf & "WHERE  BBS_CODE = " & SafeQuery(sBBSCode)
	sSql = sSql & vbCrlf & "AND    SEQ > 0"
	sSql = sSql & vbCrlf & "ORDER  BY SEQ ASC"
	Set oRs = objDb.sqlQueryNew(sSql, 1)
	sAttachHTML = ""
	Do Until oRs.EOF
		sFilePath = oRs("FILEPATH")
		sFileName = oRs("FILENAME")
		If sAttachHTML <> "" Then
			sAttachHTML = sAttachHTML & "&nbsp;&nbsp;&nbsp;&nbsp;"
		End If
		sAttachHTML = sAttachHTML & "<a href=""/Public/Down.asp?fileFullPath=" & Server.URLEncode(sFilePath) & "&realFileName=" & Server.URLEncode(sFileName) & """><span class=""ir_ico bbsFile"">다운로드</span>" & sFileName & "</a>"
		oRs.MoveNext
	Loop
	oRs.Close
	Set oRs = Nothing
	
	'**** 수정가능권한
	sTeacherCheck = GetCheckTeacherDetail(GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_"), sMemberId)
	bRegAuth = False
	If Not(sTeacherCheck = "" Or Len(sTeacherCheck) < 5) Then
		bRegAuth = True
	End If
%>
	
	<script type="text/javascript">
	<!--
	function delContentX() {
		if(confirm("삭제하시겠습니까?")) {
			document.getElementById("frmDelete").submit();
		}
	}
	
	function goList() {
		window.location.href = "<%=sListPage%>?<%=strUrl%>";
	}
	//-->
	</script>
	<div class="board_view_type_01">
		<table cellpadding="0" cellspacing="0" border="0">
			<colgroup>
				<col width="100px" />
				<col width="*" />
				<col width="100px" />
				<col width="*" />
				<col width="100px" />
				<col width="*" />
            </colgroup>
			<tbody>
				<tr>
	                <th scope="row">제목</th>
	                <td colspan="6" class="subjectLine"><strong><%=sTitle%></strong></td>
	            </tr>
				<tr>
					<th scope="row"><%=IIF(sBbsExcptSC=True, "학년도", "분류")%></th>
					<td><%=sClassGubunName%></td>
					<% If sBbsExcptNRJ = False Then %>
					<th scope="row"><%=IIF(sBbsExcptSC=True, "분류", "영역")%></th>
					<td><%=sSubjectGubunName%></td>
					<% End If %>
					<th scope="row">작성자</th>
					<td <%=IIF(sBbsExcptNRJ=True, "colspan='3'", "")%>><%=sRegName%></td>
				</tr>
				<tr>
					<th scope="row">등록일</th>
					<td><%=Left(CStr(sRegDate) ,10)%></td>
					<th scope="row">조회수</th>
					<td colspan="3"><%=FormatNumber(sHit, 0)%></td>
				</tr>
	
				<tr>
					<th scope="row">첨부파일</th>
					<td colspan="5" class="file">
						<%=sAttachHTML%>
					</td>
				</tr>
				<tr>
					<td class="content_view" colspan="6">
						<div class="viewArea">
							<%=sContents%>
						</div>
					</td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="btnDiv taR mt25">
		<% If bRegAuth = True And sRegCode = GetLoginCookie("MemId") Then %>
			<a href="<%=sWritepage%>?<%=currParam()%>" class="btn_icon white_arrow"><span>수정</span></a>
			<a href="javascript:;" onclick="delContentX();" class="btn_icon grey_arrow"><span>삭제</span></a>
		<% End If %>
		<a href="javascript:goList()" class="btn_icon dark_arrow"><span>목록으로</span></a>
		<form id="frmDelete" name="form_del_content" target="runSource" method="post" action="/common/menubbs/save/savepage_CD0224.asp" enctype="multipart/form-data">
			<input type="hidden" name="flag" value="delete"/>
			<input type="hidden" name="code" value="<%=sBBSCode%>" />
			<input type="hidden" name="redirect" value="<%=sListPage%>?<%=strUrl%>" />
		</form>
	</div>
<%
End Sub
'#############################################################################################################################
' 뷰페이지 관련함수 끝
'#############################################################################################################################


















'#############################################################################################################################
' 작성페이지 관련함수 시작
'#############################################################################################################################
'** 메인sub
Sub MenuBBSDrawPage_Write(sBBSGubun, sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
	Select Case CStr(sBBSGubun)
'		Case "CD0222" '공지사항
'			Call MenuBBSDrawPage_View_CD0222(sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
'		Case "CD0223" '캠퍼스생활
'			Call MenuBBSDrawPage_View_CD0223(sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
		Case "CD0224" '학습자료실
			Call MenuBBSDrawPage_Write_CD0224(sBBSGubun, sBBSCode, sListPage, sViewPage, sWritepage, oRequestDic)
	End Select
End SUb



'** 학습자료실 sub
Sub MenuBBSDrawPage_Write_CD0224(sBBSGubun, sBBSCode, sListPage, sViewPage, sWritepage, oDic)
	Dim sSql
	Dim bRegAuth, sTeacherCheck, strUrl
	
	strUrl = GetCurrParam(oDic)
	'strUrl = strUrl & "curPage=" & oDic("curPage") & "&subjectgubun=" & oDic("subjectgubun") & "&searchtype=" & oDic("searchtype") & "&searchwrod=" & oDic("searchword")
	
	'**** 게시물정보
	Dim sHit, sTitle, sClassGubun, sSubjectGubun, sContents, sRegDate, sRegName, sRegCode
	sSql = ""
	sSql = sSql & vbCrlf & "SET NOCOUNT ON"
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "UPDATE MG_BBS SET HIT= HIT + 1"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "SET NOCOUNT OFF"
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "SELECT B.TITLE"
	sSql = sSql & vbCrlf & "      ,B.CLASS_GUBUN"
	sSql = sSql & vbCrlf & "      ,B.SUBJECT_GUBUN"
	sSql = sSql & vbCrlf & "      ,B.CONTENTS_PC"
	sSql = sSql & vbCrlf & "      ,B.REG_NAME"
	sSql = sSql & vbCrlf & "      ,B.REG_CODE"
	sSql = sSql & vbCrlf & "      ,B.HIT"
	sSql = sSql & vbCrlf & "      ,B.REG_DATE"
	sSql = sSql & vbCrlf & "FROM   MG_BBS(NOLOCK) B"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(sBBSCode)
	sSql = sSql & vbCrlf & "AND    REG_ID = '" & sMemberId & "'"
	Set oRs = objDb.sqlQuery(sSql, 1)
	If Not oRs.EOF Then
		sHit              = oRs("HIT")
		sTitle            = oRs("TITLE")
		sClassGubun       = oRs("CLASS_GUBUN")
		sSubjectGubun     = oRs("SUBJECT_GUBUN")
		sContents         = oRs("CONTENTS_PC")
		sRegDate          = oRs("REG_DATE")
		sRegName          = oRs("REG_NAME")
		sRegCode          = oRs("REG_CODE")
	Else
		Call AlertAndPageMove( "해당 글이 존재하지 않습니다.", sListPage & "?" & strUrl, "" )
	End If
	oRs.Close
	Set oRs = Nothing
	
	'**** 수정가능권한
	sTeacherCheck = GetCheckTeacherDetail(GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_"), sMemberId)
	bRegAuth = False
	If Not(sTeacherCheck = "" Or Len(sTeacherCheck) < 5) Then
		bRegAuth = True
	End If
	If bRegAuth = False Then
		Call AlertAndPageMove( "수정권한이 없습니다.", sListPage & "?" & strUrl, "" )
	End If
	
	
	
	
	
	'**** 영역정보(기존그대로)
	Dim sTeacherArea, arrTeacherArea
	Dim arrSubjectGubunValue(), arrSubjectGubunName()
	Dim sOptionHTMLSubjectGubun
	sTeacherArea = GetTeacherAreaDetail(GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_"), sMemberId)
	sSql = ""
	sSql = sSql & " SELECT B.TC_AREA, C.NAME "
	sSql = sSql & " FROM MG_TEACHER (NOLOCK) A "
	sSql = sSql & " 	INNER JOIN MG_TEACHER_SUB (NOLOCK) B ON A.CODE = B.TC_CODE "
	sSql = sSql & " 	INNER JOIN MG_CODE (NOLOCK) C ON B.TC_AREA = C.CODE "
	sSql = sSql & " WHERE C.KIND='class' and C.CODE <> 'CD0044' "
	sSql = sSql & "		AND B.TC_CCODE_DETAIL = '" & GetCampusVarsSiteMGC("_CAMPUS_DETAIL_CODE_") & "' "
	sSql = sSql & "		AND C.CODE IN ('"& Replace(sTeacherArea, ",", "','")&"') "
	sSql = sSql & " GROUP BY B.TC_AREA, C.NAME "
	'topre sSql
	'Response.End
	Set oRs = objDb.sqlQuery(sSql, 3)
	arrTeacherArea = Null
	If Not (oRs.EoF And oRs.BoF) Then
		Call ConvertOptionArray(oRs.GetRows(), arrSubjectGubunValue, arrSubjectGubunName)
	End If
	oRs.close
	Set oRs = Nothing
	'println sSubjectGubun
	sOptionHTMLSubjectGubun = CreateOptionString(arrSubjectGubunName, arrSubjectGubunValue, sSubjectGubun, "영역선택")
	
	
	
	'**** 첨부파일정보
	Dim sAttachHTML

	sAttachHTML = GetPrevAttachFileHTML(sBBSCode)
	
	

%>
	
	<script type="text/javascript">
	<!--
	var CONTENTS = { //HTML내용 옮기기 객체
		"setData" : function(sContents) {
			$("#contents").val(sContents);
		},
		"getData" : function() {
			return $("#contents").val();
		}
	}
	var EDITOR = {//editor
		"setData" : function(sData) {
			CKEDITOR.instances.ck_contents.setData(sData);
		},
		"getData" : function() {
			return CKEDITOR.instances.ck_contents.getData();
		},
		"focus" : function() {
			CKEDITOR.instances.ck_contents.focus();
		}
	}
	$(document).ready(function() {
		attachAdd();
	});
	//삭제
	function checkDelete() {
		if(confirm("삭제하시겠습니까?") == true) {
			document.getElementById("frmDelete").submit();
		}
	}
	//저장
	function checkSave() {
		var oFrm = document.getElementById("frmWrite");
		if(oFrm.elements["title"].value == "") {
			alert("제목을 입력해주세요");
			return;
		}
		if(oFrm.elements["classgubun"].value == "") {
			alert("분류를 선택해주세요");
			return;
		}
		if(oFrm.elements["subjectgubun"].value == "") {
			alert("영역을 선택해주세요");
			return;
		}
		if(EDITOR.getData() == "") {
			alert("내용을 입력해주세요");
			EDITOR.focus();
			return;
		}
		if(confirm("저장하시겠습니까?") == true) {
			CONTENTS.setData(EDITOR.getData());
			oFrm.elements["deletefiles"].value = attachGetDeletedfileCode();//삭제파일정보
			oFrm.elements["renamefiles"].value = attachGetRenameFileString();//이름변경할 파일정보
			oFrm.submit();
		}
	}
	
	function attachDel(sCode) {
		var $ul  = $("#ulAttachPrev");
		var oTrg = $ul.find("LI[code=" + sCode + "]");
		if(oTrg.length > 0) {
			oTrg[0].style.display = "none";
		}
	}

	function attachAdd() {
		var $ul = $("#ulAttachNew");
		var nLen = $ul.find("li").length;
		var sHTML = "";
		
		sHTML += "<li>";
		sHTML += "	<div>";
		sHTML += "		<input type='file' name='uploadfile' viewtype='hiddenfile' target='spnFile" + (nLen+1) + "' hoverclass='overed'>";
		sHTML += "        <div id='spnFile" + (nLen+1) + "'>";
		sHTML += "            <input type='text' size='60' class='file_input_textbox w1'>";
		sHTML += "            &nbsp;<a href='#' class='btn_send2'><span>찾아보기</span></a>";
		sHTML += "        </div>";
		sHTML += "        <div class='spnRename mt5'>";
		sHTML += "            파일명 : <input type='text' size='20' renamefile='Y' class='input_search'>";
		sHTML += "        </div>";
		sHTML += "    </div>";
		sHTML += "    <div class='mt10 fz12 font_blue3 dvInfo' style='margin-bottom:20px;'>";
		sHTML += "    	* 첨부파일 용량은 15MB로 제한됩니다. 첨부파일을 등록할 경우, 파일명을 수정하실 수 있습니다.<br>";
		sHTML += "		* 파워포인트(ppt, pptx), 엑셀(xls, xlsx), 워드(doc, docx), 한글(hwp), PDF, 이미지(jpg, gif, png), 압축(zip) 파일만 <br>&nbsp;&nbsp;업로드 가능합니다";
		sHTML += "    </div>";
		sHTML += "</li>";
		$ul.append(sHTML);
		
		convertFileLayout();//jquery.asp 에 정의되어있는 레이아웃변경 스크립트
	}
	function attachGetDeletedfileCode() {
		var aLi = $("#ulAttachPrev").find("LI");
		var sReturn = "";
		for(var i=0; i<aLi.length; i++) {
			if(aLi[i].style.display == "none") {
				var sCode = aLi[i].getAttribute("code"); 
				if(sCode) {
					if(sReturn != "")
						sReturn += ",";
					sReturn += sCode;
				}
			}
		}
		return sReturn;
	}
	
	function attachGetRenameFileString() {
		var aLi = $("#ulAttachNew").find("LI");
		var sReturn = "";
		for(var i=0; i<aLi.length; i++) {
			//if($(aLi[i]).find("input[type=file][name=uploadfile]")[0].value != "") {
				var oInput = $(aLi[i]).find("input[type=text][renamefile=Y]")[0];
				sReturn += "," + $.trim(oInput.value); //dext업로드와 인덱스를 일치시키기위해 처음부터 ,를 붙인다
			//}
		}
		return sReturn;
	}
	//-->
	</script>

	<div class="board_view_type_01">
		<form id="frmWrite" method="POST" enctype="multipart/form-data"  action="/common/menubbs/save/savepage_CD0224.asp" onsubmit="return false;">
			<table cellpadding="0" cellspacing="0" border="0">
				<colgroup>
					<col width="100px" />
					<col width="*" />
					<col width="100px" />
					<col width="*" />
					<col width="100px" />
					<col width="*" />
	            </colgroup>
				<tbody>
					<tr>
		                <th scope="row">제목</th>
		                <td colspan="6" class="subjectLine">
		                	<input type="text" name="title" value="<%=sTitle%>" size="80" />
		                </td>
		            </tr>
					<tr>
						<th scope="row">분류</th>
						<td>
							<select name="classgubun">
								<%=SubcodeOptionStringByPCode("CD0014", sClassGubun, "")%>
							</select>
						</td>
						<th scope="row">영역</th>
						<td>
							<select name="subjectgubun">
								<%=sOptionHTMLSubjectGubun%>
							</select>
						</td>
						<th scope="row">작성자</th>
						<td><%=sRegName%></td>
					</tr>
					<tr>
					<td class="content_view" colspan="6">
						<p class="mt15">※ 내용을 워드나 파워포인트에서 작성 후 복사하여 붙여넣기 하시면 보다 쉽게 편집 가능합니다.</p>
						<div style="padding:2px;" class="mt10">
							<!--위지윅에디터 begin-->
						<%
						'textarea 폼 id, name => ck_contents	'폼데이터 검증시 이용
						'수정시 기존 내용 저장 asp변수 : sContents4editor ,, 사용전 미리 선언 및 할당
						sContents4editor = sContents
						sNotice4editor = ""
						%>
						<!--#include virtual="/editor2/inc_ck_editor.asp" -->
						<!--위지윅에디터 end-->
						</div>
					</td>
				</tr>
				</tbody>
			</table>
			<table cellpadding="0" cellspacing="0" border="0">
				<colgroup>
					<col width="100px" />
					<col width="*" />
					<col width="100px" />
					<col width="*" />
					<col width="100px" />
					<col width="*" />
	            </colgroup>
				<tbody>
					<% If sAttachHTML <> "" Then %>
						<tr>
			                <th scope="row">이전 첨부파일</th>
			                <td colspan="6" class="subjectLine">
			                	<ul id="ulAttachPrev"><%=sAttachHTML%></ul>
			                </td>
						</tr>
					<% End If %>
					<tr>
		                <th scope="row" class="vt">
		                	파일첨부
		                	<div class="mt5">
								<a href="javascript:attachAdd();" class="btn_dnLine">추가</a>
							</div>
		                </th>
		                <td colspan="6" class="subjectLine">
		                	<ul id="ulAttachNew"></ul>
		                </td>
					</tr>
				</tbody>
			</table>
			<textarea name="contents" id="contents" style="display:none;"><%=sContents%></textarea>
			<input type="hidden" name="flag" value="modify" />
			<input type="hidden" name="code" value="<%=sBBSCode%>" />
			<input type="hidden" name="deletefiles" value="" />
			<input type="hidden" name="renamefiles" value="" />
			<input type="hidden" name="redirect" value="<%=sViewPage%>?code=<%=sBBSCode%>&<%=strUrl%>" />
		</form>
		
		</form id="frmDelete" method="POST" enctype="multipart/form-data">
			<input type="hidden" name="flag" value="delete" />
			<input type="hidden" name="code" value="<%=sBBSCode%>" />
			<input type="hidden" name="redirect" value="<%=sListpage%>?<%=strUrl%>" />
		</form>
	</div>
	<div class="btnDiv mt25">
		<div class="fl">
			<% If CInt(sBBSCode) > 0 Then %>
			<a href="javascript:;" onclick="checkDelete();" class="btn_icon dark_arrow" ><span>삭제</span></a>	
		<% End If %>
		</div>
		<div class="fr">
			<a href="javascript:;" onclick="checkSave();" class="btn_icon red_arrow"><span>확인</span></a>
		<% If CInt(sBBSCode) > 0 Then %>
			<a href="<%=sViewPage%>?code=<%=sBBSCode%>&<%=strUrl%>>" class="btn_icon grey_arrow" ><span>취소</span></a>
		<% Else %>
			<a href="<%=sListPage%>" class="btn_icon grey_arrow" >취소</a>
		<% End If %>
		</div>
		<form id="frmDelete" method="post" action="/common/menubbs/save/savepage_CD0224.asp" onsubmit="return false;" enctype="multipart/form-data">
		<input type="hidden" name="flag" value="delete"/>
		<input type="hidden" name="code" value="<%=sBBSCode%>" />
		<input type="hidden" name="redirect" value="<%=sListPage%>?<%=currParam()%>" />
		</form>
	</div>
<%
End Sub

'#############################################################################################################################
' 작성페이지 관련함수 끝
'#############################################################################################################################

















'#############################################################################################################################
' 댓글 관련함수 시작
'#############################################################################################################################
Sub MenuBBSUseComment(sBBSCode)
	Dim nCommentMax : nCommentMax = 200
%>
	<div id="loadingBar" style="">
		<table border="0" cellspacing="0" cellpadding="0" width="100%">
			<tr>
				<td align="center"><img src="<%=Application("img_path")%>/library/common/Loading.gif"></td>
			</tr>
			<tr>
				<td align="center" height="10">&nbsp;</td>
			</tr>
			<tr>
				<td align="center">데이터를 가져오는 중 입니다.</td>
			</tr>
		</table>
	</div>
	<div id="divListArea1" class="mt15"></div>
	
	<script type="text/javascript">
	var sRedirect = "<%=Request.ServerVariables("PATH_INFO")%>?<%=currParam()%>";
	var MEMNAME      = "<%=GetLoginCookie("MemName")%>";
	var LOGINMEMCODE = "<%=gLoginMemCode%>";
	var nCommentMax = parseInt("<%=nCommentMax%>");
	
	$(document).ready(function() {
		if(!nCommentMax) //길이지정 오류가발생하면 자동으로 200자제한한다
			nCommentMax = 200;
			
		commentLoadList();
	});
	function isLoggedin() {
		if(parseInt(LOGINMEMCODE) > 0)
			return true;
		else
			return false;
		
		
	}
	function commentTxtArea() {
		return document.getElementById("txtContents");
	}
	
	function commentSave() {
		var oArea = commentTxtArea();
		if(oArea.readOnly == true) {
			alert("로그인 후 작성 가능합니다");
		}
		else {
			var oFrm = getCommentForm();
			var sFlag = oFrm.elements["flag"].value;
			if(oFrm.elements["memname"].value == "") {
				alert("작성자를 입력해주세요");
				return;
			}
			if($.trim($(oFrm.elements["contents"]).val()) == "") {
				alert("내용을 입력해주세요");
				oFrm.elements["contents"].focus();
				return;
			}
			oFrm.elements["contents"].value = $.trim(oFrm.elements["contents"].value);
			if(confirm("댓글을 " + (sFlag == "modify" ? "수정" : "등록") + "하시겠습니까?") == true) {
				if(sFlag != "modify")
					oFrm.elements["flag"].value = "new";
					
				oFrm.elements["redirect"].value = sRedirect;
				oFrm.submit();
			}
		}
	}
	function getCommentForm() {
		return document.getElementById("frmComment");
	}
	function commentPageMove(nPage) {
		var $loadingBar = $("#loadingBar");
		var $listDiv    = $("#divListArea1");
		
		$loadingBar.css("display", "block");
		$listDiv.css("visibility", "hidden");
		
		nPage = nPage || "";
		
		$.ajax({
			type:"GET",
			url: "/common/menubbs/comment/comment_list.asp",
			data: "bbscode=<%=sBBSCode%>&commentmax=" + nCommentMax + "&curPage=" + nPage,
			dataType:"html",
			success: function(html,textStatus) {
				$listDiv.html(html);
				$loadingBar.css("display", "none");
				$listDiv.css("visibility", "visible");
			},
			error: function(xhr, textStatus, errorThrown) {
				alert("댓글 처리중 오류 발생");
			}
		});
	}
	function commentLoadList() {
		commentPageMove(1);
	}
	function commentDelete(sCode) {
		if(confirm("댓글을 삭제 하시겠습니까?") == true) {
			var oFrm = getCommentForm();
			oFrm.elements["flag"].value = "delete";
			oFrm.elements["code"].value = sCode;
			oFrm.elements["redirect"].value = sRedirect;
			oFrm.submit();
		}
	}
	function commentCheckLen() {
		var $Area = $("#txtContents")
		if($Area.attr("readonly") == true)
			return;
			
		var sTxt = $.trim($Area.val());
		var nLen = countByte(sTxt);
		if(nLen > nCommentMax) {
			alert("초과 입력된 내용은 삭제됩니다.");
			sTxt = $.trim(cutString(sTxt, nCommentMax));
			$Area.val(sTxt);
			nLen = countByte(sTxt);
		}
		$("#nowByte").text(nLen);
	}
	//수정
	function commentModify(sCode) {
		var oDiv = $(document).find("div[code=" + sCode + "]");
		if(oDiv) {
			oDiv = oDiv[0];
			var sName = $($(oDiv).find("span.name")[0]).text();
			var sContent = $($(oDiv).find("p.board_reply_type_01_unit_p2")[0]).text();
			
			var oFrm = getCommentForm();
			oFrm.elements["memname"].value = sName;
			oFrm.elements["contents"].value = sContent;
			oFrm.elements["flag"].value = "modify";
			oFrm.elements["code"].value = sCode;
			
			commentTxtArea().readOnly = false;
			commentCheckLen();
		}
	}

	//코멘트 작성란 기본상태로 바꾸기
	function commentSetNormal() {
		var oFrm = getCommentForm();
		oFrm.elements["memname"].value = MEMNAME;
		oFrm.elements["contents"].value = "";
		oFrm.elements["flag"].value = "new";
		oFrm.elements["code"].value = "";
		if(isLoggedin() == false) {//로그인 안한사람일 경우, 작성불가상태로 재설정
			commentTxtArea().readOnly = true;
		}
		commentCheckLen();
	}
	
	function commentPopupPass(sMode, sCode){
		window.open("/common/menubbs/comment/popup_comment_pw.asp?flag=" + sMode + "&code=" + sCode + "&bbscode=<%=sBBSCode%>","pop_pass", "left=0,top=0,width=400,height=220,statusbar=no,scrollbars=no");
	}
	</script>
<%
End Sub
'#############################################################################################################################
' 댓글 관련함수 끝
'#############################################################################################################################
%>