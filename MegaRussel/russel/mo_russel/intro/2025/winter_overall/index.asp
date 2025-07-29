<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2026 윈터스쿨 종합반" />
    <!-- #include virtual = "/intro/2025/winter_overall/meta_seo.asp" -->
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" href="/css/aos.css">
	<link rel="stylesheet" type="text/css" href="./style.css?ver=1.2" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2026 윈터스쿨 종합반</strong>
</h2>
<section class="sub-wrap">
	<!-- winter-wrap -->
    <div class="winter-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/winter_overall/visual.asp" -->
		<!--//visual-->
		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <div class="fix-wrap">
                <ul class="fix-menu">
                    <li class="on">
                        <%=tab_txt01%>
                        <div class="mozip">
                            <span>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/<%=bubble%>_off.png" alt="사전 접수 시작" />
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/<%=bubble%>.png" alt="사전 접수 시작" />
                            </span>
                            <span>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/<%=bubble%>_bottom_off.png" alt="사전 접수 시작" />
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/<%=bubble%>_bottom.png" alt="사전 접수 시작" />
                            </span>
                        </div>
                    </li>
                    <li><%=tab_txt02%></li>
                    <li><%=tab_txt03%></li>
                    <li>
                        <p><%=tab_txt04%></p>
                    </li>
                </ul>
            </div>
            <!--// fix-menu -->


            <!-- cont00 학원별 모집 개요 -->
            <div class="cont00 js-cont-wrap js-cont">
                <!--학원별 컨텐츠 -->
                <%
                    if campusName02 = "" then
                        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                        Response.End
                    end if
                    
                    dirFile = "/intro/2025/winter_overall/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
		</div>

		<!-- tab01_winter -->
		<!-- #include virtual = "/intro/2025/winter_overall/tab01_system.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2025/winter_overall/tab02_winter.asp" -->
		<!-- //tab02 -->

        <!-- tab03 -->
		<!-- #include virtual = "/intro/2025/winter_overall/tab03_result.asp" -->
		<!-- //tab03 -->

        <div class="mask-bg" style="display: none;"></div>

        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p> 
        <p><a href="<%=pc_url%>intro/2025/winter_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!--//regular-wrap -->
</section>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->

<script src="/js/aos.js"></script>
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
          var em_num = "130&stype=w";
        <% Else                      '개발서버 %>
          var em_num = "10107&stype=w";
        <% End If %>
        
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
        window.open(url,'popup_smsalarm','scrollbars=yes, top=0,left='+ popupX);
    }

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


