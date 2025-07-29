<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2026 파이널 정규반" />
    <!-- #include virtual = "/intro/2025/final/meta_seo.asp" -->
    <link rel="stylesheet" href="/css/aos.css">
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0246" Then '센텀 %>
    <strong class="tit">2026 파이널 N수 정규반</strong>
    <% Else %>
    <strong class="tit">2026 파이널 정규반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">

	<!-- final-wrap -->
    <div class="final-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/final/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <div class="fix-wrap">
                <ul class="fix-menu">
                    <li class="on">
                        <%=tab_txt01%>
                    </li>
                    <li><%=tab_txt02%></li>
                </ul>
            </div>
            <!--// fix-menu -->


			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <p class="recruit-tit"><strong>모집 안내</strong></p>

                <div class="tbl-box type01 pt0">
                    <table class="tbl-type01 text-align-left">
                        <colgroup>
                            <col style="width: 20%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th class="bg-sky"><%=tit01%></th>
                                <td>
                                    <%=txt01%>
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit02%></th>
                                <td>
                                    <%=txt02%>  
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit03%></th>
                                <td>
                                    <%=txt03%>
                                </td>
                            </tr>
                            <!-- <tr>
                                <th class="bg-sky"><%=tit04%></th>
                                <td>
                                    <%=txt04%>
                                </td>
                            </tr> -->
                        </tbody>
                    </table> 
                </div>
                
                <!--마감딱지-->
                <!-- <div class="ico-end" style="top: 15vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div> -->
                <!--//마감딱지-->

                <!-- 원서접수 버튼 -->
                <% If campus_code <> "CD0248" and campus_code <> "CD0257" and campus_code <> "CD0249" and campus_code <> "CD0250" Then '평촌/중계/영통/부천 제외 %>
                <div class="inner">
                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                </div>
                <% End If %>
                <!-- //원서접수 버튼 -->

                <!--학원별 컨텐츠 -->
                <%
                    if campusName02 = "" then
                        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                        Response.End
                    end if
                    
                    dirFile = "/intro/2025/final/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>
		</div>

		<!-- tab01_winter -->
		<!-- #include virtual = "/intro/2025/final/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2025/final/tab02.asp" -->
		<!-- //tab02 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap type02 js-cont-wrap">
            <div class="recruit-tit">2026 <strong>파이널 정규반</strong> 모집 안내</div>
            <p class="recruit-txt">학원별 모집 요강, 장학 혜택  및 상세 등록 방법은 <br>
                각 학원으로 문의 바랍니다.
            </p>
        </div>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% End If %>
        <div class="mask-bg" style="display: none;"></div>

        <% If campus_code <> "INTRO" Then '인트로 제외 %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <% End If %>
        <p><a href="<%=pc_url%>intro/2025/final/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
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


