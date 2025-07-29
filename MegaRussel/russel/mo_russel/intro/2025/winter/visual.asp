<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "모집 대상"
txt01 = ""
tit02 = "운영 기간"
txt02 = ""
tit03 = "접수 기간"
txt03 = "2025년 6월 ~ 마감 시"
tit04 = "접수 방법"
txt04 = "온라인 접수 <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"

tab_txt01 = "윈터스쿨<br>모집 안내"
tab_txt02 = "러셀의<br>윈터스쿨"
tab_txt03 = "러셀만의<br>특별함"
tab_txt04 = "최상위권<br>대입 결과"

bubble = "bubble_6"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

regular_url = "javascript:alert('추후 오픈 예정입니다.')"
am_url = "javascript:alert('추후 오픈 예정입니다.')"

baja_txt = "급식(식당)을"
baja_txt02 = "720"
sysb04_tit = "자체 식당"

danka_txt01 = "수능부터 내신까지<br><strong>메가스터디의 검증된 강사진</strong>"
danka_txt02 = "선생님 전용 학습 콘텐츠,<br><strong>수업 전후 학습관리</strong>"
danka_txt03 = "과목별/수준별/진도별<br><strong>전략적인 수업 선택</strong>"
danka_txt04 = "내게 필요한 수업만을 선택<br><strong>충분한 자습시간 확보</strong>"

result_btn = "2025학년도 대입 합격 결과"
result_btn_url = "/perfect/2025/susi/index.asp"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt03 = "현장 또는 온라인 접수"
                    danka_regular_url = "/intro/danka/2025/05/go3.asp"
                    tab_txt01 = "러셀의<br>윈터스쿨"
                    tab_txt02 = "러셀만의<br>특별함"
                    tab_txt03 = "최상위권<br>대입 결과"
                    tab_txt04 = "학원별<br>모집 안내"
                    tit01 = "운영 기간"
                    txt01 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    tit02 = "접수 방법"
                    txt02 = "현장 또는 온라인 접수"
                    bubble = "bubble_intro"
                    regular_url = "https://mrussel.megastudy.net/intro/danka/2025/08/go3.asp"
                    am_url = "https://mrussel.megastudy.net/intro/danka/2025/08/am.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    baja_txt = "급식을"
                    baja_txt02 = "770"
                    result_btn_url = "/russel_gn/event/2022/interview/index.asp"
                    regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2054"
                    am_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2040"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191', '_blank');"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt03 = "추후 공지"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_9"
                    baja_txt = "급식을"
                    sysb04_tit = "급식"
                    baja_txt02 = "740"
                    result_btn_url = "/russel/event/2025/hero/index.asp"
                    regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2055"
                    am_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2041"


    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "26/1/2(금) ~ 26/2/28(토)"
                    txt03 = "현재 모집 중"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"
                    baja_txt = "급식(바자관자리)을"
                    baja_txt02 = "1,020"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2056"
                    am_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2042"


    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "윈터스쿨: 26년 1/1(목)~2/28(토)<br>윈터스쿨 플러스:<br>26년 2/1(일)~2/28(토) [9주 완성]"
                    txt03 = "7/23(수)~마감 시"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_7"
                    baja_txt = "급식을"
                    danka_txt01 = "수능까지 탄탄한 커리큘럼<br><strong>메가스터디 수능 전문 강사진</strong>"
                    danka_txt02 = "몰입감 높고 철저한 관리가<br>진행되는 <strong>현장강의</strong>"
                    danka_txt04 = "강의 전&middot;후<br><strong>개인 맞춤 학습관리</strong>"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2057"
                    am_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2043"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"


	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    txt01 = "추후 공지"
                    txt02 = "26년 1월 ~ 26년 2월 [9주 완성]"
                    txt03 = "추후 공지"
                    txt04 = "온라인 원서 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    baja_txt = "급식(자체 식당)을"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2058"
                    am_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2044"
                    apply_url = "alert('추후 오픈 예정입니다.\n누구보다 빠르게 윈터스쿨 접수 소식을 받고 싶다면,\n학원 문자 수신 알리미 신청 버튼을 눌러주세요.')"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt03 = "2025년 6월 ~ 마감 시"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    baja_txt = "급식을"
                    baja_txt02 = "770"
                    regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2064"
                    am_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2049"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"


    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "26년 고3&middot;고2&middot;고1&middot;중3"
                    txt02 = "1/1(목)~2/28(토) <br>※ 전체(59일) 필수 이용"
                    txt03 = "8/6(수)~마감시"
                    txt04 = "온라인 사전 접수 및 실등록<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_8"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2059"
                    am_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2045"
                    apply_txt = "사전 접수 바로가기"
                    apply_url = "alert('사전 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelyt.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "추후 안내"
                    txt03 = "8/11(월) 14시 ~ 마감 시 까지"
                    txt04 = "온라인 사전예약<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_8"
                    baja_txt02 = "740"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2060"
                    am_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2046"
                    apply_url = "alert('원서 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeljg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월~26년 2월<br>(상세일정 추후 공개)"
                    txt03 = "8월 사전 예약 예정"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_8pre"
                    baja_txt = "급식을"
                    result_btn_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2061"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt03 = "2025년 8월부터"
                    txt04 = "온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_8"
                    baja_txt = "식당을"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2062"
                    am_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2048"


    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "26년 고3&middot;고2"
                    txt02 = "26년 1월 ~ 26년 2월 [9주 완성]"
                    txt03 = "2025년 7월 ~ 마감 시"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_7"
                    baja_txt = "자체 식당을"
                    result_btn_url = "https://mrusselus.megastudy.net/board/notice_view.asp?code=32032"
                    regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2065"
                    am_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2050"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "26년 1~2월 [9주 완성]"
                    txt03 = "사전 예약 중"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_8"
                    baja_txt = "자체 식당을"
                    danka_txt01 = "몰입감 높은 <strong>현장강의</strong>와<br>대치동 <strong>LIVE 강의</strong>"
                    danka_txt02 = "수업 전후 철저한 관리와<br><strong>선생님 전용 학습 콘텐츠</strong>"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2066"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"


	Case "CD0341": txtCampus = "러셀 대전"   '러셀 대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "26년 고3&middot;고2"
                    txt02 = "26년 1~2월 [8주 완성]"
                    txt03 = "사전 예약 중"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_10"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2063"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"


    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "2026년 1월 순차 개강"
                    txt03 = "접수 대기 중"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    bubble = "bubble_wt"
                    baja_txt = "식사를"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2067"


    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt01 = "26년 고3&middot;고2&middot;고1&middot;중3"
                    txt02 = "25년 12월 ~ 26년 2월"
                    txt03 = "2025년 7월 ~ 마감 시"
                    bubble = "bubble_7"
                    baja_txt = "급식실을"
                    sysb04_tit = "급식실"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2068"
                    am_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2051"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월 말 ~ 26년 2월 [9주 완성]"
                    txt03 = "2025년 6월 중순 ~ 마감 시"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    baja_txt = "자체식당(급식)을"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진<br><strong>현장 강의와<br>대치동 LIVE 강의</strong>"
                    regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2069"
                    am_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2052"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191', '_blank');"


    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt03 = "현재 접수 중"
                    txt04 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    baja_txt = "급식을"
                    result_btn_url = "/russel/event/2025/interview/index.asp"
                    regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2070"
                    am_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2053"



