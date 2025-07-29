<%
Response.Cookies("_CAMPUS_") = "russel_hs"
Response.Cookies("_CAMPUS_CODE_") = "CD0363"
Response.Cookies("_CAMPUS_NAME_") = "메가스터디 러셀 기숙 최상위권 전문관"
Response.Cookies("_CAMPUS_").Expires = DateAdd("d", Date, 1)
Response.Cookies("_CAMPUS_CODE_").Expires = DateAdd("d", Date, 1)
Response.Cookies("_CAMPUS_NAME_").Expires = DateAdd("d", Date, 1)
Response.Cookies("_CAMPUS_KIND_") = "gisuk"
Response.Cookies("_CAMPUS_DETAIL_CODE_") = "CD0363"
%>

<!-- #include virtual="/russel/campus_common/lib/statistic.asp" -->
<%
'Sql_Injection 필터링
formFilter()
Dim refer : refer = request("refer")

Dim link_param : link_param = currParam
If refer = "" Then
	refer = "main.asp?" & link_param
End If

statistic("CD0363")
Response.Redirect refer
%>
