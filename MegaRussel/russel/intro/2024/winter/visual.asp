
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

fix_menu02 = "최상위권의 선택"
tit01 = "모집 대상"
txt01 = "25년 고3&middot;고2&middot;고1"
tit02 = "운영 기간"
txt02 = "24년 12월~25년 2월 [9주 완성]"
tit03 = "접수 기간"
txt03 = "24년 6월~마감 시"
tit04 = "접수 방법"
txt04 = "현장 또는 온라인 접수"
quick_tit = "겨울방학 단과"
regular_stxt = "최상위권을 위한<br>탄탄한 커리큘럼"
regular_txt = "정규 단과 [고3]"
regular_url = "https://russel.megastudy.net/intro/danka/2025/02/go3.asp"
winter_txt = "윈터특강<br>[고3&middot;고2&middot;고1]"
winter_txt02 = "윈터특강 [고2&middot;고1]"
winter_url = "/intro/danka/2025/01/winter.asp"
winter_url02 = "javascript:alert('추후 오픈 예정입니다.');"
pass_url = "https://russel.megastudy.net/perfect/2024/susi/index.asp"
food_txt = "급식(식당)"
tab01_txt = "충분한 자습시간"
tab04_txt = "포트폴리오"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수"
                    mozip_pos ="153px"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1830"
                    winter_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1785"
                    winter_url02 = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1786"
                    tit01 = "접수 현황"
                    txt01 = "1월 : <span class='red_txt'>전학년 마감 </span> <br>2월 : 원서접수자 개별 안내 예정"
                    txt02 = "윈터스쿨 : 2024년 12월 28일(토) ~ 2025년 1월 31일(금)<br>윈터스쿨 PLUS : 2025년 2월 1일(토) ~ 2025년 2월 28일(금)<br><P class='stxt ml0'>*입학일은 조정 가능합니다.</P>"
                    txt04 = "온라인 접수<a class='btn-gray-s ml_10' href='https://russelgn.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=185'>2월 온라인 원서접수 </a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_stxt = "최상위권을 위한<br>단계적 연간 커리큘럼"
                    winter_txt = "윈터특강 [고3]"
                    food_txt = "급식"
                    stuYear = "[고3]"
                    tab01_txt = "충분한 학습시간"
                    tab04_txt = "가정통신문"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    regular_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1831"
                    winter_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1787"
                    txt01 = "25년 고3"
                    txt02 = "25년 1월2일~2월 28일 [9주]"
                    tit03 = "접수 현황"
                    txt03 = "25년 고3 잔여석 접수 중<br><strong>[25년 고1,2 전반 마감]</strong>"
                    txt04 = "온라인 접수 <a class='bt-apply' href='https://russeldc.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    winter_txt = "윈터특강 [고2&middot;고1]"
                    food_txt = "급식"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    regular_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1806"
                    winter_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1788"
                    winter_url02 = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1789"
                    winter_txt = "윈터특강 [고3]"
                    stuYear = "[고3]"
                    txt02 = "25/1/2(목) ~ 25/2/28(금) [9주 완성]"
                    tit03 = "접수 현황"
                    txt03 = "전석 마감 [대기자 접수 중]"
                    txt04 = "온라인 전형 접수<a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "급식(바자관 자리)"
                    icoEnd ="<strong class='fz23'>전석 마감 <br> [대기자 접수 중]</strong>"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1833"
                    winter_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1823"
                    txt01 = "25년 고3&middot;고2&middot;고1"
                    txt02 = "윈터스쿨 : 2025년 1월 1일(수) ~ 2025년 1월 31일(금) <br>윈터스쿨 PLUS : 2025년 2월 1일(토) ~ 2025년 2월 28일(금)"
                    tit03 = "접수 방법"
                    txt03 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://pf.kakao.com/_sFgGxj' target='_blank'>대기자 접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt04 = ""
                    winter_txt = "윈터특강<br>[고2&middot;고1]"
                    food_txt = "급식"
                    icoEnd = "<strong class='fz23'>전석 마감<br>[대기자 접수 중]</strong>"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1834"
                    winter_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1791"
                    winter_url02 = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1792"
                    txt01 = "2025년 고3, 고2"
                    txt02 = "2025년 1월 2일(목) ~ 2월 28일(금) [9주]"
                    tit03 = "모집 안내"
                    txt03 = "전석 마감 (*대기자 접수 중) <a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>온라인 대기 접수</a><br><p class='stxt ml0 fz16'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    
                    winter_txt = "윈터특강 [고3]"
                    winter_txt02 = "윈터특강 [고2]"
                    stuYear = "[고3]"
                    food_txt = "급식(자체 식당)"
                    icoEnd ="<strong class='fz23'>전석 마감,</strong>대기자 접수 中"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1839"
                    winter_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1794"
                    txt02 = "~3월 2일(일)까지"
                    txt03 = "대기 접수 중"
                    txt04_before = "현장 또는 온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 오픈 예정입니다.`);'>대기자 원서접수 </a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt04 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>대기자 원서접수</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "급식"
                    icoEnd ="2월 입학<br>대기 접수 중"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1835"
                    winter_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=350"
                    txt01 = "25년 고3&middot;고2&middot;고1&middot;중3"
                    tit03 = "운영 기간"
                    txt03 = "12/30(월)~2/28(금) [9주] <p class='stxt'>※ 2월 입학 시, 2월 1일(토)~2월 28일(금)</p>"
                    txt04 = "2월 입학 대기 접수 중 <a class='bt-apply' style='background: #FB4911;' href='https://russelyt.megastudy.net/russel/info/waiting/list.asp?ClsCode=2'>2월 대기 접수 바로가기</a>"
                    winter_txt = "윈터특강 [중3&middot;고1&middot;고2]"
                    food_txt = "급식"
                    icoEnd ="2월 입학 <br> 대기 접수 중"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1836"
                    winter_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1802"
                    txt01 = "25년 고1&middot;고2&middot;고3"
                    txt02 = "2/1(토) 개강"
                    tit03 = "접수 방법"
                    txt03 = "현장 접수 <p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_stxt = "성적향상을 위한<br>탄탄한 커리큘럼"
                    regular_txt = "정규&middot;특강 단과 [고3]"
                    winter_txt = "윈터특강 [고1&middot;고2]"
                    fix_menu02 = "학생들의 선택"
                    food_txt = "급식"
                    mozip_pos ="953px"


	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1837"
                    winter_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=351"
                    tit02 = "개강일"
                    txt02 = "2/1(토)"
                    txt03 = "현재 접수 중"
                    txt04 = "현장 접수 및 유선 문의<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_txt = "정규 단과<br>[고3&middot;고2&middot;고1]"
                    winter_txt = "윈터특강 [고2&middot;고1]"                   
                   

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1838"
                    winter_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1803"
                    food_txt = "급식실"
                    txt01 = "25년 고3&middot;고2"
                    txt02 = "25년 1월 초 개강 (8주 과정)"
                    txt03 = "24년 8월 12일(월) 부터"
                    txt04 = "온라인 접수<p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_txt = "정규 단과 [고3&middot;고2]"
                    txt04_before = "온라인 접수<a class='bt-apply' href='javascript:alert(`8/12(월) 오전10시 오픈 예정입니다.`);'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt04_dev = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    txt04 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    icoEnd ="전반 마감"

                    
	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1840"
                    winter_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1795"
                    txt01 = "25년 고3&middot;고2"
                    txt02 = "2025년 2월 [4주 과정]"
                    txt03 = "현재 모집 중"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    winter_txt = "윈터특강 [고2&middot;고1]"
                    food_txt = "자체 식당"
                    tab04_txt = "가정통신문"
                    icoEnd = "전 학년<br>대기자 접수"


	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1841"
                    winter_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1796"
                    txt01 = "25년 고3&middot;고2&middot;고1"
                    txt03 = "현재 접수 중"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_txt = "정규 단과 [고3&middot;고2]"
                    food_txt = "자체 식당"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1842"
                    winter_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1797"
                    txt01 = "25년 고3&middot;고2"
                    txt02 = "25년 1월 1일~25년 2월 28일"
                    tit03 = "접수 현황"
                    txt03 = "25년 고2 약간명 모집중 <br> 25년 고3(여)마감/대기자 접수중 <br> 25년 고3(남) 마감 임박"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    winter_txt = "윈터특강 [고3&middot;고2]"
                    food_txt = "자체 식당"
                    icoEnd = "고2 약간명 모집중 <br> 고3(남) 마감 임박"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1843"
                    winter_txt = "윈터특강 [고2&middot;고1]"
                    winter_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_naesin.asp?idx=358"
                    txt02 = "2025/1/2(목)~2025/2/28(금)"
                    txt03 = "현재 접수 중"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "식당(급식)"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    regular_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1844"
                    winter_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1799"
                    txt02 = "25년 1월 2일~25년 2월 28일 (9주 완성)"
                    txt03 = "7월 중~마감 시"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "자체 식당"
                    icoEnd = "전석 마감<br>대기자 접수 중"


	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1845"
                    winter_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1800"
                    txt02 = "24/12/28 ~ 25/02/28 [9주 완성]"
                    tit03 = "접수 방법"
                    txt03 = "전석 마감(대기자 접수 중)<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>대기접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "자체 식당"
                    icoEnd = "전석 마감<br>대기자 접수 중"

        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1846"
                    winter_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1801"
                    txt02 = "24.12.30~25.02.28 [9주 완성]"
                    tit03 = "접수 현황"
                    txt03 = "전석 마감(대기자 접수 중)"
                    txt04 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=173'>원서접수 바로가기</a><p class='stxt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    food_txt = "자체 식당"
                    icoEnd = "전석 마감 <br> 대기자 접수 중"

