<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2026 N수 정규반" />
    <meta name="keywords" content="2026 N수 정규반, N수 정규반, 러셀 2026 N수 정규반, 메가스터디 러셀 N수 정규반" />
	<meta name="description" content="바른공부 자습전용관 2026 N수 정규반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2026 N수 정규반">
	<meta property="og:description" content="2026 N수 정규반, N수 정규반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" href="/common/css/aos.css">
    <link rel="stylesheet" href="/common/css/table.css">
    <link rel="stylesheet" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
	<link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- regular-wrap -->
<div class="regular-wrap">

	<!-- Visual -->
	<!--#include virtual="/intro/2025/regular/visual.asp"-->
	<!-- Visual -->

	<!-- Contents -->
	<div class="container <%=campusName%>">
		<!-- fix-menu -->
		<nav class="fix-menu">
			<div class="menu">
				<% If sCampusCode = "INTRO" Then '인트로 %>
				<a class="on" href="javascript:void(0);">최상위권 집결</a>
				<a href="javascript:void(0);">정규반 시스템</a>
				<a href="javascript:void(0);">실전 콘텐츠 라인업</a>
				<a href="javascript:void(0);">학원별 모집안내</a>
				<% ElseIf sCampusCode = "CD0244" Then '분당 %>
				<a class="on" href="javascript:void(0);">모집안내</a>
				<a href="javascript:void(0);"><%=fix_02%></a>
				<a href="javascript:void(0);"><%=txtCampus%> 정규반 시스템</a>
				<a href="javascript:void(0);">실전 콘텐츠 라인업</a>
				<% Else %>
				<a class="on" href="javascript:void(0);">모집안내</a>
				<a href="javascript:void(0);"><%=fix_02%></a>
				<a href="javascript:void(0);">정규반 시스템</a>
				<a href="javascript:void(0);">실전 콘텐츠 라인업</a>
				<% End If %>
			</div>
		</nav>
		<!-- //fix-menu -->
		<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" Then '인트로제외 %>
		<!-- 학원별 컨텐츠 -->
		<%

			if campusName02 = "" then
				Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
				Response.End
			end if

			dirFile = "/intro/2025/regular/"&campusName02&".asp"
			Server.Execute(dirFile)
		%>
		<!-- //학원별 컨텐츠 -->
		<% End If %>


		<!-- 최상위권 집결-->
		<!--#include virtual="/intro/2025/regular/con01_top_rank.asp"-->
		<!-- //최상위권 집결, 러셀 -->

		<!-- 정규반 시스템 -->
		<!--#include virtual="/intro/2025/regular/con02_system.asp"-->
		<!-- //정규반 시스템 -->

		<!-- 실전 콘텐츠 라인업 -->
		<!--#include virtual="/intro/2025/regular/con03_lineup.asp"-->
		<!-- //실전 콘텐츠 라인업 -->

		<!-- //Contents -->

		<% If sCampusCode = "INTRO" Then '인트로 %>
		<!-- 학원별 모집안내 -->
		<div class="cont js-cont">
			<div class="cont10">
				<div class="inner">
					<div data-aos="fade-down">
						<h3>
							2026 러셀 <strong>N수 정규반</strong> 모집안내
						</h3>
						<h4>학원별 모집요강, 장학혜택 및 상세 등록 방법은 각 학원으로 문의 바랍니다.</h4>
					</div>
					<!--#include virtual="/common/inc/campus_list_basic.asp" -->
				</div>
			</div>
		</div>
		<!-- //학원별 모집안내 -->
		<% end if %>

	</div>
	<div class="mask-bg" style="display: none;"></div>
</div>
<!-- regular-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

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

	//quick 팝업창
	var popH = screen.availHeight;
	var popupWidth = 794;
	var popupX = (window.screen.width / 2) - (popupWidth / 2);

	//학원 문자수신 알리미 신청 바로가기
	function fncAlarmPop(){
        <% If IsRealSvr = true Then	'실서버 %>
	        var em_num = "127";
        <% Else	                    '개발서버 %>
	        var em_num = "9087";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num;
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	function fncAlarmPop02(){
        var url = "https://russelbc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp"
		window.open(url,'popup_smsalarm02','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	function fncAlarmPop03(){
        var url = "https://russeldc.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp"
		window.open(url,'popup_smsalarm03','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

	function openPop(url) {
		window.open(url,'pre_apply_pop','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
	}

    //aos fadeup 효과
    AOS.init({

		offset: 300,
		duration: 700,
		easing: 'linear',
		delay: 0,
		once: true
	});

</script>
</body>
</html>
