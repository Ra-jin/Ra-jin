<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- #include virtual="/russel/Public/Method.asp" -->
<!-- #include virtual="/russel/Public/class.Mssql.asp" -->
<!-- #include virtual="/russel/member/inc/member.asp" -->

<%

cont01_txt06 = "신입생 OT (원장님)" 
cont05_txt03 = "정시 배치 상담"
cont05_txt04 = "입시 상담"
cont05_txt05 = "입시 전문 담임선생님을 위한 입시 교육"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	

    Case "CD0347": txtCampus = "러셀 기숙학원 남학생 전문관"  '서의치
        txtCampus02 = "남학생 전문관 러셀기숙학원"
		campusName = "russel_sm"
		imgUrl = img_path_russelsm &"/2024/system"
        cont01_txt06 = "학습플래너 교육(원장님)" 
        cont05_txt03 = "입시 전문 담임선생님을 위한 입시 교육"
        cont05_txt04 = "입시 특강"
        cont05_txt05 = "학부모 상담"
        campus_url = "https://russelsm.megastudy.net/russel_sm/info/campus_facility.asp"
        download_url01 = "./sm/file01.pdf"
        download_url02 = "./sm/file02.pdf"
        download_url06 = "./sm/file06.hwp"
        download_url07 = "./sm/discharge.pdf"
        download_url08 = "./sm/reg.pdf"
        download_url09 = "./sm/detailed_reg.pdf"
        download_url10= "./sm/system.pdf"

	Case "CD0348": txtCampus = "러셀 기숙 여학생 전문관"  '기숙여
        txtCampus02 = "러셀 기숙 여학생 전문관"
		campusName = "russel_w"
		imgUrl = img_path_russelw &"/2024/system"
        campus_url = "https://russelw.megastudy.net/russel_w/info/campus_facility.asp"
        download_url01 = "./w/file01.pdf"
        download_url02 = "./w/file02.pdf"
        download_url03 = "./w/file03.pdf"
        download_url04 = "./w/file04.pdf"
        download_url05 = "./w/file05.xlsx"
        download_url06 = "./w/file05.pdf"

    Case "CD0363": txtCampus = "최상위권 전문관 러셀 기숙학원"  '최상위권기숙
        txtCampus02 = "최상위권 전문관 러셀 기숙학원"
		campusName = "russel_hs"
		imgUrl = img_path_russelhs &"/2024/system"
        campus_url = "javascript:alert('추후 공개 예정입니다.');"
        cont05_txt03 = "입시 전문 담임선생님을 위한 입시 교육"
        cont05_txt04 = "입시 특강"
        cont05_txt05 = "학부모 상담"
        download_url01 = "./hs/file01.pdf"
        download_url02 = "./hs/file02.pdf"
        download_url03 = "./hs/file03.pdf"
        download_url04 = "./hs/file04.pdf"
        download_url05 = "./hs/file05.pdf"
        download_url06 = "./hs/file06.pdf"

    Case "CD0364": txtCampus = "여학생 수학전문관 러셀 기숙학원"  '여학생 수학전문관
        txtCampus02 = "여학생 수학전문관 러셀 기숙학원"
		campusName = "russel_wm"
		imgUrl = img_path_russelwm &"/2024/system"
        campus_url = "/russel_wm/info/campus_facility.asp"
        download_url01 = "./w/file01.pdf"
        download_url02 = "./w/file02.pdf"
        download_url03 = "./w/file03.pdf"
        download_url04 = "./w/file04.pdf"
        download_url05 = "./w/file05.xlsx"
        download_url06 = "./w/file05.pdf"
End Select
%>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ko">
<head>
    <meta name="title" content="2025 러셀 기숙학원 관리시스템" />
    <meta name="keywords" content="2025 러셀 기숙학원 관리시스템, 러셀 기숙학원, 러셀기숙 관리시스템, 러셀 기숙" />
	<meta name="description" content="2025 러셀 관리시스템" />
	<meta property="og:type" content="website">
    <meta property="og:title" content="2025 러셀 기숙학원 관리시스템">
	<meta property="og:description" content="2025 러셀 기숙학원 관리시스템" />
	<!--#include virtual="/russel/library/include/common/russel_yj/head.asp" -->
	<link rel="stylesheet" type="text/css" href="./style.css" />
	<link rel="stylesheet" href="/common/css/aos.css">
	<link rel="stylesheet" href="/common/css/common.css">
