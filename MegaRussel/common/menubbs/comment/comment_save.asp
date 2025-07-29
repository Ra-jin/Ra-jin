<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
formFilter() ' SQL 인젝션 문자열 필터링

If valuecheck(GetLoginCookie("MemCode")) = False Then
	Response.End
End If

rRedirect  = VARS("redirect")
rBBSCode   = VARS("bbscode")
rMemName   = VARS("memname")
rMemCode   = VARS("memcode")
rContents  = VARS("contents")
rCode      = VARS("code")


If VARS("flag") = "new" Then
	
	sSql = ""
	sSql = sSql & vbCrlf & "INSERT INTO MG_BBS_COMMENT (BBS_CODE, MEM_CODE, MEM_NAME, CONTENTS, REG_DATE)"
	sSql = sSql & vbCrlf & "SELECT " & SafeQuery(rBBSCode) & " AS BBS_CODE"
	sSql = sSql & vbCrlf & "      ," & SafeQuery(rMemCode) & " AS MEM_CODE"
	sSql = sSql & vbCrlf & "      ,'" & SafeQuery(rMemName) & "' AS MEM_NAME"
	sSql = sSql & vbCrlf & "      ,'" & SafeQuery(rContents) & "' AS CONTENTS"
	sSql = sSql & vbCrlf & "      ,GETDATE() AS REG_DATE"
	Call objDb.sqlExecute(sSql)
	
	rRedirect = rRedirect & "#comment" 'view페이지로 이동
	Call js_redirect(rRedirect, "")
	
	
ElseIf VARS("flag") = "modify" Then
	sSql = ""
	sSql = sSql & vbCrlf & "UPDATE MG_BBS_COMMENT SET CONTENTS = '" & SafeQuery(rContents) & "'"
	sSql = sSql & vbCrlf & "WHERE  CODE = " & SafeQuery(rCode)
	Call objDb.sqlExecute(sSql)
	
	rRedirect = rRedirect & "#comment" 'view페이지로 이동
	Call js_redirect(rRedirect, "")
	
	
	
ElseIf VARS("flag") = "delete" Then
	sSql = ""
	sSql = sSql & vbCrlf & "SET NOCOUNT ON"
	sSql = sSql & vbCrlf & ""
	sSql = sSql & vbCrlf & "IF EXISTS(SELECT * FROM MG_BBS_COMMENT WHERE CODE = " & SafeQuery(VARS("code")) & " AND BBS_CODE = " & SafeQuery(VARS("bbscode")) & ")"
	sSql = sSql & vbCrlf & "BEGIN"
	sSql = sSql & vbCrlf & "    DELETE FROM MG_BBS_COMMENT"
	sSql = sSql & vbCrlf & "    WHERE  CODE = " & SafeQuery(VARS("code"))
	sSql = sSql & vbCrlf & "    AND    BBS_CODE = " & SafeQuery(VARS("bbscode"))
	sSql = sSql & vbCrlf & "    "
	sSql = sSql & vbCrlf & "    SELECT 0 AS RETURN_VALUE"
	sSql = sSql & vbCrlf & "END"
	sSql = sSql & vbCrlf & "ELSE"
	sSql = sSql & vbCrlf & "BEGIN"
	sSql = sSql & vbCrlf & "    SELECT 1 AS RETURN_VALUE"
	sSql = sSql & vbCrlf & "END"
	sSql = sSql & vbCrlf & "SET NOCOUNT OFF"
	sReturnValue = objDb.sqlResult(sSql)
	
	If sReturnValue <> "0" Then
		Call alert("댓글처리 중 오류가 발생하였습니다")
	End If
	rRedirect = rRedirect & "#comment"
	Call js_redirect(rRedirect, "")
End If
%>