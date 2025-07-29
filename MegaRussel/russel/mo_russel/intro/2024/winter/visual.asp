<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "모집 대상"
txt_01 = "25년 고3&middot;고2&middot;고1"
tit_02 = "운영 기간"
txt_02 = "24년 12월~25년 2월 [9주 완성]"
tit_03 = "접수 기간"
tit_04 = "접수 방법"
txt_04 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

tab_txt01 = "윈터스쿨<br>모집안내"
tab_txt02 = " 최상위권의<br>선택"
tab_txt03 = "윈터스쿨<br>프로그램"

baja_time01 = "AM 07:00"
baja_txt01 = "<strong>등원 및 선택자습</strong>"
baja_time02 = "AM 08:00"
baja_txt02 = "<strong>영어 프로그램</strong><br>(영단어/영어듣기 TEST)"
baja_time03 = "AM 08:50"
baja_txt03 = "강의실 이동<br><strong>오전 단과 수업 수강</strong>"
baja_time04 = "PM 12:10"
baja_txt04 = "자체 식당에서<br><strong>점심 식사</strong>"
baja_time05 = "PM 01:10"
baja_txt05 = "바른공부 자습전용관<br><strong>오후 의무자습&체조</strong>"
baja_time06 = "PM 05:30"
baja_txt06 = "자체 식당에서<br><strong>저녁 식사</strong>"
baja_time07 = "PM 06:30"
baja_txt07 = "바른공부 자습전용관<br><strong>저녁 의무자습&상담</strong>"
baja_time08 = "PM 10:10"
baja_txt08 = "바른공부 자습전용관<br><strong>심야 선택자습</strong>"
baja_time09 = "AM 12:00"
baja_txt09 = "귀가"

danka_regular01 = "2월 정규 단과"
danka_regular_url = "https://mrussel.megastudy.net/intro/danka/2025/02/go3.asp"
danka_winter01 = "2월 윈터특강"
danka_winter_url = "/intro/danka/2025/01/winter.asp"

<!-- 텍스트수정 -->
study_txt01 = "최상위권이"
study_txt02 = "최상위권 재원생들의"
study_txt03 = "급식(식당)"

