<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>결제완료 - 교재구매시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
	<!-- #include virtual = "/include/barcode.asp" -->
</head>
<body>
<div class="wrap">
	<header class="sub">
		<a href="./shop.asp" class="btnPrev">주문결제</a>
			
		<!-- #include virtual = "/include/header.asp" -->
	</header>
	<section class="sub">
		<div class="inBox">
			<div class="approve-wrap">
				<div class="info-box">
					<div class="loadding">
						<img src="<%=Application("img_path_russel")%>/mypage/fns/ico_loadding.svg" alt="" />
					</div>
					<div class="txt">
						<p><strong>결제를 요청했습니다.</strong></p>
						<p>
							잠시만 기다리시면 결제가 완료됩니다. <br>
							(페이지를 벗어나면 결제가 실패할 수 있습니다.)
						</p>
					</div>	
				</div>
			</div>
		</div>
	</section>
</div>

</body>
</html>
