<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    
	<!--#include virtual="/intro/2025/winter/meta_seo.asp"-->
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<!-- <link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/variable/pretendardvariable.min.css" /> -->
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

<!-- summer-wrap -->
<div class="winter-wrap">

	<!-- Visual -->
	<!--#include virtual="/intro/2025/winter/visual.asp"-->
	<!-- Visual -->

	<!-- Contents -->
	<div class="container <%=campusName%>">
		<!-- fix-menu -->
		<nav class="fix-menu">
			<% If sCampusCode = "INTRO" Then '인트로 %>
			<div class="menu">
				<a class="on" href="javascript:void(0);">러셀의 윈터스쿨</a>
				<a href="javascript:void(0);">러셀만의 특별함</a>
				<a href="javascript:void(0);">최상위권 대입 결과</a>
				<a href="javascript:void(0);">학원별 모집 안내</a>
				<div class="mozip" style='right:87px;'>
					<span>
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>_off.png" alt="사전 접수 시작" />
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>.png" alt="사전 접수 시작" />
					</span>
					<span>
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>_bottom_off.png" alt="사전 접수 시작" />
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>_bottom.png" alt="사전 접수 시작" />
					</span>
				</div>
			</div>
			<% Else %>
			<div class="menu">
				<a class="on" href="javascript:void(0);">윈터스쿨 모집 안내</a>
				<a href="javascript:void(0);">러셀의 윈터스쿨</a>
				<a href="javascript:void(0);">러셀만의 특별함</a>
				<a href="javascript:void(0);">최상위권 대입 결과</a>
				<% If sCampusCode <> "CD0244" Then '분당 제외 %>
				<div class="mozip" style='left:61px;'>
					<span>
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>_off.png" alt="사전 접수 시작" />
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>.png" alt="사전 접수 시작" />
					</span>
					<span>
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>_bottom_off.png" alt="사전 접수 시작" />
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/<%=bubble%>_bottom.png" alt="사전 접수 시작" />
					</span>
				</div>
				<% End If %>
			</div>
			<% End If %>
		</nav>
		<!-- //fix-menu -->
		<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" Then '인트로제외 %>
		<!-- 학원별 컨텐츠 -->
		<%

			if campusName02 = "" then
				Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
				Response.End
			end if

			dirFile = "/intro/2025/winter/"&campusName02&".asp"
			Server.Execute(dirFile)
		%>
		<!-- //학원별 컨텐츠 -->
		<% End If %>


		<!-- 최상위권 집결, 러셀-->
		<!--#include virtual="/intro/2025/winter/tab01_rank.asp"-->
		<!-- //최소 시간 수준별 맞춤 단과-->

		<!-- 여름 방학, 최상위권 도약의 기회 -->
		<!--#include virtual="/intro/2025/winter/tab02_opportunity.asp"-->
		<!-- //정규반 시스템 -->

		<!-- 윈터스쿨 프로그램 -->
		<!--#include virtual="/intro/2025/winter/tab03_program.asp"-->
		<!-- //실전 콘텐츠 라인업 -->

		<!-- //Contents -->

		<% If sCampusCode = "INTRO" Then '인트로 %>
		<!-- 학원별 모집안내 -->
		<div class="cont js-cont">
			<div class="cont11">
				<div class="inner">
					<h3 class="mb70" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/intro_info.png" alt="2025 러셀 윈터스쿨 모집 안내 학원별 모집 요강, 장학 혜택 및 상세 등록 방법은 각 학원으로 문의 바랍니다." /></h3>
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
	        var em_num = "130";
        <% Else	                    '개발서버 %>
	        var em_num = "10107";
        <% End If %>
        var url = "/popup/popup_sms_alarm.asp?EM_NUM="+em_num+"&stype=w";
		window.open(url,'popup_smsalarm','scrollbars=yes,width=794,height=800,top=0,left='+ popupX);
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
