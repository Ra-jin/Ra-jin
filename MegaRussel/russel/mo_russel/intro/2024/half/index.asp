<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 러셀 반수반 재학생" />
    <meta name="keywords" content="2025 러셀 반수반 재학생, 재학생 반수반, 반수반 재학생, 러셀 반수반, 반수반, 재학생, wjdrbqks" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <% If campus_code = "CD0249" Then '영통 %>
    <strong class="tit">2025 재수정규반[반수]</strong>
    <% Else %>
    <strong class="tit">2025 반수반</strong>
    <% End If %>
</h2>
<section class="sub-wrap">
	<!-- half-wrap -->
    <div class="half-wrap">
        <!-- <% If campus_code = "CD0247" Then '강남 %>
        <a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=30768">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/img_recruit_gn.jpg" alt="" />
        </a>
        <% End If %> -->
		<!-- #include virtual = "/intro/2024/half/visual.asp" -->

		<div class="container <%=campusName%>">

            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
                <% If campus_code = "INTRO" Then '인트로 %>
				<li class="on">최상위권 집결<br>러셀</li>
				<li>반수생 특화<br>시스템</li>
				<li>학원별<br>모집안내</li>
                <% Else %>
                <li class="on"><%=tab_txt01%></li>
				<li><%=tab_txt02%></li>
				<li>반수생 특화<br>시스템</li>
                <% End If %>
            </ul>
            <!--// fix-menu -->

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <% If campus_code = "CD0249" Then '영통 %>
                    <p class="recruit-tit">
                        <%=txtCampus%> 재수정규반[반수]<br><strong>모집안내</strong>
                    <% ElseIf campus_code = "CD0245" Then '목동 %>
                    <p class="recruit-tit">
                        <%=txtCampus%> 파이널 반수반<br><strong>모집안내</strong>
                    </p>
                    <% Else %>
                    <p class="recruit-tit">
                        <%=txtCampus%> 반수반<br><strong>모집안내</strong>
                    </p>
                    <% End If %>
                    <div class="tbl-box type01">
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%">
                                <col style="width: auto">
                            </colgroup>
                            <tbody>
                                <% If campus_code <> "CD0246" and campus_code <> "CD0346" and campus_code <> "CD0244" Then '센텀/코어청주/분당 제외 %>
                                <tr>
                                    <th class="bg-sky"><%=tit_01%></th>
                                    <td class="text-align-left"><%=txt_01%></td>
                                </tr>
                                <% End If %>
                                <tr>
                                    <th class="bg-sky"><%=tit_02%></th>
                                    <% If campus_code = "CD0244" Then '분당 %>
                                    <td class="text-align-left"><%=txt_02_01%></td>
                                    <% Else %>
                                    <td class="text-align-left"><%=txt_02%></td>
                                    <% End If %>
                                </tr>
                                <% If campus_code = "CD0250" Then '부천 %>
                                <tr>
                                    <th class="bg-sky"><%=tit_03%></th>
                                    <td class="text-align-left">
                                        <%=txt_03%>
                                    </td>
                                </tr>
                                <% End If %>
                            </tbody>
                        </table>
                    </div>


                    <!--마감딱지-->
                    <% If campus_code = "CD0245" Then '목동 %>
                    <div class="ico-end" style="top: 46vw;right: 1.5vw;"><p><%=endText%></p></div>
                    <% ElseIf campus_code = "CD0342" Then '대구 %>
                    <div class="ico-end" style="top: 48vw;right: 1.5vw;"><p><%=endText%></p></div>
                    <% End If %>
                    <!--//마감딱지-->

                    <% If campus_code = "CD0247" OR campus_code = "CD0244" OR campus_code = "CD0344" OR campus_code = "CD0342" OR campus_code = "CD0343" OR campus_code = "CD0341" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0245" Then '강남/분당/코어전주/대구/코어원주/대치/코어대전/센텀/코어창원/코어청주/목동 %>
                    <!-- 원서접수 버튼 -->
                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    <% ElseIf campus_code = "CD0001" Then '대치 %>
                    <!-- //원서접수 버튼 -->
                    <% End If %>


                    <!--학원별 컨텐츠 -->
                    <%
                        IF campusName02 <> "" THEN
                            dirFile = "/intro/2024/half/"&campusName02&".asp"
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
		<!-- #include virtual = "/intro/2024/half/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2024/half/tab02.asp" -->
		<!-- //tab02 -->

        <!-- 인트로 모집안내 -->
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap">
            <div class="recruit-tit">
                <strong>2025 러셀 반수반</strong> <br> 모집안내
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
        <p><a href="<%=pc_url%>intro/2024/half/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!-- //half-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script src="/js/chart.min.js"></script>
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
</script>
</body>
</html>