<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
	campus_code = GetCampusVarsSiteMGC("_CAMPUS_CODE_") 
%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head_main.asp" -->

</head>
<body>
<!-- #include virtual = "/inc/header.asp" -->

<section class="main" role="main">
	<!-- 메인 대배너 -->
	<!-- #include virtual = "/inc/banner_main.asp" -->
	<!-- //메인 대배너 -->

	<!-- 텍스트 배너 -->
	<!-- #include virtual = "/inc/banner_sub.asp" -->
	<!-- //텍스트 배너 -->

	<!--대입결과 배너-->
	<!-- #include virtual = "/inc/banner_result.asp" -->
	<!--//대입결과 배너-->

	<!-- 공지사항 -->
	<!-- #include virtual = "/inc/main_notice_list.asp" -->
	<!-- //공지사항 -->

	<!-- 러셀 스튜디오 -->
	<!-- include virtual = "/inc/main_studio.asp" -->	

	<!-- 랜딩 페이지 -->
	<!-- #include virtual = "/inc/main_landing.asp" -->	

	<!-- 상담 버튼 -->
	<!-- #include virtual = "/inc/main_counsel.asp" -->
	<!-- //상담 버튼 -->
	
	<!-- 하단 공통 배너 -->
	<!-- #include virtual = "/inc/banner_bottom.asp" -->
	<!-- //하단 공통 배너 -->

	
</section>

<!-- #include virtual = "/inc/footer.asp" -->
</body>
</html>