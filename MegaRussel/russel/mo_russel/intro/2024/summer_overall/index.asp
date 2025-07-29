<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 러셀 썸머스쿨 종합반" />
    <meta name="keywords" content="2024 러셀 썸머스쿨 종합반, 썸머스쿨, 썸머스쿨 종합반, 러셀 썸머스쿨, 썸머스쿨, 재학생, Tjaajtmznf" />
	<meta name="description" content="단과 수업과 의무자습을 한방에!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2024 썸머스쿨 종합반</strong>
</h2>
<section class="sub-wrap">
	<!-- half-wrap -->
    <div class="summer-wrap">
		<!-- #include virtual = "/intro/2024/summer_overall/visual.asp" -->

		<div class="container <%=campusName%>">

            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
				<li class="on">썸머스쿨<br>모집 안내</li>
				<li>신개념 융합형<br>종합반</li>
				<li>최상위권<br>도약의 기회</li>
				<li>썸머스쿨<br>프로그램</li>
            </ul>
            <!--// fix-menu -->

            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <p class="recruit-tit">
                        <%=txtCampus%> 썸머스쿨 종합반<br><strong>모집 개요</strong>
                    </p>
                    <div class="tbl-box type01">
                        <% If campus_code = "CD0342" Then '대구 %>
                        <!--마감딱지-->
                        <div class="ico-end" style="top:185px;right: 20px;"><p><%=endText%></p></div>
                        <!--//마감딱지-->
                        <% end if %>
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%">
                                <col style="width: auto">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-sky"><%=tit_01%></th>
                                    <% If campus_code = "CD0349" or campus_code = "CD0342" Then '울산/대구 %>
                                    <td class="text-align-left"><%=txt_01_1%></td>
                                    <% Else %>
                                    <td class="text-align-left"><%=txt_01%></td>
                                    <% End If %>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit_02%></th>
                                    <% If campus_code = "CD0349" or campus_code = "CD0342" Then '울산/대구 %>
                                    <td class="text-align-left"><%=txt_02_1%></td>
                                    <% Else %>
                                    <td class="text-align-left"><%=txt_02%></td>
                                    <% End If %>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit_03%></th>
                                    <td class="text-align-left"><%=txt_03%></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit_04%></th>
                                    <td class="text-align-left"><%=txt_04%></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit_05%></th>
                                    <td class="text-align-left"><%=txt_05%></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit_06%></th>
                                    <td class="text-align-left"><%=txt_06%></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit_07%></th>
                                    <td class="text-align-left"><%=txt_07%></td>
                                </tr>
                                <% If campus_code = "CD0349" or campus_code = "CD0342" or campus_code = "CD0340" Then '울산/대구/코어광주 %>
                                <tr>
                                    <th class="bg-sky"><%=tit_08%></th>
                                    <td class="text-align-left"><%=txt_08%></td>
                                </tr>
                                <% End If %>
                            </tbody>
                        </table>
                    </div>

                    <!--마감딱지-->
                    <% If campus_code = "CD0340" Then '코어광주 %>
                    <div class="ico-end" style="top: 46vw;right: 1.5vw;"><p><%=endText%></p></div>
                    <% End If %>
                    <!--//마감딱지-->

                    <!-- 원서접수 버튼 -->
                    <% If campus_code = "CD0342" Then '대구 %>
                        <% if curYmdhmin < 202404301000 then %>
                        <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                        <% else %>
                        <!--개발 4/30(화) 10시, 원서접수 URL 연결-->
                        <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.')" href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=172" class="btn-link mt20"><%=apply_txt%></a>
                        <% end if %>
                    <% ElseIf campus_code = "CD0340" Then '코어광주 %>

                    <% Else %>
                    <a href="javascript:void(0)" onclick="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a>
                    <% End If %>
                    <!-- //원서접수 버튼 -->

                    <!--학원별 컨텐츠 -->
                    <%
                        IF campusName02 <> "" THEN
                            dirFile = "/intro/2024/summer_overall/"&campusName02&".asp"
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

		</div>

		<!-- tab01 -->
		<!-- #include virtual = "/intro/2024/summer_overall/tab01.asp" -->
		<!-- //tab01 -->

        <!-- tab02 -->
		<!-- #include virtual = "/intro/2024/summer_overall/tab02.asp" -->
		<!-- //tab02 -->

        <!-- tab03 -->
		<!-- #include virtual = "/intro/2024/summer_overall/tab03.asp" -->
		<!-- //tab03 -->

        <div class="mask-bg type02" style="display: none;"></div>

        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2024/summer_overall/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
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
</script>
</body>
</html>