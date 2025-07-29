<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta name="title" content="2025 윈터스쿨" />
    <meta name="keywords" content="2025 윈터스쿨, 윈터스쿨, 2025 윈터스쿨, 윈터스쿨" />
	<meta name="description" content="바른공부 자습전용관 2025 윈터스쿨" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 윈터스쿨">
	<meta property="og:description" content="2025 윈터스쿨, 윈터스쿨" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/table.css">
    <link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
    <link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<!-- 공통 최상단 -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- winter-wrap -->
<div class="winter-wrap">

	<!-- Visual -->
	<!--#include virtual="/intro/2024/winter/visual.asp"-->
	<!-- //Visual -->

	<!-- Contents -->
    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" and campusName02 <> "" Then '인트로 제외 %>
	<!-- 학원별 컨텐츠 -->
	<%
		dirFile = "/intro/2024/winter/"&campusName02&".asp"
		Server.Execute(dirFile)
	%>
	<!-- //학원별 컨텐츠 -->
    <% End If %>
	<!-- //Contents -->
	
	<!-- 최상위권의 선택 -->
	<!-- #include virtual="/intro/2024/winter/tab01_top_choice.asp"-->
	<!-- //최상위권의 선택 -->

	<!-- 윈터스쿨 프로그램-->
	<!-- #include virtual="/intro/2024/winter/tab02_program.asp"-->
	<!-- //윈터스쿨 프로그램-->
	<!-- //Contents -->
    
    <% If sCampusCode = "INTRO" Then '인트로 %>
    <!-- 학원별 모집안내 -->
    <div class="cont js-cont winter-info">
        <div class="inner">
			<h3 class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/intro_info.png" alt="2025 러셀 윈터스쿨 모집안내 학원별 모집요강, 장학혜택 및 상세 등록 방법은 각 학원으로 문의 바랍니다." /></h3>
			<!--#include virtual="/common/inc/campus_list_basic.asp" -->
        </div>
    </div>
    <!-- //학원별 모집안내 -->
    <% End If %> 

	<div class="mask-bg" style="display: none;"></div>
</div>
<!-- //winter-wrap -->

<!--  공통 하단 -->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단 -->

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
	        var em_num = "126&stype=w";
        <% Else	                    '개발서버 %>
	        var em_num = "10093&stype=w";
        <% End If %>

        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);

	}

    //aos fadeup 효과
    AOS.init({
                
		offset: 200,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});

	// 관리자 등록용 alert
	// function open_msg(msg){
	// 	alert(msg);
	// }

</script>
</body>
</html>
