<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>식권결제 - 식권결제시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<body>
<div class="wrap">
	<header class="sub">
        <a href="/index.asp" class="btnPrev">결제완료</a>
		<!-- #include virtual = "/include/header.asp" -->		
	</header>
	<section class="sub">
		<div class="inBox">
			<ul class="paymentStep">
				<li><span>주문결제</span></li>
				<li class="on"><span>결제완료</span></li>
			</ul>
			<div class="complete center">
				<h2>식권 결제가 <span>완료</span>되었습니다.</h2>
				<img src="<%=Application("img_path_russel")%>/myinfo/fns/pay_complete.png" />
				<p class="bottom">캘린더에서 <span>급식예약까지 완료하셔야만 식사 제공</span>이 가능합니다.<br>확인버튼을 누르면 캘린더로 이동됩니다.</p>
			</div>
			<div class="completeBtn">
				<a href="./calendar.asp">확인</a>
			</div>
		</div>
	</section>
</div>
</body>
</html>
