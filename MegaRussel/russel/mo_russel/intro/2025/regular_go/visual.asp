<%
txtCampus = "러셀"
campusName = "intro"

v_txt_grade = "재학생"
v_txt_adverb = "최상위권이 집결하는 "

tit01 = "개강일"
txt01 = "3월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
tit03 = "모집 대상"
stxt_pos = "calc(-40vw / 7.2)"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

result_btn = "2024학년도 대입 합격 결과" 
result_btn_url = "/perfect/2024/susi/index.asp"

goal_btn = ""
goal_url = ""

studyHall_btn = "바른공부 자습전용관 자세히 보기" 
studyHall_btn_url = "/study_hall/study_hall.asp"

regular_url ="location.href=`https://mrussel.megastudy.net/intro/danka/2025/05/go3.asp`"
naesin_url = "alert(`추후 오픈 예정입니다.`)"

am_url ="alert('추후 오픈 예정입니다.')"



danka_list01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
danka_list02 = "검증된 강의력과 콘텐츠<br><strong>메가스터디 온&middot;오프 강사진</strong>"
danka_list03 = "필요한 수업 수강으로<br><strong>충분한 자습시간 확보</strong>"
danka_list04 = "재학생의 성적 향상에 맞춘<br><strong>학생 맞춤 1:1 학습관리</strong>"

