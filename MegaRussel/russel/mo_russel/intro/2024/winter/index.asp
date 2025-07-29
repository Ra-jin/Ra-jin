<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 러셀 윈터스쿨" />
    <meta name="keywords" content="2025 러셀 윈터스쿨, 러셀 윈터스쿨, 윈터스쿨, dnlsxjtmznf" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 윈터스쿨</strong>
</h2>
<section class="sub-wrap">
	<!-- winter-wrap -->
    <div class="winter-wrap">
		<!-- #include virtual = "/intro/2024/winter/visual.asp" -->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
                <% If campus_code = "INTRO" or campus_code = "CD0257" Then '인트로/중계 %>
                <li class="on"><%=tab_txt01%></li>
                <li><%=tab_txt02%></li>
                <li>
                    <p><%=tab_txt03%></p>
                    <div class="mozip" style='right:<%=mozip_pos%>'>
                        <span>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble_off.png" alt="2월 시작반 모집 중" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble.png" alt="2월 시작반 모집 중" />
                        </span>
                        <span>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble_bottom_off.png" alt="2월 시작반 모집 중" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble_bottom.png" alt="2월 시작반 모집 중" />
                        </span>
                    </div>
                </li>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <li class="on"><p><%=tab_txt01%></p>
                    <div class="mozip" style='left:5px'>
                        <span>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble02_off.png" alt="2월 시작반 모집 중" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble02.png" alt="2월 시작반 모집 중" />
                        </span>
                        <span>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble02_bottom_off.png" alt="2월 시작반 모집 중" />
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/bubble02_bottom.png" alt="2월 시작반 모집 중" />
                        </span>
                    </div></li>
                <li><%=tab_txt02%></li>
                <li><%=tab_txt03%></li>
                <% Else %>
                <li class="on"><%=tab_txt01%></li>
                <li><%=tab_txt02%></li>
                <li><%=tab_txt03%></li>
                <% End If %>
            </ul>
            <!--// fix-menu -->

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <% If campus_code = "CD0245" Then '목동 %>
                <div class="event-area"><img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/winter/event_banner.jpg" alt="" /></div>
                <% End If %>
                <div class="inner">
                    <p class="recruit-tit">
                        2025 윈터스쿨<br><strong>모집안내</strong>
                    </p>
                    <div class="tbl-box type01">
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%">
                                <col style="width: auto">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-sky"><%=tit_01%></th>
                                    <td class="text-align-left"><%=txt_01%></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit_02%></th>
                                    <td class="text-align-left">
                                        <%=txt_02%>
                                    </td>
                                </tr>
                                <% If campus_code <> "CD0250" and campus_code <> "CD0244" and campus_code <> "CD0257"  and campus_code <> "CD0345"  and campus_code <> "CD0249" Then '부천/분당/중계/코어창원/영통 제외 %>
                                    <tr>
                                        <th class="bg-sky"><%=tit_03%></th>
                                        <td class="text-align-left">
                                            <%=txt_03%>
                                        </td>
                                    </tr>
                                <% End If %>
                                <tr>
                                    <th class="bg-sky"><%=tit_04%></th>
                                    <td class="text-align-left">
                                        <%=txt_04%>
                                    </td>
                                </tr>
                                <% If campus_code = "CD0249" Then '영통 %>
                                <tr>
                                    <th class="bg-sky">유의 사항</th>
                                    <td class="text-align-left">
                                        ※ 사전 접수 기간 안내<br>
                                        ▶ 1차 : 8/7(수) 오후 2시(마감)<br>
                                        ▶ 2차 : 8/16(금) 오후 2시(마감)
                                        <br>
                                        <br>
                                        - 사전예약금 접수는 선착순으로 진행되었으며, 현재 전 학년 마감되어 온라인 대기 접수 바랍니다. <br>
                                        - 2차 사전접수자(예비)는 1차 사전접수자 실등록 완료 후 취소생이 발생되었을 때 우선적으로 등록이 가능합니다.<br>
                                        - 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. (2차는 1차 사전접수자 접수 후 여석에 따라 별도 안내)<br>
                                        ① 수강 희망하는 강좌를 선택<br>
                                        ② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
                                        ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)<br>
                                        - 1,2차 사전예약자의 실등록이 완료된 이후 대기접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.
                                    </td>
                                </tr>
                                <% ElseIf campus_code = "CD0248" Then '평촌 %>
                                    <tr>
                                        <th class="bg-sky">유의 사항</th>
                                        <td class="text-align-left">

                                            ※ 학생 정보로 회원 가입 후, 로그인(접수) 바랍니다 / 학부모님 정보로 접수가 불가합니다<br><br>
                                            ※ 온라인 원서 접수 후, 대기예약금 결제창은 팝업 안내됩니다<br>
                                            결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼 클릭해주시기 바랍니다<br><br>
                                            <span class="color-red">
                                                ※대기예약금 150,000원 결제 완료 시 대기예약이 완료됩니다<br>
                                                예약금 미납 시 접수된 원서는 자동 취소 처리됩니다
                                            </span><br><br>
                                            ※ 대기 접수자는 여석 발생 시 순차적으로 안내가 될 예정입니다<br>
                                            학원 번호 차단 시 누락되는 정보에 관하여 책임을 지지 않습니다(러셀 평촌 : 031-341-6500)<br><br>
                                        </td>
                                    </tr>
                                <% End If %>
                            </tbody>
                        </table>
                    </div>

                    <!--마감딱지-->
                    <% If campus_code = "CD0249" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0345" or campus_code = "CD0341" or campus_code = "CD0346" or campus_code = "CD0250" or campus_code = "CD0246" or campus_code = "CD0344" Then '영통/대구/울산/창원/대전/청주/부천/센텀/코어전주 %>
                    <div class="ico-end" style="top: 46vw;right: 1.5vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                    <% ElseIf campus_code = "CD0244" Then '분당 %>
                    <div class="ico-end" style="top: 47vw;right: 15vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                    <% ElseIf campus_code = "CD0245" Then '목동 %>
                    <div class="ico-end" style="top: 38vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                    <% ElseIf campus_code = "CD0248" Then '평촌 %>
                    <% End If %>
                    <!--//마감딱지-->

                    <!-- 원서접수 버튼 -->
                    <% If campus_code = "INTRO" or campus_code = "CD0257" Then '인트로/중계 %>
                    <% ElseIf campus_code = "CD0249" Then '영통 %>
                    <a onclick="alert('대기 접수는 PC페이지에서 가능합니다.')" href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="btn-link mt20" style="padding: 0 25px;"><%=apply_txt%></a>
                    <% ElseIf campus_code = "CD0257" Then '중계 %>
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeljg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="btn-link mt20"><%=apply_txt%></a>
                    <% ElseIf campus_code = "CD0342" Then '대구 %>
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173" class="btn-link mt20"><%=apply_txt%></a>
                    <% ElseIf campus_code = "CD0250" Then '부천 %>
                    <a href="https://pf.kakao.com/_sFgGxj" class="btn-link mt20">대기자 접수 바로가기</a>
                    <% ElseIf campus_code = "CD0247" Then '강남 %>
                    <!-- <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a> -->
                    <a href="javascript:void(0)" onclick="<%=apply_url02%>" class="btn-link mt20"><%=apply_txt02%></a>
                    <% ElseIf campus_code = "CD0248" Then '평촌 %>
                    <% Else %>
                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    <% End If %>

                    <!--학원별 컨텐츠 -->
                    <%
                        if campusName02 = "" then
                            Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
		                    Response.End
                        end if

                        dirFile = "/intro/2024/winter/"&campusName02&".asp"
                        Server.Execute(dirFile)
                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
            </div>
            <!-- //학원별 모집안내 -->
            <% End If %>
		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2024/winter/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2024/winter/tab02.asp" -->
		<!-- //tab02 -->

        <!-- 인트로 모집안내 -->
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap">
            <div class="recruit-tit">
                2025 러셀 <strong>윈터스쿨</strong><br>
                모집안내
            </div>
            <p class="recruit-txt">학원별 모집요강, 장학혜택 밎 상세 등록 방법은 <br> 각 학원으로 문의바랍니다.</p>
            <!-- 학원별 모집안내 -->
            <!-- #include virtual = "/inc/campus_list_link.asp" -->
            <!-- //학원별 모집안내 -->
        </div>
        <% End If %>
        <!-- //인트로 모집안내 -->

        <div class="mask-bg type02" style="display: none;"></div>

        <% If campus_code <> "INTRO" Then '인트로 제외 %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <% End If %>
        <p><a href="<%=pc_url%>intro/2024/winter/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!-- //winter-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script src="/js/chart.min.js"></script>
<script type="text/javascript" src="./ui.js?version=1.1"></script>
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