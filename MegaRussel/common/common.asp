<%
'Option Explicit

Response.addHeader "pragma","no-cache"
Response.addHeader "cache-control","private"
Response.AddHeader "Set-Cookie", "" & CStr(Request.ServerVariables("HTTP_COOKIE")) & ";path=/;HttpOnly" & ""
Response.CacheControl = "no-cache; private; no-store;"
Response.Expires = -1 
Response.CharSet = "euc-kr"
%>
<!-- #include virtual = "/common/inc/config.asp"-->
<!-- #include virtual = "/common/inc/DBUtil.asp"-->
<!-- #include virtual = "/common/inc/FunDef.asp"-->
<!-- #include virtual = "/Public/Method.asp" -->

<!-- #include virtual = "/common/inc/badword.asp" -->
<!-- #include virtual = "/common/inc/request.asp" -->
<!-- #include virtual = "/common/inc/html.asp" -->