End Select
%>

<div class="visual-wrap <%=campusName%>">
    <canvas id='canv'></canvas>
	<div class="visual-area">
        <div class="inner">
            <div class="v-obj"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_obj02.png" alt="" /></div>
            <% If sCampusCode = "CD0257" OR sCampusCode = "CD0244" OR sCampusCode = "CD0250"  Then '중계/분당/부천 %>
            <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/v_txt01.png" alt="" /></div>
            <% Else %>
            <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_txt01.png" alt="올 겨울 최상위권으로 도약하기 위한 옳은 방법" /></div>
            <% End If %>
            <div class="v-tit">
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_tit02.png" alt="2025" />
                    <% If sCampusCode = "INTRO" or sCampusCode = "CD0248" or sCampusCode = "CD0257" Then '인트로/평촌/중계 %>
                    <img class="ml20" src="<%=Application("img_path_russel")%>/intro/2024/winter/badge01.png" alt="2월 시작반 모집 중" />
                    <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                    <img class="ml20" src="<%=Application("img_path_russel")%>/intro/2024/winter/badge02.png" alt="2월 시작반" />
                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                    <img class="ml20" src="<%=Application("img_path_russel")%>/intro/2024/winter/badge03.png" alt="2월 시작반 대기자 모집중" />
                    <% End If %>
                </div>
                <div class="tit-wrap">
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_tit01_1.png" alt="윈" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_tit01_2.png" alt="터" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_tit01_3.png" alt="스" /></span>
                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/winter/v_tit01_4.png" alt="쿨" /></span>
                </div>
            </div>
            <% If sCampusCode = "CD0247" Then '강남 %>
            <div class="v-txt02" style="z-index:6;">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/v_txt02.png" alt="역대 가장 탁월한 입결이 증명하는 러셀에서 최상위권 대입성공을 시작하세요!" />
                <div class="info-stxt" style="width:50px;height:50px;position:absolute;top:0;left:270px;z-index:4;cursor: pointer;">
                    <div class="data-view" style="right:50%;transform:translateX(50%)">
                        2018~2023학년도 러셀 전학원 내 의약학계열 및 주요대학 (서울대, 연세대, 고려대 등 13개 대학교) 누적 합격자 수 기준
                    </div>
                </div>
            </div>
            <% Else %>
            <div class="v-txt02"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/v_txt02.png" alt="역대 가장 탁월한 입결이 증명하는 러셀에서 최상위권 대입성공을 시작하세요!" /></div>
            <% End If %>

            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="v-info">
                <!-- 2줄 type -->
                <div>
                    <dl class="jg-margin">
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                    <dl style="position: relative; z-index: 10;">
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                </div>
                <div class="ml20">
                    <dl style="margin-top: 50px;">
                        <dt><%=tit04%></dt>
                        <dd>
                            <%=txt04%> <br>
                            <p class='stxt' style="margin-left: 0;">※ 모집요강 지원자격 해당자 순 접수</p>
                            <div class="noti-txt" style="margin-left: 0;">
                                <p>※ 유의사항</p>
                                <div>
                                    ※ 사전 접수 기간 안내<br>
                                    ▶ 1차 : 8/7(수) 오후 2시(마감) <br>
                                    ▶ 2차 : 8/16(금) 오후 2시(마감)
                                    <br>
                                    <br>
                                    - 사전예약금 접수는 선착순으로 진행되었으며, 현재 전 학년 마감되어 온라인 대기 접수 바랍니다. <br>
                                    - 2차 사전접수자(예비)는 1차 사전접수자 실등록 완료 후 취소생이 발생되었을 때 우선적으로 등록이 가능합니다.<br>
                                    - 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. (2차는 1차 사전접수자 접수 후 여석에 따라 별도 안내)<br>
                                    ① 수강 희망하는 강좌를 선택<br>
                                    ② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
                                    ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)<br>
                                    - 1,2차 사전예약자의 실등록이 완료된 이후 대기접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.                                     
                                </div>
                            </div>
                        </dd>
                    </dl>
                </div>
            </div>
            <% else %>
            <div class="v-info">
                <!-- 2줄 type -->
                <div>
                    <dl class="jg-margin">
                        <dt><%=tit01%></dt>
                        <dd><%=txt01%></dd>
                    </dl>
                    <% If sCampusCode <> "CD0247" Then '강남 제외 %>
                    <dl style="position: relative; z-index: 10;">
                        <dt><%=tit03%></dt>
                        <dd><%=txt03%></dd>
                    </dl>
                    <% End If %>
                </div>
                <% If sCampusCode = "CD0244" Then '분당 %>
                <div class="ml20" style="margin-left: -192px !important;">
                <% Else %>
                <div class="ml20">
                <% End If %>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>

                <% If sCampusCode <> "CD0345" and sCampusCode <> "CD0244" and sCampusCode <> "INTRO" and sCampusCode <> "CD0257" and sCampusCode <> "CD0250" Then '코어창원/분당/인트로/중계/부천 제외 %>
                <dl>
                    <dt><%=tit04%></dt>
                    <% If sCampusCode = "CD0249" Then '영통 %>
                    <dd>
                        <%=txt04%>
                        <div class="noti-txt">
                            <p>※ 유의사항</p>
                            <div>
                                ※ 사전 접수 기간 안내<br>
                                ▶ 1차 : 8/7(수) 오후 2시(마감) <br>
                                ▶ 2차 : 8/16(금) 오후 2시(마감)
                                <br>
                                <br>
                                - 사전예약금 접수는 선착순으로 진행되었으며, 현재 전 학년 마감되어 온라인 대기 접수 바랍니다. <br>
                                - 2차 사전접수자(예비)는 1차 사전접수자 실등록 완료 후 취소생이 발생되었을 때 우선적으로 등록이 가능합니다.<br>
                                - 사전예약금을 납부하신 분들에 한해 별도로 실등록 기간을 안내해 드릴 예정입니다. (2차는 1차 사전접수자 접수 후 여석에 따라 별도 안내)<br>
                                ① 수강 희망하는 강좌를 선택<br>
                                ② 안내해드린 등록 기간 내 방문하여 신청서 작성, 증빙서류 제출, 단과&바자관 비용 전액 결제<br>
                                ③ 추후 OT 참석 및 온라인으로 급식 결제 (별도 안내 예정)<br>
                                - 1,2차 사전예약자의 실등록이 완료된 이후 대기접수자에게 순차적으로 실등록 안내가 진행될 예정입니다.                                     
                            </div>
                        </div>
                    </dd> 
                    <% elseif sCampusCode = "CD0248" Then '평촌 %>
                    <dd>
                        <%=txt04%>
                        <div class="noti-txt">
                            <p>★ 접수 시 유의사항</p>
                            <div>
                                ※ 학생 정보로 회원 가입 후, 로그인(접수) 바랍니다 / 학부모님 정보로 접수가 불가합니다<br><br>
                                ※ 온라인 원서 접수 후, 대기예약금 결제창은 팝업 안내됩니다<br>
                                결제창이 보이지 않을 경우, 팝업 허용 후 다시 원서접수 버튼 클릭해주시기 바랍니다<br><br>
                                <span class="red_txt">
                                    ※ 대기예약금 150,000원 결제 완료 시 대기예약이 완료됩니다<br>
                                    예약금 미납 시 접수된 원서는 자동 취소 처리됩니다                                             
                                </span><br><br>
                                ※ 대기 접수자는 여석 발생 시 순차적으로 안내가 될 예정입니다<br>
                                학원 번호 차단 시 누락되는 정보에 관하여 책임을 지지 않습니다<br>
                                (러셀 평촌 : 031-341-6500)<br><br>
                                
                            </div>
                        </div>
                    </dd>
                    <% else %>
                    <dd><%=txt04%></dd>
                    <% End If %> 
                </dl>
                <% End If %>
                </div>
            </div>
            <% End If %> 
            
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="stxt">
                * 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.
            </p>
            <% End If %>

            <!--마감딱지-->
            <% If sCampusCode = "CD0249" or sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0346" OR sCampusCode = "CD0344"   Then '영통/대구/울산/코어청주/코어전주 %>
            <div class="ico-end" style="top:558px;right:calc(50% - 406px);"><div><%=icoEnd%></div></div>
            <% ElseIf sCampusCode = "CD0245" OR sCampusCode = "CD0341" OR sCampusCode = "CD0246"  Then '목동/코어대전/센텀 %>
            <div class="ico-end" style="top:558px;right:calc(50% - 460px); z-index: 1;"><div><%=icoEnd%></div></div>
            <% ElseIf sCampusCode = "CD0244" OR sCampusCode = "CD0345" Then '분당/코어창원 %>
            <div class="ico-end" style="top:558px;right:calc(50% - 568px);"><div><%=icoEnd%></div></div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="ico-end" style="top:517px;right:calc(50% - 647px);"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
	</div>

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <% If sCampusCode = "CD0247" Then '강남 %>
        <!--설명회 딱지-->
        <a class="mb15" href="https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=31018&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1">
            <img src="<%=Application("img_path_russel")%>/intro/2024/winter/notice_banner.png" alt="윈터스쿨 설명회" />
        </a>
        <!--//설명회 딱지-->
        <% End If %>
        <% If sCampusCode <> "CD0001" Then '대치 제외 %>
        <!-- <a href="javascript:fncAlarmPop();"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/sns_banner.jpg" alt="학원 문자 수신 알리미 신청" /></a> -->
        <% End If %> 
        <p class="b-tit mt15"><%=quick_tit%></p>
        <a class="q-ban" href="<%=regular_url%>">
            <span><%=regular_stxt%></span>
            <strong><%=regular_txt%></strong>
        </a>
        <a class="q-ban" href="<%=winter_url%>">
            <span>
                겨울방학 단기완성
            </span>
            <strong><%=winter_txt%></strong>
        </a>
        <% If sCampusCode = "CD0247" OR sCampusCode = "CD0244" OR sCampusCode = "CD0245" Then '강남/분당/목동 %>
        <a class="q-ban" href="<%=winter_url02%>">
            <span>
                겨울방학 단기완성
            </span>
            <strong><%=winter_txt02%></strong>
        </a>
        <% End If %>
        <% If sCampusCode = "CD0343" Then '코어원주 %>
        <a class="q-ban" href="/core_wj/2024/lecturer/index.asp">
            <span>
                [고2&middot;고1]
            </span>
            <strong>국/수/영<br>내신 현장 단과 강사진</strong>
        </a>
        <% End If %>
        <!--수능 모의체험-->
        <!-- <a class="mt15" href="/intro/2024/csat/experience.asp">
            <img src="<%=Application("img_path_russel")%>/intro/2024/winter/exgosa_banner.png" alt="수능 모의체험" />
        </a> -->
        <!--//수능 모의체험-->
	</div>
	<!--// quick 플로팅배너 -->
