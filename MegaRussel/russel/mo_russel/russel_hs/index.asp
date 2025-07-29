<!-- #include virtual="/library/statistic.asp" -->
<%
'Sql_Injection ÇÊÅÍ¸µ
formFilter()
Dim refer : refer = request("refer")

Dim link_param : link_param = currParam
If refer = "" Then
	refer = "/russel_hs/main.asp?" & link_param
End If

statistic("CD0363")

Response.Cookies("_CAMPUS_") = "russel_hs"
Response.Cookies("_CAMPUS_CODE_") = "CD0363"
Response.Cookies("_CAMPUS_NAME_") = "·¯¼¿ ·¯¼¿ ±â¼÷ ÃÖ»óÀ§±Ç Àü¹®°ü"
Response.Cookies("_CAMPUS_").Expires = DateAdd("d", Date, 1)
Response.Cookies("_CAMPUS_CODE_").Expires = DateAdd("d", Date, 1)
Response.Cookies("_CAMPUS_NAME_").Expires = DateAdd("d", Date, 1)
Response.Cookies("_CAMPUS_KIND_") = "gisuk"
Response.Cookies("_CAMPUS_DETAIL_CODE_") = "CD0363"
Response.Redirect refer
%>
