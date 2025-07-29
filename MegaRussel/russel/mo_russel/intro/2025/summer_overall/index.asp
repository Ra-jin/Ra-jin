<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 썸머스쿨 종합반" />
    <meta name="keywords" content="러셀학원, 재수학원, 기숙학원, 메가스터디러셀, 메가스터디, 러셀, 수능, 모의고사, 대입, 러셀썸머스쿨, 썸머스쿨, 여름방학, 썸머스쿨추천, 여름방학캠프, 의대, 입시" />
	<meta name="description" content="올여름, N수생과 격차를 좁히는 방법, 러셀 썸머스쿨" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 썸머스쿨 종합반">
	<meta property="og:description" content="올여름, N수생과 격차를 좁히는 방법, 러셀 썸머스쿨"/>
    <link rel="stylesheet" href="/css/aos.css">
	<link rel="stylesheet" type="text/css" href="./style.css?=ver1" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 썸머스쿨 종합반 </strong>
</h2>
<section class="sub-wrap">

	<!-- summer-wrap -->
    <div class="summer-overall-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/summer_overall/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
				<li class="on">썸머스쿨<br>모집 안내</li>
                <li>신개념 융합형<br>종합반</li>
                <li>최상위권<br>도약의 기회</li>
                <li>썸머스쿨<br> 프로그램</li>
            </ul>
            <!--// fix-menu -->

            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <p class="recruit-tit">모집 안내</p>

                <div class="tbl-box type01">
                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width: 20%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th class="bg-sky"><%=tit01%></th>
                                <td class="text-align-left"><%=txt01%></td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit02%></th>
                                <td class="text-align-left">
                                    <%=txt02%>  
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit03%></th>
                                <td class="text-align-left"><%=txt03%></td>
                            </tr>      
                        </tbody>
                    </table> 
                </div>

                <% If campus_code = "CD0342" Then '대구 %>
                <!--마감딱지-->
                <div class="ico-end" style="top: 15vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                <!--//마감딱지-->
                <% End If %>
                <!-- 원서접수 버튼 -->

                <div class="inner">
                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                </div>     

                <!-- //원서접수 버튼 -->

                <!--학원별 컨텐츠 -->
                <%
                    if campusName02 = "" then
                        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                        Response.End
                    end if
                    
                    dirFile = "/intro/2025/summer_overall/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
		</div>

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2025/summer_overall/tab02.asp" -->
		<!-- //tab02 -->

        <!-- tab03 -->
		<!-- #include virtual = "/intro/2025/summer_overall/tab03.asp" -->
		<!-- //tab03 -->

        <!-- tab04 -->
		<!-- #include virtual = "/intro/2025/summer_overall/tab04.asp" -->
		<!-- //tab04 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap type02">
            <div class="recruit-tit">2025 러셀 <strong>썸머스쿨</strong> 모집 안내</div>
            <p class="recruit-txt">학원별 모집 요강, 장학 혜택  및 상세 등록 방법은 <br>
                각 학원으로 문의바랍니다.
            </p>
        </div>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% End If %>
        <div class="mask-bg" style="display: none;"></div>

        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2025/summer_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!--//regular-wrap -->
</section>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->

<script src="/js/aos.js"></script>
<script src="/js/chart.min.js"></script>
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
          var em_num = "1278&stype=f";
        <% Else                      '개발서버 %>
          var em_num = "10094&stype=f";
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


