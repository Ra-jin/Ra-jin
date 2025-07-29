<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
	<meta name="title" content="최상위권 전문관 러셀 기숙" />
    <meta name="keywords" content="최상위권전문관러셀기숙, 러셀기숙, 러셀기숙학원, fjtpfrltnr, 러셀기숙최상위권전문관, 남학생전문관, 여학생전문관, 자연계전문관, 러셀기숙학원가격, 러셀메가기숙, 러셀메가스터디기숙학원, 메가기숙, 메가러셀기숙, 메가러셀기숙학원, 메가스터디러셀기숙, 메가스터디러셀양지, 서연고의치대전문관, 서연고의치대전문관러셀기숙, 서의치대관러셀기숙, 여학생관러셀기숙, 양지러셀, 양지메가스터디기숙학원, 서초메가스터디기숙학원, 메가스터디기숙,양지기숙,양지기숙학원,서초기숙,서초기숙학원, 러셀남기숙,러셀여기숙,수학기숙,수학전문관,여학생수학전문관,러셀수학기숙,러셀수학전문관,러셀양지기숙,러셀서초기숙,양지메가,양지메가스터디,메가양지,양지메가스터디기숙,최상위권러셀,최상위권러셀기숙,메가스터디기숙학원" />
	<meta name="description" content="메가스터디 직영 기숙학원, 메가스터디 강사진, 수준별 맞춤 수업, 대치동 현장강의와 콘텐츠" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="최상위권 전문관 러셀 기숙" />
    <meta property="og:description" content="메가스터디 직영 기숙학원, 메가스터디 강사진, 수준별 맞춤 수업, 대치동 현장강의와 콘텐츠" />
    <meta property="og:site_name" content="최상위권 전문관 러셀 기숙">
	<!--#include virtual="/russel/library/include/common/russel_yj/head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/table.css">
    <link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
    <link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<!-- 공통 최상단 -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0363" or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0348" or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0347" Then '양지기숙/여기숙/남기숙 %>
<div class="intro-wrap" style="margin-top: -50px;">
<% Else %>
<div class="intro-wrap">
<% End If %>
     <!-- Visual -->
	<!--#include virtual="/russel_hs/event/2024/visual.asp"-->
	<!-- //Visual -->
    
    <!-- fix-menu -->
    <nav class="fix-menu-wrap">
        <div class="fix-menu">
            <div class="menu">
                <a class="on" href="javascript:void(0);">Perfect<br>완벽해진 러셀 기숙학원</a>
                <a href="javascript:void(0);">Plus<br>더 강해진 학습 관리력</a>
                <a href="javascript:void(0);">Prepare<br>합격을 위한 모든 준비</a>
            </div>
        </div>
    </nav>
    <!--// fix-menu -->

    <!--contents-->
    <!--#include virtual="/russel_hs/event/2024/cont01.asp"-->
    <!--#include virtual="/russel_hs/event/2024/cont02.asp"-->
    <!--#include virtual="/russel_hs/event/2024/cont03.asp"-->
    <!--//contents-->
</div>

<!--  공통 하단 -->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단 -->
<script src="/common/js/chart.min.js"></script>
<script src="/common/js/aos.js"></script>
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
    
    //aos fadeup 효과
    AOS.init({
                
                offset: 200,
                duration: 500,
                easing: 'ease-in-sine',
                delay: 0,
                once: true
            });
</script>
</body>
</html>