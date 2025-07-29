<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<%
Response.Expires = 0

Dim rtnUrl : rtnUrl = VARS("rtnUrl") '현재URL을 리턴

'비밀번호 90일 변경 초과 Flag
VARS("passFlg") = fnRequestToRet("passFlg", "", 4)

VARS("rtnUrl") = fnRequestToRet("rtnUrl", "", 4)

If gLoginOk Then
	'로그인 상태일때 3개월 체크
	passLimit = 0

	If unifiedService = "Y" Then
		If unifiedDb = "Y" Then
			If ValueCheck(gLoginUnifiedId) Then
				'비밀번호 변경 시점 도래 체크
				expiredCode  = ""
				expiredMsg 	 = ""
				expiredYn 	 = ""
				expiredUpdDt = ""

				strSql = ""
				strSql = strSql & " DECLARE @R_CODE INT, @R_MSG VARCHAR(255), @R_EXPIRED_YN VARCHAR(1), @R_UPD_DATE DATETIME; "
				strSql = strSql & " EXEC USPW_MEM_PW_LAST_GET '"& gLoginUnifiedKey &"', "
				strSql = strSql & " 					      '"& gLoginUnifiedId &"', "
				strSql = strSql & " 					      @R_CODE 		OUTPUT, "
				strSql = strSql & " 					      @R_MSG 		OUTPUT, "
				strSql = strSql & " 					      @R_EXPIRED_YN OUTPUT, "
				strSql = strSql & " 					      @R_UPD_DATE	OUTPUT; "
				strSql = strSql & " SELECT CODE=@R_CODE, MSG=@R_MSG, EXPIRED_YN=@R_EXPIRED_YN, UPD_DATE = @R_UPD_DATE "

				Set rsExpired = unifiedObjDb.sqlQuery(strSql, 3)

				If Not rsExpired.EOF Then
					expiredCode  = rsExpired(0)
					expiredMsg 	 = rsExpired(1)
					expiredYn 	 = rsExpired(2)
					expiredUpdDt = rsExpired(3)
				End If

				rsExpired.Close
				Set rsExpired = Nothing

				If expiredCode = "1000" And expiredYn = "Y" Then
					passLimit = 1
				End If
			Else
				strSql = ""
				strSql = strSql &" SELECT CASE WHEN DATEDIFF(DAY, ISNULL(Up_pass_regdt, '1900-01-01'), GETDATE()) >= 90 THEN 1 "
				strSql = strSql & " 	       ELSE 0 "
				strSql = strSql & "       END AS passLimit "
				strSql = strSql &" FROM   dbo.MG_Member WITH (NOLOCK) "
				strSql = strSql &" WHERE  uDel_fg = 'N' "
				strSql = strSql & "       AND uId = '"& gLoginMemId &"' "

				Set rsChk = objDB.sqlQuery(strSql, 3)

				If Not rsChk.EOF Then
					passLimit = rsChk(0)
				End If

				rsChk.Close
				Set rsChk = Nothing
			End If
		Else
			passLimit = 0
		End If
    Else
		strSql = ""
		strSql = strSql &" SELECT CASE WHEN DATEDIFF(DAY, ISNULL(Up_pass_regdt, '1900-01-01'), GETDATE()) >= 90 THEN 1 "
		strSql = strSql & " 	       ELSE 0 "
		strSql = strSql & "       END AS passLimit "
		strSql = strSql &" FROM   dbo.MG_Member WITH (NOLOCK) "
		strSql = strSql &" WHERE  uDel_fg = 'N' "
		strSql = strSql & "       AND uId = '"& gLoginMemId &"' "

		Set rsChk = objDB.sqlQuery(strSql, 3)

		If Not rsChk.EOF Then
			passLimit = rsChk(0)
		End If

		rsChk.Close
		Set rsChk = Nothing
	End If

	If passLimit <> 1 Then
		VARS("passFlg") = "0"

		alert("이미 로그인 하셨습니다.")

		If ValueCheck(VARS("rtnUrl")) Then
			redirect(VARS("rtnUrl"))
		Else
			redirect("/main.asp")
		End If

		Response.end
	Else
		VARS("passFlg") = "1"
	End If
