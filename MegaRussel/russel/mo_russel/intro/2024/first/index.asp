<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 재수생 우선선발반" />
    <meta name="keywords" content="재수생, 재수생 우선선발반, 2025 재수생 우선선발반, 재수" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
	<script src="/js/chart.min.js"></script>
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0248" Then '평촌 %>
    <strong class="tit">2025 재수생 PRE 정규반</strong>
    <% Else %>
    <strong class="tit">2025 재수생 우선선발반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">

	<!-- first-wrap -->
    <div class="first-wrap">

		<!--visual-->
		<!-- #include virtual = "/intro/2024/first/visual.asp" -->
		<!--//visual-->

		<div class="container <%=campusName%>">

            <!-- fix-menu -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on">최상위권 집결<br>러셀</li>
				<li>최상위권 대입성공 <br> 맞춤 시스템</li>
				<li>학원별 <br> 모집안내</li>
            </ul>
            <% ElseIf campus_code = "CD0342" OR campus_code = "CD0349"  OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" Then '대구/울산/코어원주/코어전주/코어창원/코어청주 %>
            <ul class="fix-menu js-fix-menu">
				<li class="on"><%=txtCampus%><br>모집안내</li>
				<li>최상위권 집결 <br> 러셀</li>
				<li>최상위권 대입성공<br> 맞춤 시스템</li>
            </ul>
            <% Else %>
            <ul class="fix-menu js-fix-menu">
				<li class="on"><%=txtCampus%><br>모집안내</li>
                    <% If campus_code = "CD0257" Then '중계 %>
                <li>수능 목표 성적과<br>
                대학 합격을  위한<br><%=txtCampus%></li>
				<li>목표 대학 합격한<br>
				대입성공<br> 맞춤 시스템</li>
                    <% Else %>
                <li>최상위권 집결 <br> <%=txtCampus%></li>
				<li>최상위권 대입성공<br> 맞춤 시스템</li>
                    <% End If %>
            </ul>
            <% End If %>
            <!--// fix-menu -->

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- cont00 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <% If campus_code <> "CD0247" Then '강남 제외 %>
                    <% If campus_code = "CD0248" Then '평촌 %>
                    <p class="recruit-tit">
                        <%=txtCampus%> 재수생 PRE 정규반<br><strong>모집안내</strong>
                    </p>
                    <% Else %>
                    <p class="recruit-tit">
                        <%=txtCampus%> 재수생 우선선발반<br><strong>모집안내</strong>
                    </p>
                    <% End If %>
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
                                    <% If campus_code = "CD0244" Then '분당 %>
                                        <%=txt_02_1%>
                                    <% Else %>
                                        <%=txt_02%>
                                    <% End If %>
                                    </td>
                                </tr>
                                <% If campus_code = "CD0250" or campus_code = "CD0244" Then '부천/분당 %>
                                <tr>
                                    <th class="bg-sky"><%=tit_03%></th>
                                    <td class="text-align-left"><%=txt_03%></td>
                                </tr>
                                <% End If %>                     
                            </tbody>
                        </table> 
                    </div>


                    <!--마감딱지-->
                    <% If campus_code = "CD0001" OR campus_code = "CD0245" Then '대치/목동 %>
                    <div class="ico-end" style="top: 46vw;right: 1.5vw;"><p><%=endText%></p></div>
                    <% ElseIf campus_code = "CD0342" Then '대구 %>
                    <div class="ico-end" style="top: 46vw;right: 1.5vw;"><p style="font-size: 2rem;"><%=endText%></p></div>
                    <% End If %>
                    <!--//마감딱지-->

                    <!-- 원서접수 버튼 -->
                    <% If campus_code <> "CD0245" and campus_code <> "CD0248" and campus_code <> "CD0249" and campus_code <> "CD0250" and campus_code <> "CD0257" and campus_code <> "CD0342"  and campus_code <> "CD0001" Then '목동/평촌/영통/부천/중계/대구/대치 제외 %>
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    <% End If %>
                    <!-- //원서접수 버튼 -->
                    
                    <% End If %>


                    <!--학원별 컨텐츠 -->
                    <%
                        if campusName02 = "" then
                            Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
		                    Response.End
                        end if
                        
                        dirFile = "/intro/2024/first/"&campusName02&".asp"
                        Server.Execute(dirFile)
                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
            </div>
            <!-- // cont00 학원별 모집안내 -->
            <% End If %>

		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2024/first/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2024/first/tab02.asp" -->
		<!-- //tab02 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-tit js-cont-wrap">
            <strong>2025 재수생 우선선발반</strong> <br> 모집안내
        </div>
        <p class="recruit-txt">학원별 모집요강, 장학 혜택 밎 상세 등록 방법은 <br> 각 학원으로 문의바랍니다.</p>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <% End If %>
        <div class="mask-bg" style="display: none;"></div>

        <% If campus_code <> "INTRO" Then '인트로 제외 %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <% End If %>
        <p><a href="<%=pc_url%>intro/2024/first/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>

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
          var em_num = "118";
        <% Else                      '개발서버 %>
          var em_num = "9087";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
        window.open(url,'popup_smsalarm','scrollbars=yes, top=0,left='+ popupX);
    }
</script>
</body>
</html>


