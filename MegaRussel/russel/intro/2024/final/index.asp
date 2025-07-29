<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta name="title" content="2025 러셀 파이널 정규반" />
    <meta name="keywords" content="2024 러셀 파이널 정규반, 러셀 파이널 정규반, 2024 러셀정규반, 러셀정규반" />
	<meta name="description" content="바른공부 자습전용관 2024 러셀 파이널 정규반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀 파이널 정규반">
	<meta property="og:description" content="2024 러셀 파이널 정규반, 러셀 파이널 정규반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css" />
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/table.css">
	<link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
</head>
<body>
<!-- 공통 최상단 -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- final-wrap -->
<div class="final-wrap">

	<!-- Visual -->
	<!--#include virtual="/intro/2024/final/visual.asp"-->
	<!-- //Visual -->

	<!-- Contents -->
    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" and campusName02 <> "" Then '인트로 제외 %>
	<!-- 학원별 컨텐츠 -->
	<%
		dirFile = "/intro/2024/final/"&campusName02&".asp"
		Server.Execute(dirFile)
	%>
	<!-- //학원별 컨텐츠 -->
    <% End If %>
	<!-- //Contents -->
	
	<!-- 최상위권 집결, 러셀 -->
	<!-- #include virtual="/intro/2024/final/cont01.asp"-->
	<!-- //최상위권 집결, 러셀 -->
	<!-- //Contents -->
    
    <% If sCampusCode = "INTRO" Then '인트로 %>
    <!-- 학원별 모집안내 -->
    <div class="cont js-cont final-info">
        <div class="inner">
			<h3><img src="<%=Application("img_path_russel")%>/intro/2024/final/intro_final_info.png" alt="2024 러셀 파이널 정규반 모집안내" /></h3>
			<!--#include virtual="/common/inc/campus_list_basic.asp" -->
        </div>
    </div>
    <!-- //학원별 모집안내 -->
    <% End If %> 

	<div class="mask-bg" style="display: none;"></div>
</div>
<!-- //half-wrap -->

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
	function fncAlarmPop02(){        
        var url = "https://russelbc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp"
		window.open(url,'popup_smsalarm02','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

    //aos fadeup 효과
    AOS.init({
                
		offset: 300,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});

	// 관리자용 alert
	function open_msg(msg){
		alert(msg);
	}

</script>
</body>
</html>
