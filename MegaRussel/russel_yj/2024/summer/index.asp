<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2025 ·¯¼¿ ½æ¸Ó½ºÄð" />
    <meta name="keywords" content="2025 ·¯¼¿ ½æ¸Ó½ºÄð, ·¯¼¿ ½æ¸Ó½ºÄð, 2025 ·¯¼¿½æ¸Ó½ºÄð, ·¯¼¿½æ¸Ó½ºÄð , ±â¼÷ ½æ¸Ó½ºÄð" />
	<meta name="description" content="¹Ù¸¥°øºÎ ÀÚ½ÀÀü¿ë°ü 2025 ·¯¼¿ ½æ¸Ó½ºÄð" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 ·¯¼¿ ½æ¸Ó½ºÄð">
	<meta property="og:description" content="2025 ·¯¼¿ ½æ¸Ó½ºÄð, ·¯¼¿ ½æ¸Ó½ºÄð" />
	<!--#include virtual="/russel/library/include/common/russel_yj/head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css " />
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" href="/common/css/table.css">
	<link rel="stylesheet" href="/common/css/aos.css">
	<link rel="stylesheet" href="/common/css/common.css">
</head>
<body>
<!-- °øÅë ÃÖ»ó´Ü // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // °øÅë ÃÖ»ó´Ü -->

<% If sCampusCode = "CD0258" OR sCampusCode = "CD0348" OR sCampusCode = "CD0347" Then '³²±â¼÷/¿©±â¼÷/¼­ÀÇÄ¡ %>
<!-- summer-wrap -->
<div class="summer-wrap">

	<!-- Visual -->
    <!--#include virtual="/russel_yj/2024/summer/visual.asp" -->
	<!-- Visual -->

	<!-- Contents -->

    <!-- ÃÖ»óÀ§±Ç ÀÇ´ëÀü¹®°ü -->
    <!--#include virtual="/russel_yj/2024/summer/cont01.asp" -->

    <!-- ÃÖ»óÀ§±Ç µµ¾à -->
    <!--#include virtual="/russel_yj/2024/summer/cont02.asp" -->

	<!-- ÃÖ»óÀ§±Ç µµ¾àÀ§ÇÑ ÇÁ·Î±×·¥ -->
	<!--#include virtual="/russel_yj/2024/summer/cont03.asp" -->
	
	<!-- Contents -->
	<!-- ÀÔÇÐ ¾È³» -->
	<!-- ÇÐ¿øº° ÄÁÅÙÃ÷ -->
	<%
		dirFile = "/russel_yj/2024/summer/"&campusName02&".asp"
		Server.Execute(dirFile)
	%>
	<!-- //ÇÐ¿øº° ÄÁÅÙÃ÷ -->

    <!-- ÇÐ½À°èÈ¹Ç¥, ÀÏ°úÇ¥ -->
    <!--#include virtual="/russel_yj/2024/summer/cont04.asp" -->

	<!-- //Contents -->
</div>
<!-- half-wrap -->

<% End If %>
<!--  °øÅë ÇÏ´Ü //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // °øÅë ÇÏ´Ü-->

<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
<script>
	// ¿µ»óÄ³½ºÆ® ¿µ»ó ÆË¾÷
	function CastPopup(url){
		var sUrl = url.toLowerCase();
		var wnd = window.open("", "talk", "width=554,height=316,scrollbars=0,resizable=no,location=no");
		
		// ³×ÀÌ¹ötv
		if (sUrl.indexOf('naver.com') > -1) {
			sUrl = sUrl.replace("/v/", "/embed/");
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+sUrl+"' frameborder='no' scrolling='no' marginwidth='0' marginheight='0' allow='autoplay' allowfullscreen></iframe>");
		// À¯Æ©ºê
		} else {
			wnd.document.write("<iframe style='position:absolute;top:0;left:0;width:100%;height:100%;' src='"+url+"' frameborder='no' scrolling='no' allowfullscreen></iframe>");
		}
	}
    
	//quick ÆË¾÷Ã¢
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//ÇÐ¿ø ¹®ÀÚ¼ö½Å ¾Ë¸®¹Ì ½ÅÃ» ¹Ù·Î°¡±â
	function fncAlarmPop(){        
        <% If IsRealSvr = true Then	'½Ç¼­¹ö %>
	        var em_num = "111";
        <% Else	                    '°³¹ß¼­¹ö %>
	        var em_num = "9079";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

    //aos fadeup È¿°ú
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
