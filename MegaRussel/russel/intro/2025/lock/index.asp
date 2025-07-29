<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%
tit01 = "모집 시기"
tit02 = "입학 일정"
tit03 = "접수 방법"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt02 = "매월 1일, 매주 월/목 순차 입학"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=183'>원서접수 바로가기</a><p class='stxt mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    grade_txt01 = "연고/블루반"
                    grade_txt02 = "서의반"
                    grade_num = "8"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "12월부터 신청순 마감"
                    txt02 = "매월 1일부터 순차적 입학"
                    txt03 = "현장 및 온라인 접수 <p class='stxt mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    grade_txt01 = "블루반"
                    grade_txt02 = "연고대반1"
                    grade_num = "10"
End Select
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <% If sCampusCode = "CD0247" Then '강남 %>
	<meta name="title" content="2026 러셀 강남 자물쇠반">
    <meta name="keywords" content="2026 러셀 강남 자물쇠반, 자물쇠반, 러셀 강남 자물쇠반, 메가스터디 러셀 강남 자물쇠반, 러셀 자물쇠반, 메가스터디 러셀 자물쇠반">
    <meta name="description" content="바른공부 자습전용관 2026 러셀 강남 자물쇠반">
    <meta property="og:type" content="website">
    <meta property="og:title" content="2026 러셀 강남 자물쇠반">
    <meta property="og:description" content="2026 러셀 강남 자물쇠반, 자물쇠반">
    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
    <meta name="title" content="2026 러셀 부천 자물쇠반">
    <meta name="keywords" content="2026 러셀 부천 자물쇠반, 자물쇠반, 러셀 부천 자물쇠반, 메가스터디 러셀 부천 자물쇠반, 러셀 자물쇠반, 메가스터디 러셀 자물쇠반">
    <meta name="description" content="바른공부 자습전용관 2026 러셀 부천 자물쇠반">
    <meta property="og:type" content="website">
    <meta property="og:title" content="2026 러셀 부천 자물쇠반">
    <meta property="og:description" content="2026 러셀 부천 자물쇠반, 자물쇠반">
    <% End If %>
	<!-- #include virtual="/russel/library/include/common/russel/inc_head.asp" -->
	<link rel="stylesheet" type="text/css" href="/common/css/aos.css">
    <link rel="stylesheet" type="text/css" href="/common/css/full_danka.css">
    <link rel="stylesheet" type="text/css" href="/common/css/table.css">
    <link rel="stylesheet" type="text/css" href="/common/css/t_list.css" />
    <link rel="stylesheet" type="text/css" href="./style.css" />
</head>
<body>
<!-- 공통 최상단 -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<% If sCampusCode = "CD0247" or sCampusCode = "CD0250" Then '강남/부천 %>
<!-- lock-wrap -->
<div class="lock-wrap">
    <!-- visual -->
    <div class="visual-wrap">
        <div class="inner">
            <p class="v-tit"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/v-tit01.png" alt="소중한 내 수험시간 지키고 싶다면? 충분한 자습시간 확보가 필요할 때"></p>
            <p class="v-tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/lock/v-tit02.png" alt="2025 러셀"></p>
            <p class="v-tit pl0"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/v-tit03.png" alt="자물쇠반"></p>
            <p class="v-tit"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/v-tit04.png" alt="의무시수 없이 바른공부 자습전용관 + 관리 시스템 이용"></p>
            <p class="v-obj"><img src="<%=Application("img_path_russel")%>/intro/2025/lock/v-object.png" alt=""></p>
            <div class="v-info">
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
            </div>
        </div>
    </div>
    <!-- //visual -->
    
    <!-- fix-menu -->
    <nav class="fix-menu-wrap">
        <div class="fix-menu">
            <div class="menu">
                <a class="on" href="javascript:void(0);">모집안내</a>
                <a href="javascript:void(0);">재수생 맞춤 시스템</a>
            </div>
        </div>
    </nav>
    <!-- //fix-menu -->
    
    <!-- Contents -->
    <!-- 모집안내 -->
	<!-- #include virtual="/intro/2025/lock/tab01.asp"-->
	<!-- //모집안내 -->

	<!-- 재수생 맞춤 시스템-->
	<!-- #include virtual="/intro/2025/lock/tab02.asp"-->
	<!-- //재수생 맞춤 시스템-->
	<!-- //Contents -->
    
    <div class="mask-bg" style="display: none;"></div>
</div>
<% End If %>
<!--  공통 하단 -->
<!--#include virtual="/russel/library/include/common/russel/bottom.asp"-->
<!--  // 공통 하단 -->

<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
</body>
</html>