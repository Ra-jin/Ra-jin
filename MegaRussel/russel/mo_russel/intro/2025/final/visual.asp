<%
txtCampus = "러셀"
campusName = "intro"

tit01 = "모집 대상"
txt01 = ""
tit02 = "개강일"
txt02 = ""
tit03 = "접수 방법"
txt03 = "온라인 접수 <br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

regular_url = "javascript:alert('추후 오픈 예정입니다.')"
am_url = "javascript:alert('추후 오픈 예정입니다.')"
non_url = "javascript:alert('추후 오픈 예정입니다.')"

tab_txt01 = "모집 요강 & 지원 혜택"
tab_txt02 = "파이널 정규반 프로그램"

danka_txt01 = "메가스터디 온&middot;오프라인<br><strong>수능 전문 강사진</strong>"
danka_txt02 = "몰입감이 높고 철저한 관리가<br>진행되는 <strong>현장 강의</strong>"
danka_txt03 = "최신 출제 경향이 반영된<br>수능 대비 <strong>파이널 모의고사</strong>"
danka_txt04 = "자신의 약점을 보완해 줄<br><strong>꼭 필요한 수업만 선택 수강</strong>"

result_btn = "자세히 보기"
result_btn_url = "/perfect/2025/susi/index.asp"

tab_navi04 = "자체 식당<br>운영"
baja_txt = "급식(식당)"
baja_txt02 = "자체 식당"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"                  
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 또는 온라인 접수"
                    regular_url = "https://mrussel.megastudy.net/intro/danka/2025/08/go3.asp"
                    am_url = "https://mrussel.megastudy.net/intro/danka/2025/08/am.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt01 = "N수, 고3"
                    txt02 = "9월 순차 개강"
                    txt03 = "온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2054"
                    am_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=2040"
                    baja_txt = "급식"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=194'"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt03 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 및 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2057"
                    am_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2043"
                    baja_txt = "급식"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    txt01 = "고3&middot;N수"
                    txt02 = "10월 순차 개강"
                    txt03 = "온라인 원서 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2058"
                    am_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=2044"
                    baja_txt = "급식(자체 식당)"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    txt01 = "N수"
                    txt02 = "9월 1일 (월) 개강"
                    txt03 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    tab_txt02 = "파이널 N수 정규반<br>프로그램"
                    regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2064"
                    am_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=2049"
                    baja_txt = "급식"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 개강"
                    txt03 = "현장 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2059"
                    am_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=2045"
                    baja_txt = "급식"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    txt01 = "고3/N수"
                    txt02 = "9월 초 개강"
                    txt03 = "현장 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2060"
                    am_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2046"
                    baja_txt = "급식"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    txt01 = "N수"
                    txt02 = "9/1(월)"
                    txt03 = "현장 접수 및 유선 문의<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2061"
                    am_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=2047"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2062"
                    am_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=2048"
                    baja_txt = "자체 식당"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt01 = "고3&middot;N수"
                    txt02 = "9 월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    tab_txt01 = "모집 요강 & 장학 혜택"
                    regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2065"
                    am_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=2050"
                    danka_txt02 = "높은 몰입감과 철저한 관리의<br><strong>현장 강의&대치동 LIVE 강의</strong>"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 / 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2066"
                    baja_txt = "자체 식당"

	Case "CD0341": txtCampus = "러셀 대전"   '러셀 대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt01 = "고2&middot;고3&middot;N수"
                    txt02 = "9/1(월) 개강"
                    txt03 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    tab_txt01 = "모집 요강"
                    regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2063"
                    baja_txt = "자체 식당"
                    
    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2068"
                    am_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2051"
                    tab_navi04 = "급식실<br>운영"
                    baja_txt = "급식실"
                    baja_txt02 = "급식실"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    txt01 = "N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 및 온라인 원서접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2069"
                    am_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=2052"
                    baja_txt = "자체 식당(급식)"
                    
    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt01 = "고3&middot;N수"
                    txt02 = "9월 순차 개강"
                    txt03 = "현장 또는 온라인 접수<br> <span class='comment'>※ 모집 요강 지원 자격 해당자 순 접수</span>"
                    regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2070"
                    am_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=2053"
                    baja_txt = "자체 식당"


End Select
%>


<!-- <a href="javascript:void(0)" onclick="fncAlarmPop()" class="top-banner"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->

<div class="visual-wrap <%=campusName%>">
    <div class="v-obj-wrap">
        <div class="v-obj"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/v-obj.png" alt=""></div>
    </div>
	<div class="visual-area">
        <div class="v-txt">
            <% If campus_code = "CD0257" Then '중계 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/visual_txt.png" alt="최종 목표를 향한 마지막 기회"></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/visual_txt.png" alt="최상위권 목표를 향한 마지막 기회"></p>
            <% End If %>
        </div>
        <div class="v-tit01">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/visual_tit01.png" alt="2026 파이널">
        </div>
        <div class="v-tit02">
            <% If campus_code = "CD0246" Then '센텀 %>
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/visual_tit02.png" alt="N수 정규반">
            <% Else %>
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/visual_tit02.png" alt="정규반">
            <% End If %>
        </div>
        <% If russelCore = "1" Then '코어 %>
        <p class="v-txt02">최후의 1분 1초까지 전략적으로,<br>
            <strong><%=txtCampus%>에서 <br>
            최상위권 대입 성공을 달성하세요!</strong></p>
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <p class="v-txt02">최후의 1분 1초까지 전략적으로,<br>
            <strong><%=txtCampus%>에서 목표 대입 성공을 달성하세요!</strong></p>
        <% Else %>
        <p class="v-txt02">최후의 1분 1초까지 전략적으로,<br>
            <strong><%=txtCampus%>에서 최상위권 대입 성공을 달성하세요!</strong></p>
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
        <p class="v-stxt">※ 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</p>
        <% Else %>
        <p class="v-stxt">*모집 요강 지원 자격 해당자 순 접수</p>
        <% End If %>
	</div>
    <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/v-obj02.png" alt="총알"></div>
    <div class="v-obj-wrap02">
        <div class="v-obj03">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/v-obj03.png" alt="">
        </div>
        <div class="v-obj04">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/v-obj04.png" alt="">
        </div>
    </div>
</div>