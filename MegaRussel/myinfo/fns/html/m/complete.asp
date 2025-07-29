<!DOCTYPE html>
<!-- 공통 인클루드 페이지 시작 -->
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->
<!-- 공통 인클루드 페이지 종료 -->
<html lang="ko">
<head>	
	<!-- #include virtual = "/Textbook/include/m_head.asp" -->
</head>
<body>
<div class="sub-wrap">
	<!-- header -->	
	<!-- #include virtual = "/Textbook/include/m_header.asp" -->
	<!-- //header -->

	<!-- content-wrap -->
	<div class="content-wrap">
		<p class="step"><img src="<%=Application("img_path_russel")%>/mypage/textbook/m/pay_step02.png" alt="주문결제"></p>	
		<div class="complete">
			<p class="stit">주문 결제가 <strong>완료</strong>되었습니다.</p>
			<div class="completeImg-wrap"><img src="<%=Application("img_path_russel")%>/mypage/fns/m/pay_complete.png" alt="주문완료"></div>
		</div>
		
		<div class="btn-bor">
			<a href="#" class="btn-type01">확인</a>
		</div>
		
	</div>
	<!-- //content-wrap -->
</div>
</body>
</html>