<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

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
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2023 러셀 재수생 우선 선발반" />
    <meta name="keywords" content="2023 러셀 재수생 우선 선발반, 러셀 재수생 우선 선발반, 재수생 우선선발반, 러셀 재수생, wotntod, 재수, 23년 재수" />
	<meta name="description" content="단과 수업과 의무자습을 한방에 2023 러셀 재수생 우선 선발반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2023 러셀 재수생 우선 선발반">
	<meta property="og:description" content="2023 러셀 재수생 우선선발반, 러셀재수생우선선발반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./first.css" />
	<link rel="stylesheet" href="/common/css/full_danka.css">
</head>

<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- first-wrap -->
<div class="first-wrap">
	<!-- visual -->
	<!--#include virtual="/intro/2023/first/visual.asp"-->
	<!-- //visual -->

	<!-- 모집요강 및 장학혜택 -->
	<!--#include virtual="/intro/2023/first/con_benefit.asp"-->
	<!-- //모집요강 및 장학혜택 -->

	<!-- 결과로 증명하는 재수생 우선선발반 -->
	<!-- #include virtual="/intro/2023/first/con_result.asp"-->
	<!-- //결과로 증명하는 재수생 우선선발반 -->

	<!-- 재수생 맞춤 시스템 -->
	<!--#include virtual="/intro/2023/first/con_system.asp"-->
	<!-- //재수생 맞춤 시스템 -->

	<!-- 모집안내 -->
	<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Then '인트로 %>
	<div class="cont js-cont" style="display: none;">
		<!-- cont07 -->
		<div class="cont07 bg-gray02">
			<div class="inner02">
				<p class="pb55"><img src="<%=Application("img_path_russel")%>/intro/2023/first/cont07_tit.png" alt="2024 러셀 재수생 우선선발반 모집 안내" /></p>
				<!--include virtual="/common/inc/campus_list_basic.asp" -->
			</div>
		</div>
		<!-- //cont07 -->
	</div>
	<% end if %>
	<!-- //모집안내 -->
</div>
<!-- first-wrap -->



<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->


<script src="./first.js"></script>
<script src="/common/js/chart.min.js"></script>
<script>
    
	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	
	//학원 문자수신 알리미 신청 바로가기
	function fn_eventGo() {
		window.open('https://russelbd.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp','popup_mock','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

</script>
</body>
</html>
