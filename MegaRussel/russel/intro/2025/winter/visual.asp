<%

tit01 = "모집 대상"
txt01 = "26년 고3&middot;고2&middot;고1"
tit02 = "접수 기간"
txt02 = "2025년 6월 ~ 마감 시"
tit03 = "운영 기간"
txt03 = "25년 12월 ~ 26년 2월 [9주 완성]"
tit04 = "접수 방법"
txt04 = "현장 또는 온라인 접수"

bubble = "bubble"

quick_tit = "여름 방학 단과"
winter_url = "javascript:alert('추후 오픈 예정입니다.');"

go3_stxt = "수능까지<br>과목별/수준별 맞춤 단과"
go3_txt = "정규&middot;특강 단과"
go3_url = "javascript:alert('추후 오픈 예정입니다.');"
am_url = "javascript:alert('추후 오픈 예정입니다.');"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"
meal = "급식(식당)을"
min = "720분"
meal02 = "자체 식당"

omega_top = "103px"
omega_left = "414px"

pass_url = "/russel/event/2025/interview/index.asp"

danka_list01 = "수능부터 내신까지<br><strong>메가스터디의 검증된 강사진</strong>"
danka_list02 = "선생님 전용 학습 콘텐츠,<br><strong>수업 전후 학습관리</strong>"
danka_list03 = "과목별/수준별/진도별<br><strong>전략적인 수업 선택</strong>"
danka_list04 = "내게 필요한 수업만을 선택<br><strong>충분한 자습시간 확보</strong>" 

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    pass_url = "/perfect/2025/susi/index.asp"
                    go3_url = "https://russel.megastudy.net/intro/danka/2025/08/go3.asp"
                    am_url = "https://russel.megastudy.net/intro/danka/2025/08/am.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "2025년 6월 ~ 마감 시"
                    txt03 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt04 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식을"
                    min = "770분"
                    pass_url = "/russel_gn/event/2022/hero/index.asp"
                    go3_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2054" 
                    am_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2040"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "추후 공지"
                    txt03 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수<br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble05"
                    meal = "급식을"
                    min = "740분"
                    meal02 = "급식"
                    pass_url = "/russel/event/2025/hero/index.asp"
                    go3_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2055"
                    am_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2041"
                    
    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "현재 모집 중"
                    txt03 = "26/1/2(금) ~ 26/2/28(토)"
                    txt04 = "온라인 접수 <a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식(바자관 자리)을"
                    min = "1,020분"
                    pass_url = "https://russeldc.megastudy.net/russel/event/2025/hero/index.asp"
                    go3_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2056" 
                    am_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2042"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    bubble = "bubble02"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "7/23(수)~마감 시"
                    txt03 = "윈터스쿨: 26년 1/1(목)~2/28(토)<br>윈터스쿨 플러스: 26년 2/1(일)~2/28(토) [9주 완성]"
                    txt04 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelbc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식을"
                    omega_top = "102px"
                    omega_left = "408px"
                    danka_list01 = "수능까지 탄탄한 커리큘럼<br><strong>메가스터디 수능 전문 강사진</strong>"
                    danka_list02 = "몰입감 높고 철저한 관리가<br>진행되는 <strong>현장강의</strong>"
                    danka_list03 = "과목별/수준별/진도별<br><strong>전략적인 수업 선택</strong>"
                    danka_list04 = "강의 전·후<br><strong>개인 맞춤 학습관리</strong>" 
                    go3_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2057"
                    am_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2043"
                    
	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    txt01 = "추후 공지"
                    txt02 = "추후 공지"
                    txt03 = "26년 1월 ~ 26년 2월 [9주 완성]"
                    txt04 = "온라인 원서 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.\n누구보다 빠르게 윈터스쿨 접수 소식을 받고 싶다면, \n학원 문자 수신 알리미 신청 버튼을 눌러주세요.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식(자체 식당)을"
                    go3_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2058"
                    am_url ="https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2044"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    keywords = "러셀학원, 러셀 입시학원, 러셀학원, 러셀CORE학원, 러셀 기숙학원, 입시전문학원, 수능자습학원, 수능대비학원, 최상위권입시전략, 의대입시전략, 메가스터디러셀윈터스쿨, 러셀윈터스쿨, 윈터스쿨, 겨울방학, 최상위권겨울방학, 최상위권윈터스쿨, 고1입시준비, 겨울방학학원, 겨울방학공부, 고1수능, 고등학생겨울방학학원, 겨울방학수능준비, 공부습관, 학습습관, 학습습관형성, 겨울방학학습습관형성, 윈터스쿨후기, 러셀윈터스쿨후기, 센텀윈터스쿨, 센텀러셀윈터스쿨, 센텀윈터스쿨후기, 러셀센텀, 센텀러셀, 고2겨울방학, 고2입시준비, 2028학년도수능준비"
                    description = "Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관을 러셀 센텀에서 완성하세요."
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "2025년 6월 ~ 마감 시"
                    txt03 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식을"
                    min = "770분"
                    go3_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2064" 
                    am_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2049"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "26년 고3&middot;고2&middot;고1&middot;중3"
                    txt02 = "8/6(수)~마감시"
                    txt03 = "1/1(목)~2/28(토) <br> ※ 전체(59일) 필수 이용"
                    txt04 = "온라인 사전 접수 및 실등록 <a class='bt-apply' href='https://russelyt.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>사전 접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble03"
                    meal = "급식을"
                    go3_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2059"
                    am_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2045"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "8/11(월) 14시 ~ 마감 시 까지"
                    txt03 = "추후 안내"
                    txt04 = "온라인 사전예약<a class='bt-apply' href='https://russeljg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble03"
                    min = "740분"
                    go3_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2060"
                    am_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2046"

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "8월 사전 예약 예정"
                    txt03 = "25년 12월~26년 2월(상세일정 추후 공개)"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble04"
                    meal = "급식을"


	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "2025년 8월부터"
                    txt03 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt04 = "온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble03"
                    meal = "식당을"
                    go3_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2062"
                    am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2048"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "26년 고3&middot;고2"
                    txt02 = "2025년 7월 ~ 마감 시"
                    txt03 = "26년 1월 ~ 26년 2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble02"
                    meal = "자체 식당을"
                    min = "540분"
                    pass_url = "https://russelus.megastudy.net/russel/info/notice/notice_view.asp?Code=32032&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"
                    go3_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2065"
                    am_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2050"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "사전 예약 중"
                    txt03 = "26년 1~2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble03"
                    meal = "자체 식당을"
                    min = "540분"
                    danka_list01 = "몰입감 높은 <strong>현장강의</strong>와<br>대치동 <strong>LIVE 강의</strong>"
                    danka_list02 = "수업 전후 철저한 관리와<br><strong>선생님 전용 학습 콘텐츠</strong>" 
                    go3_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2066"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "26년 고3&middot;고2"
                    txt02 = "사전 예약 중"
                    txt03 = "26년 1~2월 [8주 완성]"
                    txt04 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble07"
                    go3_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2063" 
                    apply_url = "https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    txt01 = "2026년 고3&middot;고2&middot;고1"
                    txt02 = "접수 대기 중"
                    txt03 = "2026년 1월 순차 개강"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble06"
                    meal = "식사를"
                    go3_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2067"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt01 = "26년 고3&middot;고2&middot;고1&middot;중3"
                    txt02 = "2025년 7월 ~ 마감 시"
                    txt03 = "25년 12월 ~ 26년 2월"
                    txt04 = "온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    bubble = "bubble02"
                    meal = "급식실을"
                    min = "540분"
                    go3_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2068"
                    am_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2051"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "2025년 6월 중순 ~ 마감 시"
                    txt03 = "25년 12월 말 ~ 26년 2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=191'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "자체 식당(급식)을"
                    danka_list01 = "메가스터디 온&middot;오프 강사진<br><strong>현장 강의와 대치동 LIVE 강의</strong>"
                    go3_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2069" 
                    am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2052"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "26년 고3&middot;고2&middot;고1"
                    txt02 = "현재 접수 중"
                    txt03 = "25년 12월 ~ 26년 2월 [9주 완성]"
                    txt04 = "현장 또는 온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식을"
                    go3_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2070" 
                    am_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2053"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_bg.jpg" alt=""></div>
        <div class="v-bg01"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_bg02.jpg" alt=""></div>
        <div class="v-bg02"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_bg03.jpg" alt=""></div>

        <div class="inner">
            <!-- 폭죽 -->
            <canvas id="fireworkCanvas" width="150" height="150"></canvas>
            <canvas id="fireworkCanvas02" width="86" height="86"></canvas>

            <div class="v-stit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/v_stit.png" alt="Win을 만드는 겨울, 터지는 잠재력! 최상위권으로 도약하는 학습 습관의 완성"></div>
            <div class="v-tit"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_tit.png" alt="2026 윈터스쿨"></div>

            <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_obj01.png" alt="WIN"></div>
            <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/v_obj02.png" alt=""></div>

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
                <div>
                    <dl>
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                    <dl>
                        <dt><%=tit04%></dt>
                        <% If sCampusCode = "CD0249" Then '영통 %>
                        <dd>
                            <!-- 스케줄링작업 -->
                            <% If curYmdhmin < 202508061400 then %> <!-- ~2025-08-06(수) 14:00 이전 -->
                                온라인 사전 접수 및 실등록<a class='bt-apply' href='javascript:alert(`★사전접수 8/6(수) 오후 2시~마감 시★\n※ 팝업 해제 필수\n※ 모집정원 내 해당자 순 접수`);'>사전 접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>
                            <% Else %> <!-- 2025-04-22(화) 14:00:00~ -->
                                <%=txt04%>
                            <% End If %>
                            <!-- //스케줄링작업 -->
                            <div class="noti-txt" style="margin-left: 0;">
                                <p>※ 유의사항</p>
                                <div>
                                    * 유의사항 <br> <br>

                                    ※ 사전 접수 기간 안내 <br>
                                    ▶ 8/6(수) 오후 2시 접수 (마감 시, 대기 접수) <br> <br>

                                    ※ 사전 접수 시, 성적표 첨부는 필수입니다.(피켈/그린반 제외) <br>
                                    ※ 온라인 원서 접수 후, 사전예약금 결제창은 팝업으로 안내되므로, 접수 전 반드시 팝업 해제를 진행해 주세요. <br>
                                    ※ 결제창이 보이지 않을 경우, 팝업 허용 후 다시 사전 접수 버튼 눌러 결제까지 진행하시기 바랍니다. <br> <br>

                                    - 사전예약금 미납 시 사전접수가 이루어지지 않으며, 접수된 원서는 자동 취소처리 됩니다. <br>
                                    - 사전접수 마감 시, 대기자 신청은  온라인 상 가능합니다. <br>
                                    - 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. <br>
                                    ① 수강 희망 강좌 온라인 결제 <br>
                                    ② 안내해드린 등록 기간 내 마이페이지에서 바자관 최종 등록 <br>
                                    ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정) <br>
                                    - 사전예약자의 실등록이 완료된 이후 대기 접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.
                                </div>
                            </div>
                        </dd>
                        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                        <dd>
                            <!-- 원서 접수 시작 전 
                             ~2025-08-11(월) 13:59:59 -->
                             <% If curYmdhmin < 202508111400 then %>
                                온라인 사전예약<a class='bt-apply' href='javascript:alert(`8/11(월) 14시부터 사전예약 접수 가능합니다.`);'>원서접수 바로가기</a><br>
                                <p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>

                            <!-- 원서 접수 시작 후 
                             2025-08-11(월) 14:00:00~ -->
                            <% Else %> 
                                <%=txt04%>
                            <% End IF %>
                        </dd>
                        <% Else %>
                        <dd><%=txt04%></dd>
                        <% End If %>
                    </dl>
                </div>
            </div>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="stxt">
                *학원별 일정 및 모집요강은 상이할 수 있으니, 자세한 내용은 학원별 페이지에서 확인 부탁드립니다.
            </p>
            <% End If %>
            <!--마감딱지-->
            <!-- <div class="ico-end" style="top:310px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div> -->
            <!--//마감딱지-->
        </div>
	</div>

    <!-- quick 배너 -->
	<div class="quick">
        <!--학원 문자 수신 알리미 신청-->
        <a href="javascript:void(0)" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/quick_sms.jpg" alt="학원 문자 수신 알리미 신청" /></a>
        <!--//학원 문자 수신 알리미 신청-->
        
        <!--윈터스쿨 홍보영상-->
        <a class="mb10" href="javascript:CastPopup('https://www.youtube.com/embed/Q3xiVSyuXGI')"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/quick_video.png" alt="홍보영상" /></a>
        <!--//윈터스쿨 홍보영상-->
	</div>
	<!--// quick 배너 -->
</div>
