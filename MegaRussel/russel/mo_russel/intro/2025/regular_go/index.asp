<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2026 재학생 정규반">
    <meta name="keywords" content="2026 재학생 정규반, 재학생 정규반, 러셀 2026 재학생 정규반, 메가스터디 러셀 재학생 정규반">
    <meta name="description" content="바른공부 자습전용관 2026 재학생 정규반">
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0247" Then '강남 %>
    <strong class="tit">2026 재학생 최상위권반</strong>
    <% ElseIf campus_code = "CD0244" Then '분당 %>
    <strong class="tit">2026 재학생(고3) 정규반</strong>
    <% ElseIf campus_code = "CD0245" Then '목동 %>
    <strong class="tit">2026 파이널 재학생 정규반</strong>
    <% Else %>
    <strong class="tit">2026 재학생 정규반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">

	<!-- regular-go-wrap -->
    <div class="regular-go-wrap">
		<!--visual-->
		<!-- #include virtual = "/intro/2025/regular_go/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">
            <!-- fix-menu -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">최상위권<br>집결</li>
				<li>재학생 맞춤<br>시스템</li>
				<li>러셀 <br> 실전 콘텐츠</li>
				<li>학원별 <br> 모집안내</li>
            </ul>
            <% Else %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집안내</li>
                <% If campus_code = "CD0257" Then '중계 %>
				<li class="f12">결과로 증명하는 <br>러셀 중계</li>
                <% Else %>
				<li>최상위권<br>집결</li>
                <% End If %>
                <% If campus_code = "CD0244" Then '분당 %>
				<li>재학생(고3) <br>맞춤 시스템</li>
                <% Else %>
				<li>재학생 맞춤<br>시스템</li>
                <% End If %>
				<li>러셀 실전<br> 콘텐츠</li>
            </ul>
            <% End If %>
            <!--// fix-menu -->

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <p class="recruit-tit"><strong>모집안내</strong></p>

                <div class="tbl-box type01">
                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width: 20%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <% If campus_code <> "CD0244" Then '분당 제외 %>
                            <tr>
                                <th class="bg-sky"><%=tit03%></th>
                                <td class="text-align-left"><%=txt03%></td>
                            </tr>
                            <% End If %>
                            <tr>
                                <th class="bg-sky"><%=tit01%></th>
                                <td class="text-align-left"><%=txt01%></td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit02%></th>
                                <td class="text-align-left">
                                    <%=txt02%>
                                    <p class="l-txt">
                                        <% If campus_code = "CD0244" Then '분당 %>
                                        ※ 신규생 등원 : 매주 월요일/목요일 中 택 1 <br>
                                        <% End If %>
                                        ※ 모집요강 지원자격 해당자 순 접수
                                    </p>
                                </td>
                            </tr>
                        </tbody>
                    </table> 
                </div>

                <!--마감딱지-->
                <% If campus_code = "CD0245" or campus_code = "CD0342" or campus_code = "CD0001" or campus_code = "CD0346" or campus_code = "CD0244" or campus_code = "CD0340" Then '목동/대구/대치/코어청주/분당/코어광주 %>
                <div class="ico-end" style="top: 18vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                <% End If %>
                <!--//마감딱지-->

                <!-- 원서접수 버튼 -->
                <% If campus_code = "CD0245" or campus_code = "CD0247" or campus_code = "CD0244" or campus_code = "CD0344" or campus_code = "CD0246" or campus_code = "CD0349" or campus_code = "CD0343" or campus_code = "CD0001" or campus_code = "CD0341" or campus_code = "CD0346" Then '목동/강남/분당/코어전주/센텀/울산/코어원주/대치/코어대전/코어청주 %>
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
                    
                    dirFile = "/intro/2025/regular_go/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>
		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2025/regular_go/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2025/regular_go/tab02.asp" -->
		<!-- //tab02 -->

        <!-- tab03 -->
		<!-- #include virtual = "/intro/2025/regular_go/tab03.asp" -->
		<!-- //tab03 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap type02">
            <div class="recruit-tit">2026 러셀 <strong>재학생 정규반</strong> <br> 모집안내</div>
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
        <p><a href="<%=pc_url%>intro/2025/regular_go/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!--//regular-go-wrap -->
</section>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->

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


