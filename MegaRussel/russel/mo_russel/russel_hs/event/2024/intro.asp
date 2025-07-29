<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="최상위권 전문관 러셀 기숙">
    <meta name="keywords" content="최상위권전문관러셀기숙, 러셀기숙, 러셀기숙학원, fjtpfrltnr, 러셀기숙최상위권전문관, 남학생전문관, 여학생전문관, 자연계전문관, 러셀기숙학원가격, 러셀메가기숙, 러셀메가스터디기숙학원, 메가기숙, 메가러셀기숙, 메가러셀기숙학원, 메가스터디러셀기숙, 메가스터디러셀양지, 서연고의치대전문관, 서연고의치대전문관러셀기숙, 서의치대관러셀기숙, 여학생관러셀기숙, 양지러셀, 양지메가스터디기숙학원, 서초메가스터디기숙학원, 메가스터디기숙,양지기숙,양지기숙학원,서초기숙,서초기숙학원, 러셀남기숙,러셀여기숙,수학기숙,수학전문관,여학생수학전문관,러셀수학기숙,러셀수학전문관,러셀양지기숙,러셀서초기숙,양지메가,양지메가스터디,메가양지,양지메가스터디기숙,최상위권러셀,최상위권러셀기숙,메가스터디기숙학원" />
    <meta name="description" content="메가스터디 직영 기숙학원, 메가스터디 강사진, 수준별 맞춤 수업, 대치동 현장강의와 콘텐츠" />
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/t_list.css">
</head>
<body>
    <!-- #include virtual = "/inc/header.asp" -->
    <h2 class="sub-tit">
        <!-- #include virtual = "/inc/bt_back.asp" -->
        <strong class="tit">러셀 기숙 최상위권 전문관</strong>
    </h2>

    <section class="sub-wrap">
        <!-- intro-wrap -->
        <div class="intro-wrap">
            <!-- visual -->
            <!-- #include virtual = "/russel_hs/event/2024/visual.asp" --> 
            

             <!-- contents -->
            <div class="container <%=campusName%>">
                <!-- fix-menu -->
                <ul class="fix-menu js-fix-menu">
                    <li class="on">완벽해진<br>시스템</li>
                    <li>강해진<br>학습관리력</li>
                    <li>합격을<br>높이는 관리</li>
                </ul>
                <!--// fix-menu -->
                
                <!-- #include virtual = "/russel_hs/event/2024/cont01.asp" -->   
                <!-- #include virtual = "/russel_hs/event/2024/cont02.asp" -->   
                <!-- #include virtual = "/russel_hs/event/2024/cont03.asp" -->   

                <!-- 시행일정 팝업 -->
                 <!-- #include virtual = "/russel_hs/event/2024/pop.asp" -->   
            </div>

            <p><a href="<%=pc_url%>russel_hs/event/2024/intro.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        </div>
    </section>

<!-- #include virtual = "/inc/footer.asp" -->
<script src="/js/chart.min.js"></script>
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
</script>
</body>
</html>