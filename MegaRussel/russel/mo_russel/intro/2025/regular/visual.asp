<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "개강일"
txt01 = "2월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
<!-- txt02 = "현장 또는 온라인 접수<br><span class='comment'>* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</span>" -->
stxt_pos = ""

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"


regular_url ="/intro/danka/2025/05/go3.asp"
am_url ="javascript:alert('추후 오픈 예정입니다.')"

result_btn = "대입 합격 결과 자세히 보기" 
result_btn_url = "/perfect/2024/susi/index.asp"

studyHall_btn = "바른공부 자습전용관 자세히 보기" 
studyHall_btn_url = "/study_hall/study_hall.asp"

food_txt = "한 건물 내에서 강의실-바자관-급식(식당)을 <br> 한번에 해결"

danka_list01 = "수능까지 탄탄한 커리큘럼 <br><strong>메가스터디 <br>수능 전문 강사진</strong>"
danka_list02 = "몰입감 높고 <br>철저한 관리가 진행되는 <br><strong>현장강의</strong>"
danka_list03 = "과목별/수준별/진도별 <br><strong>꼭 필요한 수업만 <br>선택 수강</strong>"
danka_list04 = "강의 전&middot;후 <br><strong>개인 맞춤 학습관리</strong>"

num = "2~3회"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt01 = "7월 순차 개강"
                    result_btn = "러셀 대입 합격 결과 자세히 보기"
                    result_btn_url = "/perfect/2025/susi/index.asp"
                    regular_url ="https://mrussel.megastudy.net/intro/danka/2025/07/go3.asp"
                    am_url ="https://mrussel.megastudy.net/intro/danka/2025/07/am.asp"
                    

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt01 = "매월 1일, 매주 월/목 순차 입학"
                    txt02 = "온라인 접수"
                    result_btn_url = "https://mrusselgn.megastudy.net/russel_gn/event/2022/interview/index.asp"
                    studyHall_btn_url = "/russel_gn/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 해결"
                    regular_url ="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2054"
                    am_url ="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2040"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"
                    stxt_pos = "two-line"

                    
    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    tit01 = "입학일"
                    txt01 = "매주 월/목 입학"
                    txt02 = "온라인 접수"
                    result_btn_url = "https://mrusseldc.megastudy.net/russel/event/2025/hero/index.asp"
                    studyHall_btn_url = "/russel/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 해결"
                    regular_url ="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2055"
                    am_url ="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2041"
                    stxt_pos = "two-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"


    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    tit01 = "접수 현황"
                    txt01 = "전석 마감 (대기자 접수 중)"
                    txt02 = "온라인 접수"
                    txt02_2 = "온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusselmd.megastudy.net/russel_mokdong/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식(바자관<br> 자리)을 한번에 해결"
                    regular_url ="https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2056"
                    am_url ="https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2042"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"
                    endText = "전석마감<br>대기접수"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    tit01 = "개강"
                    txt01 = "매월 1일 순차적 개강"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusselbc.megastudy.net/russel_bc/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 해결"
                    regular_url ="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2057"
                    am_url ="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2043"
                    stxt_pos = "one-line"


	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    tit01 = "모집 안내"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 원서접수"
                    result_btn_url = "https://mrusselbd.megastudy.net/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "https://mrusselbd.megastudy.net/russel_bundang/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식(자체<br>  식당)을 한번에 해결"
                    regular_url ="https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2058"
                    am_url ="https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2044"
                    danka_list04 = "강의 전&middot;후 <br> <strong>개인 맞춤 학습관리와</strong> <br>현강생 전용 <strong>수업 콘텐츠</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180')"
                    stxt_pos = "two-line"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    tit01 = "개강"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusselct.megastudy.net/russel_ct/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 해결"
                    regular_url ="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2064"
                    am_url ="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2049"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"
                    num = "4~5회"
                    stxt_pos = "one-line"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    result_btn_url = "/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "/russel_yt/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 해결"
                    regular_url ="https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2059"
                    am_url ="https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2045"
                    stxt_pos = "one-line"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    result_btn_url = "/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "/russel/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-급식을 한번에 해결"
                    regular_url ="https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2060"
                    am_url ="https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2046"
                    num = "1~2회"


	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    tit01 = "접수 현황"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 유선 접수"
                    studyHall_btn_url = "/russel/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체 식당을 <br> 한번에 해결"
                    regular_url ="https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2061"
                    am_url ="https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2047"
                    stxt_pos = "one-line"
    
    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    result_btn_url = "https://mrusseldg.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusseldg.megastudy.net/russel_dg/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체식당을 <br> 한번에 해결"
                    regular_url ="https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2062"
                    am_url ="https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2048"
                    danka_list02 = "몰입감 높고 <br>철저한 관리가 진행되는 <br><strong>현장강의와 <br> 대치동 LIVE 강의</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "https://mrussel.megastudy.net/perfect/2025/susi/index.asp"
                    studyHall_btn_url = "https://mrusselus.megastudy.net/russel_us/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체 식당을 <br> 한번에 해결"
                    regular_url ="https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2065"
                    am_url ="https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2050"
                    danka_list02 = "수능 고득점을 위한 <br><strong>기본기 완성 및 <br>취약점 보완</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"


	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcoregj.megastudy.net/core_gj/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체 식당을 <br> 한번에 해결"
                    regular_url ="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2066"
                    danka_list01 = "메가스터디<br>온·오프 강사진의<br><strong>몰입감 높은 현장강의와<br>대치동 LIVE 강의</strong>"
                    danka_list02 = "과목별/수준별/진도별<br><strong>꼭 필요한 수업만 선택</strong>"
                    danka_list03 = "수능 고득점을 위한<br><strong>기본기 완성 및<br>취약점 보완</strong>"
                    danka_list04 = "수업 전후 <br> <strong>철저한 관리와 <br> 선생님 전용 학습 콘텐츠</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"

	Case "CD0341": txtCampus = "러셀 대전"   '대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "8월 순차 개강<br>*매주 (월), (수) 입학 가능"
                    txt02 = "현장 또는 온라인 접수"
                    list_pos = "calc(-60vw / 7.2)"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "/core_dj/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체식당을 <br> 한번에 해결"
                    regular_url ="https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2063"
                    danka_list02 = "수능 고득점을 위한 <br><strong>기본기 완성 및 <br>취약점 보완</strong>"
                    danka_list04 = "수업 전후 <strong>철저한 관리</strong>와 <br>현강생 전용 <strong>수업 콘텐츠</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "/core_wj/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체식당을 <br> 한번에 해결"
                    regular_url ="https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2067"
                    danka_list02 = "생생한 현장감을 전달하는 <br><strong>대치동 LIVE 강의</strong>"
                    danka_list04 = "선생님 전용 학습 콘텐츠로 <br><strong>수업 전후 학습관리</strong>"
                    num = "6회"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180')"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "/core_jj/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체식당을 <br> 한번에 해결"
                    regular_url ="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2068"
                    am_url ="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2051"
                    danka_list02 = "몰입감 높고 <br>철저한 관리가 진행되는 <br><strong>현장강의와 <br> 대치동 LIVE 강의</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"


    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    tit01 = "모집안내"
                    txt01 = "현재 모집 중"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "https://mcorecw.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcorecw.megastudy.net/core_cw/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체식당을 <br> 한번에 해결"
                    regular_url ="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2069"
                    am_url ="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2052"
                    danka_list02 = "몰입감 높고 <br>철저히 관리되는<br><strong>현장강의와 대치동 LIVE 강의</strong>"
                    danka_list04 = "수업 전후 <strong>철저한 관리</strong>와 <br>수강생 전용 <strong>수업 콘텐츠</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'"

    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 또는 온라인 접수"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "/core_cj/info/2022/study_hall/index.asp"
                    food_txt = "한 건물 내에서 강의실-바자관-자체식당을 <br> 한번에 해결"
                    regular_url ="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2070"
                    am_url ="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2053"
                    danka_list02 = "몰입감 높고 <br>철저히 관리되는<br><strong>대치동 LIVE 강의와 현장강의</strong>"
                    stxt_pos = "one-line"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180')"

