<%
Response.Addheader "Cache-Control", "No-Cache"
Response.Addheader "Expires", "0"
Response.Addheader "Pragma", "No-Cache"
Response.Contenttype = "Text/html; Charset=euc-Kr"

Session.Codepage = "949"
Response.Charset = "Euc-Kr"
%>
<!--
<?xml version = "1.0"  encoding = "euc-kr" ?>
<response>
<contents>
-->
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
Code = VARS("Code")

'sql = "SELECT Code, filePath FROM MG_PhotoFile WHERE BCode="&Code& " ORDER BY Code"
sSql = ""
sSql = sSql & vbCrlf & "SELECT CODE"
sSql = sSql & vbCrlf & "      ,FILEPATH,FILEPATH_M"
sSql = sSql & vbCrlf & "FROM   MG_BBS_ATTACH"
sSql = sSql & vbCrlf & "WHERE  BBS_CODE = " & SafeQuery(Code)
sSql = sSql & vbCrlf & "AND    SEQ > 0" '대표이미지는 리스트에서 출력 안되도록
sSql = sSql & vbCrlf & "ORDER  BY SEQ"
Set oRs = objDB.sqlQuery(sSql, 1)
Do Until oRs.EOF
	sPath = oRs("FILEPATH")
	sPath2 = oRs("FILEPATH_M")
	If sPath <> "" Then
		If Len(sPath2) <> 0 And Not isnull(sPath2) Then 
			sSrc = sPath2
		else
		sSrc = "/Public/EtcView.asp?C=BigThumb2&F=" & Server.URLEncode(sPath)
		End If 
		'If Request.ServerVariables("REMOTE_ADDR") = "172.15.13.4" Then
		'	sSrc = sPath
		'End If
		'sSrc = "/Public/EtcView.asp?C=BigThumb&F=%2FData%2Fphoto%2F2015922155054%2Ejpg"
		'sSrc = "/Public/EtcView.asp?C=BigThumb&F=%2FData%2Fphoto%2F201592319193%2Ejpg"
		'http://amsdev.megastudy.net:8082/Public/EtcView.asp?C=BigThumb&F=%2FData%2Fphoto%2F201592319193%2Ejpg
	Else
		sSrc = ""
	End If
	Response.Write "<img src=""" & sSrc & """  ><br><br>"
	oRs.MoveNext
Loop
oRs.Close
Set oRs = Nothing


%>