exam01 = "메가X대성 더 프리미엄 모의고사 응시에 따른"
exam02 = "메가X대성 더 프리미엄 모의고사 응시"
exam03 = "전국 대단위 실전 모의고사 응시"
last = "last-slide"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt01 = "8월 순차 개강"
                    result_btn = "2025학년도 대입 합격 결과" 
                    result_btn_url = "/perfect/2025/susi/index.asp"
                    studyHall_btn_url = "/study_hall/study_hall.asp"
                    regular_url ="location.href=`https://mrussel.megastudy.net/intro/danka/2025/08/go3.asp`"
                    naesin_url = "location.href=`https://mrussel.megastudy.net/intro/danka/2025/08/mid.asp`"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt01 = "매월 1일, 매주 월/목 순차 개강"
                    txt02 = "온라인 접수"
                    txt03 = "고3&middot;고2"
                    goal_btn = "최상위권 입시결과"
                    goal_url = "https://mrusselgn.megastudy.net/russel_gn/event/2022/interview/index.asp"
                    studyHall_btn_url = "https://mrusselgn.megastudy.net/russel_gn/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2054`"
                    naesin_url = "location.href=`https://mrusselgn.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=242`"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'"

                    
    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    tit01 = "입학일"
                    txt01 = "매주 월/목 입학"
                    txt02 = "온라인 접수"
                    txt03 = "고3"
                    goal_btn = "러셀 대치 합격자 현황"
                    goal_url = "https://mrusseldc.megastudy.net/russel/event/2025/hero/index.asp"
                    studyHall_btn_url = "https://mrusseldc.megastudy.net/russel/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2055`"
                    apply_url = "alert(`원서접수는 PC 페이지에서 이용 가능합니다.`); window.open('https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184')"
                    stxt_pos = "0"
                    endText = "마감<br>대기자 접수 중"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    tit01 = "접수 현황"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    txt03 = "고3"
                    goal_btn = "러셀 목동 대입 결과"
                    goal_url = "https://mrusselmd.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusselmd.megastudy.net/russel/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2056`"
                    apply_url = "alert(`원서접수는 PC 페이지에서 이용 가능합니다.`); window.open('https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184')"
                    endText = "마감 임박"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt01 = "매월 1일 순차적 개강"
                    txt02 = "현장 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "2024학년도 대입 합격 결과"
                    goal_url = "https://mrusselbc.megastudy.net/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "https://mrusselbc.megastudy.net/russel_bc/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2057`"
                    danka_list01 = "과목별/수준별/진도별 <br> <strong>수능 및 내신 동시 대비</strong>"
                    danka_list02 = "내게 필요한 수업 선택으로<br><strong>충분한 자습시간 확보</strong>"
                    danka_list03 = "수능/내신 전문 강사진의<br><strong>몰입감 높은 현장강의</strong>"
                    danka_list04 = "강의 전후 <strong>학습관리</strong>와<br>시기별 <strong>맞춤 학습 콘텐츠</strong>"
                    naesin_url = "location.href=`https://mrusselbc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=396`"
                    result_btn = "대입 합격 결과 자세히 보기" 
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    


	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    v_txt_grade = "재학생(고3)"
                    tit01 = "모집 안내"
                    txt01 = "마감, 대기자 접수 中"
                    txt02 = "온라인 접수"
                    goal_btn = "대입 합격 결과 자세히 보기"
                    goal_url = "https://mrusselbd.megastudy.net/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "https://mrusselbd.megastudy.net/russel_bundang/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2058`"
                    danka_list04 = "재학생(고3)의 <br> 성적 향상에 맞춘<br><strong>학생 맞춤 1:1 학습관리</strong>"
                    stxt_pos = "calc(-20vw / 7.2)"
                    apply_url = "alert(`대기접수는 PC 페이지에서 이용 가능합니다.`); window.open('https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184')"
                    apply_txt = "대기 접수 바로가기"
                    endText = "전석 마감<br>대기자 접수 中"


	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "대입 합격 결과 자세히 보기"
                    goal_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusselct.megastudy.net/russel_ct/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2064`"
                    naesin_url = "location.href=`https://mrusselct.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=392`"
                    apply_url = "alert(`원서접수는 PC 페이지에서 이용 가능합니다.`); window.open('https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184')"
                    
    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    txt03 = "중3&middot;고1&middot;고2&middot;고3"
                    goal_btn = "2024학년도 러셀 영통 명예의 전당"
                    goal_url = "https://mrusselyt.megastudy.net/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "https://mrusselyt.megastudy.net/russel/info/2022/study_hall/index.asp"

                    regular_url ="location.href=`https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2059`"
                    naesin_url = "location.href=`https://mrusselyt.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=397`"
                    naesin_url02 = "location.href=`https://mrusselyt.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=398`"


    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    v_txt_adverb = "대입 레벨이 상승하는 "
                    txt01 = "9월 초 개강"
                    txt02 = "현장 접수"
                    txt03 = "고1&middot;고2&middot;고3"
                    goal_btn = "대입 결과 및 합격 인터뷰"
                    goal_url = "https://mrusseljg.megastudy.net/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "https://mrusseljg.megastudy.net/russel_jg/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2060`"
                    naesin_url = "location.href=`https://mrusseljg.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=399`"


	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    txt01 = "9/1(월)"
                    txt02 = "현장  또는 유선접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    studyHall_btn_url = "https://mrusselpc.megastudy.net/russel_pc/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2061`"
                    naesin_url = "location.href=`https://mrusselpc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=400`"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "대입 합격 결과 자세히 보기"
                    goal_url = "https://mrusseldg.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mrusseldg.megastudy.net/russel_dg/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2062`"
                    naesin_url = "location.href=`https://mrusseldg.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=401`"
                    apply_url = "alert(`원서접수는 PC 페이지에서 이용 가능합니다.`); window.open('https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184')"
                    endText = "전 학년 마감"


    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "러셀 대입성공 Story 자세히 보기"
                    goal_url = "https://russel.megastudy.net/russel/entinfo/notice/2020/success/index.asp"
                    studyHall_btn_url = "https://mrusselus.megastudy.net/russel_us/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2065`"
                    naesin_url = "location.href=`https://mrusselus.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=402`"
                    apply_url = "alert(`원서접수는 PC 페이지에서 이용 가능합니다.`); location.href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "유선 및 방문 접수 062) 462-1010"
                    txt03 = "고3&middot;고2"
                    goal_btn = "명예의 전당 바로가기"
                    goal_url = "/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcoregj.megastudy.net/core_gj/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2066`"
                    danka_list01 = "메가스터디 <br> 온&middot;오프 강사진의<br> <strong>몰입감 높은 현장강의/ <br> 대치동 LIVE강의</strong>"
                    danka_list02 = "과몰별/수준별/진도별 <br> <strong>꼭 필요한 수업만 선택</strong>"
                    danka_list03 = "수능 고득점을 위한<br> <strong>기본기 완성 및 <br>취약점 보완</strong>"
                    danka_list04 = "수업 전후 <strong>철저한 관리와<br> 선생님 전용 학습 콘텐츠</strong>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'"
                    endText = "남학생 전석마감<br>대기자 접수 중"

	Case "CD0341": txtCampus = "러셀 대전"   '대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "8월 순차 개강<br>*매주 (월), (수) 입학 가능"
                    txt02 = "현장 또는 온라인 접수"
                    txt03 = "고3&middot;고2"
                    stxt_pos = "calc(-20vw / 7.2)"
                    goal_btn = "대입 합격 결과 바로가기"
                    goal_url = "https://mcoredj.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcoredj.megastudy.net/russel/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2063`"
                    apply_url = "alert(`원서접수는 PC 페이지에서 이용 가능합니다.`); location.href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'"
                    danka_list04 = "선생님 전용 학습 콘텐츠, <br> <strong>수업 전후 학습관리</strong>"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "대입 합격 결과 자세히 보기"
                    goal_url = "https://mcorewj.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcorewj.megastudy.net/core_wj/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2067`"
                    danka_list02 = "수능부터 내신까지<br>메가스터디 <strong>검증된 강사진</strong>"
                    naesin_url = "location.href=`https://mcorewj.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=403`"



    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "온라인 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "대입 합격 결과 바로가기"
                    goal_url = "https://mcorejj.megastudy.net/russel/event/2024/interview/index.asp"
                    studyHall_btn_url = "https://mcorejj.megastudy.net/russel/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2068`"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'"
                    naesin_url = "location.href=`https://mcorejj.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=404`"
                    goal_url = "/russel/event/2025/interview/index.asp"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    tit01 = "모집안내"
                    txt01 = "현재 모집 중"
                    txt02 = "현장 또는 온라인 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "러셀CORE 창원 대입 합격 결과"
                    goal_url = "https://mcorecw.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcorecw.megastudy.net/core_cw/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2069`"
                    danka_list02 = "메가스터디 온&middot;오프 선생님의 <br> <strong>몰입감 높은 LIVE/현장강의</strong>"
                    naesin_url = "location.href=`https://mcorecw.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=405`"


    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 또는 온라인 접수"
                    txt03 = "고3&middot;고2&middot;고1"
                    goal_btn = "대입 합격 결과 자세히 보기"
                    goal_url = "https://mcorecj.megastudy.net/russel/event/2025/interview/index.asp"
                    studyHall_btn_url = "https://mcorecj.megastudy.net/core_cj/info/2022/study_hall/index.asp"
                    regular_url ="location.href=`https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2070`"
                    danka_list02 = "메가스터디 온&middot;오프 강사진의<br><strong>실시간 LIVE 수업</strong>"
                    naesin_url = "location.href=`https://mcorecj.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=406`"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'"
                    endText = "전 학년 마감"

