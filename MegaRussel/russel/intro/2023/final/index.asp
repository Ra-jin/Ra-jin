<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
campusCont = "russel"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로

    Case "CD0247": '강남
                    campusCont = "t_gn"

    Case "CD0001": '대치
                    campusCont = "t_dc"

    Case "CD0245": '목동
                    campusCont = "t_md"

    Case "CD0250": '부천
                    campusCont = "t_bc"

	Case "CD0244": '분당
                    campusCont = "t_bd"

	Case "CD0246": '센텀
                    campusCont = "t_ct"

    Case "CD0249": '영통
                    campusCont = "t_yt"

    Case "CD0257": '중계
                    campusCont = "t_jg"

	Case "CD0248": '평촌
                    campusCont = "t_pc"

	Case "CD0340": '코어광주
                    campusCont = "t_gj"

	Case "CD0341": '코어대전
                    campusCont = "t_dj"

    Case "CD0342": '대구
                   campusCont = "t_dg"

    Case "CD0343": '코어원주
                   campusCont = "t_wj"

    Case "CD0344": '코어전주
                   campusCont = "t_jj"

    Case "CD0345": '코어창원
                   campusCont = "t_cw"

    Case "CD0346": '코어청주
                   campusCont = "t_cj"
    case else: 
                   campusCont = ""

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2024 러셀 파이널 정규반" />
    <meta name="keywords" content="2024 러셀 파이널 정규반, 러셀 파이널 정규반, 2024 러셀정규반, 러셀정규반" />
	<meta name="description" content="바른공부 자습전용관 2024 러셀 파이널 정규반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀 파이널 정규반">
	<meta property="og:description" content="2024 러셀 파이널 정규반, 러셀 파이널 정규반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./ui.css" />
	<link rel="stylesheet" href="/common/css/full_danka.css">
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- final-wrap -->
<div class="final-wrap">
	<!-- visual -->
	<!--#include virtual="/intro/2023/final/visual.asp"-->
	<!-- //visual -->

    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" Then '인트로제외 %>
    <div class="final-cont-wrap bg-gray">
        <div class="inner">
            <!-- 학원별 컨텐츠 -->
            <%  
                If campusCont <> "" Then
                    dirFile = "/intro/2023/final/"&campusCont&".asp"
                    Server.Execute(dirFile)
                else 
                    Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
                    Response.End
                end if 
            %>
            <!-- //학원별 컨텐츠 -->
        </div>
    </div>
    <% End If %>

	<!-- contents -->
	<!--#include virtual="/intro/2023/final/contents.asp"-->
	<!-- //contents -->

	<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Then '인트로 %>
	<!-- 학원별 모집안내 -->
    <div class="campus-list">
        <div class="inner">
            <div class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2023/final/bottom.jpg" alt=""></div>
            <!--#include virtual="/common/inc/campus_list_basic.asp" -->
        </div>
    </div>
    <!-- //학원별 모집안내 -->
	<% end if %>

</div>
<!-- final-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="./ui.js"></script>

<% If sCampusCode <> "INTRO" Then '인트로제외 %>
<script>
    finalTab()
</script>
<% End If %>
</body>
</html>
