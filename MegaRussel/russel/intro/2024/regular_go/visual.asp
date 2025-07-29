
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강일"
txt01 = "6월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
alignName = "not-vertical"

quick_tit = "수능&내신 대비 단과"
quick_txt01 = "[고3] 정규&middot;특강 단과"
quick_stxt = "내신 1등급을 위한<br>학교별 맞춤 내신 대비"
quick_txt02 = "[고2&middot;고1] <br> 내신 대비 강좌"
regular_url = "/intro/danka/2024/09/go3.asp"
naesin_txt = "javascript:alert('추후 오픈 예정입니다.');"

danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 및 내신 동시 대비</strong>"
danka_txt02 = "수능/내신 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"

month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
icoEndTop = "570px"
icoEndRight = "calc(50% - 670px)"



Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    naesin_txt = "https://russel.megastudy.net/intro/danka/2024/10/mid.asp"
                    txt01 = "매월 순차적 개강"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    tit01 = "개강일"
                    txt01 = "매월 1일 또는 매주 월/목 입학"
                    tit02 = "모집 대상"
                    txt02 = "고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "온라인 접수 <a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    quick_tit = "수능&내신 대비 단과"
                    quick_txt01 = "[고3] 정규&middot;특강 단과"
                    quick_stxt = "수능과 내신<br>동시 준비 가능"
                    quick_txt02 = "[고2&middot;고1] <br> 얼리버드 단과"
                    regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1696"
                    naesin_txt = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=242"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
                    danka_txt02 = "메가스터디 온&middot;오프 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    tit01 = "개강일"
                    txt01 = "모집요강 지원자격 해당자순 입학(매주 월/수/금)"
                    tit02 = "모집 대상"
                    txt02 = "고3"
                    tit03 = "접수 현황"
                    txt03 = "학원으로 문의(02-2138-1010)"
                    alignName = "wrap"
                    quick_tit = "수능 대비 단과"
                    quick_txt01 = "정규&middot;특강 단과"
                    regular_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1699"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 대비</strong>"
                    danka_txt02 = "수능 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    month_txt = "* 고2 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
                    icoEnd = "전반마감<br>대기자 접수중"
                    icoEndTop = "650px"
                    icoEndRight = "calc(50% - 700px)"


    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    tit01 = "모집 대상"
                    txt01 = "고3"
                    tit02 = "접수 현황"
                    txt02 = "현재 모집 중 (마감 임박)"
                    tit03 = "접수 방법"
                    txt03 = "온라인 원서 접수 <a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    quick_tit = "수능 대비 단과"
                    quick_txt01 = "[고3] 정규&middot;특강 단과"
                    regular_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1700"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 대비</strong>"
                    danka_txt02 = "수능 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    month_txt = ""
                    icoEnd = "마감 임박"
                    icoEndRight = "calc(50% - 800px)"


    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    tit01 = "개강일"
                    txt01 = "매월 초 순차 개강"
                    tit02 = "접수 방법"
                    txt02 = "현장 접수"
                    regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1701"
                    naesin_txt = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=321"


	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    tit02 = "접수 방법"
                    txt02 = "전석마감/대기 접수 <a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>대기 접수 바로가기</a>"
                    regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1702"
                    quick_tit = "수능 대비 단과"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
                    danka_txt02 = "수능 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    icoEnd = "전석 마감,<br>대기자 접수 中"
                    icoEndTop = "530px"
                    icoEndRight = "calc(50% - 720px)"
          
	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    tit01 = "개강일"
                    txt01 = "3월 1일(금) 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3&middot;고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
                    alignName = "not-vertical"
                    regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1707"
                    quick_txt02 = "[고3&middot;고2&middot;고1]<br>내신 대비 강좌"
                    naesin_txt = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=346"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    tit01 = "개강일"
                    txt01 = "매월 초 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3&middot;고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장 접수"
                    alignName = "wrap"
                    regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1703"
                    naesin_txt = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=343"

          
    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    tit01 = "개강일"
                    txt01 = "매월 초 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3"
                    tit03 = "접수 방법"
                    txt03 = "현장 접수"
                    alignName = "wrap"
                    regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1704"
                    quick_tit = "수능&내신 대비 단과"
                    quick_txt01 = "[고3] 정규&middot;특강 단과"
                    quick_stxt = "내신 목표 성적을 위한<br>학교별 맞춤 내신 대비"
                    quick_txt02 = "[고1&middot;고2] <br> 내신 대비 강좌"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 및 내신 동시 대비</strong>"
                    danka_txt02 = "수능/내신 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
                    naesin_txt = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=344"
          
	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    tit01 = "개강일"
                    txt01 = "매월 초 순차적 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3&middot;고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장/유선 접수"
                    alignName = "wrap"
                    regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1705"
                    quick_txt02 = "[고1&middot;고2&middot;고3] <br> 내신 대비 강좌"
                    naesin_txt = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=345"

          
	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    tit01 = "개강일"
                    txt01 = "10월 초 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고1&middot;고2&middot;고3"
                    tit03 = "접수 방법"
                    txt03 = "온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    quick_tit = "수능 대비 단과"
                    regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1706"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 전문 강의</strong>"
                    danka_txt02 = "수능 전문 강사진의 <br> <strong>몰입감 높은 현장강의</strong>"
                    month_txt = "* 고2 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
                    quick_stxt = "수능과 내신을<br>한번에 관리"
                    quick_txt02 = "[고1&middot;고2]<br>수능&middot;내신 단과"
                    naesin_txt = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=295"
                    icoEnd = "고3HS 마감임박<br>고2전반 마감임박"
                    icoEndRight = "calc(50% - 720px)"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    tit01 = "개강일"
                    txt01 = "12월 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3&middot;고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1708"
                    naesin_txt = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=347"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 및 내신 동시 대비</strong>"
                    danka_txt02 = "수능/내신 전문 강사진의 <br> <strong>현장강의와  대치동 LIVE 수업</strong>"
                    

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    tit01 = "접수 현황"
                    txt01 = "현재 모집 중 [마감 임박]"
                    tit02 = "모집 대상"
                    txt02 = "고1&middot;고2&middot;고3"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수"
                    alignName = "wrap"
                    regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1709"
                    quick_tit = "수능 대비 단과"
                    quick_txt01 = "정규&middot;특강 단과"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
                    danka_txt02 = "<strong>몰입도 높은 LIVE 강의</strong>와 <br> <strong>대치동 현강 콘텐츠/수업관리</strong>"
                    month_txt = "* 재학생 상담은 학년에 맞춘 입시/상담이 진행됩니다."
          
	Case "CD0341": txtCampus = "러셀CORE 대전"  '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    tit01 = "개강일"
                    txt01 = "매월 초 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3&middot;고2"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1710"
                    quick_tit = "수능 대비 단과"
                    quick_txt01 = "[고3&middot;고2] <br> 정규&middot;특강 단과"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
                    danka_txt02 = "수능 전문 강사진의 <br> <strong>현장 강의와 대치동 LIVE 강의</strong>"
                    month_txt = "* 고2, 고3 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
                    icoEnd = "남학생 전석마감<br>여학생 마감임박"


	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    tit01 = "개강일"
                    txt01 = "매월 초 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1711"
                    naesin_txt = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1622"
                    quick_stxt = "지역에 최적화된<br>내신 관리 솔루션"
                    quick_txt02 = "12월 기말고사<br>대비 강좌"
                    naesin_txt = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=348"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
                    danka_txt02 = "몰입도 높은 LIVE 강의와 <br> <strong>대치동 현강 콘텐츠/수업 관리</strong>"


	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    tit01 = "개강일"
                    txt01 = "매월 초 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3&middot;고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1712"
                    quick_tit = "수능 대비 단과"
                    quick_txt01 = "정규&middot;특강 단과"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
                    danka_txt02 = "<strong>몰입도 높은 LIVE 강의</strong>와 <br> <strong>대치동 현강 콘텐츠/수업관리</strong>"
                    month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    tit01 = "개강일"
                    txt01 = "매월 초 순차 개강"
                    tit02 = "모집 대상"
                    txt02 = "고3&middot;고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1713"
                    quick_tit = "수능 대비 단과"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>전략적인 수업 선택</strong>"
                    danka_txt02 = "메가스터디 온&middot;오프 강사진의 <br> <strong>몰입감 높은 대치동 LIVE 강의</strong>"
                    month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    tit01 = "개강일"
                    txt01 = "매월 초 개강"
                    tit02 = "모집 대상"
                    txt02 = "고2&middot;고1"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168'>원서접수 바로가기</a>"
                    alignName = "wrap"
                    regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1714"
                    naesin_txt = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=349"
                    quick_tit = "수능 대비 단과"
                    quick_txt01 = "정규&middot;특강 단과"
                    danka_txt01 = "과목별/수준별/진도별 <br> <strong>수능 및 내신 동시 대비</strong>"
                    danka_txt02 = "몰입도 높은 LIVE 강의와 <br> <strong>대치동 현강 콘텐츠/수업관리</strong>"
                    month_txt = "* 고2, 고1 재학생 상담은 학년에 맞춘 입시/학습 상담이 진행됩니다."
                    icoEnd = "전석 마감<br>대기자 접수 중"

