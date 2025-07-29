<% Session.CodePage = 949 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%'기숙양지전문관이 아니면 다른곳으로 이동.
If( Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "" And Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) <> "CD0363" )Then
    Response.Redirect "/" & GetCampusDirDetail(Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_"))) & "/default.asp"
    Response.end
End If
%>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <!-- 메인 head -->
    <!--#include virtual="/russel/library/include/main_yj/inc_head.asp" -->
    <!-- 공통 head -->
    <!--#include virtual="/russel/library/include/common/russel_yj/head.asp" -->
    <%IMG = Application("img_path") &"/library/russel"%>
</head>
<body>

<div class="skip-navigation">
    <p><a href="#yj-main-wrap">메뉴 건너뛰기</a></p>
</div>
<!-- 메인 레이어 팝업 -->
<!-- #include virtual="/common/layer_pop/main_layer.asp"-->
<!-- //메인 레이어 팝업 -->

<!-- 상단 띠배너 -->
<!-- #include virtual="/inc_banner/top_banner.asp" -->
<!-- //상단 띠배너 -->

<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->

<!-- 우측 고정 배너 : admin -->
<!--#include virtual="/inc_banner/banner.asp" -->
<!-- //우측 고정 배너 : admin -->

<!-- yj-main-wrap -->
<%
    sYear = "2020"

    lastUpdDt = ""
    ALL_TOT= 0 : SKY_TOT = 0 : DOC_TOT = 0

    strSql = ""
    strSql = strSql & " SELECT ALL_TOT = COUNT(*) "
    strSql = strSql & " 	, SKY_TOT = COUNT(CASE WHEN hof_gbn_1='SKY' THEN 1 END) "
    strSql = strSql & " 	, DOC_TOT = COUNT(CASE WHEN hof_gbn_2='DOC' THEN 1 END) "
    strSql = strSql & " 	, UPD_DT = ISNULL(CONVERT(VARCHAR,MAX(hof_upd_dt),23), '없음') "
    strSql = strSql & " FROM MR_HOF WITH(NOLOCK) "
    strSql = strSql & " WHERE hof_year = '" & sYear & "' "

    Set objRs = russelobjdb.sqlQuery(strSql,3)
    If Not (objRs.EoF And objRs.BoF) Then
    ALL_TOT = FormatCurrencySTR(objRs("ALL_TOT"))
    SKY_TOT = FormatCurrencySTR(objRs("SKY_TOT"))
    DOC_TOT = FormatCurrencySTR(objRs("DOC_TOT"))
    lastUpdDt = Replace(objRs("UPD_DT"),"-",".")
    End If
    objRs.close
    Set objRs = Nothing

    ' 원서접수 리턴 URL
    rtnUrl_apply = "/russel_yj/apply/yonhab/apply.asp?app_cd=143"
%>

<div id="hs-main-wrap">

<!-- main-slide -->
    <!--#include virtual="/russel/library/include/main_yj/main_slide_new.asp" -->
    <!-- //main-slide -->

    <!-- 상담 문의 -->
    <!--#include virtual="/russel/library/include/main_yj/top_menu.asp" -->
    <!-- //상담 문의 -->

    <!-- 공지사항 -->
    <!--#include virtual="/russel/library/include/main_yj/main_notice.asp" -->
    <!-- //공지사항 -->

    <!-- 학원 소개 배너 -->
    <!--#include virtual="/russel/library/include/main_yj/bn_intro.asp" -->
    <!-- //학원 소개 배너 -->

    <!-- 학생을 향한 진심 -->
    <!-- include virtual="/russel/library/include/main_yj/bottom_infra.asp" -->
    <!-- //학생을 향한 진심 -->

</div>


<SCRIPT LANGUAGE="JavaScript" src="/russel/Public/js/popup_lib.js"></SCRIPT>

<script>
  // 원서접수 (2019-10-21 추가)
    function fncApply(){
    <% If gLoginOk = True Then %>
        location.href = "https://russelcampus.megastudy.net/russel_yj//apply/yonhab/apply.asp?app_cd=143";
        //location.href = "apply/jaejung/apply.asp?app_cd=122";
        //location.href = "apply/yonhab/apply.asp?app_cd=122";
    <% Else %>
        alert('로그인 후 이용할 수 있습니다.');
        location.href='/russel/member/login.asp?rtnUrl=<%=Server.URLEncode(rtnUrl_apply)%>';
    <% End If %>
    }
</script>

<!--  공통 푸터 //-->
<!--#include virtual="/russel/library/include/common/russel_yj/footer.asp" -->
<!--  // 공통 푸터-->
</body>
</html>
