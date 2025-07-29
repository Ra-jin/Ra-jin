<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/common/menubbs/menubbs.asp"-->
<%
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="" />
<!-- #Include Virtual = "/library/include/reload/favicon.asp" -->

<title><%=gMGC_Campus_Title%></title>
<!-- #Include Virtual = "/library/include/reload/css_common.asp" -->
<!-- #include virtual="/public/jquery.asp" -->
<!-- #Include Virtual = "/library/include/reload/js_common.asp" -->
<link rel="stylesheet" type="text/css" href="/library/css/intro_new.css"><!-- intro전용 css -->
</head>

<body>
<div id="wrapper">

	<!--  최상단메뉴//-->
	<!--#include virtual="/library/include/common/top.asp" -->
	<!--  //최상단메뉴-->

	<div id="header" class="intro">      
        <!--  상단 대메뉴//-->
        <!--#include virtual="/library/include/common/top_campus_intro.asp" -->
        <!-- // 상단 대메뉴-->
    </div>
	<!-- // header -->

	<div id="container">
		<div class="lineMapArea">
			<div class="lineMap">
				<span class="home">HOME</span>
				<em class="current">수시논술 적중 문항</em>
			</div>
		</div>
		<!-- // lineMapArea -->


		<div class="contentWrap">

			<!--  레프트 메뉴(인트로[모집안내/공지사항]만)//-->
			<div class="sideArea">
				<!--#include virtual="/library/include/common/left_campus_common_sub01.asp" -->
			</div>
			<!-- //레프트 메뉴 -->
			


			<div class="contentArea">
				<div class="titleDiv">
					<h3>수시논술 적중 문항</h3>
					<p class="txt">메가스터디 논술모의고사의 대학별 적중 예시 입니다.</p>
				</div>
                <div class="mt30"><img src="<%=Application("img_path")%>/library/common/banner/ban_nonsul.jpg" title="적중" border="0"/></div>
				<!-- // titleDiv -->
				<div class="content mt20">
					<% Call MenuBBSDrawPage_List(gMenuBBSNaviCode, gMenuBBSGubunCode, True, VARS("curPage"), 20, 10, True, "/common/notice/nonsul.asp", "/common/notice/nonsul_view.asp", "", VARS) %>
				</div>
				
			</div>
			<!-- // contentArea :: 본문내용 -->
		</div>
		<!-- // contentWrap :: 컨텐츠전체 -->

	</div>
	<!-- // container -->


	<!--  최하단메뉴//-->
	<!--#include virtual="/library/include/common/bottom.asp" -->
	<!--  //최하단메뉴-->

</div>
<!-- // wrapper -->
</body>
</html>
