<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<%
txtCampus = "러셀"
campusName = "intro"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel_dc"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"

    Case "CD0342": txtCampus = "러셀CORE 대구" '코어대구
                   campusName = "core_dg"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                   campusName = "core_wj"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                   campusName = "core_jj"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                   campusName = "core_cw"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                   campusName = "core_cj"

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
	'Case "CD0342": txtDate = "대구"
End Select
%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 재수생 우선선발반 [N수]" />
    <meta name="keywords" content="재수생, 재수생 우선선발반, N수, 2024 재수생 우선선발반, 재수" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
	<link rel="stylesheet" type="text/css" href="./first.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
	<script src="/js/chart.min.js"></script>
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2024 재수생 우선선발반 [N수]</strong>
</h2>
<section class="sub-wrap">

	<!-- first-wrap -->
    <div class="first-wrap">
		<!--visual, 하단 고정바(모집요강 바로가기)-->
		<!-- #include virtual = "/intro/2023/first/visual.asp" -->
		<!--//visual-->

		<!--section1, 최상위권이 집결하는 러셀 앞서 경험한 선배들이 증명합니다.-->
		<!-- #include virtual = "/intro/2023/first/section_01.asp" -->
		<!--//section1-->

		<!--section2, 한발 더 빠르게 시작한 선배들은 최상위권 대입 성공의 목표를 이루었습니다.-->
		<!-- #include virtual = "/intro/2023/first/section_02.asp" -->
		<!--//section2-->

		<!--section3, 대입 성공의 경쟁력 재수생 맞춤 시스템-->
		<!-- #include virtual = "/intro/2023/first/section_03.asp" -->
		<!--//section3-->

		<!--section4, 2024 재수생 우선선발반 모집안내 및 학원별 모집안내-->
		<!-- #include virtual = "/intro/2023/first/section_04.asp" -->
		<!--//section4-->

    </div>
	<!--//first-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
</body>
</html>

<script src="./first.js"></script>