End Select
%>

<div class="visual-wrap">
	<div class="visual-area <%=campusName%>">
        <div class="bg"></div>
        <div class="bg-fade bg-fade01"></div>
        <div class="bg-fade bg-fade02"></div>
        <div class="bg-fade bg-fade03"></div>

        <div class="vis-box">
            <div class="vis-cont">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <p><img src="<%=Application("img_path_russel")%>/russel_jg/2024/regular_go/visual_txt01.png" alt="목표 성적 상승을 위한 재학생 맞춤 시스템" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/visual_txt01.png" alt="최상위권을 위한 재학생 맞춤 시스템" /></p>
                <% End If %>
                <% If sCampusCode = "CD0247" Then '강남 %>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/visual_txt02.png" alt="2025 바른공부 자습전용관" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/visual_txt02.png" alt="2025 바른공부 자습전용관" /></p>
                <% End If %>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/visual_txt03.png" alt="재학생 정규반" /></p>
                <div class="txt-cont">
                    <p>
                        재학생을 위한 관리는 달라야 합니다.<br>
                        <strong>
                            <% If sCampusCode = "CD0257" Then '중계 %>대입 레벨이 상승하는 <% Else %>최상위권이 집결하는 <% End If %> <%=txtCampus%>에서 대입성공을 시작하세요.
                        </strong>
                    </p>
                    <div class="v-info">
                        <div class="<%=alignName%>">
                            <% If sCampusCode <> "CD0246" and sCampusCode <> "CD0244" Then '센텀/분당 제외 %>             
                            <dl>
                                <dt><%=tit01%></dt>
                                <dd><%=txt01%></dd>
                            </dl>
                            <% End If %>                 
                            <dl>
                                <dt><%=tit02%></dt>
                                <dd><%=txt02%></dd>
                            </dl>
                            <% If sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0257" or sCampusCode = "CD0341" or sCampusCode = "CD0340" or sCampusCode = "CD0249" or sCampusCode = "CD0248" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0343" Then '강남/대치/목동/중계/코어대전/코어광주/영통/대구/전주/창원/청주/센텀/울산/코어원주 %>
                            <dl>
                                <dt><%=tit03%></dt>
                                <dd><%=txt03%></dd>
                            </dl>
                            <% End If %>       
                            <% If sCampusCode = "CD0342" Then '대구 스케줄링 작업위해 %>
                            <dl>
                                <dt><%=tit03%></dt>
                                <dd>온라인 접수 <a class='bt-apply' <% If curYmdhmin < 202402051000 then %> href='javascript:alert(`추후 오픈 예정입니다.`);' <%else%> href="https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=168" <%end if%>>원서접수 바로가기</a></dd>
                            </dl>
                            <% End If %>
                        </div>                   
                    </div>
                    <% If sCampusCode <> "INTRO" AND sCampusCode <> "CD0001" AND sCampusCode <> "CD0245" AND sCampusCode <> "CD0244" Then '인트로/대치/목동/분당 제외 %>
                    <p class="fz18 mt10"><strong>※ 모집요강 지원자격 해당자 순 접수</strong></p>
                    <% End If %> 

                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <p class="comment">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</p>
                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                    <p class="fz18 mt10">
                        <strong>
                        *모집요강 지원자격 해당자 순 접수<br>
                        *현재 반별 마감 현황 확인하기 <a class='bt-apply' href='https://russelbd.megastudy.net/russel/info/notice/notice_view.asp?Code=30918&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1'>바로가기</a>
                        </strong>
                    </p>
                    <% End If %>
                </div>
            </div>
        </div>
	</div>

	<!--마감딱지-->
    <% If sCampusCode = "CD0342" OR sCampusCode = "CD0245" OR sCampusCode = "CD0244" Then '대구/목동/분당 %>
	<div class="ico-end" style="top:<%=icoEndTop%>;right:<%=icoEndRight%>;"><div><%=icoEnd%></div></div>
    <% End If %>
	<!--//마감딱지-->

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <% If sCampusCode <> "CD0247" and sCampusCode <> "CD0343" Then '강남/코어원주 제외 %>
        <a class="q-ban" href="<%=regular_url%>">
            <span>
                수능까지 체계적인 <br>
                과목별/수준별 커리큘럼
            </span>
            <strong><%=quick_txt01%></strong>
        </a>
        <% End If %>
        
        <% If sCampusCode <> "CD0001" and sCampusCode <> "CD0245" and sCampusCode <> "CD0341" and sCampusCode <> "CD0340" and sCampusCode <> "CD0244" and sCampusCode <> "CD0344" and sCampusCode <> "CD0345" and sCampusCode <> "CD0346" and sCampusCode <> "CD0250" Then '대치/목동/코어대전/코어광주/분당/코어전주/코어창원/코어청주/부천 제외 %>
        <a class="q-ban mb25" href="<%=naesin_txt%>">
            <span><%=quick_stxt%></span>
            <strong><%=quick_txt02%></strong>
        </a>
        <% end if %>

        <% If sCampusCode = "CD0244" Then '분당 %>
        <a href="javascript:fncAlarmPop02();" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <a href="javascript:fncAlarmPop03();" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <a href="https://pf.kakao.com/_sFgGxj" target="_blank" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/chat_banner.png" alt="채팅상담" /></a>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        <a href="<%=naesin_txt%>" class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/math_banner.jpg" alt="수학 내신 현장수업" /></a>
        <% ElseIf sCampusCode = "CD0247" Then '강남 %>
        <a href="https://russelgn.megastudy.net/russel/event/2020/megapass/megapass.asp" class="mt25"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/banner_megapass.png" alt="메가패스" /></a>
        <% end if %>

        <% If sCampusCode = "CD0343" Then '코어원주 %>
        <p class="b-tit">바른공부 자습전용관</p>
        <a class="q-ban" href="/intro/2024/winter/index.asp">
            <span>
                최상위권으로<br>
                도약하기 위한 옳은 방법
            </span>
            <strong>2025 윈터스쿨</strong>
        </a>
        <% end if %>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu <%=campusName%>">
        <% If sCampusCode = "INTRO" Then '인트로 %>
        <div class="menu">
            <a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
            <a href="javascript:void(0);">재학생에 최적화된 시스템</a>
            <a href="javascript:void(0);">학원별 모집안내</a>          
        </div>
        <% Else %>
        <div class="menu">
            <a class="on" href="javascript:void(0);"><%=txtCampus%> 모집요강 및 <% If sCampusCode = "CD0244" or sCampusCode = "CD0257" or sCampusCode = "CD0250" Then '분당/중계/부천 %>지원혜택<% Else %>장학혜택<% End If %></a>
            <a href="javascript:void(0);">
                <% If sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0349" or sCampusCode = "CD0343" Then '전주/창원/청주/울산/원주 %>
                최상위권 집결, 러셀
                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                성적 향상과 대학 합격을 위한, <%=txtCampus%>
                <% Else %>
                최상위권 집결, <%=txtCampus%>
                <% End If %>
            </a>
            <a href="javascript:void(0);">재학생에 최적화된 시스템</a>          
        </div>
        <% End If %>
    </div>
</nav>
<!-- //fix-menu -->