program_tab01 = "학습 동선<br>최소화"
program_tab02 = "학습<br>습관 형성"
program_tab03 = "재원생<br>전용 특강"
program_tab04 = "포트<br>폴리오"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    tab_txt01 = "최상위권의<br>선택"
                    tab_txt02 = "윈터스쿨<br>프로그램"
                    tab_txt03 = "학원별<br>모집안내"
                    txt_01 = "2025년 고3&middot;고2&middot;고1"
                    txt_02 = "2024년 12월~2025년 2월 [9주 완성]"
                    mozip_pos ="1vw"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    danka_regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1830"
                    danka_winter_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1785"
                    danka_winter_url02 = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1786"
                    txt_02 = "윈터스쿨 :<br>2024년 12월 28일(토) ~ 2025년 1월 31일(금)<br>윈터스쿨 PLUS :<br>2025년 2월 1일(토) ~ 2025년 2월 28일(금)<br><span class='f12'>*입학일은 조정 가능합니다.</span>"
                    tit_03 = "접수 현황"
                    txt_03 = "1월 : <span class='color-red'>전학년 마감 </span> <br>2월 : 원서접수자 개별 안내 예정"
                    txt_04 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    study_txt03 = "급식"
                    danka_winter01 = "2월 윈터특강 [고3]"
                    danka_winter02 = "2월 윈터특강 [고2&middot;고1]"
                    baja_txt01 = "<strong>오전 선택자습</strong>"
                    baja_txt02 = "<strong>등원 및 영어프로그램</strong><br>(영단어/영어듣기 TEST)"
                    baja_txt04 = "바자관 자리에서<br><strong>점심 식사</strong>"
                    baja_txt05 = "강의실 이동<br><strong>오후 단과 수업 수강</strong>"
                    baja_txt06 = "바자관 자리에서<br><strong>저녁 식사</strong>"
                    baja_time08 = "PM 09:50"
                    baja_txt08 = "바른공부 자습전용관<br><strong>귀가 또는 심야 선택자습</strong>"
                    baja_txt09 = "심야 선택자습<br>귀가"
                    program_tab01 = "충분한<br>학습시간"
                    program_tab04 = "가정<br>통신문"
                    apply_txt = "1월 윈터스쿨 추가모집 접수"
                    apply_txt02 = "2월 윈터스쿨 플러스 온라인 원서접수"
                    apply_url = "alert('추가모집 접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173')"
                    apply_url02 = "alert('온라인 원서접수는 PC 페이지에서 이용 가능합니다.');window.open('https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=185')"
                    

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    danka_regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1831"
                    danka_winter_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1787"
                    tel = "02-2138-1010"
                    txt_01 = "25년 고3"
                    txt_02 = "25년 1월2일~2월 28일 [9주]"
                    tit_03 = "접수 현황"
                    txt_03 = "25년 고3 잔여석 접수 중<br><strong>[25년 고1,2 전반 마감]</strong>"
                    txt_04 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    study_txt03 = "급식"
                    baja_txt03 = "강의실 이동<br><strong>오전 단과 수업 수강<br>&오전 의무자습&상담</strong>"
                    baja_txt04 = "자습관 좌석에서<br><strong>점심 식사</strong>"
                    baja_time05 = "PM 01:20"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 의무자습&상담<br>&오후 단과 수업 수강</strong>"
                    baja_txt06 = "자습관 좌석에서<br><strong>저녁 식사</strong>"
                    baja_txt07 = "바른공부 자습전용관<br><strong>저녁 의무자습&상담<br>&저녁 단과 수업 수강</strong>"
                    baja_time08 = "PM 10:20"
                    apply_txt = "원서접수 바로가기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173')"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    danka_regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1806"
                    danka_winter_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1788"
                    danka_winter_url02 = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1789"
                    danka_winter01 = "1월 윈터특강 [고3]"
                    danka_winter02 = "1월 윈터특강 [고2&middot;고1]"
                    tel = "02-6932-1010"
                    txt_02 = "25/1/2(목) ~ 25/2/28(금) [9주 완성]"
                    tit_03 = "접수 현황"
                    txt_03 = "전석 마감 [대기자 접수 중]"
                    txt_04 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    study_txt03 = "급식(바자관 자리)"
                    baja_txt02 = "<strong>수학 / 영어 프로그램</strong><br>(수학 TEST)<br>(영단어/영어듣기 TEST)"
                    baja_time03 = "AM 08:30"
                    baja_txt04 = "자습관 좌석에서<br><strong>점심 식사</strong>"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 의무자습&체조<br>&오후 단과 수업 수강</strong>"
                    baja_txt06 = "자습관 좌석에서<br><strong>저녁 식사</strong>"
                    baja_txt07 = "바른공부 자습전용관<br><strong>저녁 의무자습&상담<br>&저녁 단과 수업 수강</strong>"
                    baja_txt08 = "바른공부 자습전용관<br><strong>심야 선택자습</strong><br>(*평일 한정 운영)"
                    endText = "전석 마감 <br> [대기자 접수 중]"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    danka_regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1833"
                    danka_winter_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1823"
                    tel = "032-265-1010"
                    txt_01 = "25년 고3&middot;고2&middot;고1"
                    txt_02 = "윈터스쿨 : 2025년 1월 1일(수) ~ 2025년 1월 31일(금) <br>윈터스쿨 PLUS : 2025년 2월 1일(토) ~ 2025년 2월 28일(금)"
                    txt_03 = "24년 7월~마감 시"
                    study_txt03 = "급식"
                    baja_time01 = "AM 08:00"
                    baja_txt01 = "<strong>등원 및 자습</strong>"
                    baja_time02 = "AM 08:40"
                    baja_txt02 = "강의실 이동<br><strong>오전 단과 수업 수강 및<br>오전 의무자습</strong>"
                    baja_time03 = "PM 12:10"
                    baja_txt03 = "자습관 좌석에서<br><strong>점심 식사</strong>"
                    baja_time04 = "PM 01:10"
                    baja_txt04 = "바른공부 자습전용관<br><strong>일일 학습컨텐츠</strong><br><span>(주간지 or 영단어 테스트/영어듣기)</span>"
                    baja_time05 = "PM 01:30"
                    baja_txt05 = "강의실 이동<br><strong>오후 단과 수업 수강 및<br>오후 의무자습</strong>"
                    baja_time06 = "PM 05:30"
                    baja_txt06 = "자습관 좌석에서<br><strong>저녁 식사</strong>"
                    baja_time07 = "PM 06:40"
                    baja_txt07 = "강의실 이동<br><strong>저녁 단과 수업 수강 및<br>저녁 의무자습</strong>"
                    baja_time08 = "PM 10:20"
                    apply_url = "alert('마감되었습니다.')"
                    endText = "전석 마감<br>[대기자 접수 중]"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    danka_regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1834"
                    danka_winter_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1791"
                    danka_winter_url02 = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1792"
                    danka_winter01 = "2월 윈터특강 [고3]"
                    danka_winter02 = "2월 윈터특강 [고2]"
                    tel = "031-629-1010"
                    txt_01 = "2025년 고3, 고2"
                    txt_02 = "2025년 1월 2일(목) ~ 2월 28일(금) [9주]"
                    tit_04 = "모집 안내"
                    txt_04 = "전석 마감, 대기자 접수 中<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    study_txt03 = "급식(자체 식당)"
                    baja_time04 = "PM 12:20"
                    baja_time05 = "PM 01:30"
                    baja_time07 = "PM 06:40"
                    baja_time08 = "PM 10:20"
                    apply_txt = "온라인 대기 접수"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    endText = "전석 마감<br><span style='font-size: 1.2rem; font-weight: normal;'>대기자 접수 中</span>"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    danka_regular01 = "2월 정규 단과"
                    danka_regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1839"
                    danka_winter01 = "2월 윈터특강"
                    danka_winter_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1794"
                    tel = "051-715-1010"
                    txt_02 = "~3월 2일(일)까지"
                    txt_03 = "대기 접수 중"
                    study_txt03 = "급식"
                    baja_time04 = "PM 12:30"
                    baja_time05 = "PM 01:30"
                    apply_txt = "대기자 원서접수 바로가기"
                    apply_url = "alert('대기자 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    endText = "전 학년 마감<br>대기자 접수 중"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    danka_regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1835"
                    danka_winter_url = "https://mrusselyt.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=350"
                    tel = "031-251-1010"
                    txt_01 = "25년 고3&middot;고2&middot;고1&middot;중3"
                    txt_02 = "12/30(월)~2/28(금) [9주]<br><span class='f12 color-gray-02'>※ 2월 입학 시, 2월 1일(토)~2월 28일(금)</span>"
                    txt_03 = "8/7(수) ~ 마감 시"
                    txt_04 = "2월 입학 대기 접수 중<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    apply_txt = "2월 대기 접수 바로가기"
                    apply_url = "alert(`★2차사전접수 : 8/16(금) 오후 2시~ 마감시★\n※ 팝업해제 필수!\n※ 모집정원 내 해당자 순 접수`)"
                    study_txt03 = "급식"
                    baja_txt02 = "<strong>오전 의무자습</strong>"
                    baja_time03 = "AM 08:30"
                    baja_txt03 = "강의실 이동<br><strong>오전 단과 수업 수강&체조</strong>"
                    baja_txt04 = "급식차량으로<br><strong>점심 식사</strong>"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 의무자습</strong>"
                    baja_txt06 = "급식차량으로<br><strong>저녁 식사</strong>"
                    baja_time07 = "PM 06:40"
                    endText = "2월 입학<br>대기 접수 중"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    danka_regular01 = "2월 정규 단과"
                    danka_winter01 = "2월 윈터특강"
                    danka_regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1836"
                    danka_winter_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1802"
                    tel = "02-6316-1010"
                    txt_01 = "25년 고1&middot;고2&middot;고3"
                    txt_02 = "2/1(토) 개강"
                    txt_04 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tab_txt02 = "학생들의<br>선택"
                    study_txt01 = "학생들이"
                    study_txt02 = "재원생들의"
                    study_txt03 = "급식"
                    baja_txt04 = "바자관 자리에서<br><strong>점심 식사</strong>"
                    baja_txt06 = "바자관 자리에서<br><strong>저녁 식사</strong>"
                    apply_url = "alert('2025 윈터스쿨 사전예약은 ‘7/8(월) 14시’부터 가능합니다.')"
                    mozip_pos ="66.5vw"


	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    danka_regular01 = "고3 2월 정규 단과"
                    danka_winter01 = "고1,2 2월 윈터 강좌"
                    danka_regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1837"
                    danka_winter_url = "https://mrusselpc.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=351"
                    tel = "031-341-6500"
                    tit_02 = "개강일"
                    txt_02 = "2/1(토)"
                    txt_03 = "현재 접수 중"
                    txt_04 = "현장 접수 및 유선 문의<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    apply_url = "alert('8/28(수) 사전예약 2차 접수가 시작됩니다.')"
                    endText = "전학년 마감"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelpc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    apply_txt ="온라인 대기접수 바로가기"

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    danka_regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1838"
                    danka_winter_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1803"
                    tel = "053-291-1010"
                    txt_01 = "25년 고3&middot;고2"
                    txt_02 = "25년 1월 초 개강 (8주 과정)"
                    txt_03 = "24년 8월 12일(월) 부터"
                    txt_04 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    study_txt03 = "급식실"
                    baja_txt02 = "<strong>영어 프로그램&체조</strong><br>(영단어/영어듣기 TEST)"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 단과 수업 수강<br>및 의무자습</strong>"
                    baja_txt07 = "바른공부 자습전용관<br><strong>저녁 단과 수업 수강<br>및 의무자습</strong>"
                    apply_url = "alert('8/12(월) 오전10시 오픈 예정입니다.')"
                    endText = "전반 마감"
                    
    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    danka_regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1840"
                    danka_winter_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1795"
                    tel = "052-913-1010"
                    txt_01 = "25년 고3&middot;고2"
                    txt_02 = "2025년 2월 [4주 과정]"
                    txt_03 = "현재 모집 중"
                    study_txt03 = "자체 식당"
                    program_tab04 = "가정<br>통신문"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    endText = "전 학년<br>대기자 접수"
                    
    Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    danka_regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1841"
                    danka_winter_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1796"
                    tel = "062-462-1010"
                    txt_01 = "25년 고3&middot;고2&middot;고1"
                    txt_03 = "현재 접수 중"
                    study_txt03 = "자체 식당"
                    program_tab01 = "학습 동선<br>최소화"
                    program_tab02 = "학습<br>습관 형성"
                    program_tab03 = "포트<br>폴리오"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 정규자습&체조</strong>"
                    baja_time07 = "PM 06:40"
                    baja_txt07 = "바른공부 자습전용관<br><strong>저녁 정규자습&상담</strong><br>"
                    baja_time08 = "PM 10:30"
                    baja_time09 = "AM 01:00"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"

	Case "CD0341": txtCampus = "러셀 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    danka_regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1842"
                    danka_winter_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1797"
                    tel = "042-381-2020"
                    txt_01 = "25년 고3&middot;고2"
                    txt_02 = "25년 1월 1일~25년 2월 28일"
                    tit_03 = "접수 현황"
                    txt_03 = "25년 고2 약간명 모집중 <br> 25년 고3(여)마감/대기자 접수 중 <br> 25년 고3(남) 마감 임박"
                    study_txt03 = "자체 식당"
                    baja_time01 = "AM 08:00"
                    baja_time02 = "AM 08:50"  
                    baja_txt02 = "강의실 이동<br><strong>오전 단과 수업 수강</strong>"
                    baja_time03 = "PM 12:20"
                    baja_txt03 = "자체 식당에서<br><strong>점심 식사</strong>"
                    baja_time04 = "PM 01:30"
                    baja_txt04 = "바른공부 자습전용관<br><strong>오후 의무자습&체조</strong>"
                    baja_time05 = "PM 02:00"
                    baja_txt05 = "영어 프로그램<br><strong>(영단어/영어듣기 TEST)</strong>"
                    baja_time06 = "PM 05:20"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    endText = "고2 약간명 모집중 <br> 고3(남) 마감 임박"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    danka_regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1843"
                    danka_winter_url = "https://mcorewj.megastudy.net/common/russel_naesin/russel_naesin.asp?idx=358"
                    tel = "033-901-2020"
                    txt_02 = "2025/1/2(목)~2025/2/28(금)"
                    txt_03 = "현재 접수 중"
                    study_txt03 = "식당(급식)"
                    baja_time01 = "AM 08:00"
                    baja_txt01 = "<strong>등원 및 의무자습</strong>"
                    baja_time02 = "AM 08:30"
                    baja_txt02 = "<strong>조회 및 영어 프로그램</strong><br>(영단어/영어듣기 TEST)"
                    baja_txt03 = "<strong>단과 수업</strong> 수강<br>&<strong>상담</strong>"
                    baja_time04 = "PM 12:00"
                    baja_txt04 = "자체 식당에서<br><strong>점심 식사</strong>"
                    baja_time06 = "PM 05:30"
                    baja_time07 = "PM 06:40"
                    baja_time08 = "PM 10:20"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    
    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    danka_regular_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1844"
                    danka_winter_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1799"
                    tel = "063-905-3030"
                    txt_02 = "25년 1월 2일~25년 2월 28일 (9주 완성)"
                    txt_03 = "7월 중 ~ 마감 시"
                    study_txt03 = "자체 식당"
                    baja_time01 = "AM 07:30"
                    baja_time03 = "AM 08:30"
                    baja_time07 = "PM 06:40"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    endText = "전석 마감<br>대기자 접수 중"
                    
    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    danka_regular_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1845"
                    danka_winter_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1800"
                    tel = "055-605-1010"
                    txt_02 = "24/12/28 ~ 25/02/28 [9주 완성]"
                    txt_03 = "현재 접수 중"
                    apply_txt = "대기접수 바로가기"
                    apply_url = "alert('대기접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    study_txt03 = "자체식당"
                    baja_txt02 = "바른공부 자습전용관<br><strong>오전 영어 프로그램</strong><br>(영단어/영어듣기 TEST)"
                    baja_txt03 = "바른공부 자습전용관<br>의무자습 & 강의실 이동<br><strong>오전 단과 수업 수강</strong>"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 의무자습&상담<br>&영어듣기 TEST</strong>"
                    baja_txt07 = "바른공부 자습전용관<br><strong>저녁 의무자습&강의실 이동<br>저녁 단과 수업 수강</strong>"
                    endText = "전석 마감<br>대기자 접수 중"
                    txt_04 = "전석 마감(대기자 접수 중)<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    
    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    danka_regular_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1846"
                    danka_winter_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1801"
                    tel = "043-908-1010"
                    txt_02 = "24.12.30~25.02.28 [9주 완성]"
                    tit_03 = "접수 현황"
                    txt_03 = "전석 마감(대기자 접수 중)"
                    study_txt03 = "자체 식당"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'"
                    baja_time01 = "AM 07:50"
                    baja_txt01 = "<strong>등원 완료</strong>"
                    baja_txt02 = "바른공부 자습전용관<strong><br>1교시 시작</strong>"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 의무자습&점심체조</strong>"
                    baja_time07 = "PM 06:40"
                    baja_time08 = "PM 10:00"
                    endText = "전석 마감 <br> 대기자 접수 중"

