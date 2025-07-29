<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta name="title" content="2025 러셀 반수 재수종합반" />
    <meta name="keywords" content="2025 러셀 반수반, 러셀 반수종합반, 2025 러셀반수반, 러셀반수반, 반수종합반" />
	<meta name="description" content="바른공부 자습전용관 2025 러셀 반수 재수종합반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 러셀 반수 재수 종합반">
	<meta property="og:description" content="2025 러셀 반수반, 반수 종합반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css" />
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css" />
	<link  rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
    <link rel="stylesheet" type="text/css" href="/common/css/table.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/aos.css" />
</head>
<body>
<!-- 공통 최상단 -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->
<% If sCampusCode = "CD0340" OR sCampusCode = "CD0249" OR sCampusCode = "CD0250" OR sCampusCode = "CD0257" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어광주/영통/부천/중계/대구/울산 %>
<!-- half-wrap -->
<div class="half-wrap <%=campusName%>">

	<!-- Visual -->
    <!--#include virtual="/intro/2024/half_overall/visual.asp" -->
	<!-- Visual -->

	<!-- Contents -->
    <!-- 모집안내 -->
    <!--#include virtual="/intro/2024/half_overall/cont01.asp" -->

    <!-- 최상위권 집결 -->
    <!--#include virtual="/intro/2024/half_overall/cont02.asp" -->

    <!--  러셀 재수종합반 -->
    <!--#include virtual="/intro/2024/half_overall/cont03.asp" -->

    <!--  최적화된 수업 시스템 -->
    <!--#include virtual="/intro/2024/half_overall/cont04.asp" -->
	
	<!-- //Contents -->

	<div class="mask-bg" style="display: none;"></div>
</div>
<!-- //half-wrap -->
<% End if %>

<!--  공통 하단 -->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단 -->

<script src="/common/js/chart.min.js"></script>
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

    //aos fadeup 효과
    AOS.init({
                
		offset: 300,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});

</script>
</body>
</html>
