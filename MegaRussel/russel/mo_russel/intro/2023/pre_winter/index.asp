<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 프리윈터스쿨" />
    <meta name="keywords" content="2024 러셀 프리윈터스쿨, 프리윈터스쿨" />
	<meta name="description" content="겨울방학, 실력 향상을 넘어 최상위권으로!" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2024 프리윈터스쿨</strong>
</h2>
<section class="sub-wrap">
	<!-- pre-winter-wrap -->
    <div class="pre-winter-wrap">
        <!-- visual -->
		<!-- #include virtual = "/intro/2023/pre_winter/visual.asp" -->
        <!-- //visual -->

        <!-- 공통 컨텐츠 -->
        <div class="container <%=campusName%>">            
            
            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont">
                <div class="inner">
                    <p class="recruit-tit">
                        <%=txt_campus%> 프리윈터스쿨<br><strong>모집안내</strong>
                    </p>
                    
                    <table class="tbl-type01">
                        <colgroup>
                            <col style="width: 18%">
                            <col style="width: auto">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th class="bg-sky"><%=tit_01%></th>
                                <td><%=txt_01%></td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit_02%></th>
                                <td><%=txt_02%></td>
                            </tr>                        
                            <tr>
                                <th class="bg-sky"><%=tit_03%></th>
                                <td><%=txt_03%></td>
                            </tr>
                            <tr>
                                <th class="bg-sky"><%=tit_04%></th>
                                <td><%=txt_04%></td>
                            </tr>
                        </tbody>
                    </table> 
                    
                    <!--마감딱지-->
                    <!-- <div class="ico-end" style="top: 22vw;right: 1.5vw;"><p><%=endText%></p></div> -->
                    <!--//마감딱지-->

                    <!-- 원서접수 버튼 -->
                    <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='<%=pc_url%>russel/apply/yonhab/apply.asp?app_cd=161';" class="btn-link btn-pc mt20"><%=apply_txt%></a>
                    <!-- //원서접수 버튼 -->
                </div>

            </div>
            <!-- // 학원별 모집안내 -->

            <!-- cont01-->
            <div class="cont01 js-cont">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont01_tit.jpg" alt="연간 재학생 모집 일정"></p>
                <div class="plan-wrap">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/cont01_bg.jpg" alt="뒷배경"></p>
                    <p class="pre-box"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/prebox_bg.jpg" alt="보라색 박스"></p>
                    <p class="txt txt01"><%=date01%></p>
                    <p class="txt txt02"><%=date02%></p>
                    <p class="txt txt03"><%=date03%></p>
                    <p class="img img01"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/ico_x.png" alt="엑스" /></p>
                    <p class="img img02"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/ico_o.png" alt="도넛" /></p>
                    <p class="img img03"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/ico_ball.png" alt="동그라미 공" /></p>
                </div>
                <div class="inner">
                    <p class="s-txt">* 학습 프로그램 일정은 학원 운영에 따라 상이할 수 있습니다.</p>
                </div>
            </div>
            <!-- //cont01-->


            <!--학원별 컨텐츠 -->
            <%
                dirFile = "/intro/2023/pre_winter/"&campusName&".asp"
                Server.Execute(dirFile)
            %>
            <!-- //학원별 컨텐츠 -->
            
		    <!-- #include virtual = "/intro/2023/pre_winter/contents.asp" -->

        </div>
        <!-- //공통 컨텐츠 -->

        <p><a href="<%=pc_url%>intro/2023/pre_winter/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>

    </div>
	<!-- //pre-winter-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->


<!-- <script>
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
</script> -->
<script type="text/javascript" src="./ui.js"></script>
</body>
</html>