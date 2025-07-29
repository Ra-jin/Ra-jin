<%
Response.Addheader "Cache-Control", "No-Cache"
Response.Addheader "Expires", "0"
Response.Addheader "Pragma", "No-Cache"
Response.Contenttype = "Text/Html; Charset=euc-Kr"

Session.Codepage = "949"
Response.Charset = "euc-kr"
%>
<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
Dim sBBSCode
Dim nTotalCount
Dim nCommentMax
Dim sListHTML
Dim sReadOnly
Dim sPagingHTML
Dim nPagingBlock, nCountPerPage
Dim nPagingGroup, npagingStart, nMaxPage
Dim i

nPagingBlock = 5
nCountPerPage = 10

sBBSCode    = VARS("bbscode")
nCommentMax = Request("commentmax") '최대 코멘트길이

If valuecheck(sBBSCode) = False Then
	Response.End
End If

If ValueCheck(nCommentMax) = False Then '값없으면 기본값 200자로
	nCommentMax = 200
End If

If valuecheck(VARS("curPage")) = False Then
	VARS("curPage") = 1
End If

nCurPage = CInt(VARS("curPage"))


'**** 전체갯수 카운트
sSql = ""
sSql = sSql & vbCrlf & "SELECT COUNT(*)"
sSql = sSql & vbCrlf & "FROM   MG_BBS_COMMENT"
sSql = sSql & vbCrlf & "WHERE  BBS_CODE = " & SafeQuery(sBBSCode)
nTotalCount = objDb.sqlResult(sSql)


'**** 리스트조회, HTML생성
sSql = ""
sSql = sSql & vbCrlf & "WITH COMMENT_LIST AS"
sSql = sSql & vbCrlf & "("
sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY REG_DATE DESC) AS ROWNUMBER"
sSql = sSql & vbCrlf & "          ,CODE"
sSql = sSql & vbCrlf & "          ,BBS_CODE"
sSql = sSql & vbCrlf & "          ,MEM_CODE"
sSql = sSql & vbCrlf & "          ,MEM_NAME"
sSql = sSql & vbCrlf & "          ,CONTENTS"
sSql = sSql & vbCrlf & "          ,CLASSNAME"
sSql = sSql & vbCrlf & "          ,PASSWORD"
sSql = sSql & vbCrlf & "          ,REG_DATE"
sSql = sSql & vbCrlf & "    FROM   MG_BBS_COMMENT"
sSql = sSql & vbCrlf & "    WHERE  BBS_CODE = " & SafeQuery(sBBSCode)
sSql = sSql & vbCrlf & ")"
sSql = sSql & vbCrlf & "SELECT *"
sSql = sSql & vbCrlf & "FROM   COMMENT_LIST"
sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((nCurPage - 1) * nCountPerPage) + 1) & " AND " & (nCurPage * nCountPerPage)
sSql = sSql & vbCrlf & "ORDER  BY REG_DATE DESC"

