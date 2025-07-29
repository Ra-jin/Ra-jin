<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<%
Call formFilter() ' SQL 인젝션 문자열 필터링
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
	<%
	If(request.ServerVariables("REQUEST_METHOD") = "POST") Then
		db_password = objDb.sqlResult("SELECT PASSWORD FROM MG_BBS_COMMENT WHERE CODE =" & VARS("code2"))
			
		If db_password <> Request("password") Then
			alert("비밀번호가 일치 하지 않습니다.")		
			jscript("try { opener.commentSetNormal();} catch(er){} self.close();")
			response.end
		End If

		If VARS("flag") = "modify" Then	
			jscript("self.close();opener.commentModify(" & VARS("code2") & ");")
		ElseIf VARS("flag") = "delete" Then
			jscript("self.close();opener.commentDelete(" & VARS("code2") & ");")
		End If
	End If
	%>
	<title>비밀번호 확인</title>
	<meta http-equiv="Cache-Control" content="Cache"/>
	<meta http-equiv="Pragma" content="Cache"/>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR"/>
	<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
	<!-- #Include Virtual = "/library/include/reload/js_util.asp" -->
</head>
<body style="overflow:hidden;">
<form name="form1" method="post">
<input type="hidden" name="mode" value="<%=VARS("flag")%>">
<input type="hidden" name="code2" value="<%=VARS("code")%>">
<input type="hidden" name="curPage" value="<%=VARS("curPage")%>">
<div class="popWrap">
	<div class="popTitle">
		<h1>비밀번호 확인</h1>
	</div>
	<div class="pop_body">
		<div class="pop_input taC">
			<p class="guide t1">글 작성 시 입력한 비밀번호를 입력해 주세요.</p>
			비밀번호 확인 <input name="password" type="password" size="18" class="input_g inputBox_pop"  onkeypress="is_int_press2();" maxlength="4">
			<button type="submit" class="btn_pop_srch"><span>확인</span></button>
		</div>

	<button type="button" class="btn_popup btn_close" onclick="javascript:self.close();"><span class="blind">창닫기</span></button>
</div>
</form>         

</body>
</html>
<%
jscript("document.form1.password.focus();")
%>

