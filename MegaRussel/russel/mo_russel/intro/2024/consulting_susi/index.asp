<!-- #include virtual="/Public/Method.asp" -->
<%
    If IsDevSvr() Then
		urlMain = "//devrussel.megastudy.net"
	Else
		urlMain = "//russel.megastudy.net"
	End If

    Response.redirect urlMain & "/intro/2024/consulting_susi/index.asp"
%>