</div>

<!-- fix-menu -->
<nav class="fix-menu-wrap <%=campusName%>">
    <div class="fix-menu">
        <div class="menu">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <a class="on" href="javascript:void(0);">최상위권의 선택</a>
            <a href="javascript:void(0);">윈터스쿨 프로그램</a>
            <a href="javascript:void(0);">학원별 모집안내</a>
            <% Else %>
            <a class="on" href="javascript:void(0);">윈터스쿨 모집안내</a>
            <a href="javascript:void(0);"><%=fix_menu02%></a>
            <a href="javascript:void(0);">윈터스쿨 프로그램</a>
            <% End If %>
            <% If sCampusCode = "INTRO" or sCampusCode = "CD0257" Then '인트로/중계 %>
            <div class="mozip" style='right:<%=mozip_pos%>'>
                <span>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble02.png" alt="2월 시작반 모집 중" />
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble02_off.png" alt="2월 시작반 모집 중" />
                </span>
                <span>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble03.png" alt="2월 시작반 모집 중" />
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble03_off.png" alt="2월 시작반 모집 중" />
                </span>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="mozip" style='left:105px'>
                <span>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble04.png" alt="대기자 모집 중" />
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble04_off.png" alt="대기자 모집 중" />
                </span>
                <span>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble05.png" alt="대기자 모집 중" />
                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/bubble05_off.png" alt="대기자 모집 중" />
                </span>
            </div>
            <% End If %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
