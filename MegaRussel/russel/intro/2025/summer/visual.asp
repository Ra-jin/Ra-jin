
<%

tit01 = "모집 대상"
txt01 = "고1~고3"
tit02 = "개강일"
txt02 = "7월 순차 개강"
tit03 = "접수 방법"
txt03 = "현장 또는 온라인 접수"

quick_tit = "여름 방학 단과"
summer_stxt = "여름 방학 집중!<br>단기간 고밀도 학습"
summer_stxt02 = "여름 방학 집중!<br>단기간 고밀도 학습"
summer_txt = "썸머 특강"
summer_url = "javascript:alert('추후 오픈 예정입니다.');"
summer_danka_txt = "바로가기" 

go3_stxt = "수능까지<br>과목별/수준별 맞춤 단과"
go3_txt = "정규&middot;특강 단과"
go3_url = "javascript:alert('추후 오픈 예정입니다.');"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"
meal = "급식(식당)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    go3_url = "https://russel.megastudy.net/intro/danka/2025/08/go3.asp"
                    summer_url = "/intro/danka/2025/07/summer.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt01 = "고3,고2,고1"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토) ~ 8/17(일)"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2054"
                    summer_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=390"
                    summer_url02 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1987"
                    summer_danka_txt = "고2&middot;고1 바로가기"
                    summer_danka_txt02 = "고3&middot;N수 바로가기"
                    summer_txt = "썸머 특강(고2&middot;고1)"
                    summer_txt02 = "썸머 특강(고3&middot;N수)"
                    icoEnd = "마감임박<br>최종등록 진행중"


    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    txt01 = "고3, 고2, 고1"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토) ~ 8/17(일)"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2055"
                    summer_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2007"
                    summer_url02 = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1988"
                    summer_danka_txt = "고2&middot;고1 바로가기"
                    summer_danka_txt02 = "고3&middot;N수 바로가기"
                    summer_txt = "썸머 특강(고2&middot;고1)"
                    summer_txt02 = "썸머 특강(고3&middot;N수)"
                    icoEnd = "전반 마감<br>대기자 접수 중"


    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    txt01 = "고3"
                    tit02 = "운영 기간"
                    txt02 = "7/21(월) ~ 8/17(일)"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2056"
                    summer_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1989"
                    icoEnd = "마감 <br> 등록 안내 중"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "고1&middot;고2&middot;고3<br><p class='s-txt'>※ 중3 학생은 종합반으로 진행</p>"
                    txt02 = "7월 21일(월)부터 순차 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://pf.kakao.com/_sFgGxj'>온라인 문의 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2057"
                    summer_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1990"
                    summer_url02 = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1992"     
                    summer_danka_txt = "고1&middot;고2 바로가기"
                    summer_danka_txt02 = "고3 바로가기"
                    summer_stxt02 = "N수생과 격차를<br>좁히는 방법"
                    summer_txt = "썸머 특강(고1&middot;고2)"
                    summer_txt02 = "썸머특강(고3)"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    txt01 = "고3&middot;고2"
                    tit02 = "기간"
                    txt02 = "7/19(토)~8/17(일) [4주]"
                    tit03 = "접수 상태"
                    txt03 = "마감, 대기자 접수 中<a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>대기 접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    meal = "급식(자체 식당)"
                    go3_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2058"
                    summer_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1993"
                    icoEnd = "전석 마감<br>대기자 접수 中"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    txt01 = "고3&middot;고2&middot;고1&middot;중3"
                    txt02 = "7월 19일(토) 개강"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2064"
                    summer_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2000"
                    icoEnd = "전반 마감<br>대기자 접수 중"


    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "고3&middot;고2&middot;고1&middot;중3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토)~8/17(일)<br>※ 30일 필수 이용"
                    txt03 = "사전접수 마감<a class='bt-apply' href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2'>온라인 대기 바로가기 </a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2059"
                    icoEnd = "사전접수 전체 마감<br> 온라인 대기 접수 중"
                    summer_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1994"
                    summer_url02 = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1995"
                    summer_danka_txt = "중3&middot;고1&middot;고2 바로가기"
                    summer_danka_txt02 = "고3 바로가기"
                    summer_stxt = "여름 방학, <br>실력 향상의 기회를 잡아라!"
                    summer_txt = "썸머 특강(중3&middot;고1&middot;고2)"
                    summer_txt02 = "썸머 특강(고3)"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "중3/고1/고2/고3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토)~8/17(일) [4주]"
                    tit03 = "접수 방법"
                    txt03 = "중간 입학 접수 가능<br> 학원으로 문의바랍니다. (☎ 02-6316-1010)<br><p class='s-txt' style='top:60px'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2060"
                    summer_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1996"
                    meal = "급식"
                    icoEnd = "마감"

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = "중3~고3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토)~8/31(일) | 6주과정"
                    txt03 = "현장 또는 온라인 접수<br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2061"
                    summer_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=391"
                    summer_url02 = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1997"
                    summer_danka_txt = "중3&middot;고1&middot;고2 바로가기"
                    summer_danka_txt02 = "고3 바로가기"
                    summer_txt = "썸머 특강(중3&middot;고1&middot;고2)"
                    summer_txt02 = "썸머 특강/단과(고3)"
                    icoEnd = "전 학년 마감"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt02 = "7월 중순 개강"
                    txt03 = "온라인 접수<a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2062"
                    summer_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1998"
                    icoEnd = "고3 마감임박<br>고2 마감(대기)"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "고1&middot;고2&middot;고3"
                    txt02 = "7월 21일(월)"
                    txt03 = "현장 또는 온라인 접수<br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2065"
                    summer_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2001"
                    icoEnd = "전학년 마감"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "7/19(토)~8/17(일) [4주 과정]"
                    txt03 = "유선 및 방문 접수<br> 062) 462-1010<br><br><p class='s-txt' style='top:60px'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2066"
                    summer_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2002"
                    icoEnd = "남학생 전석마감<br>대기자 접수 중"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "고2~고3"
                    tit02 = "운영 기간"
                    txt02 = "7/19(토)~8/15(금) [4주 과정]"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    apply_url = "https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189"
                    go3_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2063"
                    summer_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1999"
                    icoEnd = "전석 마감<br>대기자 접수 중"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    txt01 = "중3&middot;고1&middot;고2&middot;고3"
                    tit02 = "기간"
                    txt02 = "7/16(수) ~ 8/14(목)"
                    txt03 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2067"
                    summer_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2003"
                    icoEnd = "고1 마감<br>중3(남) 마감"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt01 = "중3~고3"
                    txt02 = "7/19(토) 개강"
                    txt03 = "현장 및 온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2068"
                    summer_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2004"
                    icoEnd = "전 학년<br>마감 임박"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "1차 개강 : 7/18(금)<br>2차 개강 : 7/25(금)"
                    txt03 = "온라인 사전예약 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2069"
                    summer_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2005"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "고3&middot;고2&middot;고1"
                    txt02 = "7월 개강"
                    txt03 = "현장 및 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=189'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>"
                    go3_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2070"
                    summer_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2006"
                    icoEnd = "고3 마감<br>대기자 접수 중"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <svg width="0" height="0"
        xmlns="http://www.w3.org/2000/svg"
        xmlns:xlink="http://www.w3.org/1999/xlink">
        <filter id="water">
            <feTurbulence type="fractalNoise" baseFrequency=".02 .02" numOctaves="1" result="noise1"></feTurbulence>
            <feColorMatrix in="noise1" type="hueRotate" values="0" result="noise2">
            <animate attributeName="values" from="0" to="360" dur="1s" repeatCount="indefinite"/>
            </feColorMatrix>
            <feDisplacementMap xChannelSelector="R" yChannelSelector="G" scale="20" in="SourceGraphic" in2="noise2" />
        </filter>
        </svg>
        <div class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_bg.jpg" alt=""></div>
        <div class="v-bg01"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_obj03.png" alt=""></div>
        <div class="v-bg02"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_obj04.png" alt=""></div>
        <div class="inner">
            <div class="v-tit">
                <span><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_tit.png" alt="바른공부 자습전용관 2025 썸머스쿨"></span>
                <span class="v-shadow"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_shadow.png" alt=""></span>
                <span class="v-wave01"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_wave01.png" alt=""></span>
                <span class="v-wave02"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_wave02.png" alt=""></span>
            </div>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <div class="v-bubble"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/v_bubble.png" alt="여름 방학, 완벽한 학습 몰입을 위한 재학생 맞춤 시스템"></div>
            <% Else %>
            <div class="v-bubble"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_bubble.png" alt="최상위권 도약을 위한 재학생 맞춤 시스템"></div>
            <% End If %>
            <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_obj01.png" alt=""></div>
            <div class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/v_obj02.png" alt=""></div>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p class="v-stit">
                올여름, N수생과 격차를 좁히는 방법<br>
                <strong>대학 레벨이 상승하는 <%=txtCampus%>에서 경쟁하라!</strong>
            </p>
            <% Else %>
            <p class="v-stit">
                올여름, N수생과 격차를 좁히는 방법<br>
                <strong>최상위권이 되고자 한다면, 최상위권이 집결하는 <%=txtCampus%>에서!</strong>
            </p>
            <% End If %>
           
           
 
            <div class="v-info">
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
                <dl>
                    <dt><%=tit03%></dt>
                    <% If sCampusCode = "CD0249" Then '영통 %>
                    <dd>
                        <!-- 스케줄링작업 -->
                        <% If curYmdhmin < 202504221400 then %> <!-- ~2025-04-22(화) 13:59:59 -->
                            온라인 접수<a class='bt-apply' href='javascript:alert(`사전 접수는 4/22(화) 오후 2시부터입니다. *팝업해제 필수*`);'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집 요강 지원 자격 해당자 순 접수</p>
                        <% Else %> <!-- 2025-04-22(화) 14:00:00~ -->
                            <%=txt03%>
                        <% End If %>
                        <!-- //스케줄링작업 -->
                        <div class="noti-txt" style="margin-left: 0;">
                            <p>※ 유의사항</p>
                            <div>
                                * 유의사항 <br>
                                ① 사전접수 마감으로 온라인 대기 접수를 해주시기 바랍니다. <br>
                                ② 대기 접수자는 사전접수자 등록 후 여석 발생 시 순차적으로 등록 안내 예정입니다.<br>
                                <br>
                                ※ 사전접수 기간 안내(전체 마감)<br>
                                ▶ 4/22(화) 오후 2시 <br>
                                <br>
                                - 사전접수는 사전예약금 결제 순으로 진행되었습니다.<br>
                                - 사전예약금을 납부하신 분들에 한하여 별도로 실등록 기간 및 방법을 안내해 드릴 예정입니다.<br>
                                ※ 개인정보 오입력 혹은 전형에 해당하는 증빙서류 미제출 시 입학이 제한될 수 있습니다.
                             
                            </div>
                        </div>
                    </dd>
                    <% Else %>
                    <dd><%=txt03%></dd>
                    <% End If %>
                </dl>               
            </div>

            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="stxt">
                * 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.
            </p>
            <% End If %>
            <!--마감딱지-->
            <% If sCampusCode = "CD0341" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0257" or sCampusCode = "CD0244" or sCampusCode = "CD0245" or sCampusCode = "CD0342" or sCampusCode = "CD0349" or sCampusCode = "CD0346" or sCampusCode = "CD0248" or sCampusCode = "CD0344" or sCampusCode = "CD0247" or sCampusCode = "CD0343" or sCampusCode = "CD0246" or sCampusCode = "CD0340" Then '대전/영통/대치/중계/분당/목동/대구/울산/코어청주/평촌/코어전주/강남/코어원주/센텀/코어광주 %>
            <div class="ico-end" style="top:470px;right:-28px;"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
	</div>

    <!-- quick 배너 -->
	<div class="quick">
        <% If sCampusCode = "CD0001" Then '대치 %>
        <!--학원 문자 수신 알리미 신청-->
        <!-- <a class="mb10" href="javascript:void(0)" onclick="fncAlarmPop02();"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/quick_sms.jpg" alt="학원 문자 수신 알리미 신청" /></a> -->
        <!--//학원 문자 수신 알리미 신청-->
        <% ElseIf sCampusCode = "CD0349" Then '울산 %>
        <!--설명회-->
        <!-- <a class="mb20" href="https://russelus.megastudy.net/russel/info/notice/notice_view.asp?Code=33184&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/quick_expo_v3.png" alt="설명회" /></a> -->
         <!--//설명회-->
        <% End If %>
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=summer_url%>">
            <span><%=summer_stxt%></span>
            <strong><%=summer_txt%></strong>
        </a>
        <% If sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0250" or sCampusCode = "CD0249" or sCampusCode = "CD0248" Then '강남/대치/부천/영통/평촌 %>
        <a class="q-ban" href="<%=summer_url02%>">
            <span><%=summer_stxt02%></span>
            <strong><%=summer_txt02%></strong>
        </a>
        <% End If %>
        <a class="q-ban" href="<%=go3_url%>">
            <span><%=go3_stxt%></span>
            <strong><%=go3_txt%></strong>
        </a>
        <a href="javascript:CastPopup('https://tv.naver.com/v/74149532')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/quick_thumb.png" alt="영상보기"></a>
	</div>
	<!--// quick 배너 -->
</div>
