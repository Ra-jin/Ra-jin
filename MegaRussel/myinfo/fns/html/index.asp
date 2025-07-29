<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>
	<meta charset="euc-kr" />
	<title>메인 - 교재구매시스템</title>
	<!-- #include virtual = "/include/head.asp" -->
</head>
<body>
<div class="wrap">
	<header>
		<p class="logo"><a href="#"><img src="<%=Application("img_path_russel")%>/mypage/textbook/tablet/common/logo.png" alt="러셀" /></a></p>
		<ul class="info">
			<li class="student">박지선(480201)</li>
			<li class="campus">러셀 대치 재원중</li>
		</ul>
		<a href="#" class="btnClose btnLogout">로그아웃</a>
	</header>
	<section class="bgGray">
		<div class="mainBox">
			<div class="mainBox_W">
				<div class="mainBox_W_N">
					<a href="#">
						<span class="alarm"><span>99</span></span>
						<span class="p">교재구매</span>
					</a>
				</div>
				<div class="mainBox_W_S">
					<a href="#">
						<span class="alarm"><span>99</span></span>
						<span class="p">단과좌석</span>
					</a>
				</div>				
				<div class="mainBox_W_F">
					<a href="#">
						<span class="alarm"><span>99</span></span>
						<span class="p">식권예약</span>
					</a>
				</div>
			</div>
			<div class="mainBox_E">
				<div class="mainBox_E_W">
					<a href="#">
						<span class="title">구매가능</span>
						<span class="amount">99</span>
					</a>
				</div>
				<div class="mainBox_E_E">
					<a href="#">
						<span class="title">미수령</span>
						<span class="amount">99</span>
					</a>
				</div>
			</div>
			<div class="mainBox_E" style="display:none;">
				<div class="mainBox_E_W">
					<a href="#">
						<span class="title">예약가능</span>
						<span class="amount">99</span>
					</a>
				</div>
				<div class="mainBox_E_E">
					<a href="#">
						<span class="title">예약완료</span>
						<span class="amount">99</span>
					</a>
				</div>
			</div>			
			<div class="mainBox_E" style="display:none;">
				<div class="mainBox_R_W">
					<a href="#">
						<span class="title">보유/결제</span>
						<span class="amount">99</span>
					</a>
				</div>
				<div class="mainBox_R_E">
					<a href="#">
						<span class="title">식수예약</span>
						<span class="amount">99</span>
					</a>
				</div>
			</div>
			<script>
				$('.mainBox_W a').on('click', function(e){
					e.preventDefault();
					$('.mainBox_E').hide();
					$('.mainBox_E').eq($(this).closest('.mainBox_W > div').index()).show();
				});
			</script>
		</div>
	</section>
</div>
</body>
</html>
