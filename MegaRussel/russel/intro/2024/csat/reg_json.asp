<% response.charset = "euc-kr" %>
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<%
Sub SetMsg(isok, msg)
    %>{"isok":<%=isok%>, "msg":"<%=msg%>"}<%
    response.end
End Sub

Sub SetErrMsg(msg)
    Call SetMsg(0, msg)
End Sub

'후기 이벤트 CODE
If IsRealSvr = true Then	'실서버
	ED_EM_NUM_EVT = "121"
Else	'개발서버
	ED_EM_NUM_EVT = "9088"
End If

' 이벤트 마감일(2023-12-12 까지)
nDT_event_end = 202312130000


mode = fncRequest("mode")

If mode = "reg" Then ' 댓글 등록

	' 이벤트 기간 체크
	If curYmdhmin > nDT_event_end Then 
		SetErrMsg "이벤트가 마감되었습니다."
	End If 

    cmt = replace(trim(clearXSS(unescape(fncRequest("cmt")),"")),"'","")
	cmt = Replace(cmt, Chr(9),"")
	cmt = sqlFilter( cmt )

	' 이벤트 등록 처리
	strSql = ""
    strSql = strSql & " INSERT INTO [dbo].[MS_EVTRUSSEL_DTL] ([ED_EM_NUM],[ED_MEM_ID],[ED_FLD_1],[ED_REG_DT]) "
	strSql = strSql & " VALUES ( " & ED_EM_NUM_EVT
	strSql = strSql & " 	, '" & gLoginMemId & "' "
	strSql = strSql & " 	, '" & cmt & "' "
	strSql = strSql & " 	, GETDATE() ); "

	russelobjdb.sqlExecute(strSql)

	isok = 1
	msg = "등록되었습니다."
Else
	isok = 0
	msg = "오류발생"
End If
    
SetMsg isok, msg
%>