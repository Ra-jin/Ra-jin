<!-- #include virtual="/russel/campus_common/lib/statistic.asp" -->
<%
'Sql_Injection ÇÊÅÍ¸µ
formFilter()
Dim refer : refer = request("refer")

Dim link_param : link_param = currParam
If refer = "" Then
	refer = "main.asp?" & link_param
    'refer = "aaa.asp?" & link_param
	'If request("ysmwa") <> "" Then
	'	refer = refer & "&ysmwa=" & request("ysmwa")
	'End If
End If

Response.Redirect refer
%> 