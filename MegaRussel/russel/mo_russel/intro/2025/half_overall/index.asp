<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2026 반수반">
    <meta name="keywords" content="2026 반수반, 반수반, 러셀 2026 반수반, 메가스터디 러셀 반수반">
    <meta name="description" content="2026 반수반">
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2026 반수종합반</strong>
</h2>
<section class="sub-wrap">

	<!-- half-wrap -->
    <div class="half-overall-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/half_overall/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <% If campus_code = "CD0248" Then '평촌 %>
            <ul class="fix-menu js-fix-menu">
                <li class="on">모집 안내</li>
                <li>최상위권 집결</li>
                <li>종합반 시스템</li>
                <li>실전 콘텐츠 <br> 라인업</li>
            </ul>
            <% Else %>
            <ul class="fix-menu js-fix-menu">
                <li class="on">모집안내</li>
                <li>학습 시스템</li>
            </ul>
            <% End If %>
            <!--// fix-menu -->

            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">

                <% If campus_code <> "CD0349" and campus_code <> "CD0249" Then '울산/영통 제외 %>
                <p class="recruit-tit"><strong>모집안내</strong></p>

                <div class="tbl-box type01">
                    <div class="inner">
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%">
                                <col style="width: auto">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-sky"><%=tit01%></th>
                                    <td class="text-align-left">
                                        <%=txt01%>
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit02%></th>
                                    <td class="text-align-left">
                                        <%=txt02%>
                                        <p class="l-txt">
                                            ※ 모집요강 지원자격 해당자 순 접수
                                        </p>
                                    </td>
                                </tr>
                            </tbody>
                        </table> 
                    </div>
                </div>


                    <!-- 원서접수 버튼 -->
                    <% If campus_code = "CD0342" or campus_code = "CD0248" Then '대구/평촌 %>
                        <div class="inner">
                            <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        </div>    
                    <% End If %>
                    <!-- //원서접수 버튼 -->

                <% End If %>

                <!--학원별 컨텐츠 -->
                <%
                    if campusName02 = "" then
                        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                        Response.End
                    end if
                    
                    dirFile = "/intro/2025/half_overall/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->

		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2025/half_overall/tab01.asp" -->
		<!-- //tab01 -->

        <!-- 입학준비물 -->
        <!-- #include virtual = "/intro/2025/half_overall/pop.asp" -->   
        <!-- //입학준비물 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap type02">
            <div class="recruit-tit"><strong>2026 러셀 반수반</strong> <br> 모집안내</div>
            <p class="recruit-txt">학원별 모집요강, 장학 혜택 밎 상세 등록 방법은<br>각 학원으로 문의바랍니다.</p>
        </div>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% End If %>
        <div class="mask-bg" style="display: none;"></div>

        <% If campus_code <> "INTRO" Then '인트로 제외 %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <% End If %>
        <p><a href="<%=pc_url%>intro/2025/half_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!--//half-wrap -->
</section>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->
  
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
</script>
</body>
</html>


