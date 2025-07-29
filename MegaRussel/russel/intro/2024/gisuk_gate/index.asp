<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="러셀 기숙학원" />
    <meta name="keywords" content="러셀기숙, 러셀기숙학원, fjtpfrltnr, 러셀기숙최상위권전문관, 남학생전문관, 여학생전문관, 자연계전문관, 러셀기숙학원가격, 러셀메가기숙, 러셀메가스터디기숙학원, 메가기숙, 메가러셀기숙, 메가러셀기숙학원, 메가스터디러셀기숙, 메가스터디러셀양지, 서연고의치대전문관, 서연고의치대전문관러셀기숙, 서의치대관러셀기숙, 여학생관러셀기숙, 양지러셀, 양지메가스터디기숙학원, 서초메가스터디기숙학원, 메가스터디기숙,양지기숙,양지기숙학원,서초기숙,서초기숙학원, 러셀남기숙,러셀여기숙,수학기숙,수학전문관,여학생수학전문관,러셀수학기숙,러셀수학전문관,러셀양지기숙,러셀서초기숙" />
	<meta name="description" content="메가스터디 직영 기숙학원, 메가스터디 강사진, 수준별 맞춤 수업, 대치동 현장강의와 콘텐츠, 1인 1생활공간" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="러셀 기숙학원">
	<meta property="og:description" content="메가스터디 직영 기숙학원, 메가스터디 강사진, 수준별 맞춤 수업, 대치동 현장강의와 콘텐츠, 1인 1생활공간" />
    <meta property="og:site_name" content="러셀 기숙학원">

    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/static/pretendard.min.css" />
    <link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/table.css">
    <link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
	<link rel="stylesheet" href="./style.css">
</head>

<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- gisuk-gate-wrap -->
<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0363" or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0348" or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0347" or Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0364" Then '최상위권/여기숙/남기숙/여수학 %>
<div class="gisuk-gate-wrap" style="margin-top: -50px;">
<% Else %>
<div class="gisuk-gate-wrap">
<% End If %>
    <!-- Visual -->
	<!--#include virtual="/intro/2024/gisuk_gate/visual.asp"-->
	<!-- //Visual -->
    
    <!--contents-->
    <!--#include virtual="/intro/2024/gisuk_gate/contents.asp"-->
    <!--//contents-->
</div>





<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->
<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
<script>
//aos fadeup 효과
 AOS.init({
    offset: 300,
    duration: 500,
    easing: 'ease-in-sine',
    delay: 0,
    once: true
});

function admissionPopup(){        
        var url = "https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=69"
		window.open(url,'admissionPopup','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

</script>
</body>
</html>