End If
%>
<html lang="ko">
<head>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<script language="JavaScript" type="text/JavaScript">
function checkLogin_bd(){
	var f = document.loginform_bd
		if(f.userid.value.length < 1){
			alert("아이디를 입력하세요!");
		f.userid.focus();
		return;
	}
	if(f.passwd.value.length < 1){
		alert("비밀번호를 입력하세요!");
		f.passwd.focus();
		return;
	}

	f.submit();
}

function keyconfirm_bd(){
	if(event.keyCode == 13){
		checkLogin_bd();
	}
}

</script>
<body class="bg-gray main-body">
<div class="wrap">
	<header>
		<p class="logo"><a href="#"><img src="<%=Application("img_path_russel")%>/myinfo/common/logo.png" alt="러셀" /></a></p>
	</header>
	<section class="loginBox">
		<h1>마이러셀 통합정보시스템</h1>
		<form name="loginform_bd" method="post" action="<%=header_addr2%>/russel/member/login_proc.asp">
			<input type="hidden" name="rtnUrl" value="<%=VARS("rtnUrl")%>"/>
			<span class="phBox id">
				<input name="userid" type="text" title="아이디" placeholder="아이디" onkeydown="javascript:keyconfirm_bd();" />
			</span>
			<span class="phBox pw">
				<input name="passwd" type="password" title="비밀번호" placeholder="비밀번호" onkeydown="javascript:keyconfirm_bd();" />
			</span>
			<a href="#" class="btnLogin" onclick="checkLogin_bd();return false;">로그인</a>
		</form>
		<!-- footer -->
		<!-- #include virtual = "/include/footer.asp" -->
		<!-- //footer -->
	</section>

	<!-- 90일 비밀번호 변경 팝업 -->
	<%If VARS("passFlg") = "1" Then%>
		<div class="pw-layer-wrap">
			<div class="pw-layer-popup">
				<div class="pw-layer">
					<div class="pw-txt-wrap">
						<p><img src="<%=Application("img_path_russel")%>/common/icon/ico_pw.png" alt=""></p>
						<h3>비밀번호 변경</h3>
						<p class="txt">안전한 개인정보 보호를 위해<br>
						<span class="blue">3개월마다 새로운 비밀번호로 변경</span>해주세요.</p>

						<p class="txt-box">
							<strong>안전한 비밀번호 설정 방법</strong><br>
							영문, 숫자, 특수기호 중 2종류 조합 시 10자리 이상<br>
							3종류 조합 시 8자리 이상 입력</p>
					</div>

					<div class="pw-input">
						<div>
							<label for="oldPassword">현재 비밀번호 입력</label>
							<input id="oldPassword" name="oldPassword" type="password" placeholder="현재 비밀번호를 입력해 주세요." value="">
						</div>
						<div>
							<label for="newPassword">새 비밀번호 입력</label>
							<input id="newPassword" name="newPassword" type="password" placeholder="새 비밀번호를 입력해 주세요." value="">
						</div>
						<div class="mb0">
							<label for="newPasswordRe">새 비밀번호 확인</label>
							<input id="newPasswordRe" name="newPasswordRe" type="password" placeholder="새 비밀번호를 한번 더 입력해 주세요." value="">
						</div>
					</div>

					<a class="pw-btn" href="javascript:void(0);" onclick="fnSetPassword(2);">지금 변경</a>
					<a class="pw-l-btn" href="javascript:void(0);" onclick="fnSetPassword(1);">다음에 하기 X</a>
				</div>
			</div>
			<div class="mask" style="display: block;"></div>
		</div>
		<script>
			var validMessages = {
				1001: "<p class='false'>현재 비밀번호가 일치하지 않습니다.</p>",
				1002: "<p class='false'>영문, 숫자, 특수문자 최소 2가지 이상 조합해 주세요.<br>- 2종류 조합 시 10자리 이상<br>- 3종류 조합 시 8자리 이상</p>",
				1003: "<p class='false'>현재 비밀번호와 동일합니다. 새로운 비밀번호를 입력해주세요.</p>",
				1004: "<p class='false'>새 비밀번호가 일치하지 않습니다.</p>"
			}

			var _param = "";

			$("#oldPassword").blur(function() {
				if ($(this).val() != "") {
					$(this).parent().removeClass('false');
					$(this).parent().find("p.false").remove();

					_param = "";
					_param += "mode=2";
					_param += "&oldPassword=" + $(this).val();

					var result = fnSetAjax('text');
					if (result != "1000") {
						$(this).parent().addClass('false');
						$(this).after(validMessages[result]);
						return;
					} else {
						$(this).parent().addClass('on');
					}
				} else {
					$(this).parent().removeClass();
				}
			});

			$("#newPassword").blur(function() {
				if ($(this).val() != "") {
					$(this).parent().removeClass('false');
					$(this).parent().find("p.false").remove();

					if (!fnValidPassword($(this).val())) {
						$(this).parent().addClass('false');
						$(this).after(validMessages[1002]);
						return;
					} else {
						$(this).parent().addClass('on');
					}

					if ($(this).val() == $('#oldPassword').val()) {
						$(this).parent().addClass('false');
						$(this).after(validMessages[1003]);
						return;
					} else {
						$(this).parent().addClass('on');
					}
				} else {
					$(this).parent().removeClass();
				}
			});

			$("#newPasswordRe").blur(function() {
				if ($(this).val() != "") {
					$(this).parent().removeClass('false');
					$(this).parent().find("p.false").remove();

					if ($(this).val() != $('#newPassword').val()) {
						$(this).parent().addClass('false');
						$(this).after(validMessages[1004]);
						return;
					} else {
						$(this).parent().addClass('on');
					}
				} else {
					$(this).parent().removeClass();
				}
			});

			function fnSetPassword(flg) {
				if (flg == 1) {
					//alert('안전한 개인정보 보호를 위해\n비밀번호는 주기적으로 변경해주세요.\n(다음 로그인 시 다시 알려드립니다.)');
                    //location.href = loginform_bd.rtnUrl.value;

					_param = "";
					_param += "mode=1";

					var result = fnSetAjax('text');

					if (result == "1000") {
						alert('안전한 개인정보 보호를 위해\n비밀번호는 주기적으로 변경해주세요.\n(다음 로그인 시 다시 알려드립니다.)');
						location.href = loginform_bd.rtnUrl.value;
					}
				} else {
					if ($("#oldPassword").val() != "" && $("#newPassword").val() != "" && $("#newPasswordRe").val() != "") {
						$('.pw-input div').removeClass('false');
						$('.pw-input').find("p.false").remove();

						_param = "";
						_param += "mode=3";
						_param += "&oldPassword=" + $("#oldPassword").val();
						_param += "&newPassword=" + $("#newPassword").val();
						_param += "&newPasswordRe=" + $("#newPasswordRe").val();

						var result = fnSetAjax('text');

						if (result == "1000") {
							alert("비밀번호가 변경되었습니다.");
							location.href = loginform_bd.rtnUrl.value;
						} else if (result == "1001") {
							$("#oldPassword").parent().addClass('false');
							$("#oldPassword").after(validMessages[result]);
							return;
						} else if (result == "1002" || result == "1003") {
							$("#newPassword").parent().addClass('false');
							$("#newPassword").after(validMessages[result]);
							return;
						} else if (result == "1004") {
							$("#newPasswordRe").parent().addClass('false');
							$("#newPasswordRe").after(validMessages[result]);
							return;
						} else {
							alert('잘못된 접근입니다.');
							return;
						}
					} else {
						alert('비밀번호를 확인해주세요.');
						return;
					}
				}
			}

			function fnValidPassword(val) {
				var vText = val;
				var reg1 = /[A-Z]/g;
				var reg2 = /[a-z]/g;
				var reg3 = /[0-9]/g;
				var reg4 = /[~!@#$%^&*()_+|<>?:{}]/g;
				var cnt = 0;

				if (reg1.test(vText)) {
					cnt += 1;
				}
				if (reg2.test(vText)) {
					cnt += 1;
				}
				if (reg3.test(vText)) {
					cnt += 1;
				}
				if (reg4.test(vText)) {
					cnt += 1;
				}

				if (cnt >= 3 && vText.length >= 8 && vText.length <= 20) {
					return true;
				}
				else if (cnt >= 2 && vText.length >= 10 && vText.length <= 20) {
					return true;
				}

				return false;
			}

			function fnSetAjax(type) {
				var strResult;
				var param = "";

				param += _param;

				$.ajax({
					data    : param,
					dataType: type,
					url     : '<%=header_addr2%>/russel/member/pw_confirm_ax.asp',
					async   : false,
					success : function(result) {
						strResult = result;
					},
					error   : function(xhr, status, error) {
						//location.reload();
					}
				});

				return strResult;
			}
		</script>
	<%End If%>
	<!-- //90일 비밀번호 변경 팝업 -->
</div>
</body>
</html>
