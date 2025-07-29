<% @Language="VBScript" CODEPAGE="949" %>
<%
Response.CharSet="euc-kr"
Session.codepage="949"
Response.codepage="949"
Response.ContentType="text/html;charset=euc-kr"
%>
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<%

if vars("V_DOM_CD") = "11" then
	sSubjecCode = "101,102"
elseif vars("V_DOM_CD") = "13" then
	sSubjecCode = "103,104,105"
elseif vars("V_DOM_CD") = "12" then
	sSubjecCode = "12"
elseif vars("V_DOM_CD") = "43" then
	sSubjecCode = "65,66,22,31,63,30,24,64,23"
elseif vars("V_DOM_CD") = "42" then
	sSubjecCode = "32,34,68,38,33,35,69,39"
end if

strSql = ""
strSql = strSql & " SELECT CD_DTL_CD, CD_COM_CLS " 
strSql = strSql & " FROM AMS_COM_DTL WITH(NOLOCK) "
strSql = strSql & " WHERE CD_COM_CD = 111 "
strSql = strSql & " AND CD_DTL_CD IN (" & sSubjecCode & ") "

set subject_Rs = amsobjdb.sqlQuery(strSql,3)
    If not (subject_Rs.eof or subject_Rs.bof) then
        arr_view_subject = subject_Rs.GetRows()
    End If
subject_Rs.close
set subject_Rs = nothing

if isarray(arr_view_subject) then 
%>

<div class="tab-menu03" id="subject">
	<% For i=0 To ubound(arr_view_subject, 2) 
		sSub_sub = arr_view_subject(0, i)
		sSub_nm  = arr_view_subject(1, i)
	%>
	<% if vars("V_DOM_CD") <> "12" then %>
		<li id="<%=sSub_sub%>"><a href="javascript:getScoreAnalysis('<%=sSub_sub%>','<%=vars("V_DOM_CD")%>')" data-sub="<%=sSub_sub%>"><strong><%=sSub_nm%></strong></a></li>
	<% end if %>
	<% Next
End If
%>
</div>