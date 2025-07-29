<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<!DOCTYPE html>
<html lang="ko">
<head>
	<!-- #include virtual = "/inc/head.asp" -->
	<link rel="stylesheet" type="text/css" href="/css/2024/danka_2024.css" media="all" />

</head>
<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 추석 집중 특강</strong>
</h2>
<section class="sub-wrap danka-wrap">
    <!--visual-->
	<div class="danka chuseok25">
        <!-- <div class="top-txt">
        <p class="grade">고3 / N수</p>
        </div>                             -->
        <div class="vis-info">            
            <dl>
                <dt>개설 과목</dt>
                <dd>국어, 수학, 영어, 탐구, 논술</dd>
            </dl>
            <dl>
                <dt>수업 기간</dt>
                <dd>9월 14일(토) ~ 9월 18일(수)</dd>
            </dl>
            <p>※ 학원별 개설 과목과 수업 기간은 상이할 수 있습니다.</p>
        </div>
        <p class="img">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/danka/2024/09/chuseok_visual.jpg" alt="">
        </p>
	</div>
    <!--//visual-->

    <!--학원별 모집안내-->
    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/danka/2020/danka_07_02.jpg" alt="학원별 모집안내"></p>
    <ul class="danka-list-wrap">
        <li>
            <span class="box"><strong>러셀 강남</strong><br>02) 6954-1010</span>
            <span class="box">
                <a href="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1715" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 대치</strong><br>02) 2138-1010</span>
            <span class="box">
                <a href="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1716" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 목동</strong><br>02) 6932-1010</span>
            <span class="box">
                <a href="https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1717" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 부천</strong><br>032) 265-1010</span>
            <span class="box">
                <a href="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1718" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 분당</strong><br>031) 629-1010</span>
            <span class="box">
                <a href="https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1719" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 영통</strong><br>031) 251-1010</span>
            <span class="box">
                <a href="https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1720" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 중계</strong> <br>02) 6316-1010</span>
            <span class="box">
                <a href="https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1721" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 평촌</strong><br>031) 341-6500</span>
            <span class="box">
                <a href="https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1722" target="_blank">고3/N수</a>
                <a href="https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1783" target="_blank">고1/고2</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 대구</strong> <strong class="color-red f11">N</strong><br>053) 291-1010</span>
            <span class="box">
                <a href="https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1723" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 센텀</strong><br>051) 715-1010</span>
            <span class="box">
                <a href="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1724" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀 울산</strong> <strong class="color-red f11">N</strong><br>052) 913-1010</span>
            <span class="box">
                <a href="https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1725" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀CORE 광주</strong><br>062) 462-1010</span>
            <span class="box">
                <a href="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1726" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀CORE 대전</strong><br>042) 381-2020</span>
            <span class="box">
                <a href="https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1727" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀CORE 원주</strong> <strong class="color-red f11">N</strong><br>033) 901-2020</span>
            <span class="box">
                <a href="https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1728" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀CORE 전주</strong> <strong class="color-red f11">N</strong><br>063) 905-3030</span>
            <span class="box">
                <a href="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1729" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀CORE 창원</strong> <strong class="color-red f11">N</strong><br>055) 605-1010</span>
            <span class="box">
                <a href="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1730" target="_blank">시간표 바로가기</a>
            </span>
        </li>
        <li>
            <span class="box"><strong>러셀CORE 청주</strong> <strong class="color-red f11">N</strong><br>043) 908-1010</span>
            <span class="box">
                <a href="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1731" target="_blank">시간표 바로가기</a>
            </span>
        </li>
    </ul>
    <!--//학원별 모집안내-->

    <p class="text-align-center pt20 pb10">학원별 강사진 및 시간표 등 자세한 내용은 <br> 각 학원 사이트에서 확인하시기 바랍니다. </p>

    <!--하단 내역-->
    <p><a href="<%=pc_url%>intro/danka/2024/09/chuseok.asp"  class="bt-pc" target="_blank">PC페이지로 이동</a></p>
    <!--//하단 내역-->
</section>
<!-- #include virtual = "/inc/footer.asp" -->
</body>
</html>