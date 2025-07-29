<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 재수생 우선선발반" />
    <meta name="keywords" content="재수생, 재수생 우선선발반, 2025 재수생 우선선발반, 재수" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
	<script src="/js/chart.min.js"></script>
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 재수종합반 우선선발</strong>
</h2>
<section class="sub-wrap">

	<!-- first-wrap -->
    <div class="first-wrap">

		<!--visual-->
		<!-- #include virtual = "/intro/2024/first_overall/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
				<li class="on">러셀 재수종합반</li>
				<li>최상위권 집결</li>
				<li>모집안내</li>
				<li>수업안내</li>
				<li>재수종합반 시스템</li>
            </ul>
            <!--// fix-menu -->


            <!-- 러셀재수종합반 tab01 -->
            <!-- #include virtual = "/intro/2024/first_overall/tab01.asp" -->
            <!-- //러셀재수종합반 -->

            <!-- 최상위권 집결 tab02 -->
            <!-- #include virtual = "/intro/2024/first_overall/tab02.asp" -->
            <!-- //최상위권 집결 -->

            <!-- 모집안내 tab03 -->
            <!-- #include virtual = "/intro/2024/first_overall/tab03.asp" -->
            <!-- //모집안내 -->
            
            <!-- 수업안내 tab04 -->
            <!-- #include virtual = "/intro/2024/first_overall/tab04.asp" -->
            <!-- //수업안내 -->
            
            <!-- 재수종합반 시스템 tab05 -->
            <!-- #include virtual = "/intro/2024/first_overall/tab05.asp" -->
            <!-- //재수종합반 시스템 -->

		</div>

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-tit js-cont-wrap">
            <strong>2025 재수생 우선선발반</strong> <br> 모집안내
        </div>
        <p class="recruit-txt">학원별 모집요강, 장학 혜택 밎 상세 등록 방법은 <br> 각 학원으로 문의바랍니다.</p>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% End If %>
        <div class="mask-bg" style="display: none;"></div>

        
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2024/first_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>

    </div>
	<!--//first-wrap -->
</section>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->

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
	var popupWidth = '100%';
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

    //학원 문자수신 알리미 신청 바로가기
    function fncAlarmPop(){        
        <% If IsRealSvr = true Then  '실서버 %>
          var em_num = "118";
        <% Else                      '개발서버 %>
          var em_num = "9087";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
        window.open(url,'popup_smsalarm','scrollbars=yes, top=0,left='+ popupX);
    }
</script>
</body>
</html>


