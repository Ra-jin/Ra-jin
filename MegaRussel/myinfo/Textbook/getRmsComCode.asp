<%
' 인코딩 설정
Response.Charset = "EUC-KR"
%>

<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<%
sParentCode = VARS("parentCode")

strSql = "Exec dbo.Msp_Get_Com_Dtl_01 " & sParentCode
set RS = amsobjdb.sqlQuery(strSql,3)
%>
{
	<% if sMessage <> "" then %>
	"message": "<%=sMessage%>",
	<% end if %>
	"data": [
		<% While Not RS.EOF %>
			{
			"code": "<%=RS("CD_DTL_CD")%>",
			"name": "<%=RS("CD_COM_CLS")%>"
			}
		<%
			RS.MoveNext
			IF not RS.EOF THEN %>
				,
			<% END IF
		Wend %>
	]
}

<%
	RS.close
	Set RS = Nothing
%>