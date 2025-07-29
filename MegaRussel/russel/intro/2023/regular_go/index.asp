<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
txtCampus = "러셀"
campusName = "intro"
campusName02 = "russel"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel_dc"
                    campusName02 = "t_dc"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                   campusName = "russel_dg"
                   campusName02 = "t_dg"

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
    case else: 
                   campusName02 = ""

	'Case "CD0258": txtDate = "기숙"
	'Case "CD0331": r_title = "삽자루 수학학원"
End Select
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2024 러셀 정규반" />
    <meta name="keywords" content="2024 러셀 정규반, 러셀 정규반, 2024 러셀정규반, 러셀정규반" />
	<meta name="description" content="바른공부 자습전용관 2024 러셀 정규반" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2024 러셀 정규반">
	<meta property="og:description" content="2024 러셀 정규반, 러셀 정규반" />
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="./ui.css" />
	<link rel="stylesheet" href="/common/css/full_danka.css">
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- regularGo-wrap -->
<div class="regularGo-wrap">
	<!-- visual -->
	<!--#include virtual="/intro/2023/regular_go/visual.asp"-->
	<!-- visual -->

    <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "INTRO" Then '인트로제외 %>
    <div class="final-cont">

        <!-- 학원별 컨텐츠 -->
        <%
            If campusName02 <> "" Then
                dirFile = "/intro/2023/regular_go/"&campusName02&".asp"
                Server.Execute(dirFile)
            Else 
                Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
			    Response.End
		    End If 
        %>
        <!-- //학원별 컨텐츠 -->
    </div>
    <% End If %>

	<!-- contents -->
	<!--#include virtual="/intro/2023/regular_go/contents.asp"-->
	<!-- //contents -->

	<% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "INTRO" Then '인트로 %>
	<!-- 학원별 모집안내 -->
	<div class="cont js-cont">

		<!-- cont07 -->
		<div class="cont07">
			<div class="inner">
				<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2023/regular_go/cont07_tit.png" alt="2024 러셀 재학생 정규반 모집 안내" /></p>
				<!--#include virtual="/common/inc/campus_list_basic.asp" -->
			</div>
		</div>
		<!--// cont07 -->
	</div>
	<!-- //학원별 모집안내 -->
	<% end if %>

</div>
<!-- regularGo-wrap -->

<!--  공통 하단 //-->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단-->

<script src="./ui.js"></script>
</body>
</html>
