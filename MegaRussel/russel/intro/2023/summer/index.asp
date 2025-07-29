<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
txtCampus = "·¯¼¿"
campusName = "intro"
campusName02 = "russel"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "·¯¼¿"  'ÀÎÆ®·Î

    Case "CD0247": txtCampus = "·¯¼¿ °­³²"  '°­³²
                    campusName = "russel_gn"
                    campusName02 = "t_gn"

    Case "CD0001": txtCampus = "·¯¼¿ ´ëÄ¡"  '´ëÄ¡
                    campusName = "russel_dc"
                    campusName02 = "t_dc"

    Case "CD0245": txtCampus = "·¯¼¿ ¸ñµ¿"   '¸ñµ¿
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"

    Case "CD0250": txtCampus = "·¯¼¿ ºÎÃµ"   'ºÎÃµ
                    campusName = "russel_bc"
                    campusName02 = "t_bc"

	Case "CD0244": txtCampus = "·¯¼¿ ºÐ´ç"   'ºÐ´ç
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"

	Case "CD0246": txtCampus = "·¯¼¿ ¼¾ÅÒ"   '¼¾ÅÒ
                    campusName = "russel_ct"
                    campusName02 = "t_ct"

    Case "CD0249": txtCampus = "·¯¼¿ ¿µÅë"   '¿µÅë
                    campusName = "russel_yt"
                    campusName02 = "t_yt"

    Case "CD0257": txtCampus = "·¯¼¿ Áß°è"   'Áß°è
                    campusName = "russel_jg"
                    campusName02 = "t_jg"

	Case "CD0248": txtCampus = "·¯¼¿ ÆòÃÌ"   'ÆòÃÌ
                    campusName = "russel_pc"
                    campusName02 = "t_pc"

	Case "CD0340": txtCampus = "·¯¼¿CORE ±¤ÁÖ"   'ÄÚ¾î±¤ÁÖ
                    campusName = "core_gj"
                    campusName02 = "t_gj"

	Case "CD0341": txtCampus = "·¯¼¿CORE ´ëÀü"   'ÄÚ¾î´ëÀü
                    campusName = "core_dj"
                    campusName02 = "t_dj"

    Case "CD0342": txtCampus = "·¯¼¿ ´ë±¸" '´ë±¸
                   campusName = "russel_dg"
                   campusName02 = "t_dg"

    Case "CD0343": txtCampus = "·¯¼¿CORE ¿øÁÖ"  'ÄÚ¾î¿øÁÖ
                   campusName = "core_wj"
                   campusName02 = "t_wj"

    Case "CD0344": txtCampus = "·¯¼¿CORE ÀüÁÖ"  'ÄÚ¾îÀüÁÖ
                   campusName = "core_jj"
                   campusName02 = "t_jj"

    Case "CD0345": txtCampus = "·¯¼¿CORE Ã¢¿ø"  'ÄÚ¾îÃ¢¿ø
                   campusName = "core_cw"
                   campusName02 = "t_cw"

    Case "CD0346": txtCampus = "·¯¼¿CORE Ã»ÁÖ"  'ÄÚ¾îÃ»ÁÖ
                   campusName = "core_cj"
                   campusName02 = "t_cj"
    case else : 
                campusName02 = "else"

	'Case "CD0258": txtDate = "±â¼÷"
	'Case "CD0331": r_title = "»ðÀÚ·ç ¼öÇÐÇÐ¿ø"
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
	<!--#include virtual="/intro/2023/summer/visual.asp"-->
	<!-- visual -->

    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" And campusName02 <> "else" Then 'ÀÎÆ®·ÎÁ¦¿Ü , ±×¿Ü ÇÐ¿ø(¿¡·¯ ¹æÁö) %>
    <div class="final-cont">

        <!-- ÇÐ¿øº° ÄÁÅÙÃ÷ -->
        <%
            dirFile = "/intro/2023/summer/"&campusName02&".asp"
            Server.Execute(dirFile)
        %>
        <!-- //ÇÐ¿øº° ÄÁÅÙÃ÷ -->
    </div>
    <% End If %>

	<!-- contents -->
	<!--include virtual="/intro/2023/summer/contents.asp"-->
	<!-- //contents -->

	<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Or campusName02 = "else" Then 'ÀÎÆ®·Î , ±×¿Ü ÇÐ¿ø(¿¡·¯ ¹æÁö) %>
	<!-- ÇÐ¿øº° ¸ðÁý¾È³» -->
	<div class="cont js-cont">

		<!-- cont08 -->
		<div class="cont08">
			<div class="inner">
                <p><img src="<%=Application("img_path_russel")%>/intro/2023/summer/cont08_tit.png" alt="" /></p>
				<!--#include virtual="/common/inc/campus_list_basic.asp" -->
			</div>
		</div>
		<!--// cont08 -->
	</div>
	<!-- //ÇÐ¿øº° ¸ðÁý¾È³» -->
	<% end if %>

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
