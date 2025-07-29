<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2025 파이널 정규반" />
    <meta name="keywords" content="2025 파이널 정규반, 파이널 정규반, 파이널 정규반, 러셀 파이널, 파이널, 러셀정규반, vkdlsjf" />
	<meta name="description" content="바른공부 자습전용관 2025 파이널 정규반" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 파이널 정규반</strong>
</h2>
<section class="sub-wrap">
	<!-- final-wrap -->
    <div class="final-wrap">
		<!-- #include virtual = "/intro/2024/final/visual.asp" -->

		<div class="container <%=campusName%>">

            <% If campus_code <> "INTRO" Then '인트로 %>
            <!--fix-menu -->
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집요강 및 지원혜택</li>
				<li>파이널 정규반 프로그램</li>
            </ul>
            <!--// fix-menu -->
            <% End If %>

			<% If campus_code <> "INTRO" Then '인트로 제외 %>
            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <p class="recruit-tit">
                        <%=txtCampus%> 파이널 정규반<br><strong>모집안내</strong>
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
                                <tr>
                                    <th class="bg-sky"><%=tit_03%></th>
                                    <td class="text-align-left"><%=txt_03%></td>
                                </tr>
                                <% If campus_code = "CD0250" Then '부천 %>
                                <tr>
                                    <th class="bg-sky">입학 문의</th>
                                    <td class="text-align-left">
                                        온라인 상담 <a href="https://pf.kakao.com/_sFgGxj" class="bt-gray-s ml10">바로가기</a> <br>
                                        전화 상담 032.265.1010
                                    </td>
                                </tr>
                                <% End If %>
                            </tbody>
                        </table>
                    </div>

                    <% If campus_code = "CD0249" Then '영통 %>
                    <!--마감딱지-->
                    <div class="ico-end" style="top:185px"><p><%=endText%></p></div>
                    <!--//마감딱지-->
                    <% End If %>

                    <!-- 원서접수 버튼 -->
                    <% If campus_code <> "CD0250" and campus_code <> "CD0249" and campus_code <> "CD0257" and campus_code <> "CD0248" Then '부천/영통/중계/평촌/ %>
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    <% End If %>
                    <!-- //원서접수 버튼 -->

                    <!--학원별 컨텐츠 -->
                    <%
                        If campusName02 <> "" Then
                            dirFile = "/intro/2024/final/"&campusName02&".asp"
                            Server.Execute(dirFile)
                        else
                            Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                            Response.End
                        End If
                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
            </div>
            <!-- //학원별 모집안내 -->
            <% End If %>

		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2024/final/tab01.asp" -->
		<!-- //tab01 -->

        <!-- 인트로 모집안내 -->
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-wrap js-cont-wrap intro">
            <div class="recruit-tit">
                2025 <strong>러셀 파이널 정규반</strong> <br> 모집안내
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
        <p><a href="<%=pc_url%>intro/2024/final/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
    </div>
	<!-- //final-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->

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
<script type="text/javascript" src="./ui.js"></script>
</body>
</html>