End Select
%>


<a href="javascript:void(0)" onclick="fncAlarmPop()" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="v-txt">
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter/visual_txt.png" alt="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관의 완성">
        </div>
        <div class="v-tit">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/visual_tit.png" alt="2026 윈터스쿨">
        </div>

        <!-- 폭죽 -->
        <canvas id="fireworkCanvas" width="150" height="150"></canvas>
        <canvas id="fireworkCanvas02" width="86" height="86"></canvas>

        <div class="v-snow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/visual_snow.png" alt=""></div>
        <div class="v-obj">
            <div class="v-trophy"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/visual_trophy.png" alt=""></div>
            <div class="v-fire"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/visual_fire.png" alt=""></div>
            <div class="v-win"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/visual_win.png" alt=""></div>
        </div>

        <!--윈터스쿨 홍보영상-->
        <div class="v-play-wrap">
            <a href="javascript:CastPopup('https://tv.naver.com/v/78773287')" class="v-play">
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/v_play.png" alt="윈터스쿨 홍보영상" />
            </a>
        </div>
        <!--//윈터스쿨 홍보영상-->

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
        <p class="v-stxt">
            *학원별 일정 및 모집요강은 상이할 수 있으니, <br>
            자세한 내용은 학원별 페이지에서 확인 부탁드립니다.
        </p>
        <% End If %>
	</div>
</div>