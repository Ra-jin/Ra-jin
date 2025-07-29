
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

menu_txt01 = ""
menu_txt02 = ""

tit01 = "모집 대상"
txt01 = "고3 &middot; 고2 &middot; 고1"
tit02 = "개강일"
txt02 = "7월 순차 개강"
tit03 = "접수 방법"
txt03 = "현장 또는 온라인 접수"

summer_txt = "썸머특강"
summer_url = "/intro/danka/2024/07/summer.asp"
am_txt = "AM단과"
am_url = "javascript:alert(`추후 오픈 예정입니다.`);"
regular_txt = "정규&middot;특강 단과"
regular_url = "/intro/danka/2024/07/go3.asp"
btn_url = "/perfect/2024/susi/index.asp"
quick_tit = "여름방학 단과"


baja_txt01 = "강의실-바자관-급식(식당)"
danka_txt01 = "나에게 필요한 과목/진도를 선택 수강하여<br> 취약점 집중 보완"
danka_txt02 = "취약 과목(파트) 집중 보완 및 수시 최저 등급 <br>대비 집중 학습을 위한 단기 집중 특강"
danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 현장강의"

manage_slide_txt = ""


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    menu_txt01 = "러셀 강남 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 강남"
                    txt01 = "고3 &middot; 고2"
                    tit02 = "운영기간"
                    txt02 = "7/20(토) ~ 8/18(일)"
                    txt03 = "전반마감 | 대기자 접수 중 <a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>대기자 원서접수 바로가기</a>"
                    manage_slide_txt = "* 고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1626"
                    summer_txt = "썸머특강(고2)"
                    summer_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=315"
                    summer_txt02 = "썸머특강(고3&middot;N수)"
                    summer_url02 ="https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1610"
                    summer_btn = "고2 바로가기"
                    summer_btn02 = "고3&middot;N수 바로가기"
                    icoEnd = "<span>전반 마감</span><br>대기자 접수중"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    menu_txt01 = "러셀 대치 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 대치"
                    txt01 = "고3"
                    tit02 = "운영기간"
                    txt02 = "7/20(토) ~ 8/18(일)"
                    txt03 = "전반 마감"
                    manage_slide_txt = "* 고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1627"
                    summer_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1611"
                    icoEnd = "전반 마감"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    menu_txt01 = "러셀 목동 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 목동"
                    txt01 = "고3"
                    tit02 = "운영 기간"
                    txt02 = "7/22(월) ~ 8/18(일)"
                    regular_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1628"
                    summer_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1612"
                    icoEnd = "<span>전석 마감</span><br>(전형별 대기자 연락 중)"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    menu_txt01 = "러셀 부천 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 부천"
                    txt01 = "고3 &middot; 고2 &middot; 고1<br><span class='fz14'>※ 중3 학생은 종합반으로 진행</span><a class='bt-apply' href='https://russelbc.megastudy.net/russel_bc/2022/top_mid/index.asp'>바로가기</a>"
                    txt02 = "7/20(토) 개강 [4주]"
                    txt03 = "사전예약 마감/본등록 진행 중"
                    baja_txt01 = "강의실-바자관-급식"
                    manage_slide_txt = "* 중3/고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1629"
                    summer_txt = "썸머특강(고2·고1)"
                    summer_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=316"
                    summer_txt02 = "썸머특강(고3)"
                    summer_url02 = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1613"
                    summer_url03 = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=316"
                    summer_btn = "중3 종합반<br> 바로가기"
                    summer_btn02 = "고3 <br>바로가기"
                    summer_btn03 = "고2&middot;고1<br> 바로가기"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    menu_txt01 = "러셀 분당 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 분당"
                    txt01 = "고3 &middot; 고2"
                    tit02 = "기간"
                    txt02 = "7/20(토)~8/18(일)"
                    tit03 = "접수 상태"
                    txt03 = "마감, 대기자 접수 中 <a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'> 대기 접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-식당(자체 급식)"
                    manage_slide_txt = "* 각 학년에 맞춘 상담이 진행됩니다. <br>* 이후 단계는 썸머스쿨 종료 후 정규반[재학생(고3)]에 재원시 진행됩니다."
                    regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1630"
                    summer_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1614"
                    icoEnd = "전석 마감, <br> 대기자 접수 中"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    menu_txt01 = "러셀 센텀 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 센텀"
                    txt02 = "1차 개강 - 7/15(월) <br> 2차 개강 - 7/20(토)"
                    txt03 = "온라인 대기 접수<a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>대기접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1635"
                    summer_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1618"
                    icoEnd = "전학년 마감<br>(대기 접수 중)"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    menu_txt01 = "러셀 영통 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 영통"
                    txt02 = "7/20(토)"
                    txt03_before = "온라인 접수<a class='bt-apply' href='javascript:alert(`4/22(월) 오후 2시부터 선착순 접수입니다.\n*팝업해제 필수*`);'>사전접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt03 = "사전접수 마감 <a class='bt-apply' href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2'>온라인 대기 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수 </p>"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1631"
                    summer_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=317"
                    icoEnd = "<span style='color: yellow;'>사전접수전체마감</span><br>온라인대기접수중"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    menu_txt01 = "러셀 중계 모집요강 및 지원혜택"
                    menu_txt02 = "성적 향상과 대학 합격을 위한,<br>  러셀 중계"
                    txt01 = "고1 &middot; 고2 &middot; 고3"
                    tit02 = "기간"
                    txt02 = "7/20(토)~8/18(일) [4주]"
                    txt03_before = "전학년 마감, 대기자 접수 中 <a class='bt-apply' href='javascript:alert(`신규생 썸머스쿨 사전예약은 4/29(월) 14시부터 가능합니다.`);'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수 <br>※ 접수기간 <ul class='list-04'><li>바른공부 자습전용관 재원생 :  4/24(수)~4/28(일)까지 / <br>현장 접수(온라인 접수 불가)</li><li>신규생 : 4/29(월) 14시 ~마감 시까지 (조기마감 주의)</li> </p>"
                    txt03 = "전학년 마감, 대기자 접수 中<p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수 <br>※ 학원 문의 (☎ 02)6316-1010)</p>"
                    baja_txt01 = "강의실-바자관-급식"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1632"
                    summer_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1615"
                    icoEnd = "<span>전학년 마감</span><br>대기자 접수 中"

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    menu_txt01 = "러셀 평촌 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 평촌"
                    txt01 = "고3 &middot; 고2 &middot; 고1 &middot; 중3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(금) ~ 8/18(일)"
                    txt03 = "현장, 온라인 접수 마감<br>대기 접수도 마감되었습니다."
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1633"
                    summer_txt = "썸머특강(고2&middot;고1)"
                    summer_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=318"
                    summer_txt02 = "썸머특강(고3)"
                    summer_url02 = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1616"
                    summer_btn = "고2&middot;고1 바로가기"
                    summer_btn02 = "고3 바로가기"
                    icoEnd = "<span>전학년 마감</span>"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt03_before = "온라인 접수<a class='bt-apply' href='javascript:alert(`4/30(화) 10시 부터 가능합니다.`);'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    menu_txt01 = "러셀 대구 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀 대구"
                    txt01 = "고3 &middot; 고2"
                    tit02 = "기간"
                    txt02 = "7/20(토)~8/15(목)"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 현장강의와 대치동 LIVE 강의"
                    manage_slide_txt = "* 고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1634"
                    summer_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1617"
                    icoEnd = "고2마감(대기접수)<br>고3HS반 마감임박"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    menu_txt01 = "러셀 울산 모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀"
                    txt01 = "고1 &middot; 고2 &middot; 고3"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 현장강의와 대치동 LIVE 강의"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1636"
                    summer_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1619"
                    icoEnd = "고1(남), 고2,3<br>마감[대기접수중]"                  

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    menu_txt01 = "러셀CORE 광주<br>모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀CORE 광주"
                    txt02 = "7월 20일 (토)"
                    txt03 = "유선 및 방문 접수<br>062) 462-1010"                   
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 현장강의와 대치동 LIVE 강의"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1637"
                    summer_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1620"
                    icoEnd = "<span>전석 마감</span><br>대기 접수 중"

	Case "CD0341": txtCampus = "러셀CORE 대전"  '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    menu_txt01 = "러셀CORE 대전 모집요강"
                    menu_txt02 = "최상위권 집결, 러셀CORE 대전"
                    txt01 = "고3 &middot; 고2"
                    txt02 = "7/20(토) 개강"
                    txt03 = "현재 모집 중 (현장 또는 온라인 접수)<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 현장강의와 대치동 LIVE 강의"
                    manage_slide_txt = "* 고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1638"
                    summer_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1621"
                    icoEnd = "고3/고2 전석 마감<br>대기자 접수중"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    menu_txt01 = "러셀CORE 원주<br>모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀CORE 원주"
                    txt02 = "7월 19일(금) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 대치동 LIVE 강의"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1639"
                    summer_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1622"
                    icoEnd = "<span>전석 마감</span><br>대기자 접수 중"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    menu_txt01 = "러셀CORE 전주<br>모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀CORE 전주"
                    txt02 = "7월 20일(토) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 대치동 LIVE 강의"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1640"
                    summer_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1623"
                    icoEnd = "<span>전석 마감</span><br>대기자 접수 중"


	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    menu_txt01 = "러셀CORE 창원<br>모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀CORE 창원"
                    txt02 = "1차 개강 : 7/19(금) <br> 2차 개강 : 7/26(금)"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 대치동 LIVE 강의"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1641"
                    summer_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1624"
                    icoEnd = "고2&middot;고1 마감임박"

        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt02 = "7/20(토) 개강"
                    menu_txt01 = "러셀CORE 청주<br>모집요강 및 지원혜택"
                    menu_txt02 = "최상위권 집결, 러셀CORE 청주"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=166'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_txt01 = "강의실-바자관-자체 식당"
                    danka_txt03 = "메가스터디 온&middot;오프 수능 전문 강사진의<br> 몰입감 높은 대치동 LIVE 강의"
                    manage_slide_txt = "* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다."
                    regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1642"
                    summer_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1625"
                    icoEnd = "고1~3 전석마감<br>대기자 접수 중"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <div class="v-tit01">
                <p>재학생 여름방학 맞춤 시스템</p>
            </div>
            <div class="v-tit02">
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_tit02.png" alt="바른공부 자습전용관" /></p>
            </div>
            <!-- v_tit03.png 2024글씨 배경 뒤/v_tit03.jpg 2024글씨 배경 앞  -->
            <div class="v-tit03">
                <div class="tit tit01">
                    <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_tit03.png" alt="" />
                </div>
                <div class="tit tit02">
                    <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_tit03.jpg" alt="" />
                </div>
                <div class="tit tit03">
                    <!-- 파도 효과 svg -->
                    <svg viewBox="0 0 100 18">
                        <defs>
                            <path id="wave" d="M 0,10 C 30,10 30,15 60,15 90,15 90,10 120,10 150,10 150,15 180,15 210,15 210,10 240,10 v 28 h -240 z" />
                        </defs>
                        <use id="wave3" class="e-wave e-wave03" xlink:href="#wave" x="0" y="-5"></use>
                    </svg>
                    <!-- //파도 효과 svg -->
                </div>
            </div>  
            <div class="v-tit04">
                <p>성공적인 여름방학을 위해 <br>
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <strong>대학 레벨이 상승하는 <%=txtCampus%>에서 경쟁</strong>해야 합니다.     
                    <% Else %>
                    <strong> 최상위권이 집결하는 <%=txtCampus%>에서 경쟁</strong>해야 합니다.       
                    <% End If %> 
                </p>
            </div>   
            <div class="v-info">
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <% If sCampusCode <> "CD0246" Then '센텀 제외 %>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
                <% End If %> 
                <% If sCampusCode <> "CD0245" Then '목동 제외 %>
                <dl>
                    <dt><%=tit03%></dt>
                    <% If sCampusCode = "CD0257" Then '중계 %>
                        <% if curYmdhmin < 202404291400 then %>
                        <!-- 중계 원서 접수 바로가기 4월 29일 14시 전 -->
                        <dd><%=txt03_before%></dd>
                        <% else %>
                        <!-- 4월 29일 14시 후 반영 -->
                        <dd><%=txt03%></dd>
                        <% End If %> 
                    <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                        <% if curYmdhmin < 202404221400 then %>
                        <!-- 영통 원서 접수 바로가기 4월 22일 14시 전 -->
                        <dd><%=txt03_before%></dd>
                        <% else %>
                        <!-- 영통 4월 22일 14시 후 반영 -->
                        <dd><%=txt03%></dd>
                        <% End If %> 
                        <div class="info-stxt" style="top:42px; right:480px; z-index: 6;">
                            <span style="color:#fff">*유의사항</span>
                            <div class="data-view" style="top:-232px; z-index: 6;">
                                <p>* 유의사항  <br>
                                ① 사전접수 마감으로 온라인 대기 접수를 해주시기 바랍니다.  <br>
                                ② 대기 접수자는 사전접수자 등록 후 여석 발생 시 순차적으로 등록 안내 예정입니다.  <br>  <br>
                                
                                ※ 사전 접수 기간 안내(전체 마감)  <br>
                                 ▶ 4/22(월) 오후 2시   <br>  <br>
                                
                                - 사전예약금 접수는 선착순으로 진행되었습니다.  <br>
                                - 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다.  <br>
                                   ① 수강 희망하는 강좌를 선택  <br>
                                   ② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제  <br>
                                   ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)  
                                </p>
                            </div>
                        </div>
                    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                        <% if curYmdhmin < 202404301000 then %>
                        <!-- 대구 원서 접수 바로가기 4월 30일 10시 전 -->
                        <dd><%=txt03_before%></dd>
                        <% else %>
                        <!-- 4월 30일 10시 후 반영 -->
                        <dd><%=txt03%></dd>
                        <% End If %> 
                    <% Else %>
                        <dd><%=txt03%></dd>
                    <% End If %> 
                </dl>
                <% End If %> 
            </div>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="stxt">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</p>
            <% End If %>
            <!-- 비주얼 오브젝트 -->
            <div class="v-obj01">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj01.png" alt="">
            </div>
            <div class="v-obj02">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj02.png" alt="">
            </div>
            <div class="v-obj03">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj03.png" alt="">
            </div>
            <div class="v-obj04">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/v_obj04.png" alt="">
            </div>
        </div>  
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/visual_bg.jpg" alt="" /></div>      
        
        <!--마감딱지-->
        <% If sCampusCode = "CD0249" or sCampusCode = "CD0343" or sCampusCode = "CD0345" or sCampusCode = "CD0341" or sCampusCode = "CD0244" or sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0001" or sCampusCode = "CD0349" or sCampusCode = "CD0346" or sCampusCode = "CD0245" or sCampusCode = "CD0248" or sCampusCode = "CD0247" or sCampusCode = "CD0340" or sCampusCode = "CD0344" or sCampusCode = "CD0246" Then '영통/코어원주/코어창원/코어대전/분당/대구/중계/대치/울산/코어청주/목동/평촌/강남/코어광주/코어전주/센텀 %>
        <div class="ico-end" style="top:558px;right:calc(50% - 565px);"><div><%=icoEnd%></div></div>
        <% End If %>
        <!--//마감딱지-->
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span>
                수능까지 체계적인<br>
                과목별/수준별 맞춤 단과<br>
            </span>
            <strong><%=regular_txt%></strong>
        </a>
        <a class="q-ban" href="<%=summer_url%>">
            <span>
                반드시 실력이 향상되는<br>
                여름방학 집중 특강                
            </span>
            <strong><%=summer_txt%></strong>
        </a>
        <% If sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0248" Then '강남/부천/평촌 %>
        <a class="q-ban" href="<%=summer_url02%>">
            <span>
                반드시 실력이 향상되는<br>
                여름방학 집중 특강                
            </span>
            <strong><%=summer_txt02%></strong>
        </a>
        <% End If %>
        <% If sCampusCode = "CD0250" Then '부천 %>
        <a href="javascript:fncAlarmPop02();" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <a href="https://pf.kakao.com/_sFgGxj" target="_blank" class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/chat_banner.jpg" alt="채팅상담" /></a>
        <% End If %>
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap">
    <div class="fix-menu">
        <div class="menu">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <a class="on" href="javascript:void(0);">최상위권 집결, 러셀</a>
            <a href="javascript:void(0);">여름방학, 최상위권 도약의 기회</a>
            <a href="javascript:void(0);">썸머스쿨 프로그램</a>
            <a href="javascript:void(0);">학원별 모집안내</a>
            <% Else %>
                <a class="on" href="javascript:void(0);"><%=menu_txt01%></a>
                <a href="javascript:void(0);"><%=menu_txt02%></a>
                <% If sCampusCode = "CD0257" Then '중계 %>
                <a href="javascript:void(0);">여름방학, 성적 향상의 기회 </a>
                <% Else %>
                <a href="javascript:void(0);">여름방학, 최상위권 도약의 기회</a>
                <% End If %>                
                <a href="javascript:void(0);">썸머스쿨 프로그램</a>
            <% End If %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
