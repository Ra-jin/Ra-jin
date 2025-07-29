<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
tit01 = "모집 시기"
tit02 = "입학 일정"
tit03 = "접수 방법"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    pageTit = "‘독’한 재수 자물쇠반"
                    txt01 = "12월부터 신청순 마감"
                    txt02 = "매월 1일, 매주 월/목 순차 입학"
                    txt03 = "온라인 접수<p class='stxt mt5 f12'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    grade_txt01 = "연고/블루반"
                    grade_txt02 = "서의반"
                    grade_num = "8"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    pageTit = "2026 러셀 부천 자물쇠반"
                    txt01 = "12월부터 신청순 마감"
                    txt02 = "매월 1일부터 순차적 입학"
                    txt03 = "현장 및 온라인 접수 <p class='stxt mt5 f12'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    grade_txt01 = "블루반"
                    grade_txt02 = "연고대반1"
                    grade_num = "10"
End Select
%>

<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <% If campus_code = "CD0247" Then '강남 %>
    <meta name="title" content="2026 러셀 강남 자물쇠반">
    <meta name="keywords" content="2026 러셀 강남 자물쇠반, 자물쇠반, 러셀 강남 자물쇠반, 메가스터디 러셀 강남 자물쇠반, 러셀 자물쇠반, 메가스터디 러셀 자물쇠반">
    <meta name="description" content="바른공부 자습전용관 2026 러셀 강남 자물쇠반">
    <% ElseIf campus_code = "CD0250" Then '부천 %>
    <meta name="title" content="2026 러셀 부천 자물쇠반">
    <meta name="keywords" content="2026 러셀 부천 자물쇠반, 자물쇠반, 러셀 부천 자물쇠반, 메가스터디 러셀 부천 자물쇠반, 러셀 자물쇠반, 메가스터디 러셀 자물쇠반">
    <meta name="description" content="바른공부 자습전용관 2026 러셀 부천 자물쇠반">
    <% End If %>
	<link rel="stylesheet" type="text/css" href="./style.css" media="all" />
	<link rel="stylesheet" type="text/css" href="/css/danka_common.css" media="all" />
    <link rel="stylesheet" type="text/css" href="/css/cont.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<% If campus_code = "CD0247" or campus_code = "CD0250" Then '강남/부천 %>
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit"><%=pageTit%></strong>
</h2>
<section class="sub-wrap">
	<!-- lock-wrap -->
    <div class="lock-wrap <%=campusName%>">
        <!-- 비주얼 -->
        <div class="visual-wrap">
            <p class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/visual_bg.jpg" alt=""></p>
            <div class="visual-area">
                <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/v-tit01.png" alt=""></p>
                <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/v-tit02.png" alt=""></p>
                <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/v-tit03.png" alt=""></p>
                <p class="v-tit04"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/v-tit04.png" alt=""></p>
                <div class="v-info">
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>
                    <dl class="mb0">
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
            </div>
        </div>
        <!-- //비주얼 -->

        <!-- 컨텐츠 -->
        <div class="container <%=campusName%>">
            <!-- fix-menu -->
            <ul class="fix-menu js-fix-menu">
				<li class="on">모집안내</li>
				<li>재수생<br>맞춤 시스템</li>
            </ul>
            <!-- //fix-menu -->

            <div class="cont00 js-cont-wrap js-cont">
                <div class="inner">
                    <p class="recruit-tit">모집안내</p>
                    <div class="tbl-box type01">
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%">
                                <col style="width: auto">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th class="bg-sky"><%=tit02%></th>
                                    <td class="text-align-left"><%=txt02%></td>
                                </tr>
                                <tr>
                                    <th class="bg-sky"><%=tit03%></th>
                                    <td class="text-align-left"><%=txt03%></td>
                                </tr>        
                            </tbody>
                        </table> 
                    </div>
                    <% If campus_code = "CD0247" Then '강남 %>
                        <a href="https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=183" class="btn-link mt20">원서접수 바로가기</a>
                    <% End If %>
                </div>
               
            </div>
            <!-- // cont00 학원별 모집안내 -->
            
            <!-- tab01 -->
            <!-- #include virtual = "/intro/2025/lock/tab01.asp" -->
            <!-- //tab01 -->

            <!-- tab02 -->
            <!-- #include virtual = "/intro/2025/lock/tab02.asp" -->
            <!-- //tab02 -->

            <div class="mask-bg" style="display: none;"></div>
            <p><a href="<%=pc_url%>intro/2025/lock/index.asp" target="_blank" class="bt-pc telBtm">PC페이지로 이동</a></p>
        </div>
    </div>
    
</section>
<% End If %>

<!--  공통 하단 -->
<!-- #include virtual = "/inc/footer.asp" -->
<!--  // 공통 하단-->

<script type="text/javascript" src="./ui.js"></script>
</body>
</html>