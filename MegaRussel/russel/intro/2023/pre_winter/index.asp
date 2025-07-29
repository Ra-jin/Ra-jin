<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
txtCampus = "러셀"
campusName = "intro"
campusName02 = "russel"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    tt_txt = "고1/고2 시간표"
                    tt_txt02 = "중3 시간표"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
End Select
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="프리윈터스쿨" />
    <meta name="keywords" content="2024 러셀코어 프리윈터스쿨, 러셀코어 프리윈터스쿨, 2024 러셀코어프리윈터스쿨, 러셀코어프리윈터스쿨" />
    <meta name="description" content="프리윈터스쿨" />
    <meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀코어 프리윈터스쿨">
    <meta property="og:description" content="2024 러셀코어 프리윈터스쿨, 러셀코어 프리윈터스쿨" />
    <!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
    <link rel="stylesheet" type="text/css" href="./style.css" />
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" href="/common/css/common.css">
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- pre-winter-wrap -->
<div class="pre-winter-wrap <%=campusName%>">
	<!-- visual -->
	<!--#include virtual="/intro/2023/pre_winter/visual.asp"-->
	<!-- visual -->

	<!-- contents -->
	<!--#include virtual="/intro/2023/pre_winter/contents.asp"-->
	<!-- //contents -->

</div>
<!-- //pre-winter-wrap -->

<!--  공통 하단-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="./ui.js"></script>
<!-- <script>
   
	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//학원 문자수신 알리미 신청 바로가기
	function fncAlarmPop(){        
        <% If IsRealSvr = true Then	'실서버 %>
	        var em_num = "112";
        <% Else	                    '개발서버 %>
	        var em_num = "9082";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}
</script> -->
</body>
</html>
