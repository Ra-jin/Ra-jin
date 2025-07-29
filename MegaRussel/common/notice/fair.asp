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
				<em class="current">설명회</em>
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
					<h3>설명회</h3>
					<p class="txt">메가스터디학원의 다양한 설명회 정보를 전해드립니다.</p>
				</div>
				<% If CDbl(GetNowDate()) < CDbl(20180203160000) Then %>
                             <p class="mt30"><a href="http://campus.megastudy.net/campus_common/2019_concert/index.asp"><img src="<%=Application("img_path")%>/library/intro/fair_ban_180116_1_n.jpg" alt="재수성공전략 팀플 콘서트 설명회 " border="0" ></a></p>
				<% End If %>
                 <!--p class="mt10"><a href="http://campus.megastudy.net/common/notice/fair_view.asp?code=11908"><img src="<%=Application("img_path")%>/library/intro/fair_ban_180116_2.jpg" alt="재수성공전략 설명회" border="0" ></a></p-->
				<!-- // titleDiv -->

				<div class="content">
   
                
					<% Call MenuBBSDrawPage_List(gMenuBBSNaviCode, gMenuBBSGubunCode, True, VARS("curPage"), 20, 10, True, "/common/notice/fair.asp", "/common/notice/fair_view.asp", "", VARS) %>
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