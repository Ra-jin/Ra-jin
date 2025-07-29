<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%

tit01 = "개강일"
txt01 = ""
tit02 = "접수 방법"
txt02 = ""

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

chart_minute = "770"

regular_url = "alert(`추후 오픈 예정입니다.`)"
am_url = "alert(`추후 오픈 예정입니다.`)"

result_url = ""

danka_list01 = "<strong>러셀 강남&middot;대치</strong> 및 <br> <strong>메가스터디 인강</strong> 출강"
danka_list02 = "과목별 성취도에 맞춘 <br> <strong>수준별 맞춤 수업</strong>"
danka_list03 = "<strong>대치동 현강 그대로! <br> 대치동 현강 컨텐츠 <br> 그대로!</strong>"
danka_list04 = "<strong>수업 관리 전담 선생님</strong>의 <br> 집중도 높은 <br> 수업 진행 관리"

last = "last-slide"
food_txt = "한 건물 내에서 강의실과 바자관, 숙소, 식당을"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

    Case "CD0363": '러셀 기숙
                    txt_campus = "최상위권 전문관 러셀 기숙"
                    campusName = "russel_hs"
                    campusName02 = "cont_hs"
                    tel = "031-326-5000"
                    txt01 = "6월 28일(토)"
                    txt02 = "온라인 접수"
                    apply_url = "alert('원서접수는 PC페이지에서 가능합니다.');location.href='https://russelhs.megastudy.net/russel_yj/apply/jaejung/apply.asp?app_cd=187'"


End Select
%>


<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2026 반수반">
    <meta name="keywords" content="2026 반수반, 반수반, 러셀 2026 반수반, 메가스터디 러셀 반수반">
    <meta name="description" content="바른공부 자습전용관 2026 반수반">
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
    <script type="text/javascript" defer src="./ui.js"></script>
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2026 반수반</strong>
</h2>
<section class="sub-wrap">
	<!-- half-wrap -->
    <div class="half-wrap <%=campusName%>">
        <% if curYmdhmin < 202506141500 then %>
        <!-- 설명회 배너 -->
        <a href="https://mrusselhs.megastudy.net/event/2026/gisuk_half_pre/index.asp" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/russel_yj/2025/half/consulting_banner.jpg" alt="반수반 설명회 배너"></a>
        <!-- //설명회 배너 -->
        <% end if %>

        <!-- visual -->
        <div class="visual-wrap <%=campusName%>">
            <div class="visual-area">
                <div class="obj-wrap">
                    <p class="v-obj01"><img src="<%=Application("img_path_russel")%>/m_russel/russel_yj/2025/half/v_arr.png" alt="상승화살표" /></p>
                </div>
        
                <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/russel_yj/2025/half/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
                <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/russel_yj/2025/half/v_tit01.png" alt="2026" /></p>
                <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/v_tit02.png" alt="반수반" /></p>
                <p class="v-txt">
                    불필요한 수업은 <strong>줄이고, <br>
                    </strong> 꼭 필요한 시간은 <strong>최대로!</strong>
                </p>
                <div class="v-info">
                    <div>
                        <dl>
                            <dt><%=tit01%></dt>
                            <dd><%=txt01%></dd>
                        </dl>
                        <dl>
                            <dt><%=tit02%></dt>
                            <dd><%=txt02%></dd>
                        </dl>
                    </div>
                </div>
                <ul class="stxt">
                    <li>
                        ※ 모집요강 지원자격 해당자 순 접수
                    </li>
                </ul>
                <div class="v-tit04">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/v_img.png" alt="이미지" />
                    <div class="ico-v-badge"></div>
                </div>
            </div>
        </div>
        <a onclick="<%=apply_url%>" class="apply-btn"><%=apply_txt%></a>
        <!-- //visual -->

		<div class="container">
            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
                <li class="on">최상위권 전문관</li>
                <li>합격선배들의 <br> 반수성공기</li>
                <li>러셀 기숙 시스템</li>
                <li>입학 안내</li>
                <li>학습계획 및 <br> 일과표</li>
            </ul>
            <!--// fix-menu -->


            <!-- #include virtual = "/russel_hs/2025/half/tab01.asp" -->

            <!-- 학원별 모집안내 -->
            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner" style="position:relative;">
                    
                    <!--마감딱지-->
                    <div class="ico-end" style="top: 22vw;right: 1.5vw;"><p>여학생<br>마감임박</p></div>
                    <!--//마감딱지-->

                    <!-- 원서접수 버튼 -->
                    <!-- <a href="<%=apply_url%>" class="btn-link mt20"><%=apply_txt%></a> -->
                    <!-- <a onclick="alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='<%=pc_url%>russel/apply/yonhab/apply.asp?app_cd=158';" class="btn-link btn-pc mt20"><%=apply_txt%></a> -->
                    <!-- //원서접수 버튼 -->

                    <!--학원별 컨텐츠 -->
                    <%
                    dirFile = "/russel_hs/2025/half/"&campusName02&".asp"
                    Server.Execute(dirFile)
                    %>
                    <!-- //학원별 컨텐츠 -->
                </div>
            </div>
            <!-- // 학원별 모집안내 -->

            <!-- #include virtual = "/russel_hs/2025/half/tab02.asp" -->

            
            <!-- 입학준비물 -->
            <!-- #include virtual = "/russel_hs/2025/half/pop.asp" -->   
            <!-- //입학준비물 -->
		</div>

        <!-- <p><a href="<%=pc_url%>russel_hs/2025/half/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p> -->
        <p><a href="https://russelhs.megastudy.net/russel_hs/2025/half/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
    </div>
	<!-- //half-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->

<script src="/js/chart.min.js"></script>
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