End Select
%>


<% If campus_code = "CD0244" Then '분당 %>    
<!-- 학원 문자 수신 알리미 -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="window.open('https://russelbd.megastudy.net/popup/popup_sms_alarm.asp?EM_NUM=127&stype=f', 'popupWindow', 'width=600,height=700,scrollbars=yes');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<a href="https://mrusselbd.megastudy.net/entinfo/entry_pt/enter_pop.asp" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a>
<!-- <a href="javascript:void(0)" class="top-banner" onclick="alert('추후 오픈 예정입니다.')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<!-- //학원 문자 수신 알리미 -->
<% ElseIf campus_code = "INTRO" Then '인트로 %>
    <% if curYmdhmin < 202501261500 then %>
    <a href="/event/2026/gisuk_pre/index.asp" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/quick_encore.jpg" alt="앙코르 2026 N수 성공전략 설명회"></a> 
    <% Else %>
    <% End If %>
<% End If %>
<div class="visual-wrap <%=campusName%>">


	<div class="visual-area">
        <div class="bg-wrap">
            <div class="swiper-container visual-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/v_bg01.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/v_bg02.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/v_bg03.jpg" alt="" /></div>
                </div>
            </div>
        </div>
        <div class="inner">
            <h3>단과 수업과 의무자습을 한방에!</h3>
            <div class="tit-wrap">
                <h2><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/v_stit.png" alt="2026 바른공부 자습전용관" /></h2>
                <% If campus_code = "CD0249" Then '영통 %>
                <h1><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/v_tit.png" alt="재수정규반" /></h1>
                <% Else %>
                <h1><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/v_tit.png" alt="N수 정규반" /></h1>
                <% End If %>
            </div>
            <% If campus_code = "CD0257" Then '중계 %>
            <p class="v-txt">
                대학 레벨이 상승하는 <%=txtCampus%>에서 경쟁하는 것이<br>
                바로 <strong>대입성공의 경쟁력</strong>입니다.
            </p>
            <% Else %>
            <p class="v-txt">
                최상위권이 집결하는 <%=txtCampus%>에서 경쟁하는 것이<br>
                바로 <strong>대입성공의 경쟁력</strong>입니다.
            </p>
            <% End If %>
            <div class="v-info">
                <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                    <dl>
                        <dt><%=tit02%></dt>
                        <% If campus_code = "CD0245" Then '목동 %>
                        <dd><%=txt02_2%></dd>
                        <% Else %>
                        <dd><%=txt02%></dd>
                        <% End If %>
                    </dl>
                </div>
            </div>
            <% If campus_code = "INTRO" Then '인트로 %>
            <ul class="list-star stxt m0">
                <li>
                    모집과 관련된 자세한 내용은 <br>
                    학원별 페이지에서 확인하실 수 있습니다.
                </li>
            </ul>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <ul class="list-bullet stxt m0 <%=stxt_pos%>">
                <li>신규생 등원 : 매주 월요일 / 목요일 中 택 1</li>
                <li>모집요강 지원자격 해당자 순 접수</li>
            </ul>
            <% Else %>
            <ul class="list-bullet stxt m0 <%=stxt_pos%>" style="bottom:<%=list_pos%>">
                <li>모집요강 지원자격 해당자 순 접수</li>
            </ul>
            <% End If %>
        </div>
	</div>
</div>