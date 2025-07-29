<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 썸머스쿨" />
    <meta name="keywords" content="러셀학원, 재수학원, 기숙학원, 메가스터디러셀, 메가스터디, 러셀, 수능, 모의고사, 대입, 러셀썸머스쿨, 썸머스쿨, 여름방학, 썸머스쿨추천, 여름방학캠프, 의대, 입시" />
	<meta name="description" content="올여름, N수생과 격차를 좁히는 방법, 러셀 썸머스쿨" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 썸머스쿨">
	<meta property="og:description" content="올여름, N수생과 격차를 좁히는 방법, 러셀 썸머스쿨"/>
    <link rel="stylesheet" href="/css/aos.css">
	<link rel="stylesheet" type="text/css" href="./style.css?=ver1.3" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 썸머스쿨</strong>
</h2>
<section class="sub-wrap">

	<!-- summer-wrap -->
    <div class="summer-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/summer/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">최상위권 집결, <br>러셀</li>
				<li>최상위권<br>도약의 기회</li>
				<li>썸머스쿨<br>프로그램</li>
				<li>학원별 <br> 모집 안내</li>
            </ul>
            <% Else %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">썸머스쿨<br>모집 안내</li>
                <% If campus_code = "CD0257" Then '중계 %>
                <li>결과로 증명하는<br>러셀 중계</li>
                <li>완전한 학습<br>몰입의 기회</li>
                <% Else %>
                <li>최상위권<br>집결, 러셀</li>
                <li>최상위권<br>도약의 기회</li>
                <% End If %>
                <li>썸머스쿨<br> 프로그램</li>
            </ul>
            <% End If %>
            <!--// fix-menu -->


			<% If campus_code <> "INTRO" Then '인트로 제외 %>
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
                                <td class="text-align-left">
                                    <%=txt01%>
                                    <% If campus_code = "CD0250" Then '부천 %>
                                    <br>
                                    <span class="comment">※ 중3 학생은 종합반으로 진행</span>
                                    <% End If %>
                                </td>
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
                            <% If campus_code = "CD0249" Then '영통 %>
                            <tr>
                                <th class="bg-sky">유의사항</th>
                                <td class="text-align-left">
                                    ① 사전접수 마감으로 온라인 대기 접수를 해주시기 바랍니다. <br>
                                    ② 대기 접수자는 사전접수자 등록 후 여석 발생 시 순차적으로 등록 안내 예정입니다.<br>
                                    <br>

                                    ※ 사전접수 기간 안내(전체 마감)<br>
                                    ▶ 4/22(화) 오후 2시 <br>

                                    <br>
                                    - 사전접수는 사전예약금 결제 순으로 진행되었습니다.  <br>
                                    - 사전예약금을 납부하신 분들에 한하여 별도로 실등록 기간 및 방법을 안내해 드릴 예정입니다.  <br>
                                    ※ 개인정보 오입력 혹은 전형에 해당하는 증빙서류 미제출 시 입학이 제한될 수 있습니다.
                                    
                                </td>
                            </tr>      
                            <% End If %>
                        </tbody>
                    </table> 
                </div>
                
                <!--마감딱지-->
                <% If campus_code = "CD0341" or campus_code = "CD0249" or campus_code = "CD0001" or campus_code = "CD0257" or campus_code = "CD0244" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0346" or campus_code = "CD0248" or campus_code = "CD0344" or campus_code = "CD0247" or campus_code = "CD0343" or campus_code = "CD0246" or campus_code = "CD0340" Then '대전/영통/대치/중계/분당/대구/울산/코어청주/평촌/코어전주/강남/코어원주/센텀/코어광주 %>
                <div class="ico-end" style="top: 15vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                <% ElseIf campus_code = "CD0245" Then '목동 %>
                <div class="ico-end" style="top: 25vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                <!--//마감딱지-->
                <% End If %>

                <!-- 원서접수 버튼 -->
                <% If campus_code <> "INTRO" and campus_code <> "CD0257" and campus_code <> "CD0248" and campus_code <> "CD0340" and campus_code <> "CD0349"  Then '인트로/중계/평촌/코어광주/울산 제외 %>
                
                    <% If campus_code = "CD0249" Then '영통 %>
                    <div class="inner">
                        <!-- 스케줄링작업 -->
                        <% If curYmdhmin < 202504221400 then %> <!-- ~2025-04-22(화) 13:59:59 -->
                            <a href="javascript:void(0)" onclick="alert('사전 접수는 4/22(화) 오후 2시부터입니다. *팝업해제 필수*')" class="btn-link mt20"><%=apply_txt%></a>
                        <% Else %> <!-- 2025-04-22(화) 14:00:00~ -->
                            <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        <% End If %>
                        <!-- //스케줄링작업 -->
                    </div>                      
                    <% Else %>
                    <div class="inner">
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    </div>     
                    <% End If %>
                <% End If %>
                <!-- //원서접수 버튼 -->

                <!--학원별 컨텐츠 -->
                <%
                    if campusName02 = "" then
                        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                        Response.End
                    end if
                    
                    dirFile = "/intro/2025/summer/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>
		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2025/summer/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2025/summer/tab02.asp" -->
		<!-- //tab02 -->

        <!-- tab03 -->
		<!-- #include virtual = "/intro/2025/summer/tab03.asp" -->
		<!-- //tab03 -->

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

        <% If campus_code <> "INTRO" Then '인트로 제외 %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <% End If %>
        <p><a href="<%=pc_url%>intro/2025/summer/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
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


