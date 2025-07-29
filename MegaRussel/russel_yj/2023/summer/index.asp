<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
tit01 = "¸ðÁý´ë»ó"
tit02 = "°³°­ÀÏ"
tit03 = "¹®ÀÇÀüÈ­"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "CD0348": campusName = "russel_w"  '±â¼÷¿©ÃÖ»óÀ§±Ç
                    txt01 = "°í2, °í3"
                    txt02 = "7¿ù 19ÀÏ(¼ö)"
                    txt03 = "031) 526-6787"
                    

    Case "CD0347": campusName = "russel_sm"  '±â¼÷¼­ÀÇÄ¡°ü
End Select
%>


<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2023 ·¯¼¿ ½æ¸Ó½ºÄð" />
    <meta name="keywords" content="2023 ·¯¼¿ ½æ¸Ó½ºÄð, ·¯¼¿ ½æ¸Ó½ºÄð, 2023 ·¯¼¿½æ¸Ó½ºÄð, ·¯¼¿½æ¸Ó½ºÄð" />
	<meta name="description" content="¹Ù¸¥°øºÎ ÀÚ½ÀÀü¿ë°ü 2023 ·¯¼¿ ½æ¸Ó½ºÄð" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2023 ·¯¼¿ ½æ¸Ó½ºÄð">
	<meta property="og:description" content="2023 ·¯¼¿ ½æ¸Ó½ºÄð, ·¯¼¿ ½æ¸Ó½ºÄð" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" href="/common/css/full_danka.css">
	<link rel="stylesheet" type="text/css" href="./ui.css" />
</head>
<body>
<!-- °øÅë ÃÖ»ó´Ü // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // °øÅë ÃÖ»ó´Ü -->

<!-- summer-wrap -->
<div class="summer-wrap <%=campusName%>">
	
    <!-- visual -->
    <!--#include virtual="/russel_yj/2023/summer/visual.asp" -->
    <!-- //visual -->

	<!-- contents -->
    <!-- °ËÁõµÈ 1µî, ·¯¼¿ ±â¼÷ÇÐ¿ø -->
    <!--include virtual="/russel_yj/2023/summer/cont01.asp" -->
    <!-- //°ËÁõµÈ 1µî, ·¯¼¿ ±â¼÷ÇÐ¿ø -->

    <!-- ½æ¸Ó½ºÄð ¾È³» -->
    <!--include virtual="/russel_yj/2023/summer/cont02.asp" -->
    <!-- //½æ¸Ó½ºÄð ¾È³» -->

    <!-- ÀÔÇÐ¾È³» -->
    <!--#include virtual="/russel_yj/2023/summer/cont03.asp" -->
    <!-- //ÀÔÇÐ¾È³» -->

    <% If sCampusCode = "CD0348" Then '¿©±â¼÷ %>
    <!-- ÀåÇÐÁ¦µµ -->
    <!--include virtual="/russel_yj/2023/summer/cont04.asp" -->
    <!-- //ÀåÇÐÁ¦µµ -->
    <% End If %>

    <!-- ÇÐ½À°èÈ¹Ç¥ ÀÏ°úÇ¥ -->
    <!--#include virtual="/russel_yj/2023/summer/cont05.asp" -->
    <!-- //ÇÐ½À°èÈ¹Ç¥ ÀÏ°úÇ¥ -->
	<!-- //contents -->

</div>
<!-- summer-wrap -->

<!--  °øÅë ÇÏ´Ü //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // °øÅë ÇÏ´Ü-->

<script src="./ui.js"></script>
<script>

	//¿µ»óÄ³½ºÆ® ¿µ»ó ÆË¾÷
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
	function fn_eventGo(url) {
		window.open(url,'popup_mock','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

</script>
</body>
</html>
