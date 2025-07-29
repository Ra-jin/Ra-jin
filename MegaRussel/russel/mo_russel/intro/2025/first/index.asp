<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2026 재수생 우선선발반" />
    <meta name="keywords" content="2026 재수생 우선선발반, 재수생 우선선발반, 러셀 2026 재수생 우선선발반, 메가스터디 러셀 재수생 우선선발반" />
	<meta name="description" content="바른공부 자습전용관 2026 재수생 우선선발반" />
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0249" Then '영통 %>
    <strong class="tit">2026 재수정규반 [우선선발]</strong>
    <% Else %>
    <strong class="tit">2026 재수생 우선선발반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">

	<!-- first-wrap -->
    <div class="first-wrap">

		<!--visual-->
		<!-- #include virtual = "/intro/2025/first/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">

            <!-- fix-menu -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">최상위권 집결<br>러셀</li>
				<li>재수생<br>맞춤 시스템</li>
				<li>학원별<br>모집안내</li>
            </ul>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집안내</li>
                <li>결과로 증명하는<br>
                    러셀 중계</li>
				<li>재수생<br>맞춤 시스템</li>
            </ul>
            <% Else %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집안내</li>
                <li>최상위권 집결</li>
				<li>재수생<br>맞춤 시스템</li>
            </ul>
            <% End If %>
            <!--// fix-menu -->

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <% If campus_code = "CD0248" Then '평촌 %>
                <p class="recruit-tit"><strong>모집안내</strong></p>
                <% Else %>
                <p class="recruit-tit">모집안내</p>
                <% End If %>

                <div class="tbl-box">
                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width: 20%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <% If campus_code <> "CD0346"  Then '코어청주 제외 %>
                            <tr>
                                <th class="bg-sky"><%=tit_01%></th>
                                <% If campus_code = "CD0341" Then '코어대전 %>
                                <td class="text-align-left"><%=txt_01_01%></td>
                                <% Else %>
                                <td class="text-align-left"><%=txt_01%></td>
                                <% End If %>
                            </tr>
                            <% End If %>
                            <tr>
                                <th class="bg-sky"><%=tit_02%></th>

                            <% If campus_code = "CD0001" Then '대치 %>
                                <% if curYmdhmin < 202412031100 then %>
                                <td class="text-align-left">
                                    <%=txt_02_before%>
                                </td>
                                <% Else %>
                                <td class="text-align-left">
                                    <%=txt_02%>
                                </td>
                                <% End If %>
                            <% Else %>
                                <td class="text-align-left">
                                    <%=txt_02%>
                                </td>
                            <% End If %>
                            </tr>
                            <% If campus_code <> "CD0257" and campus_code <> "CD0246" and campus_code <> "CD0344"  Then '중계/센텀/코어전주 제외 %>
                            <tr>
                                <th class="bg-sky"><%=tit_03%></th>
                                <td class="text-align-left"><%=txt_03%></td>
                            </tr>
                            <% End If %>
                        </tbody>
                    </table>
                </div>

                <!--마감딱지-->
                <% If campus_code = "CD0245" or campus_code = "CD0342" Then '목동/대구 %>
                <div class="ico-end" style="top: 38vw;right: 2vw;"><p style="font-size: 1.2rem;"><%=endText%></p></div>
                <% End If %>
                <!--//마감딱지-->

                <!-- 원서접수 버튼 -->
                <% If campus_code = "CD0247" or campus_code = "CD0349" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0344" or campus_code = "CD0343" or campus_code = "CD0341" or campus_code = "CD0245" Then '강남/울산/코어창원/코어청주/코어전주/코어원주/코어대전/목동 %>
                <div class="inner">
                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                </div>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                    <% if curYmdhmin < 202411151400 then %>
                    <% Else %>
                    <div class="inner">
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    </div>
                    <% End If %>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                    <% if curYmdhmin < 202411201000 then %>
                    <% Else %>
                    <div class="inner">
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    </div>
                    <% End If %>
                <% ElseIf campus_code = "CD0001" Then '대치 %>
                    <% if curYmdhmin < 202412031100 then %>
                    <% Else %>

                        <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                        <!-- 개발서버 -->
                        <div class="inner">
                            <a href="javascript:void(0)" onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://devrussel.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=4170')" class="btn-link mt20"><%=apply_txt%></a>
                        </div>
                        <% Else %>
                        <!-- 실서버 -->
                        <div class="inner">
                            <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        </div>
                        <% End If %>
                    <% End If %>
                <% End If %>
                <!-- //원서접수 버튼 -->

                <!--학원별 컨텐츠 -->
                <%
                    if campusName02 = "" then
                        Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                        Response.End
                    end if

                    dirFile = "/intro/2025/first/"&campusName02&".asp"
                    Server.Execute(dirFile)
                %>
                <!-- //학원별 컨텐츠 -->
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>

		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2025/first/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2025/first/tab02.asp" -->
		<!-- //tab02 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap pb0" style="background:#F4F4F4">
            <div class="recruit-tit">
                <strong>2026 재수생 우선선발반</strong><br> 모집안내
            </div>
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
        <p><a href="<%=pc_url%>intro/2025/first/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>

    </div>
	<!--//first-wrap -->
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
          var em_num = "127&stype=f";
        <% Else                      '개발서버 %>
          var em_num = "10094&stype=f";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
        window.open(url,'popup_smsalarm','scrollbars=yes, top=0,left='+ popupX);
    }
</script>
</body>
</html>


