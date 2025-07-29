<%
tit_01 = "모집 대상"
txt_01 = "N수, 고3"
tit_02 = "개강일"
txt_02 = "11월 순차 개강"
tit_03 = "접수 방법"
txt_03 = ""
tit_04 = ""
txt_04 = ""

apply_btn = ""

url_final = "https://mrussel.megastudy.net/intro/danka/2023/09/go3.asp"
url_am = "https://mrussel.megastudy.net/intro/danka/2023/10/am.asp"
url_non = "https://mrussel.megastudy.net/intro/danka/2023/09/non.asp"

url_quel ="https://mrussel.megastudy.net/event/2021/quel/default.asp"
url_premium = "https://mrussel.megastudy.net/intro/2022/premium/index.asp"
url_weekly = "https://mrussel.megastudy.net/intro/2022/weekly/index.asp"
url_month = "https://mrussel.megastudy.net/intro/info/2022/monthly/index.asp"

tab_name = "core"
campusName = "intro"
img_name = "intro"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	' method.asp 인클루드 안한 페이지에서 오류날 수 있지만, 안쓰는 페이지가 없을거라 가정

    Case "CD0247": '강남
                   txt_campus = "러셀 강남"
                   campusName = "cont_gn"
                   tab_name = "russel"
                   img_name = "russel_gn"
                   txt_02 = "상시 입학<br>(매월 1일 또는 매주 월/ 목)"
                   txt_03 = "온라인 접수"


                   apply_btn = "<a href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159' class='btn-pc btn-link mt20'>원서접수 바로가기</a>"

                   url_final = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1409"
                   url_am = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1468"
                   url_non = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1494"
                   url_quel ="https://mrusselgn.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselgn.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselgn.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0001": '대치
                   txt_campus = "러셀 대치"
                   campusName = "cont_dc"
                   tab_name = "russel"
                   img_name = "russel"
                   url_non = "추후 오픈 예정입니다."
                   txt_02 = "9월 순차 개강"

    Case "CD0245": '목동
                   txt_campus = "러셀 목동"
                   campusName = "cont_md"
                   tab_name = "russel"
                   img_name = "russel_md"
                   url_non = "추후 오픈 예정입니다."
                   txt_02 = "9월 순차 개강"

    Case "CD0250": '부천
                   txt_campus = "러셀 부천"
                   campusName = "cont_bc"
                   tab_name = "bc"
                   img_name = "russel_bc"
                   txt_01 = "N수"
                   txt_02 = "매월 초 순차 개강"
                   txt_03 = "현장 접수 ㅣ 모집요강 지원자격 해당자 순 접수"
                   tit_04 = "입학 문의"
                   txt_04 = "<a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s'>온라인 상담</a> ㅣ 전화 상담 032.265.1010"

                   url_final = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1412"
                   url_am = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1471"
                   url_non = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1497"
                   url_quel ="https://mrusselbc.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselbc.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselbc.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0244": '분당
                   txt_campus = "러셀 분당"
                   campusName = "cont_bd"
                   tab_name = "russel"
                   img_name = "russel_bd"
                   tit_02 = "접수 기간"
                   txt_02 = "전석 마감, 대기자 접수 中<br>(*모집요강 지원자격 해당자 순 접수)"
                   tit_03 = "접수 방법"
                   txt_03 = "온라인 대기 접수 후 성적표 제출<br><span class='f11'>*온라인 대기 접수를 완료하면 이후 대기 순서에 따라 입학 절차를 개별적으로 안내해드립니다.</span>"


                   url_final = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1413"
                   url_am = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1472"
                   url_non = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1498"
                   url_quel ="https://mrusselbd.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusselbd.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselbd.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0246": '센텀
                   txt_campus = "러셀 센텀"
                   campusName = "cont_ct"
                   tab_name = "russel"
                   img_name = "russel_ct"
                   txt_01 = "N수"
                   txt_02 = "9/1(금) 개강"
                   txt_03 = "현장 또는 온라인 접수 ㅣ 현재 모집 중"

                   url_final = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1419"
                   url_am = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1477"
                   url_quel ="https://mrusselct.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1503"
                   url_premium = "https://mrusselct.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselct.megastudy.net/intro/info/2022/monthly/index.asp"


    Case "CD0249": '영통
                   txt_campus = "러셀 영통"
                   campusName = "cont_yt"
                   tab_name = "russel"
                   img_name = "russel_yt"
                   txt_02 = "10월 순차 개강"
                   txt_03 = "현장 접수"
                   tit_04 = "유의사항"
                   txt_04 = "* 학원으로 잔여석을 확인해 주시기 바랍니다."
                   
                   url_final = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1414"
                   url_am = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1473"
                   url_quel ="https://mrusselyt.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1499"
                   url_premium = "https://mrusselyt.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselyt.megastudy.net/intro/info/2022/monthly/index.asp"

    Case "CD0257": '중계
                   txt_campus = "러셀 중계"
                   campusName = "cont_jg"
                   tab_name = "russel"
                   img_name = "russel_jg"
                   txt_01 = "N수"
                   txt_02 = "매월 초 개강"
                   txt_03 = "현장 접수 ㅣ 대기자 접수 중"

                   url_final = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1415"
                   url_am = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1474"
                   url_non = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1500"
                   url_quel ="https://mrusseljg.megastudy.net/event/2021/quel/default.asp"
                   url_premium = "https://mrusseljg.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusseljg.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0248": '평촌
                   txt_campus = "러셀 평촌"
                   campusName = "cont_pc"
                   tab_name = "russel"
                   img_name = "russel_pc"
                   txt_03 = "현장 접수 ㅣ 현재 모집 중"
                   txt_02 = "10월 순차 개강"
                   url_final = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1416"
                   url_am = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1475"
                   url_quel ="https://mrusselpc.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1501"
                   url_premium = "https://mrusselpc.megastudy.net/intro/2022/premium/index.asp"
                   url_month = "https://mrusselpc.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0342": '대구
                   txt_campus = "러셀 대구"
                   campusName = "cont_dg"
                   img_name = "russel_dg"
                   txt_03 = "온라인 접수 ㅣ 현재 모집 중"
                   txt_02 = "10월 순차 개강"
                   url_final = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1417"
                   url_am = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1476"
                   url_quel ="https://mrusseldg.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1502"
                   url_premium = "https://mrusseldg.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mrusseldg.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mrusseldg.megastudy.net/intro/info/2022/monthly/index.asp"


	Case "CD0340": '코어광주
                   txt_campus = "러셀CORE 광주"
                   campusName = "cont_gj"
                   img_name = "core_gj"
                   txt_03 = "현장 접수 ㅣ 현재 모집 중"
                   txt_02 = "9월 순차 개강"
                   url_final = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1420"
                   url_quel ="https://mcoregj.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1504"
                   url_premium = "https://mcoregj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcoregj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcoregj.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0341": '코어대전
                   txt_campus = "러셀CORE 대전"
                   campusName = "cont_dj"
                   img_name = "core_dj"
                   txt_01 = "N수, 고3, 고2"
                   txt_02 = "9월 순차 개강"
                   txt_03 = "현장 또는 온라인 접수 ㅣ 현재 모집 중"
                   apply_btn = "<a href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=158' class='btn-pc btn-link mt20'>원서접수 바로가기</a>"
                   url_final = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1421"
                   url_quel ="https://mcoredj.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1505"
                   url_premium = "https://mcoredj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcoredj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcoredj.megastudy.net/intro/info/2022/monthly/index.asp"


	Case "CD0343": '코어원주
                   txt_campus = "러셀CORE 원주"
                   campusName = "cont_wj"
                   img_name = "core_wj"
                   txt_02 = "9월 순차 개강"
                   url_final = ""
                   url_quel =""

                   url_non = ""
                   url_premium = ""
                   url_weekly = ""
                   url_month = ""

	Case "CD0344": '코어전주
                   txt_campus = "러셀CORE 전주"
                   campusName = "cont_jj"
                   img_name = "core_jj"
                   txt_03 = "현장 또는 온라인 접수 ㅣ 현재 모집 중"
                   txt_02 = "9월 순차 개강"
                   url_final = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1423"
                   url_quel ="https://mcorejj.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1507"
                   url_premium = "https://mcorejj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcorejj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcorejj.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0345": '코어창원
                   txt_campus = "러셀CORE 창원"
                   campusName = "cont_cw"
                   img_name = "core_cw"

                   txt_02 = "9월 1일(금) 개강"
                   txt_03 = "현장 또는 온라인 접수 ㅣ 현재 모집 중"
                   apply_btn = "<a href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159' class='btn-pc btn-link mt20'>원서접수 바로가기</a>"

                   url_final = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1424"
                   url_quel ="https://mcorecw.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1508"
                   url_premium = "https://mcorecw.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcorecw.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcorecw.megastudy.net/intro/info/2022/monthly/index.asp"

	Case "CD0346": '코어청주
                   txt_campus = "러셀CORE 청주"
                   campusName = "cont_cj"
                   img_name = "core_cj"
                   txt_02 = "현재 접수 중"
                   txt_03 = "현장 또는 온라인 접수 ㅣ 현재 모집 중"
                   apply_btn = "<a href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=159' class='btn-pc btn-link mt20'>원서접수 바로가기</a>"

                   url_final = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1425"
                   url_quel ="https://mcorecj.megastudy.net/event/2021/quel/default.asp"
                   url_non = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1509"
                   url_premium = "https://mcorecj.megastudy.net/intro/2022/premium/index.asp"
                   url_weekly = "https://mcorecj.megastudy.net/intro/2022/weekly/index.asp"
                   url_month = "https://mcorecj.megastudy.net/intro/info/2022/monthly/index.asp"

    case else: 
                    campusName = ""
End Select
%>

<div class="visual-wrap">
    <p class="img-bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/visual.jpg" alt="visual 배경"></p>
    <p class="v-txt txt-01">
        <% if isCore = 1 Then '코어 %>러셀CORE<% ElseIf campus_code = "CD0244" Then '분당 %>러셀 분당<% Else %>러셀<% End If %>에서 경쟁하는 것이 <br> 최상위권 목표 달성을 위한 최종 합격 전략입니다.
    </p>
    <p class="v-txt txt-02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/visual_txt01.png" alt="tit1"></p>
    <% If campus_code = "CD0250" Then '부천 %>
    <p class="v-txt txt-03"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2023/final/visual_txt02.png" alt="tit2"></p>
    <% else %>
    <p class="v-txt txt-03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/final/visual_txt02.png" alt="tit2"></p>
    <% END IF%>
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
    
    <!-- 디데이 -->
    <% if curYmdhmin < 202311160000 then %>
    <div class="ico-dday">
        <p>수능 <strong class="dday"></strong></p>
    </div>
    <% END IF%>
    <!-- //디데이 -->
</div>