End Select
%>


<% If campus_code = "CD0244" Then '분당 %>    
<!-- 학원 문자 수신 알리미 -->
<!-- <a href="javascript:void(0)" class="top-banner" onclick="window.open('https://russelbd.megastudy.net/popup/popup_sms_alarm.asp?EM_NUM=127&stype=f', 'popupWindow', 'width=600,height=700,scrollbars=yes');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
<a href="javascript:void(0)" class="top-banner" onclick="location.href='https://mrusselbd.megastudy.net/entinfo/entry_pt/enter_pop.asp'"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a>
<!-- //학원 문자 수신 알리미 -->
<% End If %>
<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="bg-wrap">
            <div class="swiper-container visual-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/v_bg01.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/v_bg02.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/v_bg03.jpg" alt="" /></div>
                </div>
            </div>
        </div>
        <div class="inner">
            <h3><% If campus_code = "CD0257" Then '중계 %>목표 성적 상승을<% Else %>최상위권을<% End If %> 위한 재학생 맞춤 시스템</h3>
            <div class="tit-wrap">
                <h2><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/v_stit.png" alt="2026 바른공부 자습전용관" /></h2>
                <% If campus_code = "CD0247" or campus_code = "CD0244" or campus_code = "CD0245" Then '강남/분당/목동 %>
                <h1><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_go/v_tit.png" alt="재학생 최상위권반" /></h1>
                <% Else %>
                <h1><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_go/v_tit.png" alt="재학생 정규반" /></h1>
                <% End If %>
            </div>

            <% If campus_code = "CD0245" Then '목동 %>
            <p class="v-txt">
                <%=v_txt_grade%>을 위한 방법은 달라야 합니다.<br>
                <%=v_txt_adverb%> <%=txtCampus%>에서 대입성공을 시작하세요.
            </p>
            <% Else %>
            <p class="v-txt">
                <%=v_txt_grade%>을 위한 방법은 달라야 합니다.<br>
                <%=v_txt_adverb%> <%=txtCampus%>에서 <br> 대입성공을 시작하세요.
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
                        <dd><%=txt02%></dd>
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
            <% Else %>
            <ul class="list-bullet stxt m0" style="bottom:<%=stxt_pos%>">
                <% If campus_code = "CD0244" Then '분당 %>
                <li>신규생 등원 : 매주 월요일/목요일 中 택 1</li>
                <% End If %>
                <li>모집요강 지원자격 해당자 순 접수</li>
            </ul>
            <% End If %>


            

        </div>
	</div>
</div>