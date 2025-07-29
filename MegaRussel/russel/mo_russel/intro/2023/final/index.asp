<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2024 파이널 정규반" />
    <meta name="keywords" content="2024 러셀 파이널 정규반, 파이널 정규반" />
	<meta name="description" content="나의 마지막 수능을 승리로 이끌 파이널 전략" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2024 <% If campus_code = "CD0250" Then '부천 %>N수<% End If %> 파이널 정규반</strong>
</h2>
<section class="sub-wrap">
	<!-- final-wrap -->
    <div class="final-wrap">
		<!-- #include virtual = "/intro/2023/final/visual.asp" -->

        <!-- 공통 컨텐츠 -->
		<!-- #include virtual = "/intro/2023/final/contents.asp" -->
        <!-- //공통 컨텐츠 -->

        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="recruit-tit" id="recruit-cont">2024 <span>러셀 파이널 정규반</span> 모집 안내</div>
        <!--학원별 모집안내-->
        <!-- #include virtual = "/inc/campus_list_link.asp" -->
        <!--//학원별 모집안내-->
        <div class="fixed-bar"><a href="#">모집 안내 바로가기</a></div>
        <% End If %>
        
        <% If campus_code = "INTRO" Then '인트로 %>
        <p><a href="<%=pc_url%>intro/2023/final/index.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
        <% Else %>
        <p><a href="tel:<%=tel%>" class="bt-tel"><span>문의전화 <%=tel%></span></a></p>
        <p><a href="<%=pc_url%>intro/2023/final/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
        <% End If %>
    </div>
	<!-- //final-wrap -->

</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="./ui.js"></script>
</body>
</html>