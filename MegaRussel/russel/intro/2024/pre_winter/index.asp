<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="프리윈터스쿨" />
    <meta name="keywords" content="2025 러셀코어 프리윈터스쿨, 러셀코어 프리윈터스쿨, 2025 러셀코어프리윈터스쿨, 러셀코어프리윈터스쿨" />
    <meta name="description" content="프리윈터스쿨" />
    <meta property="og:type" content="website">
    <meta property="og:title" content="2025 러셀코어 프리윈터스쿨">
    <meta property="og:description" content="2025 러셀코어 프리윈터스쿨, 러셀코어 프리윈터스쿨" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- pre-winter-wrap -->
<div class="pre-winter-wrap">
	<!-- visual -->
	<!--#include virtual="/intro/2024/pre_winter/visual.asp"-->
	<!-- visual -->
    <div class="container <%=campusName%>">

        <!-- contents -->
        <!--#include virtual="/intro/2024/pre_winter/contents.asp"-->
        <!-- //contents -->

        <% If sCampusCode = "INTRO" Then '인트로 %>
        <!-- 학원별 모집안내 -->
        <div class="cont06">
            <div class="inner">
                <h2 class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/intro_info.png" alt="2025  프리윈터스쿨 학원안내 상세 프로그램 및 일정은 학원별 홈페이지를 확인하여 주시기 바랍니다." /></h2>
                <!--#include virtual="/common/inc/campus_list_basic.asp" -->
            </div>
        </div>
        <!-- //학원별 모집안내 -->
        <% End If %> 
    </div>
</div>
<!-- //pre-winter-wrap -->

<!--  공통 하단-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
<script>
    
    //aos fadeup 효과
    AOS.init({
                
        offset: 200,
        duration: 500,
        easing: 'ease-in-sine',
        delay: 0,
        once: true
    });
   
	// //quick 팝업창
	// var popH = screen.availHeight;
	// var popupWidth = 794;
	// var popupX = (window.screen.width / 2) - (popupWidth / 2);

	// //학원 문자수신 알리미 신청 바로가기
	// function fncAlarmPop(){        
    //     <% If IsRealSvr = true Then	'실서버 %>
	//         var em_num = "112";
    //     <% Else	                    '개발서버 %>
	//         var em_num = "9082";
    //     <% End If %>
    //     var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
	// 	window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	// }


</script>
</body>
</html>
