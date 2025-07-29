<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2026 윈터스쿨" />
    <!-- #include virtual = "/intro/2025/winter/meta_seo.asp" -->
    <link rel="stylesheet" href="/css/aos.css">
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
	<link rel="stylesheet" type="text/css" href="./style.css?ver=1.2" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2026 윈터스쿨</strong>
</h2>
<section class="sub-wrap">

	<!-- winter-wrap -->
    <div class="winter-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/winter/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <div class="fix-wrap">
                <ul class="fix-menu">
                    <li class="on">
                        <%=tab_txt01%>
                        <% If campus_code <> "CD0244" Then '분당 제외 %>
                        <div class="mozip">
                            <span>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/<%=bubble%>_off.png" alt="사전 접수 시작" />
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/<%=bubble%>.png" alt="사전 접수 시작" />
                            </span>
                            <span>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/<%=bubble%>_bottom_off.png" alt="사전 접수 시작" />
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/<%=bubble%>_bottom.png" alt="사전 접수 시작" />
                            </span>
                        </div>
                        <% End If %>
                    </li>
                    <li><%=tab_txt02%></li>
                    <li><%=tab_txt03%></li>
                    <li>
                        <p><%=tab_txt04%></p>
                    </li>
                </ul>
            </div>
            <!--// fix-menu -->


			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <p class="recruit-tit"><strong>모집 안내</strong></p>

                <div class="tbl-box type01">
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
                            <tr>
                                <th class="bg-sky"><%=tit04%></th>
                                <td>
                                    <%=txt04%>
                                </td>
                            </tr>
                            <% If campus_code = "CD0249" Then '영통 %>
                            <tr>
                                <th class="bg-sky">유의사항</th>
                                <td class="text-align-left">
                                    ※ 사전 접수 기간 안내 <br>
                                    ▶ 8/6(수) 오후 2시 접수 (마감 시, 대기 접수) <br> <br>

                                    ※ 사전 접수 시, 성적표 첨부는 필수입니다.(피켈/그린반 제외) <br>
                                    ※ 온라인 원서 접수 후, 사전예약금 결제창은 팝업으로 안내되므로, 접수 전 반드시 팝업 해제를 진행해 주세요. <br>
                                    ※ 결제창이 보이지 않을 경우, 팝업 허용 후 다시 사전 접수 버튼 눌러 결제까지 진행하시기 바랍니다. <br> <br>

                                    - 사전예약금 미납 시 사전접수가 이루어지지 않으며, 접수된 원서는 자동 취소처리 됩니다. <br>
                                    - 사전접수 마감 시, 대기자 신청은  온라인 상 가능합니다. <br>
                                    - 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. <br>
                                    ① 수강 희망 강좌 온라인 결제 <br>
                                    ② 안내해드린 등록 기간 내 마이페이지에서 바자관 최종 등록 <br>
                                    ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정) <br>
                                    - 사전예약자의 실등록이 완료된 이후 대기 접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.
                                </td>
                            </tr>      
                            <% End If %>
                        </tbody>
                    </table> 
                </div>
                
                <!--마감딱지-->
                <!-- <div class="ico-end" style="top: 15vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div> -->
                <!--//마감딱지-->

			    <% If campus_code <> "CD0001" Then '대치 제외 %>

                    <!-- 원서접수 버튼 -->
                    <% If campus_code = "CD0249" Then '영통 %>
                    <div class="inner">
                        <!-- 스케줄링작업 -->
                        <% If curYmdhmin < 202508061400 then %> <!-- ~2025-08-06(수) 14:00 이전 -->
                            <a href="javascript:void(0)" onclick="alert('★사전접수 8/6(수) 오후 2시~마감 시★\n※ 팝업 해제 필수\n※ 모집정원 내 해당자 순 접수')" class="btn-link mt20"><%=apply_txt%></a>
                        <% Else %> <!-- 2025-08-06(수) 14:00~ -->
                            <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        <% End If %>
                        <!-- //스케줄링작업 -->
                    </div>    
                    <% ElseIf campus_code = "CD0257" Then '중계 %>
                    <div class="inner">
                        <!-- 원서 접수 시작 전 
                             ~2025-08-11(월) 13:59:59 -->
                         <% If curYmdhmin < 202508111400 then %>
                            <a href="javascript:void(0)"  onclick="alert('8/11(월) 14시부터 사전예약 접수 가능합니다.')"  class="btn-link mt20"><%=apply_txt%></a>
                        
                        <!-- 원서 접수 시작 후 
                            2025-08-11(월) 14:00:00~ -->
                        <% Else %>    
                            <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        <% End If %>
                    </div>              
                    <% Else %>
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
                    
                    dirFile = "/intro/2025/winter/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>
		</div>

		<!-- tab01_winter -->
		<!-- #include virtual = "/intro/2025/winter/tab01_winter.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2025/winter/tab02_special.asp" -->
		<!-- //tab02 -->

        <!-- tab03 -->
		<!-- #include virtual = "/intro/2025/winter/tab03_result.asp" -->
		<!-- //tab03 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap type02 js-cont-wrap">
            <div class="recruit-tit"><strong>2026 윈터스쿨</strong><br>
            모집 안내</div>
            <p class="recruit-txt">학원별 모집 요강, 장학 혜택  및 상세 등록 방법은 <br>
                각 학원으로 문의바랍니다.
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
        <p><a href="<%=pc_url%>intro/2025/winter/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!--//winter-wrap -->
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


