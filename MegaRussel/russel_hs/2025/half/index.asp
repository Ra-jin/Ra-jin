<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2026 반수반" />
    <meta name="keywords" content="러셀학원, 재수학원, 입시, 재수기숙학원, 메가스터디러셀, 메가스터디, N수, 반수, 대입, 대학생, 의대, 약대, 한의대" />
	<meta name="description" content=" 빠르게, 더 높은 목표에 도달하는 반수 성공 공식 러셀 반수반!" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2026 반수반">
	<meta property="og:description" content="빠르게, 더 높은 목표에 도달하는 반수 성공 공식 러셀 반수반!"/>
	<!--#include virtual="/russel/library/include/common/russel_yj/head.asp" -->
	<link rel="stylesheet" href="/common/css/aos.css">
    <link rel="stylesheet" href="/common/css/table.css">
    <link rel="stylesheet" href="/common/css/common.css">
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
	<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
	
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->
<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0363" Then '최상위기숙 %>
<!-- half-wrap -->
<div class="half-wrap">

	<!-- Visual -->
	<!--#include virtual="/russel_hs/2025/half/visual.asp"-->
	<!-- Visual -->

	<!-- Contents -->
	<div class="container">
		<!-- 최상위권 집결-->
		<!-- #include virtual="/russel_hs/2025/half/con01_top_rank.asp"-->
		<!-- //최상위권 집결, 러셀 -->

		<!-- 러셀 기숙 시스템 -->
		<!-- #include virtual="/russel_hs/2025/half/con02_program.asp"-->
		<!-- //러셀 기숙 시스템 -->

		<!-- 입학 안내 및 학습계획표&일과표 -->
		<!-- #include virtual="/russel_hs/2025/half/con03_lineup.asp"-->
		<!-- //입학 안내 및 학습계획표&일과표 -->

		<!-- //Contents -->

	</div>
	<div class="mask-bg" style="display: none;"></div>
</div>
<!-- half-wrap -->
<% End If %>

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
<script>
	// 영상캐스트 영상 팝업
	function CastPopup(url){
		var sUrl = url.toLowerCase();
		var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");

		// 네이버tv
		if (sUrl.indexOf('naver.com') > -1) {
			sUrl = sUrl.replace("/v/", "/embed/");
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
		// 유튜브
		} else {
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
		}
	}

	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//학원 문자수신 알리미 신청 바로가기
	function fncAlarmPop(){
        <% If IsRealSvr = true Then	'실서버 %>
	        var em_num = "118";
        <% Else	                    '개발서버 %>
	        var em_num = "9087";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	function fncAlarmPop02(){
        var url = "https://russelbc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp"
		window.open(url,'popup_smsalarm02','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	function fncAlarmPop03(){
        var url = "https://russel.megastudy.net/popup/popup_sms_alarm.asp?EM_NUM=125"
		window.open(url,'popup_smsalarm02','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	function openPop(url) {
		window.open(url,'pre_apply_pop','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}
    //aos fadeup 효과
    AOS.init({

		offset: 300,
		duration: 700,
		easing: 'linear',
		delay: 0,
		once: true
	});

</script>
</body>
</html>
