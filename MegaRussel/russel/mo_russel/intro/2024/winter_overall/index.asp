<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 러셀 윈터스쿨 종합반" />
    <meta name="keywords" content="2025 러셀 윈터스쿨 종합반, 윈터스쿨, 윈터스쿨 종합반, 러셀 윈터스쿨, 윈터스쿨, dnlsxjtmznf" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 윈터스쿨 종합반</strong>
</h2>
<section class="sub-wrap">
	<!-- winter-wrap -->
    <div class="winter-wrap">
		<!-- #include virtual = "/intro/2024/winter_overall/visual.asp" -->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
                <li class="on">윈터스쿨 모집안내</li>
                <li>최상위권의 선택</li>
                <li>신개념 융합형 종합반</li>
                <li>윈터스쿨 프로그램</li>
            </ul>
            <!--// fix-menu -->
		</div>
        <!-- else: 에러방지 -->
        <% If campusName02 <> "" Then %>
            <!-- 학원별 모집안내 -->
            <div class="js-cont-wrap">
                <div class="cont00">
                    <!--학원별 컨텐츠 -->
                    <%
                    dirFile = "/intro/2024/winter_overall/"&campusName02&".asp"
                    Server.Execute(dirFile)
                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
            </div>
        <% Else 
            Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
		    Response.End
        %>

        <% End If %>
		<!-- tab01 -->
		<!-- #include virtual = "/intro/2024/winter_overall/tab01.asp" -->
        <!-- tab02 -->
		<!-- #include virtual = "/intro/2024/winter_overall/tab02.asp" -->
        <!-- tab03 -->
		<!-- #include virtual = "/intro/2024/winter_overall/tab03.asp" -->
        
        <div class="mask-bg type02" style="display: none;"></div>

        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2024/winter_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!-- //winter-wrap -->

</section>
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
          var em_num = "126";
        <% Else                      '개발서버 %>
          var em_num = "10093";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num+"&stype=w";
        window.open(url,'popup_smsalarm','scrollbars=yes, top=0,left='+ popupX);
    }
</script>
</body>
</html>