<%
tit_01 = "개강일"
txt_01 = "7월 순차 개강"
tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수 | 현재 모집 중<span>* 자세한 내용은 학원별 모집 요강 참조</span>"
tit_03 = ""
txt_03 = ""

url_result = "/perfect/2023/susi/index.asp"

url_special = "/intro/danka/2023/04/summer.asp"
url_regular = "/intro/danka/2023/07/go3.asp"

url_quel = "/event/2021/quel/default.asp"
url_premium = "/intro/2022/premium/index.asp"
url_weekly = "/intro/2022/weekly/index.asp"
url_month = "/intro/info/2022/monthly/index.asp"

tab_name = "core"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    Case "CD0247": '강남
                   txt_campus = "러셀 강남"
                   campusName = "cont_gn"
                   tit_01 = "모집 현황"
                   txt_01 = "<p class='color-red f14'>전 학년 마감 (대기 접수 불가)</p>"
                   tit_02 = "운영 기간"
                   txt_02 = "7/17(월) ~ 8/15(화)"
                   tab_name = "russel"
                   url_result = "https://mrusselgn.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1365"
                   url_special2 = "https://mrusselgn.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=262"
                   url_regular = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1348"

                   url_quel = "https://mrusselgn.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselgn.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselgn.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0001": '대치
                   txt_campus = "러셀 대치"
                   campusName = "cont_dc"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2"
                   tit_02 = "개강일"
                   txt_02 = "7월 순차 개강"
                   tit_03 = "접수 방법"
                   txt_03 = "현장 또는 온라인 접수"
                   tab_name = "russel"
                   url_result = "https://mrusseldc.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1366"
                   url_regular = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1349"

                   url_quel = "https://mrusseldc.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusseldc.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusseldc.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0245": '목동
                   txt_campus = "러셀 목동"
                   campusName = "cont_md"
                   tit_01 = "모집 대상"
                   txt_01 = "고3"
                   tit_02 = "썸머스쿨 기간"
                   txt_02 = " 7/17(월) ~ 8/15(화)"
                   tit_03 = "접수 방법"
                   txt_03 = "온라인 전형 접수 ㅣ 마감 (대기자 접수 중)"
                   tab_name = "russel"
                   url_result = "https://mrusselmd.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1367"
                   url_regular = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1350"

                   url_quel = "https://mrusselmd.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselmd.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselmd.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0250": '부천
                   txt_campus = "러셀 부천"
                   campusName = "cont_bc"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2, 고1, 중3"
                   tit_02 = "개강일"
                   txt_02 = "7/17(월)부터 순차 개강"
                   tit_03 = "접수 방법"
                   txt_03 = "대기 접수 중<br><br>① 현 재원생 : 사전예약금 납부<br> (3층 입학처 문의)<br>② 신규생 : 온라인 원서접수 후 사전예약금 납부(현장/유선)"
                   tab_name = "russel"
                   url_result = "https://mrusselbc.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1368"
                   url_special2 = "https://mrusselbc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=263"
                   url_regular = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1351"
                   url_quel = "https://mrusselbc.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselbc.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselbc.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0244": '분당
                   txt_campus = "러셀 분당"
                   campusName = "cont_bd"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2"
                   tit_02 = "운영 기간"
                   txt_02 = "7/17(월) ~ 8/15(화)"
                   txt_04 = "7/17(월) ~ 8/15(화) [4주 완성]"
                   tit_03 = "접수 방법"
                   txt_03 = "전석 마감, 대기자 접수 中"
                   tab_name = "russel"
                   url_result = "https://mrusselbd.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1369"
                   url_regular = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1352"

                   url_quel = "https://mrusselbd.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselbd.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselbd.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0246": '센텀
                   txt_campus = "러셀 센텀"
                   campusName = "cont_ct"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2, 고1"
                   tit_02 = "개강일"
                   txt_02 = "7/15(토) 개강"
                   tit_03 = "접수 방법"
                   txt_03 = "현장 또는 온라인 접수 | 대기 접수 중"
                   tab_name = "russel"
                   url_result = "https://mrusselct.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1371"
                   url_regular = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1358"

                   url_quel = "https://mrusselct.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselct.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselct.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0249": '영통
                   txt_campus = "러셀 영통"
                   campusName = "cont_yt"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2, 고1"
                   tit_02 = "썸머기간"
                   txt_02 = "7/15(토)~8/20(일)"
                   tit_03 = "접수 방법"
                   txt_03 = "사전접수 마감<br>온라인 대기 접수 중"
                   tab_name = "russel"
                   url_result = "https://mrusselyt.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusselyt.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=264"
                   url_regular = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1353"

                   url_quel = "https://mrusselyt.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselyt.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselyt.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0257": '중계
                   txt_campus = "러셀 중계"
                   campusName = "cont_jg"
                   tit_01 = "모집 대상"
                   txt_01 = "고1, 고2, 고3"
                   tit_02 = "개강일"
                   txt_02 = "1차 : 7/15(토)<br>2차 : 7/17(월)~8/13(일)"
                   tit_03 = "접수 방법"
                   txt_03 = "전석 마감"
                   tab_name = "russel"
                   url_result = "https://mrusseljg.megastudy.net/russel_jg/event/2023/hero/index.asp"

                   url_special = "https://mrusseljg.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=265"
                   url_regular = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1354"

                   url_quel = "https://mrusseljg.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusseljg.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusseljg.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0248": '평촌
                   txt_campus = "러셀 평촌"
                   campusName = "cont_pc"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2, 고1"
                   tit_02 = "개강일"
                   txt_02 = "7/15(토) 개강"
                   tit_03 = "접수 방법"
                   txt_03 = "사전예약 마감 / 대기자 접수 중(유선/현장)"
                   tab_name = "russel"
                   url_result = "https://mrusselpc.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusselpc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=266"
                   url_regular = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1355"

                   url_quel = "https://mrusselpc.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselpc.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselpc.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0342": '대구
                   txt_campus = "러셀 대구"
                   campusName = "cont_dg"
                   <!-- txt_02 = "현장 또는 온라인 접수 <a href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=155' class='bt-gray-s btn-pc'>원서접수 바로가기</a>" -->
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2"
                   tit_02 = "운영 기간"
                   txt_02 = "7/17(월)~8/13(일)"
                   tit_03 = "접수 방법"
                   txt_03 = "온라인 접수"
                   tab_name = "core"
                   url_result = "https://mrusseldg.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1370"
                   url_regular = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1356"

                   url_quel = "https://mrusseldg.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusseldg.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mrusseldg.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mrusseldg.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0340": '코어광주
                   txt_campus = "러셀CORE 광주"
                   campusName = "cont_gj"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2, 고1"
                   tit_02 = "개강일"
                   txt_02 = "7월 17일(월) 개강"
                   tit_03 = "접수 방법"
                   txt_03 = "현장  접수 | 현재 모집  중"
                   tab_name = "core"
                   url_result = "https://mcoregj.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1372"
                   url_regular = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1359"

                   url_quel = "https://mcoregj.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mcoregj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcoregj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcoregj.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0341": '코어대전
                   txt_campus = "러셀CORE 대전"
                   campusName = "cont_dj"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2"
                   tit_02 = "개강일"
                   txt_02 = "7월 18일(화)"
                   tit_03 = "접수 방법"
                   txt_03 = "현장 또는 온라인 접수"
                   tab_name = "core"
                   url_result = "https://mcoredj.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1373"
                   url_regular = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1360"

                   url_quel = "https://mcoredj.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mcoredj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcoredj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcoredj.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0343": '코어원주
                   txt_campus = "러셀CORE 원주"
                   campusName = "cont_wj"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2, 고1"
                   tit_02 = "개강일"
                   txt_02 = "7월 17일 (월)"
                   tit_03 = "접수 방법"
                   txt_03 = "현장 또는 온라인 접수"
                   tab_name = "core"
                   url_result = "https://mcorewj.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1374"
                   url_regular = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1361"

                   url_quel = "https://mcorewj.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mcorewj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcorewj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcorewj.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0344": '코어전주
                   txt_campus = "러셀CORE 전주"
                   campusName = "cont_jj"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2"
                   tit_02 = "개강일"
                   txt_02 = "7월 17일 (월)"
                   tit_03 = "접수 방법"
                   txt_03 = "현장 또는 온라인 접수"
                   tab_name = "core"
                   url_result = "https://mcorejj.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1375"
                   url_regular = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1362"

                   url_quel = "https://mcorejj.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mcorejj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcorejj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcorejj.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0345": '코어창원
                   txt_campus = "러셀CORE 창원"
                   campusName = "cont_cw"
                   tit_01 = "모집 대상"
                   txt_01 = "고3,고2,고1"
                   tit_02 = "개강일"
                   txt_02 = "7/18(화) 개강"
                   tit_03 = "접수 방법"
                   txt_03 = "현장 또는 온라인 접수 | 현재 모집 중"
                   tab_name = "core"
                   url_result = "https://mcorecw.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1375"
                   url_regular = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1363"

                   url_quel = "https://mcorecw.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mcorecw.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcorecw.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcorecw.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0346": '코어청주
                   txt_campus = "러셀CORE 청주"
                   campusName = "cont_cj"
                   tit_01 = "모집 대상"
                   txt_01 = "고3, 고2, 고1"
                   tit_02 = "개강일"
                   txt_02 = "7/17(월)"
                   tit_03 = "접수 방법"
                   txt_03 = "현장 또는 온라인 접수"
                   tab_name = "core"
                   url_result = "https://mcorecj.megastudy.net/perfect/2023/susi/index.asp"

                   url_special = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1377"
                   url_regular = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1364"

                   url_quel = "https://mcorecj.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mcorecj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcorecj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcorecj.megastudy.net/intro/info/2022/monthly/index.asp"
    case else: ' 기타 학원 에러 방지
                    campusName = "else"                   


End Select
%>

<div class="visual-wrap">
    <p class="img-bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/summer/visual_01.jpg" alt="썸머스쿨 배경"></p>

    <!-- <p class="v-txt txt-01">최상위권이 집결하는 <% IF isCore = 1 Then %>러셀CORE<% Else %>러셀<% End If %></p> -->
    <p class="v-txt txt-02">짧은 <strong>여름방학을 성공적</strong>으로 보내는 방법, <br> 면학분위기로 소문난 <strong><% IF isCore = 1 Then %>러셀CORE<% Else %>러셀<% End If %>에서 경쟁하는 것</strong>입니다.</p>
    <ul class="info-box">
        <li>
            <p class="<%=campusName%>"><%=tit_01%></p>
            <p><%=txt_01%></p>
        </li>

        <li>
            <p class="<%=campusName%>"><%=tit_02%></p>
            <p><%=txt_02%></p>
        </li>
    </ul>

</div>



