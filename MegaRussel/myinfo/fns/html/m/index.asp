<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/Member/login_check.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>	
	<!-- #include virtual = "/Textbook/include/m_head.asp" -->
</head>
<body>
<div class="wrap">
	<!-- header -->	
	<!-- #include virtual = "/Textbook/include/m_header.asp" -->
	<!-- //header -->

	<!-- content-wrap -->
	<div class="content-wrap">
		<!-- main-wrap -->
		<div class="main-wrap">
			<div class="btn-box">
				<p class="btn-book">
					<a href="#" class="on">교재구매</a>
					<span class="ico-num">2</span>
				</p>
				<p class="btn-seat">
					<a href="#">단과좌석</a>
					<span class="ico-num">2</span>
				</p>
				<p class="btn-results">
					<a href="#">성적조회</a>
					<span class="ico-num">2</span>
				</p>
				<p class="btn-eat">
					<a href="#">성적조회</a>
					<span class="ico-num">2</span>
				</p>
			</div>
			<!-- 교재구매 -->
			<div class="cont-box">
				<ul>
					<li>
						<a href="shop.asp">
							<span>구매가능</span>
							<span class="num">2</span>
						</a>
					</li>
					<li>
						<a href="cart.asp">
							<span>미수령</span>
							<span class="num">1</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- //교재구매 -->

			<!-- 단과좌석 -->
			<div class="cont-box" style="display:none">
				<ul>
					<li>
						<a href="/russel/mypage/textbook/html/m/seat_reseve.asp">
							<span>예약가능</span>
							<span class="num">1</span>
						</a>
					</li>
					<li>
						<a href="/russel/mypage/textbook/html/m/seat_reseve.asp">
							<span>예약완료</span>
							<span class="num">2</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- //단과좌석 -->
			<!-- 성적조회
			<div class="cont-box" style="display:none">
				<ul>
					<li>
						<a href="/russel/mypage/textbook/html/m/result.asp">
							<span>성적조회</span>
							<span class="num">1</span>
						</a>
					</li>
					<li>
						<a href="/russel/mypage/textbook/html/m/consulting.asp">
							<span>성적상담</span>
							<span class="num">2</span>
						</a>
					</li>
				</ul>
			</div>-->
			<!-- //성적조회 -->
			<!-- 식권예약 -->
			<div class="cont-box" style="display:none">
				<ul>
					<li>
						<a href="/russel/mypage/textbook/html/m/result.asp">
							<span>보유/결제</span>
							<span class="num">1</span>
						</a>
					</li>
					<li>
						<a href="/russel/mypage/textbook/html/m/consulting.asp">
							<span>급식예약</span>
							<span class="num">2</span>
						</a>
					</li>
				</ul>
			</div>
			<!-- //식권예약 -->
		</div>
		<!-- //main-wrap -->
	</div>
	<!-- //content-wrap -->
	
	<!-- footer -->
	<!-- #include virtual = "/russel/mypage/textbook/include/m_footer.asp" -->
	<!-- //footer -->
</div>
</body>
</html>