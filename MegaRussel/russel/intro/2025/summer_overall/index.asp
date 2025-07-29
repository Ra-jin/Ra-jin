<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2025 썸머스쿨" />
    <meta name="keywords" content="러셀학원, 재수학원, 기숙학원, 메가스터디러셀, 메가스터디, 러셀, 수능, 모의고사, 대입, 러셀썸머스쿨, 썸머스쿨, 여름방학, 썸머스쿨추천, 여름방학캠프, 의대, 입시" />
	<meta name="description" content="올여름, N수생과 격차를 좁히는 방법, 러셀 썸머스쿨" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 썸머스쿨">
	<meta property="og:description" content="올여름, N수생과 격차를 좁히는 방법, 러셀 썸머스쿨"/>
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" as="style" crossorigin href="https://cdn.jsdelivr.net/gh/orioncactus/pretendard@v1.3.9/dist/web/variable/pretendardvariable.min.css" />
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


<% If sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '대구/코어광주 %>
<!-- summer-wrap -->
<div class="summer-wrap">

	<!-- Visual -->
	<!--#include virtual="/intro/2025/summer_overall/visual.asp"-->
	<!-- Visual -->

	<!-- Contents -->
	<div class="container <%=campusName%>">
		<!-- fix-menu -->
		<nav class="fix-menu">
			<div class="menu">
				<a class="on" href="javascript:void(0);">썸머스쿨 모집 안내</a>
				<a href="javascript:void(0);">신개념 융합형 종합반</a>
				<a href="javascript:void(0);">여름 방학, 최상위권 도약의 기회
				</a>
				<a href="javascript:void(0);">썸머스쿨 프로그램
				</a>
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

			dirFile = "/intro/2025/summer_overall/"&campusName02&".asp"
			Server.Execute(dirFile)
		%>
		<!-- //학원별 컨텐츠 -->
		<% End If %>


		<!-- 최상위권 집결, 러셀-->
		<!--#include virtual="/intro/2025/summer_overall/tab01_rank.asp"-->
		<!-- //최소 시간 수준별 맞춤 단과-->

		<!-- 신개념 융합형 종합반 -->
		<!--#include virtual="/intro/2025/summer_overall/tab02_opportunity.asp"-->
		<!-- //정규반 시스템 -->

		<!-- 썸머스쿨 프로그램 -->
		<!--#include virtual="/intro/2025/summer_overall/tab03_program.asp"-->
		<!-- //실전 콘텐츠 라인업 -->

		<!-- //Contents -->

	</div>
	<div class="mask-bg" style="display: none;"></div>
</div>
<!-- regular-wrap -->
<% End If %>

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
