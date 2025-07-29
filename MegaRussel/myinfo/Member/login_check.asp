<%
If ValueCheck(gLoginOk) = False Or gLoginOk = False Then
	rtnUrl = Request.Servervariables("PATH_INFO")
	If Request.Servervariables("REQUEST_METHOD") = "GET" Then
		rtnUrl = rtnUrl & "?" & Request.Servervariables("QUERY_STRING")
	End If

'	response.write rtnUrl
'	response.write "<br>"
'	response.write Server.URLEncode(rtnUrl)

	rtnUrl = "/main.asp"

	If cLoginNoMove = True Then		'인클루드하는 파일에서 변수 설정 , 기본적으로는 변수 없는 상태
		response.End
	Else
		Call AlertAndPageMove( "", "/member/login.asp?rtnUrl=" & Server.URLEncode(rtnUrl), "" )
	End If
End If
%>