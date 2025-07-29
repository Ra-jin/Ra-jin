<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 러셀 썸머스쿨 재학생" />
    <meta name="keywords" content="2024 러셀 썸머스쿨 재학생, 재학생 썸머스쿨, 썸머스쿨 재학생, 러셀 썸머스쿨, 썸머스쿨, 재학생, Tjaajtmznf" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2024 썸머스쿨</strong>
</h2>
<section class="sub-wrap">
	<!-- half-wrap -->
    <div class="summer-wrap">
        <!-- #include virtual = "/intro/2024/summer/visual.asp" -->

		<div class="container <%=campusName%>">

            <!-- fix-menu -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">최상위권 집결,<br>러셀</li>
				<li>최상위권<br>도약의 기회</li>
				<li>썸머스쿨<br>프로그램</li>
				<li>학원별<br>모집안내</li>
            </ul>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집요강<br>및 지원혜택</li>
				<li>결과로 증명하는<br><%=txtCampus%></li>
				<li>여름방학,<br>성적 향상의 기회</li>
				<li>썸머스쿨<br>프로그램</li>
            </ul>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집요강<br>및 지원혜택</li>
				<li>최상위권 집결, <br> 러셀</li>
				<li>최상위권<br>도약의 기회</li>
				<li>썸머스쿨<br>프로그램</li>
            </ul>
            <% Else %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집요강<% If campus_code <> "CD0341" Then '대전 제외 %><br>및 지원혜택<% End If %></li>
				<li>최상위권 집결,<br><%=txtCampus%></li>
				<li>최상위권<br>도약의 기회</li>
				<li>썸머스쿨<br>프로그램</li>
            </ul>
            <% End If %>
            <!--// fix-menu -->

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <p class="recruit-tit">
                        <%=txtCampus%> 썸머스쿨<br><strong>모집안내</strong>
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
                                <% If campus_code <> "CD0246" Then '센텀 제외 %>
                                <tr>
                                    <th class="bg-sky"><%=tit_02%></th>
                                    <td class="text-align-left"><%=txt_02%></td>
                                </tr>
                                <% End If %>
                                <% If campus_code <> "CD0245" Then '목동 제외 %>
                                <tr>
                                    <th class="bg-sky"><%=tit_03%></th>
                                    <td class="text-align-left">
                                        <%=txt_03%>
                                        <% If campus_code <> "CD0250" and campus_code <> "CD0248" Then '부천/평촌 제외 %>
                                        <br>
                                        <b><%=comment%></b>
                                        <% End If %>
                                    </td>
                                </tr>
                                <% End If %>
                                <% If campus_code = "CD0249" Then '영통 %>
                                <tr>
                                    <th class="bg-sky">유의사항</th>
                                    <td class="text-align-left">
                                        <p>① 사전접수 마감으로 온라인 대기 접수를 해주시기 바랍니다. <br>
                                            ② 대기 접수자는 사전접수자 등록 후 여석 발생 시 순차적으로 등록 안내 예정입니다.
                                        </p>
                                        <ul class="list-bullet ml0">
                                            <li>
                                                사전 접수 기간 안내(전체 마감) <br>
                                                ▶ 4/22(월) 오후 2시
                                            </li>
                                        </ul>

                                       <ul class="list-bar m0 mt10">
                                            <li>사전예약금 접수는 선착순으로 진행되었습니다.</li>
                                            <li>
                                                사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. <br>
                                                ① 수강 희망하는 강좌를 선택<br>
                                                ② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
                                                ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)
                                            </li>
                                       </ul>
                                    </td>
                                </tr>
                                <% End If %>
                            </tbody>
                        </table>
                    </div>

                    <% If campus_code = "CD0249" or campus_code = "CD0343" or campus_code = "CD0345" or campus_code = "CD0341" or campus_code = "CD0244" or campus_code = "CD0342" or campus_code = "CD0257" or campus_code = "CD0001" or campus_code = "CD0349" or campus_code = "CD0346" or campus_code = "CD0245" or campus_code = "CD0248" or campus_code = "CD0247" or campus_code = "CD0340" or campus_code = "CD0344" or campus_code = "CD0246" Then '영통/코어원주/코어창원/코어대전/분당/대구/중계/대치/울산/코어청주/목동/평촌/강남/코어광주/코어전주/센텀 %>
                    <!--마감딱지-->
                    <div class="ico-end" style="top:185px"><p><%=endText%></p></div>
                    <!--//마감딱지-->
                    <% end if %>

                    <!-- 원서접수 버튼 -->
                    <% If campus_code = "CD0257" Then '중계 %>
                        <% if curYmdhmin < 202404291400 then %>
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        <% else %>
                        <!--개발 4/29(월) 14시, 원서접수 URL 연결-->

                        <% end if %>
                    <% ElseIf campus_code = "CD0249" Then '영통 %>
                        <% if curYmdhmin < 202404221400 then %>
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        <% else %>
                        <!--개발 4/22(월) 14시, 원서접수 URL 연결-->
                        <a onclick="alert('대기접수는 PC 페이지에서 이용 가능합니다.')" href="https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2" class="btn-link mt20"><%=apply_txt%></a>
                        <% end if %>
                    <% ElseIf campus_code = "CD0342" Then '대구 %>
                        <% if curYmdhmin < 202404301000 then %>
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        <% else %>
                        <!--개발 4/30(화) 10시, 원서접수 URL 연결-->
                        <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166" class="btn-link mt20"><%=apply_txt%></a>
                        <% end if %>
                    <% ElseIf campus_code = "CD0245" OR campus_code = "CD0340" OR campus_code = "CD0001" or campus_code = "CD0248" Then '목동/코어광주/대치/평촌 %>
                    <% Else %>


                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>

                    <% End If %>
                    <!-- //원서접수 버튼 -->

                    <% If campus_code = "CD0245" Then '목동 %>
                    <div style="position: relative;">
                        <img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/summer/recruit_img.jpg" alt="" />
                        <img style="position: absolute;bottom: calc(-27vw / 7.2);left: calc(38vw / 7.2);width: calc(115vw / 7.2);height: calc(99vw / 7.2);" src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/summer/ico_recruit.png" alt="" />
                    </div>
                    <% End If %>

                    <!--학원별 컨텐츠 -->
                    <%
                        IF campusName02 <> "" THEN
                            dirFile = "/intro/2024/summer/"&campusName02&".asp"
                            Server.Execute(dirFile)
                        ELSE
                            Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                            Response.End
                        END IF

                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
            </div>
            <!-- //학원별 모집안내 -->
            <% End If %>

		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2024/summer/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2024/summer/tab02.asp" -->
		<!-- //tab02 -->

        <!-- tab03 -->
		<!-- #include virtual = "/intro/2024/summer/tab03.asp" -->
		<!-- //tab03 -->

        <!-- 인트로 모집안내 -->
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap intro">
            <div class="recruit-tit">
                2024 러셀 <strong>썸머스쿨</strong> <br> 모집안내
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
        <p><a href="<%=pc_url%>intro/2024/summer/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!-- //half-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
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

    function fncAlarmPopBc(){
        var url = "/entinfo/entry_pt/enter_pop.asp"
		window.open(url,'popup_smsalarm02','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

    // 관리자용 alert
	function open_msg(msg){
		alert(msg);
	}

</script>
</body>
</html>