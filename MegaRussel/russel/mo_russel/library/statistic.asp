
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/Public/Method.asp" -->
<%
Sub statistic(campus)
	If Request.Cookies("STAT_CHECK_"&campus) <> "ok" then
		sql = "INSERT INTO MG_Admin_Statistic (stat_ccode,stat_user_ip, stat_user_agent, stat_user_refer, stat_user_url, stat_user_id, "
		sql = sql & " stat_time, stat_mon, stat_day, stat_hour) values "
		sql = sql & "('" & campus & "',"
		sql = sql & "'" & request("REMOTE_ADDR") & "',"
		sql = sql & "'" & request("HTTP_USER_AGENT") & "',"
		sql = sql & "'" & request("HTTP_REFERER") & "',"
		sql = sql & "'" & request("URL") & "'," '현재페이지추가[2014-07-15:YSM]
		sql = sql & "'" & gLoginMemId & "',"
		sql = sql & "getdate(),"
		sql = sql & month(date) & ","
		sql = sql & day(date) & ","
		sql = sql & hour(time) & ")"

        'response.write sql
        'response.end

        russelobjdb.sqlExecute(sql)



		'Call SetLoginCookie("STAT_CHECK_"&campus, "ok")
		'session("STAT_CHECK_"&campus) = "ok"
		Response.Cookies("STAT_CHECK_"&campus) = "ok"
	End If
End Sub

'Response.Cookies("_CAMPUS_").Expires = Date + 2
'Response.Cookies("_CAMPUS_CODE_").Expires = Date + 2
'Response.Cookies("_CAMPUS_NAME_").Expires = Date + 2
%>