'--2005버전용 쿼리문 재생성
sSql = ""
sSql = sSql & vbCrlf & "SELECT *"
sSql = sSql & vbCrlf & "FROM"
sSql = sSql & vbCrlf & "("
sSql = sSql & vbCrlf & "    SELECT ROW_NUMBER() OVER(ORDER BY REG_DATE DESC) AS ROWNUMBER"
sSql = sSql & vbCrlf & "          ,CODE"
sSql = sSql & vbCrlf & "          ,BBS_CODE"
sSql = sSql & vbCrlf & "          ,MEM_CODE"
sSql = sSql & vbCrlf & "          ,MEM_NAME"
sSql = sSql & vbCrlf & "          ,CONTENTS"
sSql = sSql & vbCrlf & "          ,CLASSNAME"
sSql = sSql & vbCrlf & "          ,PASSWORD"
sSql = sSql & vbCrlf & "          ,REG_DATE"
sSql = sSql & vbCrlf & "    FROM   MG_BBS_COMMENT"
sSql = sSql & vbCrlf & "    WHERE  BBS_CODE = " & SafeQuery(sBBSCode)
sSql = sSql & vbCrlf & ") WRAP"
sSql = sSql & vbCrlf & "WHERE  ROWNUMBER BETWEEN " & (((nCurPage - 1) * nCountPerPage) + 1) & " AND " & (nCurPage * nCountPerPage)
sSql = sSql & vbCrlf & "ORDER  BY REG_DATE DESC"
Set oRs = objDb.sqlQuery(sSql, 1)
sListHTML = ""
Do Until oRs.EOF
	sListHTML = sListHTML & "<div class=""board_reply_type_01_unit"" code=""" & oRs("CODE") & """>"
	sListHTML = sListHTML & "    <div class=""board_reply_type_01_unit_p clear"">"
	sListHTML = sListHTML & "    	<p class=""fl""><span class=""name"">" & oRs("MEM_NAME") & "</span> <span class=""date"">" & (IIF(ValueCheck(oRs("CLASSNAME")), "(" & oRs("CLASSNAME") & ")", "") & oRs("REG_DATE")) & "</span></p>"
	sListHTML = sListHTML & "    	<p class=""fr"">"
	If ValueCheck(gLoginMemKind2) Then '관리자검색
		If UCase(gLoginMemKind2) = "B" _
		Or gLoginMemKind2 = GetCampusVarsSiteMGC("_CAMPUS_CODE_") Then '관리자/학원관리자의 경우에는 수정가능표시
			sListHTML = sListHTML & "&nbsp;&nbsp;<a href=""#comment"" onclick=""commentModify('" & oRs("CODE") & "');"" class=""btn_reply modi"">수정</a>&nbsp;<a href=""javascript:commentDelete('" & oRs("CODE") & "');"" class=""btn_reply del"">삭제</a>"
		Else
			If ValueCheck(oRs("PASSWORD")) = True Then '비회원이 쓴글 수정가능표시
				sListHTML = sListHTML & "&nbsp;&nbsp;<a href=""#comment"" onclick=""commentModify('" & oRs("CODE") & "');"" class=""btn_reply modi"">수정</a>&nbsp;<a href=""javascript:commentDelete('" & oRs("CODE") & "');"" class=""btn_reply del"">삭제</a>"
			ElseIf gLoginMemCode > 0 And Trim(gLoginMemCode) = Trim(oRs("MEM_CODE")) Then '자신이 쓴글이면 수정가능
				sListHTML = sListHTML & "&nbsp;&nbsp;<a href=""#comment"" onclick=""commentModify('" & oRs("CODE") & "');"" class=""btn_reply modi"">수정</a>&nbsp;<a href=""javascript:commentDelete('" & oRs("CODE") & "');"" class=""btn_reply del"">삭제</a>"
			Else '그 이외의경우에는 그냥표시
				sListHTML = sListHTML & "&nbsp;"
			End If
		End If
	Else '회원검색
		If ValueCheck(gLoginMemCode) Then
			If gLoginMemCode>0 And (Trim(gLoginMemCode) = Trim(oRs("MEM_CODE"))) Then
				sListHTML = sListHTML & "&nbsp;&nbsp;<a href=""#comment"" Onclick=""commentModify('" & oRs("CODE") & "');"" class=""btn_reply modi"">수정</a>&nbsp;&nbsp;<a href=""javascript:commentDelete('" & oRs("CODE") & "');"" class=""btn_reply del"">삭제</a>"
			Else
				If ValueCheck(oRs("PASSWORD")) = True Then '비회원 댓글 여부
					sListHTML = sListHTML & "&nbsp;&nbsp;<a href=""#comment"" onclick=""javascript:commentPopupPass('modify','" & oRs("CODE") & "');"" class=""btn_reply modi"">수정</a>&nbsp;<a href=""#comment""  onclick=""javascript:commentPopupPass('delete','" & oRs("CODE") & "');"" class=""btn_reply del"">삭제</a>"
				ElseIf gLoginMemCode>0 And (Trim(gLoginMemCode) = Trim(oRs("MEM_CODE"))) Then
					sListHTML = sListHTML & "&nbsp;&nbsp;<a href=""#comment"" onclick=""commentModify('" & oRs("CODE") & "');"" class=""btn_reply modi"">수정</a>&nbsp;<a href=""javascript:commentDelete('" & oRs("CODE") & "');"" class=""btn_reply del"">삭제</a>"
				Else
					sListHTML = sListHTML & "&nbsp;"
				End If
			End If
		Else
			If ValueCheck(oRs("PASSWORD")) = True Then '비회원 댓글 여부
				sListHTML = sListHTML & "&nbsp;&nbsp;<a href=""#comment"" onclick=""javascript:commentPopupPass('modify','" & oRs("CODE") & "');"" class=""btn_reply modi"">수정</a>&nbsp;&nbsp;<a href=""#comment""  onclick=""javascript:commentPopupPass('delete','" & oRs("CODE") & "');"" class=""btn_reply del"">삭제</a>"
			Else
				sListHTML = sListHTML & "&nbsp;"
			End If
		End If
	End If
	sListHTML = sListHTML & "    	</p>"
	sListHTML = sListHTML & "    </div>"
	sListHTML = sListHTML & "    <p class=""board_reply_type_01_unit_p2 brk"">" & LineArrange(oRs("CONTENTS")) & "</p>"
	sListHTML = sListHTML & "</div>"
	oRs.MoveNext
Loop
'내용이 없을경우
If sListHTML = "" Then
	sListHTML = sListHTML & "<div class=""board_view_type_01""><table border=""0"" cellspacing=""0"" cellpadding=""0"" width=""100%""><tr><td class=""taC vm"" style=""height:40px;"">등록된 댓글이 없습니다.</td></tr></table></div>"
End If



'**** 페이징 HTML생성
Call CalcPaging(nTotalCount, nCountPerpage, nPagingBlock, nCurPage, nPagingGroup, nPagingStart, nPagingEnd, nMaxPage)
sPagingHTML = ""
If nPagingGroup > 1 Then
	sPagingHTML = sPagingHTML & "<a href=""javascript:commentPageMove(" & (nPagingStart - 1) & ", 'divListArea1');"" class='btn_page prev'><img src='" & Application("img_path") & "/library/common/btn/btn_page_prev.gif' /></a>"&vbNewLine
Else
	sPagingHTML = sPagingHTML & "<img src='" & Application("img_path") & "/library/common/btn/btn_page_prev.gif' class='btn_page prev' />"&vbNewLine
End If
For i = nPagingStart To nPagingEnd
	If i > nPagingStart Then
		sPagingHTML = sPagingHTML & "<img src='" & Application("img_path") & "/library/common/icon/dot.gif'/>"
	End If
	If i <> CInt(nCurPage) Then
		sPagingHTML = sPagingHTML & "<a href=""javascript:commentPageMove(" & i & ");"" class='btn_pageNum'>" & i & "</a>"&vbNewLine
	Else
		sPagingHTML = sPagingHTML & "<a class='btn_pageNum current'><span>"& i &"</span></a>"&vbNewLine
	End If
Next
If nPagingEnd < nMaxPage Then
	sPagingHTML = sPagingHTML & "<a href=""javascript:commentPageMove('" & (i+1) & "');"" class='btn_page next'><img src='" & Application("img_path") & "/library/common/btn/btn_page_next.gif' /></a>"&vbNewLine
Else
	sPagingHTML = sPagingHTML & "<img src='" & Application("img_path") & "/library/common/btn/btn_page_next.gif' class='btn_page next' />"&vbNewLine
End If


'**** 작성가능 불가능 관련변수 생성
Dim sMemName, nMemCode
sMemName = GetLoginCookie("MemName")
nMemCode = CheckNumber_reset(GetLoginCookie("MemCode"), "0")


If CDbl(nMemCode) > 0 Then
Else
	sReadOnly = "readonly"
	sContents = "로그인 후 이용 가능합니다"
End If
%>
<!-- // 댓글리스트 시작 -->
<a name="#comment"></a>
<div class="board_reply_type_01">
	<h3>댓글 남기기</h3>
	<div class="board_reply_type_01_write">
		<form id="frmComment" method="POST" action="/common/menubbs/comment/comment_save.asp" onsubmit="return false;">

		<input type="text" class="input_border" name="memname" value="<%=sMemName%>" readonly>
		<textarea name="contents" id="txtContents" <%=sReadOnly%> onkeyup="commentCheckLen()"><%=sContents%></textarea>
		<button type="buttton" class="board_reply_type_01_write_btn" onclick="commentSave()">확인</button>
		<p class="mt5">댓글은 한번에 <%=nCommentMax%>자(한글 <%=Int(nCommentMax / 2)%>자)까지 등록할 수 있습니다. <strong>(<span id="nowByte" class="font_red">0</span>/<%=nCommentMax%> byte)</strong>
		
		<input type="hidden" name="memcode" value="<%=nMemCode%>">
		<input type="hidden" name="flag" value="">
		<input type="hidden" name="bbscode" value="<%=sBBSCode%>">
		<input type="hidden" name="code" value="">
		<input type="hidden" name="redirect" value="">
		</form>
	</div>
	
	<%=sListHTML%>

	<div class="board_list_paging_01">
		<%=sPagingHTML%>
	</div>
</div>
<!-- // 댓글리스트 종료 -->

<%
'#########################################
' 페이징변수 계산용
'#########################################
' 1(in)     : 총 게시물갯수
' 2(in)     : 페이지당 표시갯수
' 3(in)     : 페이징 표시갯수
' 4(in/out) : 현재페이지
' 5(out)    : 페이징그룹
' 6(out)    : 표시할 시작 페이징
' 7(out)    : 표시할  끝  페이징
' 8(out)    : 가장끝페이지
'#########################################
Function CalcPaging(ByVal nTotalCount,_
					ByVal nCountPerpage,_
					ByVal nPagingBorder,_
					ByRef refCurrentPage,_
					ByRef refPagingGroup,_
					ByRef refPagingStart,_
					ByRef refPagingEnd,_
					ByRef refMaxPage)

	refMaxPage = Ceil(nTotalCount / nCountPerPage)
	If refMaxPage = 0 Then
		refMaxPage = 1
	End If
	If nPagingBorder = "" Then
		nPagingBorder = 5
	End If
	If IsNumeric(refCurrentPage) = False Or IsEmpty(refCurrentPage) = True Then
		refCurrentPage = 1
	ElseIf refCurrentPage = 0 Then
		refCurrentPage = 1
	ElseIf CInt(refCurrentPage) > CInt(refMaxPage) Then
		refCurrentPage = refMaxPage
	End If
	
	refPagingGroup = Ceil(refCurrentPage / nPagingBorder)
	refPagingStart = (refPagingGroup - 1) * nPagingBorder + 1
	refPagingEnd   = refPagingGroup * nPagingBorder
	If refPagingEnd > refMaxPage Then
		refPagingEnd = refMaxPage
	End If

End Function
%>
