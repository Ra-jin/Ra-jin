
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "모집 대상"
txt01 = "3월 순차적 개강"
tit02 = "개강일"
txt02 = "현장 또는 온라인 접수"
tit03 = "접수 방법"

quick_tit = "수능&amp;내신 대비 단과"
go3_stxt = "1년 커리큘럼으로<br>수능까지 체계적인 학습"
go3_txt = "[고3]<br>정규&middot;특강 단과"

nesin_url = "javascript:alert('추후 오픈 예정입니다.');"
nesin_stxt = "내신 1등급을 위한<br>학교별/수준별 내신 대비"
nesin_stxt02 = "내신 1등급을 위한 학교별/수준별 내신 대비"
nesin_txt = "내신 대비 강좌"

f_quick_top = "top:calc(50% + 212px)"

fix_02 = "최상위권 집결"
fix_03 = "재학생 맞춤 시스템"

apply_url = "javascript:alert('추후 공개 예정입니다.');"


pass_btn = "대입 합격 결과 자세히 보기"
pass_url = "/russel/event/2024/interview/index.asp"
result_btn = "대입 합격 결과 바로가기"
result_url = "/russel/event/2024/interview/index.asp"

baja_txt = "급식"
study_hall = "https://russel.megastudy.net/russel/study_hall/default.asp"
danka_txt01 = "과목별/수준별/진도별<br><strong>전략적인 수업 선택</strong>"
danka_txt02 = "검증된 강의력과 콘텐츠<br><strong>메가스터디 온&middot;오프 강사진</strong>"
danka_txt03 = "필요한 수업 수강으로<br><strong>충분한 자습시간 확보</strong>"
danka_txt04 = "재학생의 성적 향상에 맞춘<br><strong>학생 맞춤 1:1 학습관리</strong>"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    tit01 = "개강일"
                    txt01 = "8월 순차 개강"
                    tit02 = "접수 방법"
                    go3_url = "https://russel.megastudy.net/intro/danka/2025/08/go3.asp"
                    nesin_url = "https://russel.megastudy.net/intro/danka/2025/08/mid.asp"
                    pass_btn = "2025학년도 대입 합격 결과"
                    pass_url = "https://russel.megastudy.net/perfect/2025/susi/index.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt01 = "고3&middot;고2"
                    txt02 = "매월 1일, 매주 월/목 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    apply_url = "https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    pass_url = "/russel_gn/event/2022/hero/index.asp"
                    study_hall = "/russel_gn/info/study_hall/study_hall.asp"
                    result_btn = "2024 러셀 강남 최상위권 입시결과 확인하기"
                    result_url = "/russel_gn/event/2022/hero/index.asp"
                    go3_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2054"
                    nesin_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=242"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    tit01 = "모집 대상"
                    txt01 = "고3"
                    tit02 = "입학일"
                    txt02 = "매주 월/목 입학"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    quick_tit = "수능 대비 단과"
                    result_btn = "러셀 대치 합격자 현황"
                    result_url = "https://russeldc.megastudy.net/russel/event/2025/hero/index.asp"
                    study_hall = "/russel/info/study_hall/study_hall.asp"
                    f_quick_top = "top:calc(50% + 156px)"
                    apply_url = "https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    icoEnd = "마감<br>대기자 접수 중"
                    go3_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2055"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    tit01 = "모집 대상"
                    txt01 = "고3"
                    tit02 = "접수 현황"
                    txt02 = "현재 모집 중"
                    tit03 = "접수 방법"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    quick_tit = "내신 대비 단과"
                    go3_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2056"
                    apply_url = "https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    pass_url = "/russel_mokdong/event/2024/interview/index.asp"
                    study_hall = "/russel_mokdong/info/study_hall/study_hall.asp"
                    result_url = "https://russelmd.megastudy.net/russel/event/2025/interview/index.asp"
                    result_btn = "러셀 목동 대입 결과"
                    f_quick_top = "top:calc(50% + 156px)"
                    icoEnd = "마감 임박"


    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "매월 1일 순차적 개강"
                    txt03 = "현장 접수"
                    go3_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2057"
                    entrance_url = "/russel/event/2025/interview/index.asp"
                    pass_url = "/russel/event/2024/interview/index.asp"
                    study_hall = "/russel_bc/info/study_hall/study_hall.asp"
                    result_btn = "러셀 부천 2024학년도 대입 합격 결과"
                    danka_txt01 = "과목별/수준별/진도별<br><strong>수능 및 내신 동시 대비</strong>"
                    danka_txt02 = "내게 필요한 수업 선택으로<br><strong>충분한 자습시간 확보</strong>"
                    danka_txt03 = "수능/내신 전문 강사진의<br><strong>몰입감 높은 현장강의</strong>"
                    danka_txt04 = "강의 전후 <strong>학습관리</strong>와<br>시기별 <strong>맞춤 학습 콘텐츠</strong>"
                    nesin_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=396"
                    nesin_stxt = "내신 1등급을 위한<br>학교별/수준별 내신 대비"
                    nesin_txt = "[고2&middot;고1<br>내신 대비 강좌]"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    tit01 = "모집 안내"
                    txt01 = "마감, 대기자 접수 中"
                    tit02 = "접수 방법"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>대기 접수 바로가기</a>"
                    quick_tit = "수능 대비 단과"
                    go3_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2058"
                    study_hall = "/russel_bundang/info/study_hall/study_hall.asp"
                    fix_03 = "재학생(고3) 맞춤 시스템"
                    result_btn = "대입 합격 결과 자세히 보기"
                    danka_txt04 = "재학생(고3)의 성적 향상에 맞춘<br><strong>학생 맞춤 1:1 학습관리</strong>"
                    f_quick_top = "top:calc(50% + 218px)"
                    apply_url = "https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    icoEnd = "전석 마감<br>대기자 접수 中"


	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "현재 접수 중"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    study_hall = "/russel_ct/info/study_hall/study_hall.asp"
                    apply_url = "https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    result_btn = "대입 합격 결과 자세히 보기"
                    go3_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2064"
                    nesin_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=392"
                    nesin_stxt = "1등급 실력을 위한<br>내신/수능 기본기 완성"
                    nesin_txt = "[고2&middot;고1]<br>내신&middot;수능 대비 강좌"
                    result_url = "/russel/event/2025/interview/index.asp"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "중3&middot;고1&middot;고2&middot;고3"
                    txt02 = "매월 초 개강"
                    txt03 = "현장 접수"
                    go3_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2059"
                    study_hall = "/russel_yt/info/study_hall/study_hall.asp"
                    result_url = "/russel/event/2024/interview/index.asp"
                    result_btn = "2024학년도 러셀 영통 명예의 전당"
                    nesin_txt = "[중3&middot;고1&middot;고2]<br>내신 대비 강좌"


                    nesin_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=397"
                    nesin_stxt = "내신 1등급을 위한<br>학교별/수준별 내신 대비"
                    nesin_txt = "[고1&middot;고2]<br>내신 대비 강좌"

                    nesin_url02 = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=398"
                    nesin_stxt02 = "최상위권 달성을 위한<br>수준별 고등&middot;내신 대비"
                    nesin_txt02 = "[중3]<br>고등&middot;내신 대비 강좌"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "고1&middot;고2&middot;고3"
                    txt02 = "9월 초 개강"
                    txt03 = "현장 접수"
                    fix_02 = "결과로 증명하는 러셀 중계"
                    study_hall = "/russel_jg/info/study_hall/study_hall.asp"
                    result_btn = "대입 결과 및 합격 인터뷰"
                    go3_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2060"
                    nesin_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=399"

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = "고3&middot;고2&middot;고1"                  
                    txt02 = "9/1(월)"
                    txt03 = "현장 또는 유선접수"
                    study_hall = "/russel_pc/info/study_hall/study_hall.asp"
                    go3_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2061"
                    nesin_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=400"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "현재 모집 중"
                    txt03 = "온라인 접수"
                    go3_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2062"
                    nesin_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=401"
                    study_hall = "/russel_dg/info/study_hall/study_hall.asp"
                    result_btn = "대입 합격 결과 자세히 보기"
                    result_url = "https://russeldg.megastudy.net/russel/event/2025/interview/index.asp"
                    apply_url = "https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    icoEnd = "전 학년 마감"


	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "현재 접수 중"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply m0' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    apply_url = "https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    study_hall = "/russel_us/info/study_hall/study_hall.asp"
                    pass_btn = "러셀 대입 합격 결과 자세히 보기"
                    pass_url = "https://russel.megastudy.net/perfect/2024/susi/index.asp"
                    result_btn = "러셀 대입성공 Story 자세히 보기"
                    result_url = "https://russel.megastudy.net/russel/entinfo/notice/2020/success/index.asp"
                    go3_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2065"
                    nesin_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=402"
                    

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "고3&middot;고2"
                    txt02 = "매월 순차 개강"
                    txt03 = "유선 및 방문 접수<br>062) 462-1010"
                    go3_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2066"
                    pass_url = "/core_gj/event/2024/interview/index.asp"
                    study_hall = "/core_gj/info/study_hall/study_hall.asp"
                    nesin_txt = "[고2]<br>내신 대비 강좌"
                    apply_url = "https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    result_btn = "러셀CORE 광주 명예의 전당 바로가기"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 현장강의와<br>대치동 LIVE 강의</strong>"
                    danka_txt02 = "과목별/수준별/진도별<br><strong>꼭 필요한 수업만 선택</strong>"
                    danka_txt03 = "수능 고득점을 위한<br><strong>기본기 완성 및 취약점 보완</strong>"
                    danka_txt04 = "수업 전후 <strong>철저한 관리와<br>선생님 전용 학습 콘텐츠</strong>"
                    result_url = "/russel/event/2025/interview/index.asp"
                    icoEnd = "남학생 전석마감<br>대기자 접수 중"


	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "고3&middot;고2"
                    txt02 = "8월 순차 개강<br>*매주 (월), (수) 입학 가능"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    apply_url = "https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    go3_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2063"
                    go3_txt = "[고3&middot;고2]<br>정규&middot;특강 단과"
                    study_hall = "/core_dj/info/study_hall/study_hall.asp"
                    danka_txt04 = "선생님 전용 학습 콘텐츠,<br><strong>수업 전후 학습관리</strong>"
                    f_quick_top = "top:calc(50% + 156px)"
                    result_url = "https://coredj.megastudy.net/russel/event/2025/interview/index.asp"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "매월 초 순차 개강"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
                    apply_url = "javascript:alert('추후 오픈 예정입니다.');"
                    study_hall = "/core_wj/info/study_hall/study_hall.asp"
                    danka_txt02 = "생생한 현장감을 전달하는<br><strong>대치동 LIVE 강의</strong>"
                    danka_txt02 = "수능부터 내신까지<br>메가스터디 <strong>검증된 강사진</strong>"
                    result_btn = "대입 합격 결과 자세히 보기"
                    result_url = "/russel/event/2025/interview/index.asp"
                    go3_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2067"
                    nesin_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=403"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "매월 초 순차 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    apply_url = "https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    study_hall = "/core_jj/info/study_hall/study_hall.asp"
                    result_url = "/russel/event/2025/interview/index.asp"
                    result_btn = "대입 합격 결과 자세히 보기"
                    go3_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2068"
                    nesin_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=404"


	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    txt01 = "고3&middot;고2&middot;고1"
                    tit02 = "모집안내"
                    txt02 = "현재 모집 중"
                    txt03 = "현장 또는 온라인 접수"
                    study_hall = "/core_cw/info/study_hall/study_hall.asp"
                    danka_txt02 = "메가스터디 온·오프 선생님의<br><strong>몰입감 높은 LIVE/현장강의</strong>"
                    result_btn = "러셀CORE 창원 대입 합격 결과"
                    result_url = "https://corecw.megastudy.net/russel/event/2025/interview/index.asp"   
                    apply_url = "https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    go3_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2069"
                    nesin_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=405"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "매월 초 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184'>원서접수 바로가기</a>"
                    apply_url = "https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=184"
                    study_hall = "/core_cj/info/study_hall/study_hall.asp"
                    result_btn = "대입 합격 결과 자세히 보기"
                    danka_txt02 = "메가스터디 온·오프 강사진의<br><strong>실시간 LIVE 수업</strong>"
                    result_url = "/russel/event/2025/interview/index.asp"
                    icoEnd = "전 학년 마감"
                    go3_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2070"
                    nesin_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=406"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="bg-wrap">
            <div class="swiper-container visual-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/v_bg01.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/v_bg02.jpg" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/v_bg03.jpg" alt="" /></div>
                </div>
            </div>
            <div class="light"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/v_light.png" alt="" /></div>
        </div>
        <div class="inner">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <h3>목표 성적 상승을 위한 재학생 맞춤 시스템</h3>
            <% Else %>
            <h3>최상위권을 위한 재학생 맞춤 시스템</h3>
            <% End If %>
            <div class="tit-wrap">
                <h2><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/v_stit.png" alt="2026 바른공부 자습전용관" /></h2>
                <% If sCampusCode = "CD0247" OR sCampusCode = "CD0244" OR sCampusCode = "CD0245" Then '강남/분당/목동 %>
                <h1><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/v_tit.png" alt="재학생 정규반" /></h1>
                <% Else %>
                <h1><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/v_tit.png" alt="재학생 정규반" /></h1>
                <% End If %>
            </div>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p class="v-txt">
                재학생을 위한 방법은 달라야 합니다.<br>
                대입 레벨이 상승하는 <%=txtCampus%>에서 대입성공을 시작하세요.
            </p>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <p class="v-txt">
                재학생(고3)을 위한 방법은 달라야 합니다.<br>
                최상위권이 집결하는 <%=txtCampus%>에서 대입성공을 시작하세요.
            </p>
            <% Else %>
            <p class="v-txt">
                재학생을 위한 방법은 달라야 합니다.<br>
                최상위권이 집결하는 <%=txtCampus%>에서 대입성공을 시작하세요.
            </p>
            <% End If %>
            <div class="v-info">
                <div>
                    <dl>
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                </div>
                <div>
                    <dl>
                        <dt><%=tit02%></dt>
                        <dd><%=txt02%></dd>
                    </dl>
                </div>
                <% If sCampusCode <> "INTRO" and sCampusCode <> "CD0244" Then '인트로/분당 제외 %>
                <div>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
                <% End If %>
            </div>
            <div class="v-info02">
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="stxt">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.
                </p>
                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                <div class="stxt tal" style="padding-left: 31%; display: flex; gap: 105px;">
                    <div>※ 신규생 등원 : 매주 월요일/목요일 中 택 1 </div>
                    <div>
                        <div class="stxt info-stxt tal" style="min-width: auto;">
                            ※ 모집요강 지원자격 해당자 순 접수
                        </div>
                    </div>
                </div>
                <% Else %>
                <p class="stxt">※ 모집요강 지원자격 해당자 순 접수</p>
                <% End If %>
            </div>
            <!--마감딱지-->
            <% If sCampusCode = "CD0245" or sCampusCode = "CD0342" or sCampusCode = "CD0001" or sCampusCode = "CD0346" or sCampusCode = "CD0340" Then '목동/대구/대치/코어청주/코어광주 %>
            <div class="ico-end" style="top:280px;right:calc(50% - 560px);"><div><%=icoEnd%></div></div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="ico-end" style="top:300px;right:calc(50% - 560px);"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <% If sCampusCode = "CD0250" Then '부천 %>
        <a href="https://pf.kakao.com/_sFgGxj" target="_blank"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/quick_kakao.jpg" alt="재학생 정규반 채팅상담 talk" /></a>
        <% End If %>

        <!--첫번째 퀵배너-->
        <p class="b-tit mt15"><%=quick_tit%></p>
        <a class="q-ban" href="<%=go3_url%>">
            <span><%=go3_stxt%></span>
            <strong><%=go3_txt%></strong>
        </a>
        <!--//첫번째 퀵배너-->

        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0249" OR sCampusCode = "CD0344" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0257" OR sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" OR sCampusCode = "CD0246" OR sCampusCode = "CD0349" OR sCampusCode = "CD0346" Then '인트로/영통/코어전주/강남/부천/중계/코어원주/코어창원/평촌/대구/센텀/울산/코어청주 %>
        <!--두번째 퀵배너-->
        <a class="q-ban" href="<%=nesin_url%>">
            <span><%=nesin_stxt%></span>
            <strong><%=nesin_txt%></strong>
        </a>
        <!--두번째 퀵배너-->
        <% End If %>

        <!--세번째 퀵배너-->
        <% If sCampusCode = "CD0244" Then '분당 %>
        <!--학원 문자 수신 알리미 신청-->
        <a href="javascript:;" onclick="fncAlarmPop02()" class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/quick_sms.png" alt="학원 문자 수신 알리미 신청" /></a>
        <!--//학원 문자 수신 알리미 신청-->
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <a class="q-ban" href="<%=nesin_url02%>">
            <span><%=nesin_stxt02%></span>
            <strong><%=nesin_txt02%></strong>
        </a>
        <% End If %>
        <!--세번째 퀵배너-->
	</div>
	<!--// quick 플로팅배너 -->

    <% If sCampusCode = "CD0248" or sCampusCode = "CD0250" or sCampusCode = "CD0249" or sCampusCode = "CD0257" Then '평촌/부천/영통/중계 %>
    <!-- quick fix배너 -->
    <% ElseIf sCampusCode = "CD0244" OR sCampusCode = "CD0247" OR sCampusCode = "CD0245" Then '분당/강남/목동 %>
    <div class="f-quick" style="<%=f_quick_top%>">
        <a href="<%=apply_url%>"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/quick_apply.png" alt="2026 재학생 정규반 온라인 원서접수" /></a>
    </div>
    <% ElseIf sCampusCode = "INTRO" Then '인트로 %>
    <% Else %>
    <div class="f-quick" style="<%=f_quick_top%>">
        <a href="<%=apply_url%>"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/quick_apply.png" alt="2026 재학생 정규반 온라인 원서접수" /></a>
    </div>
    <!-- //quick fix배너 -->
    <% End If %>
</div>