</head>
<body>
<!-- 공통 최상단 // -->
<!--#include virtual="/russel/library/include/common/russel/top.asp" -->
<!-- // 공통 최상단 -->
<div class="system-wrap <%=campusName%>">
    <!-- visual -->
    <div class="visual">
        <div class="inner">
            <div class="visual_area">
                <p class="v-img"><img src="<%=imgUrl%>/v-tit.png" alt="최상위권 기숙 의대전문관 관리시스템" /></p>
                
                <% If sCampusCode = "CD0347" Then '남학생기숙 %>
                <p class="v-img"><img src="<%=imgUrl%>/v-img.png" alt="" /></p>
                <% Else %>
                    <% If sCampusCode <> "CD0364" Then '여학생 수학전문관 제외 %>
                    <p class="v-img"><img src="<%=img_path_yangji%>/2024/system/v-img.png" alt="" /></p>
                    <% End If %>
                <% End If %>
            </div>
        </div>
    </div>
    <!-- //visual -->

    <!-- fix-menu -->
    <nav class="fix-menu-wrap">
        <div class="fix-menu">
            <div class="menu">
                <a href="javascript:void(0);" class="on"><strong>생활관리 시스템</strong>Study atmosphere management</a>
                <a href="javascript:void(0);"><strong>학습관리 시스템</strong>Learning management</a>
                <a href="javascript:void(0);"><strong>입시관리 시스템</strong>Admissions management</a>
            </div>
        </div>
    </nav>
    <!-- //fix-menu -->

    <!-- contents -->
    <div class="cont-wrap">
        <div class="cont01 js-cont">
            <div class="inner">
                <div class="tit" data-aos="fade-up">
                    <p class="txt"> <%=txtCampus%>의 시작,</p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont01_tit.png" alt="신규 입학생 OT" /></p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont01_img.png" alt="" /></p>
                </div>
                <ul class="cont_list">
                    <li>
                        <div class="left">
                            <p>원내규정<br>& 이용안내</p>
                        </div>
                        <div class="right">
                            <p><strong>원내 생활 일과표 및 학원 이용에 필요한 전반적인 규정에 대한 안내</strong>
                                #원내 생활 규정 및 준수사항 교육 #일일 원내 생활 일정 교육 #연간 학사일정 안내 등</p>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>학원 시설안내</p>
                            <a class="btn" href="<%=campus_url%>">확인하기</a>
                        </div>
                        <div class="right">
                            <p><strong>원활한 학원 이용과 학생들의 적응력을 높이기 위한 전반적인 시설안내</strong>
                                #숙소 및 식당 #바자관 및 강의실 #체육 시설 및 편의 시설 등</p>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>입학 원서 및<br>서약서 작성</p>
                        </div>
                        <div class="right">
                            <p><strong>면학분위기 조성 및 원활한 생활관리를 위한 서약서 작성</strong>
                                #입학 원서 #금연 서약서 #원내 생활 규정 준수 서약서 등</p>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>러셀 학습 플래너 및<br>일일수학 30제 교육</p>
                        </div>
                        <div class="right">
                            <p><strong>체계적이고 효율적인 학습을 위한 러셀 학습 플래너 및 일일수학 30제 작성법 교육</strong>
                                #원장님 교육 #담임선생님 개별 교육 #주기적인 점검</p>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>학생 개인성향 파악</p>
                        </div>
                        <div class="right">
                            <p><strong>향후 학생과의 맞춤형 학습 및 입시 상담과 생활관리를 위한 기초 설문 자료 작성</strong>
                                #My history& story 작성 #각오문 작성 등</p>
                        </div>
                    </li>
                </ul>

                <div class="swiper-wrap">
                    <div class="swiper-container slide-pic">
                        <div class="swiper-wrapper">
                            <% If sCampusCode = "CD0347" Then '남기숙 %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont01_slide_pop01.png')">
                                    <img src="<%=imgUrl%>/cont01_slide01.jpg" alt="">
                                    <p>My history & story</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url02%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide02.jpg" alt="">
                                    <p>학원 생활 규정집</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont01_slide_pop03.png')">
                                    <img src="<%=imgUrl%>/cont01_slide03.jpg" alt="">
                                    <p>입학원서</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont01_slide_pop03_2.png')">
                                    <img src="<%=imgUrl%>/cont01_slide03_2.jpg" alt="">
                                    <p>개인정보 수집&middot;이용 동의서</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont01_slide_pop04.png')">
                                    <img src="<%=imgUrl%>/cont01_slide04.jpg" alt="">
                                    <p>금연서약서</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont01_slide_pop05.jpg')">
                                    <img src="<%=img_path_russelsm%>/2024/system/cont01_slide05.jpg" alt="">
                                    <p>연간 학사일정</p>
                                </a>
                            </div>
                            <% ElseIf sCampusCode = "CD0363" Then '최상위권기숙 %>
                            <div class="swiper-slide">
                                <a href="<%=download_url01%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide01.jpg" alt="">
                                    <p>학원생활규정집</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url02%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide02.jpg" alt="">
                                    <p>입학원서(1)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url03%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide03.jpg" alt="">
                                    <p>입학원서(2)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url04%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide04.jpg" alt="">
                                    <p>금연서약서</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url05%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide05.jpg" alt="">
                                    <p>연간 학사일정</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont01_slide_pop06.jpg')">
                                    <img src="<%=imgUrl%>/cont01_slide06.jpg" alt="">
                                    <p>My history & story</p>
                                </a>
                            </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <a href="<%=download_url01%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide01.jpg" alt="">
                                    <p>My history & story</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url02%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide02.jpg" alt="">
                                    <p>학원 생활 규정집</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url03%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide03.jpg" alt="">
                                    <p>입학원서</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url04%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide04.jpg" alt="">
                                    <p>금연서약서</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url05%>" download>
                                    <img src="<%=imgUrl%>/cont01_slide05.jpg" alt="">
                                    <p>연간 학사일정</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0)" onclick="imgPop('<%=imgUrl%>/cont01_slide_pop06.jpg')">
                                    <img src="<%=imgUrl%>/cont01_slide06.jpg" alt="">
                                    <p><%=cont01_txt06%></p>
                                </a>
                            </div>
                            <% End If %>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="cont02">
            <div class="inner">
                <div class="tit" data-aos="fade-up">
                    <p class="txt">철저한 생활 관리를 위한</p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont02_tit.png" alt="일과표 & 시간관리" /></p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont02_img.png" alt="" /></p>
                </div>

                <div class="cont_wrap">
                    <div class="left">
                        <p class="tit">바른공부 자습전용관 일과표</p>
                        <% If Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0348" Then '여기숙 %>
                        <table class="tbl-type01 tbl-center">
                            <colgroup>
                                <col style="width:11%;">
                                <col style="width:auto;">
                                <col style="width:25%;">
                                <col style="width:11%;">
                                <col style="width:auto;">
                                <col style="width:25%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>교시</th>
                                    <th>시간</th>
                                    <th>월 ~ 토요일</th>
                                    <th>교시</th>
                                    <th>시간</th>
                                    <th>일요일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="3">0교시</th>
                                    <td>06:30~07:20</td>
                                    <td>기상, 세면, 조식<br>
                                        자습관 입실</td>
                                    <td rowspan="3">0교시</td>
                                    <td>07:00~07:50</td>
                                    <td>기상, 세면, 조식<br>
                                        자습관 입실</td>
                                </tr>
                                <tr>
                                    <td>07:20~07:30</td>
                                    <td>자습관 인원 점검<br>
                                        (자리 이동 금지)</td>
                                    <td>07:50~08:00</td>
                                    <td>자습관 인원 점검<br>
                                        (자리 이동 금지)</td>
                                </tr>
                                <tr>
                                    <td>07:30~08:30</td>
                                    <td>학습계획서 작성<br>
                                        명상의 시간 / 수능체조</td>
                                    <td>08:00~08:30</td>
                                    <td>학습계획서 작성<br>
                                        명상의 시간 / 수능체조</td>
                                </tr>
                                <tr>
                                    <th>1교시</th>
                                    <td>08:40~09:40</td>
                                    <td rowspan="3">오전 수업 및 의무자습</td>
                                    <td>1교시</td>
                                    <td>08:40~09:40</td>
                                    <td rowspan="3">의무자습</td>
                                </tr>
                                <tr>
                                    <th>2교시</th>
                                    <td>09:55~10:55</td>
                                    <td>2교시</td>
                                    <td class="b-r">09:55~10:55</td>
                                </tr>
                                <tr>
                                    <th>3교시</th>
                                    <td>11:10~12:10</td>
                                    <td>3교시</td>
                                    <td class="b-r">11:10~12:10</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">점심시간(12:10~13:00)</th>
                                    <td class="bg-gray">점심식사</td>
                                    <td class="bg-gray" colspan="2" rowspan="2">점심시간(12:10~13:05)</td>
                                    <td class="bg-gray" rowspan="2">점심식사</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">영어듣기(13:00~13:20)</th>
                                    <td class="bg-gray b-r">영어듣기 / 수능체조</td>
                                </tr>
                                <tr>
                                    <th>4교시</th>
                                    <td>13:30~14:30</td>
                                    <td rowspan="3">오후 수업 / 의무자습<br>
                                        질의 응답<br><br>
                                        토요일(Healing time)<br>
                                        13:20~16:55<br>
                                        (숙소 퇴실 및<br>
                                        바자관 이동 16:45)</td>
                                    <td>4교시</td>
                                    <td>13:10~14:20</td>
                                    <td rowspan="3">의무자습<br>
                                        /<br>
                                        심리특강<br>
                                        (16:00~17:00)</td>
                                </tr>
                                <tr>
                                    <th>5교시</th>
                                    <td>14:45~15:45</td>
                                    <td>5교시</td>
                                    <td class="b-r">14:35~15:35</td>
                                </tr>
                                <tr>
                                    <th>6교시</th>
                                    <td>16:00~17:00</td>
                                    <td>6교시</td>
                                    <td class="b-r">15:50~16:50</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">담임시간(17:10~17:20)</th>
                                    <td class="bg-gray">자습 및 담임시간</td>
                                    <td class="bg-gray" colspan="2">담임시간(17:10~17:20)</td>
                                    <td class="bg-gray">자습 및 담임시간</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">저녁시간(17:20~18:10)</th>
                                    <td class="bg-gray">저녁식사 / 수능체조</td>
                                    <td class="bg-gray" colspan="2">저녁시간(17:20~18:15)</td>
                                    <td class="bg-gray">저녁식사 / 수능체조</td>
                                </tr>
                                <tr>
                                    <th>7교시</th>
                                    <td>18:30~19:30</td>
                                    <td rowspan="2">저녁수업 / 의무자습<br>
                                        질의응답</td>
                                    <td>7교시</td>
                                    <td>18:30~19:30</td>
                                    <td>의무자습 / 주간TEST</td>
                                </tr>
                                <tr>
                                    <th>8교시</th>
                                    <td>19:45~20:45</td>
                                    <td>8교시</td>
                                    <td>19:45~20:45</td>
                                    <td rowspan="2">의무자습<br>
                                        일과 종료</td>
                                </tr>
                                <tr>
                                    <th>9교시</th>
                                    <td>21:00~23:00</td>
                                    <td>저녁수업 / 의무 자습<br>
                                        일일TEST / 일과종료</td>
                                    <td>9교시</td>
                                    <td class="b-r">21:00~22:00</td>
                                </tr>
                            </tbody>
                        </table>
                        <% ElseIf Trim(GetCampusVarsSiteMGC("_CAMPUS_CODE_")) = "CD0347" Then '남기숙 %>
                        <table class="tbl-type01 tbl-center">
                            <colgroup>
                                <col style="width:11%;">
                                <col style="width:auto;">
                                <col style="width:25%;">
                                <col style="width:11%;">
                                <col style="width:auto;">
                                <col style="width:25%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>교시</th>
                                    <th>시간</th>
                                    <th>월 ~ 토요일</th>
                                    <th>교시</th>
                                    <th>시간</th>
                                    <th>일요일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="3">0교시</th>
                                    <td>06:20~07:20</td>
                                    <td>기상, 세면, 조식<br>
                                        자습관 입실</td>
                                    <th rowspan="3">0교시</th>
                                    <td>06:50~07:50</td>
                                    <td>기상, 세면, 조식<br>
                                        자습관 입실</td>
                                </tr>
                                <tr>
                                    <td>07:20~07:30</td>
                                    <td>자습관 인원 점검<br>
                                        (자리 이동 금지)</td>
                                    <td>07:50~08:00</td>
                                    <td>자습관 인원 점검<br>
                                        (자리 이동 금지)</td>
                                </tr>
                                <tr>
                                    <td>07:30~08:20</td>
                                    <td>학습계획서 작성<br>
                                        명상의 시간, 수능체조</td>
                                    <td>08:00~08:20</td>
                                    <td>학습계획서 작성<br>
                                        명상의 시간, 수능체조</td>
                                </tr>
                                <tr>
                                    <th>1교시</th>
                                    <td>08:20~09:20</td>
                                    <td rowspan="3">오전 수업 및 의무자습</td>
                                    <td>1교시</td>
                                    <td>08:20~09:20</td>
                                    <td rowspan="3">의무자습</td>
                                </tr>
                                <tr>
                                    <th>2교시</th>
                                    <td>09:35~10:35</td>
                                    <td>2교시</td>
                                    <td class="b-r">09:35~10:35</td>
                                </tr>
                                <tr>
                                    <th>3교시</th>
                                    <td>10:50~11:50</td>
                                    <td>3교시</td>
                                    <td class="b-r">10:50~11:50</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">점심시간(11:50~12:50)</th>
                                    <td class="bg-gray">점심식사</td>
                                    <td class="bg-gray">점심<br>시간</td>
                                    <td class="bg-gray">11:50~12:50</td>
                                    <td class="bg-gray">점심식사<br>
                                        (수능체조)</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">영어듣기(12:50~13:10)</th>
                                    <td class="bg-gray">영어듣기<br>(수능체조)</td>
                                    <td>4교시</td>
                                    <td>12:50~14:20</td>
                                    <td>오후 수업 / 의무자습<br>
                                        질의응답</td>
                                </tr>
                                <tr>
                                    <th>4교시</th>
                                    <td>13:10~14:10</td>
                                    <td rowspan="3">오후 수업 / 의무자습<br>
                                        질의응답</td>
                                    <td rowspan="3">Healing Time</td>
                                    <td rowspan="3">14:30~16:50</td>
                                    <td rowspan="3">HEALING TIME 및<br>
                                        종교활동</td>
                                </tr>
                                <tr>
                                    <th>5교시</th>
                                    <td class="b-r">14:25~15:25</td>
                                </tr>
                                <tr>
                                    <th>6교시</th>
                                    <td class="b-r">15:40~16:40</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">담임시간(16:50~17:30)</th>
                                    <td class="bg-gray">자습 및 담임시간</td>
                                    <td class="bg-gray" colspan="2">담임시간(17:00~17:30)</td>
                                    <td class="bg-gray">자습 및 담임시간</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">저녁시간(17:30~18:30)</th>
                                    <td class="bg-gray">저녁식사<br>
                                        (수능체조)</td>
                                    <td class="bg-gray" colspan="2">저녁시간(17:30~18:30)</td>
                                    <td class="bg-gray">저녁식사<br>
                                        (수능체조)</td>
                                </tr>
                                <tr>
                                    <th>7교시</th>
                                    <td>18:30~19:30</td>
                                    <td rowspan="2">저녁수업 / 의무자습<br>
                                        질의응답</td>
                                    <td>7교시</td>
                                    <td>18:30~19:30</td>
                                    <td>의무자습 / 주간TEST</td>    
                                </tr>
                                <tr>
                                    <th>8교시</th>
                                    <td>19:45~20:45</td>
                                    <td>8교시</td>
                                    <td>19:45~20:45</td>
                                    <td rowspan="2">의무자습<br>
                                        일과종료</td>
                                </tr>
                                <tr>
                                    <th>9교시</th>
                                    <td>21:00~23:00</td>
                                    <td>저녁 수업 / 의무 자습<br>
                                        일과종료 / 일일TEST</td>
                                    <td>9교시</td>
                                    <td class="b-r">21:00~22:00</td>
                                </tr>
                            </tbody>
                        </table>
                        <% Else %>
                        <table class="tbl-type01 tbl-center">
                            <colgroup>
                                <col style="width:11%;">
                                <col style="width:auto;">
                                <col style="width:25%;">
                                <col style="width:11%;">
                                <col style="width:auto;">
                                <col style="width:25%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>교시</th>
                                    <th>시간</th>
                                    <th>월 ~ 토요일</th>
                                    <th>교시</th>
                                    <th>시간</th>
                                    <th>일요일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="3">0교시</th>
                                    <td>06:30~07:40</td>
                                    <td>기상, 세면, 조식<br>
                                        자습관 입실</td>
                                    <th rowspan="3">0교시</th>
                                    <td>07:00~08:00</td>
                                    <td>기상, 세면, 조식<br>
                                        자습관 입실</td>
                                </tr>
                                <tr>
                                    <td>07:40~07:50</td>
                                    <td>자습관 인원 점검<br>
                                        (자리 이동 금지)</td>
                                    <td>08:00~08:10</td>
                                    <td>자습관 인원 점검<br>
                                        (자리 이동 금지)</td>
                                </tr>
                                <tr>
                                    <td>07:50~08:30</td>
                                    <td>학습계획서 작성<br>
                                        명상의 시간 / 수능체조</td>
                                    <td>08:10~08:30</td>
                                    <td>학습계획서 작성<br>
                                        명상의 시간 / 수능체조</td>
                                </tr>
                                <tr>
                                    <th>1교시</th>
                                    <td>08:40~09:40</td>
                                    <td rowspan="3">오전 수업 및 의무자습</td>
                                    <td>1교시</td>
                                    <td>08:40~09:40</td>
                                    <td rowspan="3">의무자습</td>
                                </tr>
                                <tr>
                                    <th>2교시</th>
                                    <td>09:55~10:55</td>
                                    <td>2교시</td>
                                    <td class="b-r">09:55~10:55</td>
                                </tr>
                                <tr>
                                    <th>3교시</th>
                                    <td>11:10~12:10</td>
                                    <td>3교시</td>
                                    <td class="b-r">11:10~12:10</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">점심시간(12:10~13:00)</th>
                                    <td class="bg-gray">점심식사</td>
                                    <td class="bg-gray" colspan="2">점심시간(12:10~13:00)</td>
                                    <td class="bg-gray">점심식사</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">영어듣기(13:00~13:20)</th>
                                    <td class="bg-gray">영어듣기 / 수능체조</td>
                                    <td>4교시</td>
                                    <td>13:10~14:20</td>
                                    <td>의무자습</td>
                                </tr>
                                <tr>
                                    <th>4교시</th>
                                    <td>13:30~14:30</td>
                                    <td rowspan="3">오후 수업 / 의무자습<br>
                                        질의 응답</td>
                                    <td rowspan="3">HEALING
                                        TIME</td>
                                    <td rowspan="3">14:30~16:50</td>
                                    <td rowspan="3">HEALING TIME 및<br>
                                        종교활동</td>
                                </tr>
                                <tr>
                                    <th>5교시</th>
                                    <td class="b-r">14:45~15:45</td>
                                </tr>
                                <tr>
                                    <th>6교시</th>
                                    <td class="b-r">16:00~17:00</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">담임시간(17:10~17:20)</th>
                                    <td class="bg-gray">자습 및 담임시간</td>
                                    <td class="bg-gray" colspan="2">담임시간(17:10~17:20)</td>
                                    <td class="bg-gray">자습 및 담임시간</td>
                                </tr>
                                <tr>
                                    <th class="bg-gray" colspan="2">저녁시간(17:20~18:10)</th>
                                    <td class="bg-gray">저녁식사 / 수능체조</td>
                                    <td class="bg-gray" colspan="2">저녁시간(17:20~18:10)</td>
                                    <td class="bg-gray">저녁식사 / 수능체조</td>
                                </tr>
                                <tr>
                                    <th>7교시</th>
                                    <td>18:30~19:30</td>
                                    <td rowspan="2">저녁수업 / 의무자습<br>
                                        질의응답</td>
                                    <td>7교시</td>
                                    <td>18:30~19:30</td>
                                    <td>의무자습 / 주간TEST</td>    
                                </tr>
                                <tr>
                                    <th>8교시</th>
                                    <td>19:45~20:45</td>
                                    <td>8교시</td>
                                    <td>19:45~20:45</td>
                                    <td rowspan="2">의무자습<br>
                                        일과 종료</td>
                                </tr>
                                <tr>
                                    <th>9교시</th>
                                    <td>21:00~23:00</td>
                                    <td>저녁수업 / 의무 자습<br>
                                        일일TEST / 일과종료</td>
                                    <td>9교시</td>
                                    <td class="b-r">21:00~22:00</td>
                                </tr>
                            </tbody>
                        </table>
                        <% End If %>
                    </div>
                    <div class="right">
                        <div class="daily-wrap">
                            <div class="swiper-container daily-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2024/system/cont02_img01.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/cont02_img02.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2024/system/cont02_img03.jpg" alt=""></div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                        <div class="daily-wrap">
                            <div class="swiper-container daily-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2024/system/cont02_img04.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2024/system/cont02_img05.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=img_path_yangji%>/2024/system/cont02_img06.jpg" alt=""></div>
                                </div>
                                <div class="swiper-pagination"></div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="swiper-wrap">
                    <div class="swiper-container slide-pic">
                        <div class="swiper-wrapper">
                            <% If sCampusCode = "CD0363" Then '최상위권기숙 %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop01_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide01_1.jpg" alt="">
                                    <p>수능체조</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop02.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide02.jpg" alt="">
                                    <p>담임선생님 종례</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop03_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide03_1.jpg" alt="">
                                    <p>명상의 시간</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop03_2.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide03_2.jpg" alt="">
                                    <p>식사 시간</p>
                                </a>
                            </div>
                            <!-- <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop04_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide04_1.jpg" alt="">
                                    <p>대치동 현장강의</p>
                                </a>
                            </div> -->
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop05_3.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide05_3.jpg" alt="">
                                    <p>100% 현장강의</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop06_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide06_1.jpg" alt="">
                                    <p>자습시간</p>
                                </a>
                            </div>
                            <% ElseIf sCampusCode = "CD0347" Then '남기숙 %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop01_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide01_1.jpg" alt="">
                                    <p>수능체조</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop02.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide02.jpg" alt="">
                                    <p>담임선생님 종례</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop03_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide03_1.jpg" alt="">
                                    <p>명상의 시간</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop03_2.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide03_2.jpg" alt="">
                                    <p>식사 시간</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop04_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide04_1.jpg" alt="">
                                    <p>대치동 현장강의</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop05_3.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide05_3.jpg" alt="">
                                    <p>현장강의</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop06_1.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide06_1.jpg" alt="">
                                    <p>자습시간</p>
                                </a>
                            </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop01.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide01.jpg" alt="">
                                    <p>수능체조</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop02.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide02.jpg" alt="">
                                    <p>자습시간</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop03.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide03.jpg" alt="">
                                    <p>담임선생님 종례</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop04.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide04.jpg" alt="">
                                    <p>현장강의</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont02_slide_pop05.jpg')">
                                    <img src="<%=imgUrl%>/cont02_slide05.jpg" alt="">
                                    <p>힐링타임</p>
                                </a>
                            </div>
                            <% End If %>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>
        </div>

        <div class="cont03">
            <div class="inner">
                <div class="tit" data-aos="fade-up">
                    <p class="txt">공부할 수밖에 없는 <%=txtCampus%>의</p>
                    <% If sCampusCode = "CD0347" or sCampusCode = "CD0363" Then '남기숙/최상위권기숙 %>
                    <p><img src="<%=img_path_russelsm%>/2024/system/cont03_tit.png" alt="학(學)습(習) 관리" /></p>
                    <% Else %>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont03_tit.png" alt="면학분위기 관리" /></p>
                    <% End If %>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont03_img.png" alt="" /></p>
                </div>

                <ul class="cont_list">
                    <li>
                        <div class="left">
                            <p>‘24 hour’ 시간 관리</p>
                        </div>
                        <div class="right">
                            <% If sCampusCode = "CD0347" Then '남기숙 %>
                            <p><strong>원내에서의 모든 생활 및 학습과 관련된 시간관리로 습(習)할 수밖에 없는 분위기 조성</strong></p>
                            <% Else %>
                            <p><strong>원내에서의 모든 생활 및 학습과 관련된 시간관리로 완벽한 면학분위기 조성</strong></p>
                            <% End If %>
                            <ul class="list-03 mt5">
                                <li>기상에서부터 자습, 수업, 식사 그리고 취침까지 규칙적인 생활을 할 수 있도록 시간 관리 지도</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>자습시간 항시 관리</p>
                        </div>
                        <div class="right">
                            <p><strong>담임선생님과 주간 학생관리선생님이 의무자습 시간 중 바른공부 자습전용관 면학분위기 관리를 위해<br>
                                지정된 장소에서 상주하여 항시 관리</strong></p>
                            <ul class="list-03 mt5">
                                <li>자습시간 중 수면 금지 지도</li>
                                <li>자습시간 중 실내 정숙 지도</li>
                                <li>인강 등 온라인 학습 외 태블릿PC 사용 시 교육점수(벌점) 부여 및 권고 퇴원</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>교육점수 제도 운영</p>
                        </div>
                        <div class="right">
                            <p><strong>최상의 면학분위기 조성을 위해 면학분위기 저해 요소에 대한 철저한 교육점수 제도 운영</strong></p>
                            <ul class="list-03 mt5">
                                <li>수업, 자습시간 중 이동, 입실시간 미준수, 실내정숙 위반 등 교육점수 부여</li>
                                <li>매일 누적된 교육점수 지정된 장소에 항상 게시</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>전자기기 및<br>
                                금지물품 관리</p>
                        </div>
                        <div class="right">
                            <p><strong>입학 및 외출 복귀 시 학습에 불필요한 전자기기 및 금지물품 수거 후 담임선생님이 보관</strong></p>
                            <ul class="list-03 mt5">
                                <li>금지물품을 사용하거나 소지 시 원내 규정에 따라 교육점수 부여 및 권고 퇴원</li>
                                <li>모든 금지물품은 퇴원 또는 외출 시 학생에게 전달</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>근신 및 권고 퇴원</p>
                        </div>
                        <div class="right">
                            <p><strong>교육점수 5점 이상 또는 즉시 심사 대상이 되는 경우 ‘원내 상벌 위원회’의 회의를 통한 근신 및 권고 퇴원 진행</strong></p>
                            <ul class="list-03 mt5">
                                <li>권고 퇴원 이력이 있는 학생 재입학 불가</li>
                                <li>대상 학생은 담임선생님이 학부모님께 해당 내용 전달</li>
                            </ul>
                        </div>
                    </li>
                </ul>

                <div class="swiper-wrap">
                    <div class="swiper-container slide-pic">
                        <div class="swiper-wrapper">
                            <% If sCampusCode = "CD0347" or sCampusCode = "CD0363" Then '남기숙/최상위권기숙 %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_russelsm%>/2024/system/cont03_slide_pop01.jpg')">
                                    <img src="<%=img_path_russelsm%>/2024/system/cont03_slide01.jpg" alt="">
                                    <p>핸드폰 수거</p>
                                </a>
                            </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_yangji%>/2024/system/cont03_slide_pop01.jpg')">
                                    <img src="<%=img_path_yangji%>/2024/system/cont03_slide01.jpg" alt="">
                                    <p>핸드폰 수거</p>
                                </a>
                            </div>
                            <% End If %>
                            <% If sCampusCode = "CD0347" Then '남기숙 %>
                            <div class="swiper-slide">
                                <a href="<%=download_url07%>" download>
                                    <img src="<%=img_path_russelsm%>/2024/system/cont03_slide07.jpg" alt="">
                                    <p>강제 퇴원 공고</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="<%=download_url08%>" download>
                                    <img src="<%=img_path_russelsm%>/2024/system/cont03_slide08.jpg" alt="">
                                    <p>교육점수 규정</p>
                                </a>
                            </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <a href="<%=download_url06%>" download>
                                    <img src="<%=img_path_yangji%>/2024/system/cont03_slide02.jpg" alt="">
                                    <p>강제 퇴원 공고</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont03_slide_pop03.jpg')">
                                    <img src="<%=imgUrl%>/cont03_slide03.jpg" alt="">
                                    <p>교육점수 규정</p>
                                </a>
                            </div>
                            <% End If %>
                            <% If sCampusCode = "CD0347" Then '남기숙 %>
                            <div class="swiper-slide">
                                <a href="<%=download_url09%>" download>
                                    <img src="<%=img_path_russelsm%>/2024/system/cont03_slide09.jpg" alt="">
                                    <p>교육점수 세부규정</p>
                                </a>
                            </div>
                            <% End If %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont03_slide_pop04.jpg')">
                                    <img src="<%=imgUrl%>/cont03_slide04.jpg" alt="">
                                    <p>자습관 상시 관리</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont03_slide_pop05.jpg')">
                                    <img src="<%=imgUrl%>/cont03_slide05.jpg" alt="">
                                    <p>전체 관리(중앙 방송 통제)</p>
                                </a>
                            </div>
                        </div>
                        <div class="swiper-button-next">
                        </div>
                        <div class="swiper-button-prev">
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="cont04 js-cont">
            <div class="inner">
                <div class="tit" data-aos="fade-up">
                    <p class="txt">올바른 학습의 시작,</p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont04_tit.png" alt="담임선생님의 1:1 학습관리" /></p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont04_img.png" alt="" /></p>
                </div>

                <ul class="cont_list">
                    <li>
                        <div class="left">
                            <p>러셀 학습 플래너 관리</p>
                        </div>
                        <div class="right">
                            <p><strong>주기적으로 러셀 학습 플래너 점검을 통해 과목별 학습 밸런스 및 시기별 학습 목표에 대한 담임선생님과의 1:1 상담 진행</strong></p>
                            <ul class="list-03 mt5">
                                <li>시기별 러셀 학습 플래너 작성/효과 등에 대한 담임선생님의 교육 진행</li>
                                <li>시간, 학습 그리고 자기 관리에 도움이 되도록 작성되는지 담임선생님이 주기적으로 확인</li>
                                <li>전체 재원기간 러셀 학습 플래너 제공</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>러셀 일일수학 30제</p>
                        </div>
                        <div class="right">
                            <p><strong>담임선생님의 상담 등을 통해 매일 일정한 양의 수학 문제를 연습할 수 있도록 관리</strong></p>
                            <ul class="list-03 mt5">
                                <li>과목 특성상 실수가 많이 발생 할 수 있는데 러셀 일일수학 30제의 활용은 이를 효과적으로 줄일 수 있는 검증된 시스템입니다.</li>
                                <li>수학의 양적인 학습 뿐만 아니라 질적인 학습을 할 수 있도록 도움을 줍니다.</li>
                                <li>전체 재원기간 러셀 일일수학 30제 제공</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>학습 계획 수립</p>
                        </div>
                        <div class="right">
                            <p><strong>일일 러셀 학습 플래너 뿐만 아니라 주간 및 월간 계획 그리고 중장기 계획까지 담임선생님이 직접 검토 후 상담 진행</strong></p>
                            <ul class="list-03 mt5">
                                <li>시기별 / 과목별 학습법 상담 진행</li>
                                <li>학습법 뿐만 아니라 학생별 수준과 성향에 맞는 학습 교재에서부터 온라인 강의 추천 그리고 중장기적인 학습방향까지 제시</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>러셀 총평노트</p>
                        </div>
                        <div class="right">
                            <p><strong>사설/평가원 모의고사 시행 전/후 스스로 오답 문제 유형 및 성적을 확인하고 이를 활용한 담임선생님과의 상담 진행</strong></p>
                            <ul class="list-03 mt5">
                                <li>모의고사 전 시험을 맞이하는 마음가짐, 운영계획, 시간분배, 돌발상황 등을 생각해 보는<br>
                                    ‘결전의 그날(모의고사 진행 계획표)’을 작성해 실제 시험에서 자신의 실력을 100% 발휘할 수 있도록 합니다.</li>
                                <li>모의고사 후 자신이 틀린 문제의 구체적인 원인과 시험 난이도 그리고 심리상태 등을 객관적으로 파악하여<br>
                                    ‘러셀 총평노트’를 작성하도록 지도합니다.</li>
                                <li>담임선생님은 ‘결전의 그날’과 ‘러셀 총평노트’를 통해 학생의 유형별 장단점을 파악하고 학습방향을 제시합니다.</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>성적관리</p>
                        </div>
                        <div class="right">
                            <p><strong><%=txtCampus02%>의 성적관리프로그램을 통해 본인 위치 및 취약 유형/파트의 확인을 통한<br>
                                담임선생님과의 상담 진행</strong></p>
                            <ul class="list-03 mt5">
                                <li>실성적표 배부 전 가채점 기준 1차 상담과 실채점 기준 2차 상담 진행</li>
                                <li>메가스터디 자체 빅데이터 기반의 시스템을 이용하여 지속적으로 성적을 관리</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>질의응답</p>
                        </div>
                        <div class="right">
                            <p><strong>학습 중 궁금한 사항이 생기면 출강 강사진 및 과목별 전담 질의응답 강사와의 1:1 학습 질의응답 가능</strong></p>
                            <ul class="list-03 mt5">
                                <li>질의응답은 사전 예약을 통해 이뤄지며, 학습내용 뿐 아니라 학습법과 학습방향에 대한 상담도 진행</li>
                                <li>기본적으로 학생의 수업을 전담하는 강사에게 질의응답 진행</li>
                                <li>수업 강사 외에도 전문 질의응답 강사가 상주하여 학생의 질의응답을 원활하게 도움</li>
                                <li>태블릿을 이용한 온라인 질의응답도 가능</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>승/강반 시스템</p>
                        </div>
                        <div class="right">
                            <p><strong>강력한 학습 동기부여를 위해 연간 3회 승반, 강반 시스템 운영</strong></p>
                            <ul class="list-03 mt5">
                                <li>연간 총 3회 진행 [1차: 5월(3/4월 모의고사 점수 평균), 2차: 7월(5/6월 모의고사 점수 평균),  3차: 9월(7/8월 모의고사 점수 평균)]</li>
                                <li>승강반이 진행되는 해당 월까지의 모의고사 점수 평균치와 담임선생님의 학생 평가가<br>
                                    각각 70%와 30%씩 반영되어 승강반이 결정</li>
                                <li>담임선생님 변경 시 기존 학생 관리 자료는 모두 변경된 담임선생님께 이관됩니다.</li>
                            </ul>
                        </div>
                    </li>
                </ul>

                <div class="swiper-wrap">
                    <div class="swiper-container slide-pic">
                        <div class="swiper-wrapper">
                            <% If sCampusCode = "CD0347" or sCampusCode = "CD0363" Then '남기숙/최상위기숙 %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_russelsm%>/2024/system/cont04_slide_pop01.jpg')">
                                    <img src="<%=img_path_russelsm%>/2024/system/cont04_slide01.jpg" alt="">
                                    <p>러셀 학습 플래너 작성</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_russelsm%>/2024/system/cont04_slide_pop02.jpg')">
                                    <img src="<%=img_path_russelsm%>/2024/system/cont04_slide02.jpg" alt="">
                                    <p>러셀 학습 플래너 점검</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop03.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide03.jpg" alt="">
                                    <p>러셀 일일수학 30제(1)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop04.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide04.jpg" alt="">
                                    <p>러셀 일일수학 30제(2)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_russelsm%>/2024/system/cont04_slide_pop05_2.jpg')">
                                    <img src="<%=img_path_russelsm%>/2024/system/cont04_slide05_2.jpg" alt="">
                                    <p>러셀 총평노트</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_yangji%>/2024/system/cont04_slide_pop06.jpg')">
                                    <img src="<%=img_path_yangji%>/2024/system/cont04_slide06.jpg" alt="">
                                    <p>결전의 그날(1)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_yangji%>/2024/system/cont04_slide_pop07.jpg')">
                                    <img src="<%=img_path_yangji%>/2024/system/cont04_slide07.jpg" alt="">
                                    <p>결전의 그날(2)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_russelsm%>/2024/system/cont04_slide_pop08.jpg')">
                                    <img src="<%=img_path_russelsm%>/2024/system/cont04_slide08.jpg" alt="">
                                    <p>질의응답</p>
                                </a>
                            </div>
                                <div class="swiper-slide">
                                    <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop09.jpg')">
                                        <img src="<%=imgUrl%>/cont04_slide09.jpg" alt="">
                                        <p>승/강반 시스템</p>
                                    </a>
                                </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop01.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide01.jpg" alt="">
                                    <p>러셀 학습 플래너 작성</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop02.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide02.jpg" alt="">
                                    <p>러셀 학습 플래너 점검</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop03.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide03.jpg" alt="">
                                    <p>러셀 일일수학 30제(1)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop04.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide04.jpg" alt="">
                                    <p>러셀 일일수학 30제(2)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop05.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide05.jpg" alt="">
                                    <p>러셀 총평노트</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_yangji%>/2024/system/cont04_slide_pop06.jpg')">
                                    <img src="<%=img_path_yangji%>/2024/system/cont04_slide06.jpg" alt="">
                                    <p>결전의 그날(1)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=img_path_yangji%>/2024/system/cont04_slide_pop07.jpg')">
                                    <img src="<%=img_path_yangji%>/2024/system/cont04_slide07.jpg" alt="">
                                    <p>결전의 그날(2)</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop08.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide08.jpg" alt="">
                                    <p>질의응답</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont04_slide_pop09.jpg')">
                                    <img src="<%=imgUrl%>/cont04_slide09.jpg" alt="">
                                    <p>승/강반 시스템</p>
                                </a>
                            </div>
                            <% End If %>
                        </div>
                        <div class="swiper-button-next">
                        </div>
                        <div class="swiper-button-prev">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="cont05 js-cont">
            <div class="inner">
                <div class="tit" data-aos="fade-up">
                    <p class="txt">합격을 위한 입시전문가의 전략,</p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont05_tit.png" alt="입시전략 컨설팅" /></p>
                    <p><img src="<%=img_path_yangji%>/2024/system/cont05_img.png" alt="" /></p>
                </div>

                <ul class="cont_list">
                    <li>
                        <div class="left">
                            <p>수시 컨설팅</p>
                        </div>
                        <div class="right">
                            <p><strong>학생 개인의 생활기록부와 6월, 9월 평가원 성적 및 누적된 모의고사 성적을 기준으로 지원 전략 수립</strong></p>
                            <ul class="list-03 mt5">
                                <li>생활기록부 분석을 통해 비교과전형 지원 가능 대학을 원점에서 검토</li>
                                <li>메가스터디 러셀 입시전략연구소의 누적된 입시 결과 빅데이터 및 포트폴리오 활용</li>
                                <li>최고의 수시 지원 포트폴리오 구성으로 최상의 입시 결과를 만들어 냅니다.</li>
                                <li>학부모님 희망시 1:1 방문 상담 진행</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>정시 컨설팅</p>
                        </div>
                        <div class="right">
                            <p><strong>메가스터디 풀서비스 지원 현황 및 과년도 입시 결과 빅데이터 Base를 통한<br>
                                담임선생님의 정밀한 분석, 대학/학과 지원 전략 상담 서비스 제공</strong></p>
                            <ul class="list-03 mt5">
                                <li>수능 이후 가채점 결과를 토대로 수시 전형 응시 여부 상담 진행</li>
                                <li>실성적표 발표 후 가이드라인을 잡기 위한 상담 진행</li>
                                <li>연말에 방문 또는 유선 상담을 통해 학생의 지원 성향에 맞추어 최상의 지원 전략을 수립<br>
                                    (예) 가군: 안정, 나군: 소신, 다군: 상향 / 가군: 소신, 나군: 소신, 다군: 상향 등</li>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div class="left">
                            <p>입시 교육</p>
                        </div>
                        <div class="right">
                            <p><strong>검증된 입시 전문 담임선생님의 시기별 입시 관련 교육 진행</strong></p>
                            <ul class="list-03 mt5">
                                <li>학생들에게 입시 경향 및 앞으로의 전략 등을 수립할 수 있는 다양한 정보 제공</li>
                                <li>입시 전문 담임선생님은 주2회 주기적인 교육 및 토의를 통해 입시 컨설팅 능력을 향상시키고 있습니다.</li>
                                <li>모든 입시 전문 담임선생님들은 연간 2회 공정성이 담보된 ‘입시 소양 평가’를 통해 실력을 검증받고 있습니다.</li>
                            </ul>
                        </div>
                    </li>
                </ul> 

                <div class="swiper-wrap">
                    <div class="swiper-container slide-pic">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont05_slide_pop01_1.jpg')">
                                    <img src="<%=imgUrl%>/cont05_slide01_1.jpg" alt="">
                                    <p>수시 지원 포트폴리오</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont05_slide_pop02_1.jpg')">
                                    <img src="<%=imgUrl%>/cont05_slide02_1.jpg" alt="">
                                    <p>정시 지원 포트폴리오</p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont05_slide_pop03.jpg')">
                                    <img src="<%=imgUrl%>/cont05_slide03.jpg" alt="">
                                    <p><%=cont05_txt03%></p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont05_slide_pop04_1.jpg')">
                                    <img src="<%=imgUrl%>/cont05_slide04_1.jpg" alt="">
                                    <p><%=cont05_txt04%></p>
                                </a>
                            </div>
                            <div class="swiper-slide">
                                <a href="javascript:void(0);" onclick="imgPop('<%=imgUrl%>/cont05_slide_pop05.jpg')">
                                    <img src="<%=imgUrl%>/cont05_slide05.jpg" alt="">
                                    <p><%=cont05_txt05%></p>
                                </a>
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //contents -->
</div>

<script src="/common/js/aos.js"></script>
<script src="./ui.js"></script>
<script>

    //aos fadeup 효과
    AOS.init({
                
		offset: 300,
		duration: 2000,
		easing: 'ease-out-cubic',
		delay: 0
	});

</script>
</body>
</html>