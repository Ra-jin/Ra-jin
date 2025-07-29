<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 윈터스쿨" />
    <meta name="keywords" content="2024 러셀 윈터스쿨, 윈터스쿨" />
	<meta name="description" content="겨울방학, 실력 향상을 넘어 최상위권으로!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0001" Then '대치 %>
    <strong class="tit">2024년 윈터스쿨</strong>
    <% Else %>
    <strong class="tit">2024 윈터스쿨</strong>
    <% End If %>
</h2>
<section class="sub-wrap">
	<!-- winter-wrap -->
    <div class="winter-wrap">
        <!-- visual -->
		<!-- #include virtual = "/intro/2023/winter/visual.asp" -->
        <!-- //visual -->

        <!-- 공통 컨텐츠 -->
        <div class="container <%=campusName%>">

            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
                <% If campus_code = "INTRO" Then '인트로 %>
                    <li class="on">최상위권 집결<br>러셀</li>
                    <li>윈터스쿨<br>프로그램</li>
                    <li style="position: relative;">
                        <div class="mozip-wrap">
                            <div class="mozip"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/ico_mozip_menu_off.gif" alt="2월 시작반 모집 중 딱지"></div>
                        </div>
                        학원별 <br> 모집안내
                    </li>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                    <li class="on"><%=txt_campus%><br>모집안내</li>
                    <li class="f13">수능 목표 성적과 <br> 대학 합격을 위한 러셀</li>
                    <li>윈터스쿨<br>프로그램</li>
                <% Else %>
                    <li class="on"><%=txt_campus%><br>모집안내</li>
                    <li>최상위권 집결<br>러셀</li>
                    <li>윈터스쿨<br>프로그램</li>
                <% End If %>
            </ul>
            <!--// fix-menu -->
            
            
            <% If campus_code <> "INTRO" Then '인트로제외 %>
            <!-- tab00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <p class="recruit-tit">
                        <%=txt_campus%> 윈터스쿨<br><strong>모집안내</strong>
                    </p>
                    
                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width: 18%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th><%=tit_01%></th>
                                <td><%=txt_01%></td>
                            </tr>
                            <tr>
                                <th><%=tit_02%></th>
                                <% If campus_code = "CD0249" Then '영통 %>
                                <td>2024년 1월 1일(월) ~ 2024년 2월 29일(목) <br> <span class="f11">※ 2월 입학 시, 2월 1일(목) ~ 2월 29일(목)</span></td>
                                <% Else %>
                                <td><%=txt_02%></td>
                                <% End If %>
                            </tr>
                            <% If campus_code <> "CD0345" and campus_code <> "CD0001" and campus_code <> "CD0342" and campus_code <> "CD0257" and campus_code <> "CD0249" Then '창원/대치/대구/중계/영통 제외 %>          
                            <tr>
                                <th><%=tit_03%></th>
                                <td><%=txt_03%></td>
                            </tr>
                            <% End If %>
                            <% If campus_code <> "CD0244" and campus_code <> "CD0250" and campus_code <> "CD0247" and campus_code <> "CD0246" Then '분당/부천/강남/센텀 제외 %>
                            <tr>
                                <th><%=tit_04%></th>
                                <td><%=txt_04%></td>
                            </tr>
                            <% End If %>
                            <% If campus_code = "CD0249" Then '영통 %>
                            <tr>
                                <th>유의사항</th>
                                <td>※ 사전 접수 기간 안내<br>
                                    ▶ 1차 : 8/9(수) 오후 2시(마감)<br>
                                    ▶ 2차 : 8/16(수) 오후 2시(마감)<br>
                                    <br>
                                    -사전예약금 접수는 선착순으로 진행되었으며, 현재 마감되어 온라인 대기 접수 바랍니다.<br>
                                    - 2차 사전접수자(예비)는 1차 사전접수자 실등록 완료 후 취소생이 발생되었을 때 우선적으로 등록이 가능합니다.<br>
                                    - 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. (2차는 1차 사전접수자 접수 후 여석에 따라 별도 안내)<br>
                                    &nbsp;&nbsp;① 수강 희망하는 강좌를 선택<br>
                                    &nbsp;&nbsp;② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
                                    &nbsp;&nbsp;③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)<br>
                                    - 1,2차 사전예약자의 실등록이 완료된 이후 대기접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.

                                </td>
                            </tr>
                            <% End If %>
                        </tbody>
                    </table> 
                    
                    <!--마감딱지-->
                    <% If campus_code = "CD0249" Then '영통 %>
                    <div class="ico-end" style="top: 22vw;right: 1.5vw;"><p><%=endText%></p></div>
                    <% ElseIf campus_code = "CD0001" OR campus_code = "CD0244" OR campus_code = "CD0245" OR campus_code = "CD0342"  OR campus_code = "CD0349" OR campus_code = "CD0341" OR campus_code = "CD0345" OR campus_code = "CD0344" OR campus_code = "CD0257" Then '대치/분당/목동/대구/울산/코어대전/코어창원/코어전주/중계 %>
                    <div class="ico-end" style="top: 26vw;right: 1.5vw;"><p><%=endText%></p></div>
                    <% End If %>
                    <!--//마감딱지-->

                    <% If campus_code = "CD0257" Then '중계 %>
                    <ul class="list-bullet ml0 f14 mt10">
                        <li>전 학년 마감되었습니다. 감사합니다. <br>(반별 소수 인원 모집 중, 1월 편입 가능)</li>
                    </ul>

                    <% End If %>

                    <!-- 원서접수 버튼 -->
                    <% If campus_code = "CD0244" OR campus_code = "CD0249" OR campus_code = "CD0346" Then '분당/영통/청주 %>
                    <a href="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>

                    <% ElseIf campus_code = "CD0246" Then '센텀 %>
                    <a href="<%=apply_url%>" class="btn-link mt20">온라인 원서접수</a>

                    <% ElseIf campus_code = "CD0341" OR campus_code = "CD0245" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0343" OR campus_code = "CD0248" OR campus_code = "CD0349" OR campus_code = "CD0001" Then '대전/목동/광주/전주/원주/평촌/울산/대치 %>
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='<%=pc_url%>russel/apply/yonhab/apply.asp?app_cd=158';" class="btn-link btn-pc mt20"><%=apply_txt%></a>
                    
                    <% ElseIf campus_code = "CD0250" Then '부천 %>
                    <a onclick="javascript:void(0); location.href='https://pf.kakao.com/_sFgGxj';" class="btn-link btn-pc mt20"><%=apply_txt%></a>
                    
                    <% ElseIf campus_code = "CD0247" Then '강남 %>
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=167';" class="btn-link btn-pc mt20">온라인 원서접수</a>

                    <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                    <% End If %>
                    <!-- //원서접수 버튼 -->

                    <!--학원별 컨텐츠 -->
                    <%
                        dirFile = "/intro/2023/winter/"&campusName&".asp"
                        Server.Execute(dirFile)
                    %>
                    <!-- //학원별 컨텐츠 -->
                    


                </div>
            </div>
            
            <!-- // 학원별 모집안내 -->
            <% End If %>

            <!-- tab01 최상위권 집결 러셀 -->
		    <!-- #include virtual = "/intro/2023/winter/tab01_top_rank_russel.asp" -->

            <!-- tab02 윈터스쿨 프로그램 -->
		    <!-- #include virtual = "/intro/2023/winter/tab02_winter_program.asp" -->

            <% If campus_code = "INTRO" Then '인트로 %>
            <div class="recruit-tit js-cont-wrap">2024 <span>러셀 윈터스쿨</span> 모집안내</div>
            <a href="/event/2023/campus_open/index.asp" style="padding: 0 4%;display: block;"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/banner_us.jpg" alt="울산배너" /></a>
            <!--학원별 모집안내-->
            <!-- #include virtual = "/inc/campus_list_link.asp" -->
            <!--//학원별 모집안내-->
            <% End If %>

        </div>
        <% If campus_code = "INTRO" Then '인트로 %>
        <p><a href="<%=pc_url%>intro/2023/winter/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        <% Else %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2023/winter/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
        <% End If %>
    </div>
	<!-- //winter-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script>
	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = '100%';
	var popupX = (window.screen.width / 2) - (popupWidth / 2);
    //학원 문자수신 알리미 신청 바로가기
    function fncAlarmPop(){        
        <% If IsRealSvr = true Then  '실서버 %>
          var em_num = "112";
        <% Else                      '개발서버 %>
          var em_num = "9082";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
        window.open(url,'popup_smsalarm','scrollbars=yes, top=0,left='+ popupX);
    }
</script>
<script src="/js/chart.min.js"></script>
<script type="text/javascript" src="./ui.js"></script>
</body>
</html>