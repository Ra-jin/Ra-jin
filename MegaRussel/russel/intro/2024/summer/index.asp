<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta name="title" content="2025 ¨ö©¡¢¬?¨ö¨¬?©£" />
    <meta name="keywords" content="2025 ¨ö©¡¢¬?¨ö¨¬?©£, ¨ö©¡¢¬?¨ö¨¬?©£, 2025 ¨ö©¡¢¬?¨ö¨¬?©£, ¨ö©¡¢¬?¨ö¨¬?©£" />
	<meta name="description" content="©ö?¢¬?¡Æ©ª¨¬? ??¨ö???¢¯?¡Æ? 2025 ¨ö©¡¢¬?¨ö¨¬?©£" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 ¨ö©¡¢¬?¨ö¨¬?©£">
	<meta property="og:description" content="2025 ¨ö©¡¢¬?¨ö¨¬?©£, ¨ö©¡¢¬?¨ö¨¬?©£" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css" />
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/table.css">
	<link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
	<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
</head>
<body>
<!-- ¡Æ©ª?? ????¢¥? -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // ¡Æ©ª?? ????¢¥? -->

<!-- summer-wrap -->
<div class="summer-wrap">

	<!-- Visual -->
	<!--#include virtual="/intro/2024/summer/visual.asp"-->
	<!-- //Visual -->

	<!-- Contents -->
    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" and campusName02 <> "" Then '??¨¡¢ç¡¤? ??¢¯? %>
	<!-- ?¨¢¢¯©ª¨¬¡Æ ?????¡À -->
	<%
		dirFile = "/intro/2024/summer/"&campusName02&".asp"
		Server.Execute(dirFile)
	%>
	<!-- //?¨¢¢¯©ª¨¬¡Æ ?????¡À -->
    <% End If %>
	<!-- //Contents -->
	
	<!-- ?????¡×¡¾? ??¡Æ?, ¡¤?¨ù¢¯ -->
	<!-- #include virtual="/intro/2024/summer/cont01.asp"-->
	<!-- //?????¡×¡¾? ??¡Æ?, ¡¤?¨ù¢¯ -->

	<!-- ¨ö©¡¢¬?¨ö¨¬?©£ ¨¡??¡© ¨ö?¨ö¨¬??-->
	<!-- #include virtual="/intro/2024/summer/cont02.asp"-->
	<!-- //¨ö©¡¢¬?¨ö¨¬?©£ ¨¡??¡© ¨ö?¨ö¨¬??-->
	<!-- //Contents -->
    
    <% If sCampusCode = "INTRO" Then '??¨¡¢ç¡¤? %>
    <!-- ?¨¢¢¯©ª¨¬¡Æ ¢¬©£??¨ú?©ø? -->
    <div class="cont js-cont summer-info">
        <div class="inner">
			<h3><img src="<%=Application("img_path_russel")%>/intro/2024/summer/intro_summer_info.png" alt="2024 ¡¤?¨ù¢¯ ¨ö©¡¢¬?¨ö¨¬?©£ ¢¬©£??¨ú?©ø?" /></h3>
			<!--#include virtual="/common/inc/campus_list_basic.asp" -->
        </div>
    </div>
    <!-- //?¨¢¢¯©ª¨¬¡Æ ¢¬©£??¨ú?©ø? -->
    <% End If %> 

	<div class="mask-bg" style="display: none;"></div>
</div>
<!-- //half-wrap -->

<!--  ¡Æ©ª?? ??¢¥? -->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // ¡Æ©ª?? ??¢¥? -->

<script src="/common/js/chart.min.js"></script>
<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
<script>
	// ¢¯????©ø¨ö¨¬¨¡¢ç ¢¯??? ¨¡?¨ú¡À
	function CastPopup(url){
		var sUrl = url.toLowerCase();
		var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");
		
		// ©ø¡¿??©ö?tv
		if (sUrl.indexOf('naver.com') > -1) {
			sUrl = sUrl.replace("/v/", "/embed/");
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
		// ??¨¡?¨¬?
		} else {
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
		}
	}
    
	//quick ¨¡?¨ú¡À??
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//?¨¢¢¯©ª ©ö¢ç??¨ù?¨ö? ¨ú?¢¬¢ç©ö? ¨ö??? ©ö?¡¤?¡Æ¢®¡¾?
	function fncAlarmPop(){        
        
		<% If IsRealSvr = true Then	'¨ö?¨ù¡©©ö? %>
	        var em_num = "118";
        <% Else	                    '¡Æ©ø©ö©¬¨ù¡©©ö? %>
	        var em_num = "9087";
        <% End If %>

        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);

	}
	function fncAlarmPop02(){        
        var url = "https://russelbc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp"
		window.open(url,'popup_smsalarm02','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

    //aos fadeup ?¢¯¡Æ?
    AOS.init({
                
		offset: 300,
		duration: 500,
		easing: 'ease-in-sine',
		delay: 0,
		once: true
	});

	// ¡Æ?¢¬¢ç??¢¯? alert
	function open_msg(msg){
		alert(msg);
	}

</script>
</body>
</html>
