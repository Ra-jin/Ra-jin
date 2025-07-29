<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 러셀 재수종합반 반수" />
    <meta name="keywords" content="2025 러셀 재수종합반 반수, 재학생 반수반, 재수종합반 반수, 러셀 반수반, 반수반, 재학생, wjdrbqks" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 재수종합반 [반수]</strong>
</h2>
<% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어광주/영통/부천/중계/대구/울산 %>
<section class="sub-wrap">
	<!-- half-wrap -->
    <div class="half-wrap">
		<!-- #include virtual = "/intro/2024/half_overall/visual.asp" -->

		<% If campus_code = "CD0342" Then '대구 %>
		<!-- 마감딱지 -->
		<div class="ico-end" style="top: 0vw;right: 0vw;"><p><%=endText%></p></div>
		<!-- //마감딱지 -->
		<% End If %>

		<% If campus_code = "CD0342" Then '대구 %>
		<!-- 원서접수 버튼 -->
		<a class="apply-btn" href="javascript:void(0);" onclick="<%=apply_url%>">원서접수 바로가기</a>
		<!-- //원서접수 버튼 -->
		<% End If %>

		<div class="container <%=campusName%>">

            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
                <li class="on">모집안내</li>
				<li><%=fix_txt02%></li>
				<li>러셀 재수종합반</li>
                <li>최적화된 수업 시스템</li>
                <li>검증된 종합반 시스템</li>
            </ul>
            <!--// fix-menu -->
		</div>

		<!--마감딱지-->
		<% If campus_code = "CD0342" Then '대구 %>
		<div class="ico-end" style="top:211vw;right:5%"><p><%=endText%></p></div>
		<% End If %>
		<!--//마감딱지-->

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2024/half_overall/tab01.asp" -->
		<!-- //tab01 -->
		<!-- tab02 -->
		<!-- #include virtual = "/intro/2024/half_overall/tab02.asp" -->
		<!-- //tab02 -->
		<!-- tab03 -->
		<!-- #include virtual = "/intro/2024/half_overall/tab03.asp" -->
		<!-- //tab03 -->
		<!-- tab04 -->
		<!-- #include virtual = "/intro/2024/half_overall/tab04.asp" -->
		<!-- //tab04 -->
		<!-- tab05 -->
		<!-- #include virtual = "/intro/2024/half_overall/tab05.asp" -->
		<!-- //tab05 -->

        <div class="mask-bg type02" style="display: none;"></div>

        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2024/half_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!-- //half-wrap -->

</section>
<% End If %>
<!-- #include virtual = "/inc/footer.asp" -->
<script src="/js/chart.min.js"></script>
<script type="text/javascript" src="./ui.js"></script>
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