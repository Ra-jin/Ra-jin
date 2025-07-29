<%

tit01 = "개강일"
txt01 = "5월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인접수"
tit03 = "모집 대상"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

chart_minute = "770"

regular_url = "alert(`추후 오픈 예정입니다.`)"
am_url = "alert(`추후 오픈 예정입니다.`)"

result_url = ""

last = "last-slide"
food_txt = "한 건물 내에서 강의실과 바자관, 식당을"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt01 = "8월 순차적 개강"
                    regular_url = "location.href=`https://mrussel.megastudy.net/intro/danka/2025/08/go3.asp`"
                    am_url = "location.href=`https://mrussel.megastudy.net/intro/danka/2025/08/am.asp`"


    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt01 = "매월 1일, 매주 월/목 순차 입학"
                    txt02 = "온라인 접수"
                    chart_minute = "770"
                    regular_url ="location.href=`https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2054`"
                    am_url = "location.href=`https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2040`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); window.open('https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187');"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    txt01 = "매주 월/목 입학"
                    txt02 = "온라인접수"
                    chart_minute = "740"
                    regular_url = "location.href=`https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2055`"
                    am_url = "location.href=`https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2041`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); window.open('https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187');"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    tit01 = "접수 현황"
                    txt01 = "전석 마감 (대기자 접수 중)"
                    txt02 = "온라인 접수"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187`"
                    chart_minute = "1,020"
                    regular_url = "location.href=`https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2056`"
                    am_url = "location.href=`https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2042`"
                    endText = "전석마감<br>대기접수"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt01 = "매월 1일 순차적 개강"
                    txt02 = "현장 또는 온라인 접수"
                    chart_minute = "770"
                    regular_url ="location.href=`https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2057`"
                    am_url = "location.href=`https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2043`"


	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180`"
                    result_url = "https://mrusselbd.megastudy.net/russel/event/2024/interview/index.asp"
                    chart_minute = "700"
                    food_txt = "한 건물 내에서 강의실과 바자관, 급식(자체 식당)을"
                    regular_url = "location.href=`https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2058`"
                    am_url = "location.href=`https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2044`"


	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187`"
                    chart_minute = "770"
                    regular_url = "location.href=`https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2064`"
                    am_url = "location.href=`https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2049`"


    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    chart_minute = "730"
                    food_txt = "한 건물 내에서 강의실과 바자관, 급식을"
                    regular_url ="location.href=`https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2059`"
                    am_url = "location.href=`https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2045`"


    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    chart_minute = "740"
                    food_txt = "한 건물 내에서 강의실과 바자관, 급식을"
                    regular_url ="location.href=`https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2060`"
                    am_url = "location.href=`https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2046`"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 접수/유선 문의"
                    chart_minute = "770"
                    regular_url ="location.href=`https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2061`"
                    am_url = "location.href=`https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2047`"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    chart_minute = "770"
                    regular_url ="location.href=`https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2062`"
                    am_url = "location.href=`https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2048`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187`"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수"
                    chart_minute = "720"
                    regular_url = "location.href=`https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2065`"
                    am_url = "location.href=`https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2050`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187`"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 또는 온라인 접수"
                    chart_minute = "810"
                    regular_url ="location.href=`https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2066`"

	Case "CD0341": txtCampus = "러셀 대전"   '대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "8월 순차 개강<br>*매주 (월), (수) 입학 가능"
                    txt02 = "현장 또는 온라인 접수"
                    chart_minute = "725"
                    regular_url ="location.href=`https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2063`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); window.open('https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187');"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt01 = "현재 모집 중"
                    txt02 = "현장 또는 온라인 접수"
                    result_url = "https://mcorewj.megastudy.net/russel/event/2025/interview/index.asp"
                    chart_minute = "690"
                    regular_url = "location.href=`https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2067`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); window.open('https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187');"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    chart_minute = "720"
                    regular_url ="location.href=`https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2068`"
                    am_url = "location.href=`https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2051`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); window.open('https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187');"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    tit01 = "모집안내"
                    txt01 = "현재 모집 중"
                    chart_minute = "1,020"
                    regular_url ="location.href=`https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2069`"
                    am_url = "location.href=`https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2052`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); window.open('https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187');"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt01 = "8월 순차적 개강"
                    txt02 = "현장 또는 온라인 접수"
                    chart_minute = "720"
                    regular_url = "location.href=`https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2070`"
                    am_url = "location.href=`https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2053`"
                    apply_url = "alert(`원서접수는 PC페이지에서 가능합니다.`); location.href=`https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187`"



End Select
%>


<% If campus_code = "CD0244" Then '분당 %>    
<!-- 학원 문자 수신 알리미 -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="window.open('https://russelbd.megastudy.net/popup/popup_sms_alarm.asp?EM_NUM=127&stype=f', 'popupWindow', 'width=600,height=700,scrollbars=yes');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="location.href='https://mrusselbd.megastudy.net/entinfo/entry_pt/enter_pop.asp'"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- //학원 문자 수신 알리미 -->
<% End If %>
<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="obj-wrap">
            <p class="v-obj01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/v_arr.png" alt="상승화살표" /></p>
        </div>

        <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
        <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/v_tit01.png" alt="2026" /></p>
        <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/v_tit02.png" alt="반수반" /></p>
        <p class="v-txt">
            불필요한 수업은 <strong>줄이고, <br>
            </strong> 꼭 필요한 시간은 <strong>최대로!</strong>
        </p>
        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
            </div>
        </div>
        <% If campus_code = "INTRO" Then '인트로 %>
        <ul class="stxt">
            <li>
                *학원별 일정 및 모집요강은 상이할 수 있으니, <br>
                자세한 내용은 학원별 페이지에서 확인 부탁드립니다.
            </li>
        </ul>
        <% Else %>
        <ul class="stxt">
            <li>
                ※ 모집요강 지원자격 해당자 순 접수
            </li>
        </ul>
        <% End If %>

        <!--마감딱지-->
        <!-- <div class="ico-end" style="top:310px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div> -->
        <!--//마감딱지-->
	</div>
</div>