End Select
%>

<div class="visual-wrap">
    <% If campus_code <> "CD0001" Then '대치 제외 %>
        <% If campus_code = "CD0247" Then '강남 %>
        <!-- 탑 배너 -->
        <a href="https://mrusselgn.megastudy.net/board/notice_view.asp?code=31018" class="top-banner" ><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/banner_top.jpg" alt="윈터스쿨 설명회 일정 확인"></a>
        <!-- //탑 배너 -->
        <% Else %>
        <!-- 학원 문자 수신 알리미 -->
        <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop();"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
        <!-- //학원 문자 수신 알리미 -->
        <% End If %>
    <% End If %>
    <div class="visual-area <%=campusName%>">
        <canvas id='canv'></canvas>
        <% If campus_code = "INTRO" or campus_code = "CD0248" or campus_code = "CD0257" Then '인트로/평촌/중계 %>
        <div class="badge">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/badge.png" alt="2월 시작반 모집 중" />
        </div>
        <% ElseIf campus_code = "CD0246" Then '센텀 %>
        <div class="badge">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/badge02.png" alt="2월 시작반" />
        </div>
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <div class="badge">
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/badge03.png" alt="2월 시작반" />
        </div>
        <% End If %>
        <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_obj01.png" alt="" /></div>
        <% If campus_code = "CD0257" or campus_code = "CD0250" Then '중계/부천 %>
        <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_txt01_jg.png" alt="올 겨울 목표 성적으로 도약하기 위한 옳은 방법" /></div>
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_txt01_bd.png" alt="올 겨울 최상위권으로 도약하기 위한 옳은 방법" /></div>
        <% Else %>
        <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_txt01.png" alt="올 겨울 최상위권으로 도약하기 위한 옳은 방법" /></div>
        <% End If %>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_tit02.png" alt="2025" /></div>
        <div class="v-tit01">
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_tit01_1.png" alt="윈" /></span>
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_tit01_2.png" alt="터" /></span>
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_tit01_3.png" alt="스" /></span>
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/v_tit01_4.png" alt="쿨" /></span>
        </div>
        
        <% If isCore = 1 Then '코어 일경우 %>
        <p class="v-txt02">역대 가장 탁월한 입결이 증명하는<br>
            <%=txtCampus%>에서<br>
            최상위권 대입성공을 시작하세요!</p>
        <% ElseIf campus_code = "CD0247" Then '강남 %>
        <p class="v-txt02">러셀 내 <strong>최상위권 대학 입결 1위</strong><a class="data-txt" href="javascript:void(0)" style="z-index:1;"></a> <br>
        <%=txtCampus%>에서<br>
            최상위권 대입성공을 시작하세요!</p>
        <div class="layer-wrap">
            <div class="bg-mask"></div>
            <div class="layer-in">
                <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                2018~2023학년도 러셀 전학원 내 의약학계열 및 주요대학 (서울대, 연세대, 고려대 등 13개 대학교) 누적 합격자 수 기준

            </div>
        </div>
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <p class="v-txt02">역대 가장 탁월한 입결이 증명하는 <%=txtCampus%>에서<br>
            실력 향상을 넘어 성적 향상을 경험하세요!</p>
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <p class="v-txt02">역대 가장 우수한 입결이 증명하는 <%=txtCampus%>에서<br>
        최상위권 대입성공을 시작하세요!</p>
        <% ElseIf campus_code = "CD0349" Then '울산 %>
        <p class="v-txt02">최상위권이 먼저 선택하고 만족하는 윈터스쿨,<br>
            <%=txtCampus%>에서 최상위권 대입성공을 시작하세요!</p>
        <% Else %>
        <p class="v-txt02">역대 가장 탁월한 입결이 증명하는 <%=txtCampus%>에서<br>
            최상위권 대입성공을 시작하세요!</p>
        <% End If %>

        <div class="v-info">
            <div>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <dl>
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>
            </div>
            <% If campus_code = "INTRO" Then '인트로 %>
            <P>* 모집과 관련된 자세한 내용은<br>
                학원별 페이지에서 확인하실 수 있습니다.</P>
            <% End If %>
        </div>
	</div>    
</div>