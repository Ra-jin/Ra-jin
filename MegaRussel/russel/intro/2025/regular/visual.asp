
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강일"
txt01 = "2월 순차 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
tit03 = "입학 문의"

quick_tit = "2026 수능 대비 단과"
go3_stxt = "수능까지<br>과목별/수준별 맞춤 단과"
go3_txt = "정규&middot;특강 단과"

am_url = "javascript:alert('추후 오픈 예정입니다.');"
am_stxt = "N수생을 위한<br>평일 오전&middot;오후 단과"
am_txt = "AM단과"

f_quick_top = "top:calc(50% + 185px)"

fix_02 = "최상위권 집결"
apply_url = "javascript:alert('추후 오픈 예정입니다.');"


pass_btn = "대입 합격 결과 자세히 보기"
pass_url = "/russel/event/2024/interview/index.asp"

baja_txt = "급식"
study_hall = "https://russel.megastudy.net/russel/study_hall/default.asp"
danka_txt01 = "수능까지 탄탄한 커리큘럼<br><strong>메가스터디 수능 전문 강사진</strong>"
danka_txt02 = "몰입감 높고 철저한 관리가<br>진행되는 <strong>현장강의</strong>"
danka_txt03 = "과목별/수준별/진도별<br><strong>꼭 필요한 수업만 선택 수강</strong>"
danka_txt04 = "강의 전&middot;후<br><strong>개인 맞춤 학습관리</strong>"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt01 = "7월 순차 개강"
                    go3_url = "https://russel.megastudy.net/intro/danka/2025/07/go3.asp"
                    am_url = "https://russel.megastudy.net/intro/danka/2025/07/am.asp"
                    pass_btn = "러셀 대입 합격 결과 자세히 보기"
                    baja_txt = "급식(식당)"
                    pass_url = "/perfect/2025/susi/index.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt01 = "매월 1일, 매주 월/목 순차 입학"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2054"
                    am_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2040"
                    pass_url = "/russel_gn/event/2022/hero/index.asp"
                    study_hall = "/russel_gn/info/study_hall/study_hall.asp"
                    apply_url = "https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    tit01 = "입학일"
                    txt01 = "매주 월/목 입학"
                    go3_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2055"
                    am_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2041"
                    txt02 = "온라인 접수 <a class='bt-apply' href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    pass_url = "https://russeldc.megastudy.net/russel/event/2025/hero/index.asp"
                    apply_url = "https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    study_hall = "/russel/info/study_hall/study_hall.asp"
                    f_quick_top = "top:calc(50% + 254px)"


    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    tit01 = "접수 현황"
                    txt01 = "전석 마감 (대기자 접수 중)"
                    tit02 = "접수 방법"
                    txt02_before = "온라인 접수 <a class='bt-apply' href='javascript:alert(`1/2(목) 오전 10시부터 온라인으로 가능합니다.`);'>원서접수 바로가기</a>"
                    txt02 = "온라인 접수 <a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2056"
                    am_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2042"
                    apply_url = "https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    pass_url = "/russel/event/2025/interview/index.asp"
                    baja_txt = "급식(바자관 자리)"
                    study_hall = "/russel_mokdong/info/study_hall/study_hall.asp"
                    icoEnd = "전석마감<br>대기접수"


    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "매월 1일 순차적 개강"
                    txt02 = "현장 또는 온라인 접수"
                    txt03 = "온라인 상담<a class='bt-apply' href='https://pf.kakao.com/_sFgGxj'>바로가기</a> ㅣ 전화 상담 032.265.1010"
                    go3_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2057"
                    am_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2043"
                    pass_url = "/russel/event/2025/interview/index.asp"
                    study_hall = "/russel_bc/info/study_hall/study_hall.asp"



	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    tit01 = "모집 안내"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 원서접수<a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    f_quick_top = "top:calc(50% + 252px)"
                    go3_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2058"
                    am_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2044"
                    study_hall = "/russel_bundang/info/study_hall/study_hall.asp"
                    danka_txt04 = "강의 전&middot;후 <strong>개인 맞춤 학습관리와</strong><br>현강생 전용 <strong>수업 콘텐츠</strong>"
                    baja_txt = "급식(자체식당)"
                    apply_url = "https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"


	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 원서접수<a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2064"
                    am_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2049"
                    study_hall = "/russel_ct/info/study_hall/study_hall.asp"
                    apply_url = "https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    pass_url = "/russel/event/2025/interview/index.asp"


    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    go3_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2059"
                    am_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2045"
                    study_hall = "/russel_yt/info/study_hall/study_hall.asp"


    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수"
                    fix_02 = "결과로 증명하는 러셀 중계"
                    go3_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2060"
                    am_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2046"
                    study_hall = "/russel_jg/info/study_hall/study_hall.asp"
                    baja_txt = "급식"

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    tit01 = "접수 현황"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 유선 접수"
                    go3_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2061"
                    am_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2047"
                    baja_txt = "자체 식당"
                    study_hall = "/russel_pc/info/study_hall/study_hall.asp"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2062"
                    am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2048"
                    baja_txt = "자체 식당"
                    study_hall = "/russel_dg/info/study_hall/study_hall.asp"
                    danka_txt02 = "몰입감 높고 철저한 관리가<br> 진행되는 <strong>현장강의와<br>대치동 LIVE 강의</strong>"
                    apply_url = "https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    pass_url = "https://russeldg.megastudy.net/russel/event/2025/interview/index.asp"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2065"
                    am_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2050"
                    baja_txt = "자체 식당"
                    study_hall = "/russel_us/info/study_hall/study_hall.asp"
                    danka_txt02 = "수능 고득점을 위한<br><strong>기본기 완성 및 취약점 보완</strong>"
                    pass_btn = "러셀 대입 합격 결과 자세히 보기"
                    pass_url = "https://russel.megastudy.net/perfect/2025/susi/index.asp"
                    apply_url = "https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"


	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 및 온라인 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2066"
                    f_quick_top = "top:calc(50% + 140px)"
                    pass_url = "/russel/event/2025/interview/index.asp"
                    baja_txt = "자체 식당"
                    study_hall = "/core_gj/info/study_hall/study_hall.asp"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 현장강의와<br>대치동 LIVE 강의</strong>"
                    danka_txt02 = "과목별/수준별/진도별<br><strong>꼭 필요한 수업만 선택</strong>"
                    danka_txt03 = "수능 고득점을 위한<br><strong>기본기 완성 및 취약점 보완</strong>"
                    danka_txt04 = "수업 전후 <strong>철저한 관리와<br>선생님 전용 학습 콘텐츠</strong>"
                    apply_url = "https://coregj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "8월 순차 개강<br>*매주 (월), (수) 입학 가능"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    f_quick_top = "top:calc(50% + 140px)"
                    study_hall = "/core_dj/info/study_hall/study_hall.asp"
                    danka_txt02 = "수능 고득점을 위한<br><strong>기본기 완성 및 취약점 보완</strong>"
                    danka_txt04 = "수업 전후 <strong>철저한 관리</strong>와<br>현강생 전용 <strong>수업 콘텐츠</strong>"
                    baja_txt = "자체 식당"
                    apply_url = "https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    go3_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2063"
                    pass_url = "https://coredj.megastudy.net/russel/event/2025/interview/index.asp"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    apply_url = "https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    go3_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2067"
                    baja_txt = "자체 식당"
                    study_hall = "/core_wj/info/study_hall/study_hall.asp"
                    danka_txt02 = "생생한 현장감을 전달하는<br><strong>대치동 LIVE 강의</strong>"
                    danka_txt04 = "선생님 전용 학습 콘텐츠로<br><strong>수업 전후 학습관리</strong>"
                    f_quick_top = "top:calc(50% + 140px)"
                    pass_url = "/russel/event/2025/interview/index.asp"


	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2068"
                    am_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2051"
                    baja_txt = "자체 식당"
                    danka_txt02 = "몰입감 높고<br>철저한 관리가 진행되는<br><strong>현장강의와 대치동 LIVE 강의</strong>"
                    study_hall = "/core_jj/info/study_hall/study_hall.asp"
                    apply_url = "https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    pass_url = "/russel/event/2025/interview/index.asp"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    tit01 = "모집안내"
                    txt01 = "현재 모집 중"
                    txt02 = "현장 및 온라인 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    apply_url = "https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    go3_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2069"
                    am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2052"
                    baja_txt = "자체 식당"
                    study_hall = "/core_cw/info/study_hall/study_hall.asp"
                    danka_txt02 = "몰입감 높고<br>철저한 관리가 진행되는<br><strong>현장강의와 대치동 LIVE 강의</strong>"
                    danka_txt04 = "수업 전후 <strong>철저한 관리와</strong><br>수강생 전용 <strong>수업 콘텐츠</strong>"
                    pass_url = "https://corecw.megastudy.net/russel/event/2025/interview/index.asp"


	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a>"
                    go3_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2070"
                    am_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2053"
                    baja_txt = "자체 식당"
                    study_hall = "/core_cj/info/study_hall/study_hall.asp"
                    danka_txt02 = "몰입감 높고 철저히 관리되는<br><strong>대치동 LIVE 강의와 현장강의</strong>"
                    apply_url = "https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180"
                    pass_url = "/russel/event/2025/interview/index.asp"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="bg-wrap">
            <div class="swiper-container visual-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/v_bg01.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/v_bg02.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/v_bg03.jpg" alt="" /></div>
                </div>
            </div>
            <div class="light"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/v_light.png" alt="" /></div>
        </div>
        <div class="inner">
            <h3>단과 수업과 의무자습을 한방에!</h3>
            <div class="tit-wrap">
                <h2><img src="<%=Application("img_path_russel")%>/intro/2025/regular/v_stit.png" alt="2026 바른공부 자습전용관" /></h2>
                <% If sCampusCode = "CD0249" Then '영통 %>
                <h1><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/v_tit.png" alt="재수 정규반" /></h1>
                <% Else %>
                <h1><img src="<%=Application("img_path_russel")%>/intro/2025/regular/v_tit.png" alt="N수 정규반" /></h1>
                <% End If %>
            </div>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p class="v-txt">대학 레벨이 상승하는 <%=txtCampus%>에서 경쟁하는 것이<br>바로 <strong>대입성공의 경쟁력</strong>입니다.</p>
            <% Else %>
            <p class="v-txt">최상위권이 집결하는 <%=txtCampus%>에서 경쟁하는 것이<br>바로 <strong>대입성공의 경쟁력</strong>입니다.</p>
            <% End If %>
            <div class="v-info">
                <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <p class="stxt">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.
                    </p>
                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                    <p class="stxt">※ 신규생 등원 : 매주 월요일 / 목요일 中 택 1
                    </p>
                    <% End If %>
                </div>
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                    <% If sCampusCode = "CD0245" Then '목동 %>
                        <% if curYmdhmin < 202501021000 then %>
                        <dd><%=txt02_before%></dd>
                        <% Else %>
                            <% If InStr(LCase(fncRequestVariables("HTTP_HOST")) ,"dev.megastudy.net") > 0 Then 'next server%>
                            <!-- 개발 서버 -->
                            <dd>온라인 접수 [접수 시작일 : 1/2(목)] <a class='bt-apply' href='https://devrussel.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=4169'>원서접수 바로가기</a></dd>
                            <% Else %>
                            <!-- 실서버 -->
                            <dd><%=txt02%></dd>
                            <% End If %>
                        <% End If %>
                    <% Else %>
                        <dd><%=txt02%></dd>
                    <% End If %>
                    </dl>
                    <% If sCampusCode <> "INTRO" Then '인트로 제외 %>
                    <p class="stxt">※ 모집요강 지원자격 해당자 순 접수
                    </p>
                    <% End If %>
                </div>
                <% If sCampusCode = "CD0250" Then '부천 %>
                <div>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
                <% End If %>
            </div>
            <!--마감딱지-->
            <% If sCampusCode = "CD0245" Then '목동 %>
            <div class="ico-end" style="top:280px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">

        <p class="b-tit mt15"><%=quick_tit%></p>
        <a class="q-ban" href="<%=go3_url%>">
            <span><%=go3_stxt%></span>
            <strong><%=go3_txt%></strong>
        </a>
        <% If sCampusCode <> "CD0341" and sCampusCode <> "CD0343" and sCampusCode <> "CD0340" Then '코어대전/코어원주/코어광주 제외 %>
        <a class="q-ban" href="<%=am_url%>">
            <span><%=am_stxt%></span>
            <strong><%=am_txt%></strong>
        </a>
        <% End If %>
        <% If sCampusCode = "CD0244" Then '분당 %>
        <!--학원 문자 수신 알리미 신청-->
        <a href="javascript:;" onclick="window.open('https://russelbd.megastudy.net/russel/entinfo/popup_notice_service_nonlogin.asp', 'popupWindow', 'width=600,height=700,scrollbars=yes');" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/quick_sms.png" alt="학원 문자 수신 알리미 신청" /></a>
        <!--//학원 문자 수신 알리미 신청-->
        <% ElseIf sCampusCode = "CD0001" Then '대치 %>
        <!--학원 문자 수신 알리미 신청-->
        <a class="mt15" href="javascript:fncAlarmPop03();"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/quick_sms.png" alt="학원 문자 수신 알리미 신청" /></a>
        <!--//학원 문자 수신 알리미 신청-->
        <% End If %>
        
        <% If sCampusCode = "INTRO" Then '인트로 %>
        <!-- <div class="mt15" style="position:relative;">
            <img style="width:180px;height:279px;" src="<%=Application("img_path_russel")%>/intro/2025/regular/quick_alarm02.png" alt="앙코르 2026 N수 성공전략 설명회 사전신청하기" />
            <a href="javascript:openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=72')" style="width:148px;height:30px;position:absolute;top:111px;left:16px;"></a>
            <a href="javascript:openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=73')" style="width:148px;height:30px;position:absolute;top:149px;left:16px;"></a>
            <a href="javascript:openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=74')" style="width:148px;height:30px;position:absolute;top:187px;left:16px;"></a>
            <a href="javascript:openPop('https://russel.megastudy.net/russel/popup/popup_admission_exp_2017_n.asp?cd=75')" style="width:148px;height:30px;position:absolute;top:225px;left:16px;"></a>
        </div> -->
            <% if curYmdhmin < 202501261500 then %>
            <a class="mt15" href="/event/2026/gisuk_pre/index.asp"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/quick_encore.png" alt="앙코르 2026 N수 성공전략 설명회" /></a>
            <% Else %>
            <% End If %>
        <% End If %>
	</div>
	<!--// quick 플로팅배너 -->
    <% If sCampusCode = "CD0247" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0346" OR sCampusCode = "CD0245" OR sCampusCode = "CD0244" OR sCampusCode = "CD0342" OR sCampusCode = "CD0246" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" OR sCampusCode = "CD0001" Then '강남/코어대전/코어원주/코어전주/코어청주/목동/분당/대구/센텀/울산/코어광주/코어창원/대치 %>

        <!-- quick fix배너 -->
        <div class="f-quick" style="<%=f_quick_top%>">
            <a href="<%=apply_url%>" class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/quick_apply.png" alt="" /></a>
        </div>
        <!-- //quick fix배너 -->
    <% End If %>
</div>
