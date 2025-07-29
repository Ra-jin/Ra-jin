<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2024 러셀 기숙 반수반" />
    <meta name="keywords" content="2024 러셀 기숙 반수반, " />
	<meta name="description" content="다시가 아닌 다르게 해야 성공합니다. 2024 러셀 기숙 반수반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀 기숙 반수반">
	<meta property="og:description" content="2024 러셀 기숙 반수반, 러셀기숙반수반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" href="/common/css/2022/full_danka.css">
    <link rel="stylesheet" href="/russel_yj/css/2023/half.css?version1.1">
</head>

<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- half-wrap -->
<div class="half-wrap <%=campus_name%>">
    <!-- visual & fixmenu -->
    <!--#include virtual="/russel_yj/2023/half/visual.asp" -->
    <!-- //visual & fixmenu -->
    
    <!-- 검증된 1등, 러셀 기숙학원 -->
    <!--include virtual="/russel_yj/2023/half/cont01.asp" -->
    <!-- //검증된 1등, 러셀 기숙학원 -->

    <!-- 반수반 안내 -->
    <!--include virtual="/russel_yj/2023/half/cont02.asp" -->
    <!-- //반수반 안내 -->
    
    <!-- 입학 안내 -->
    <!--#include virtual="/russel_yj/2023/half/cont03.asp" -->
    <!-- //입학 안내 -->

    <!-- 장학제도 -->
    <!--#include virtual="/russel_yj/2023/half/cont04.asp" -->
    <!-- //장학제도 -->
    
    <!-- 학습계획표&일과표 -->
    <!--#include virtual="/russel_yj/2023/half/cont05.asp" -->
    <!-- //학습계획표&일과표 -->
</div>
<!-- half-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script>
    
	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
	
	//문자수신 알리미 신청 바로가기
	function fn_eventGo(url) {
		window.open(url,'popup_mock','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}
    
    //영상 팝업
    function playPopup(url){
        var sUrl = url.toLowerCase();
        var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");

        // 네이버tv
        if (sUrl.indexOf('naver.com') > -1) {
            sUrl = sUrl.replace("/v/", "/embed/");
            wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
        // 유튜브
        } else {
            wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"?autoPlay=true' frameborder='no' scrolling='no' allowfullscreen></iframe>");
        }
    }

</script>

<script src="/russel_yj/js/2023/half.js"></script>
</body>
</html>
