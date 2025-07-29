<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "개강"
txt_01 = "2월 순차 개강"
tit_02 = "접수 기간"
txt_02 = "현재 모집 중 <br><span class='comment'>* 자세한 내용은 학원별 모집 요강 참조</span>"
tit_03 = "접수 방법"
txt_03 = "현장 또는 온라인 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

regular_txt = "정규&middot;특강 단과 시간표 바로가기"
regular_url ="https://mrussel.megastudy.net/intro/danka/2025/02/go3.asp"

review_btn = "러셀 대입성공 Story 더보기" 
review_btn_url = "/russel/event/2024/interview/index.asp"

baja_txt ="한 건물 내에서<br>강의실-바자관-급식(자체 식당)"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    tit_02 = "접수"
                    

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    txt_01 = "12월 순차 개강"
                    tit_02 = "운영 기간"
                    txt_02 = "1차 : 24년 12/2(월) ~ 24년 12/31(화)<br>2차 : 2025년 1월 2일(목) ~ <br class='tbl-none'>2025년 2월 13일(목)"
                    txt_03 = "온라인 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    
                    regular_txt = "2월 정규 단과"
                    regular_url ="https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1830"
                    
                    regular_txt02 = "12월 단기특강"
                    regular_url02 = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1514"
                    
                    baja_txt ="한 건물 내에서 강의실-바자관-급식"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"
                    
    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    txt_01 = "1월 2일(목) 개강"
                    txt_02_before = "12월 초 접수 예정"
                    txt_02 = "현재 모집 중"
                    txt_03 = "온라인 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179')"
                    regular_url ="https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1805"
                    baja_txt = "한 건물 내에서 강의실-바자관-급식"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    txt_01 = "1/2(목) 개강"
                    tit_02 = "접수 현황"
                    txt_02 = "마감 (대기자 접수 중)"
                    txt_03 = "온라인 대기자 접수 후 추후 현장 등록<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    regular_url ="https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1832"
                    review_btn = "러셀 목동 대입 결과"
                    review_btn_url = "/russel_mokdong/event/2024/interview/index.asp"
                    baja_txt = "한 건물 내에서 <br>강의실-바자관-급식(바자관 자리)"
                    review_txt = "* 러셀 목동학원 재수생 우선선발반 및 N수 정규반 재원생 후기 중 일부 발췌"
                    endText = "마감 <br> (대기자 접수 중)"
                    apply_txt = "대기자 접수 바로가기"
                    apply_url = "alert('대기 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"


    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    txt_01 = "2/1(토) 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    tit_03 = "입학 문의"
                    txt_03 = "온라인 상담 <a class='bt-gray-s' href='https://pf.kakao.com/_sFgGxj'>바로가기</a><br>전화 상담 032.265.1010"
                    regular_url ="https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1833"
                    regular_txt02 = "12월 국/수/영 3주 특강 바로가기"
                    regular_url02 = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1824"
                    review_btn = "러셀 부천 2024학년도 대입 합격 결과"
                    baja_txt = "한 건물 내에서 강의실-바자관-급식"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    txt_01 = "2025년 1월 2일 (목)"
                    tit_02 = "모집"
                    txt_02 = "현재 모집 中"
                    txt_03 = "온라인 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    regular_url ="https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1834"
                    review_btn = "명예의 전당(대입 결과) 확인하기"
                    apply_txt = "온라인 원서 접수하기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"
                    baja_txt = "한 건물 내에서 <br>강의실-바자관-급식(자체 식당)"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    tit_01 = "접수 기간"
                    txt_01 = "현재 모집 중"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 방문 접수<br><strong class='f12'>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    regular_url ="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1839"
                    review_btn = "러셀 센텀 명예의 전당"

                    baja_txt = "한 건물 내에서 강의실-바자관-급식"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    tit_02 = "운영 기간"
                    txt_01 = "2/1(토) 개강"
                    txt_02 = "12/30(월)~2/28(금)"
                    txt_03 = "현장 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    regular_url ="https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1835"
                    review_btn = "2024학년도 러셀 영통 명예의 전당"

                    baja_txt = "한 건물 내에서 강의실-바자관-급식"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    txt_01 = "2/1(토) 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    regular_url ="https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1836"
                    review_btn = "러셀 중계 2024학년도 대입 결과"

                    baja_txt = "한 건물 내에서 강의실-바자관-급식"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    txt_01 = "2/1(토)"
                    txt_02 = "현재 접수 중"
                    txt_03 = "현장 접수 및 유선 문의<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    regular_url ="https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1837"
    
    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    txt_01 = "2월 순차 개강"
                    txt_02 = "11월 20일(수) 시작"
                    regular_url ="https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1838"
                    txt_03 = "온라인 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    apply_txt = "원서접수 바로가기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); window.open('https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179')"
                    review_btn = "2024학년도 대입 합격 결과"
                    baja_txt = "한 건물 내에서 강의실-바자관-급식"
                    endText = "전반 마감<br>(대기 접수 중)"

    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    txt_01 = "2월 순차 개강"
                    txt_02 = "현재 접수 중"
                    regular_url ="https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1840"

                    apply_txt = "온라인 원서 접수하기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"
                    baja_txt = "한 건물 내에서 강의실-바자관-자체식당"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    txt_01 = "2월 순차 개강"
                    txt_02 = "현재 접수 중"
                    regular_url ="https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1841"
                    review_btn = "러셀CORE 광주 명예의 전당 바로가기"
                    review_btn_url = "/core_gj/event/2024/interview/index.asp"

	Case "CD0341": txtCampus = "러셀 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    txt_01 = "매주 (월/수) 입학"
                    txt_01_01 = "매주 (월/수) 입학"
                    txt_02 = "현재 접수 중"
                    regular_url ="https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1842"
                    review_btn = "2024 대입 합격 결과 바로가기"
                    apply_txt = "원서접수 바로가기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"

                    baja_txt = "한 건물 내에서 강의실-바자관-자체 식당"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    txt_01 = "1월 순차 개강"
                    txt_02 = "현재 접수 중"
                    regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1843"
                    review_btn = "러셀CORE 원주 명예의 전당"
                    baja_txt = "한 건물 내에서 강의실-바자관-자체 식당"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"
                    

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    tit_01 = "접수 기간"
                    txt_01 = "현재 접수 중"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수 <br><strong class='f13'>※ 모집요강 지원자격 해당자순 접수</strong>"
                    regular_url ="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1844"
                    review_btn = "2024 대입 합격 결과"
                    baja_txt = "한 건물 내에서 강의실-바자관-자체 식당"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"

    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    txt_01 = "2월 순차 개강"
                    txt_02 = "현재 모집 중"
                    txt_03 = "온라인 접수<br><strong>※ 모집요강 지원자격 해당자 순 접수</strong>"
                    regular_url ="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1845"
                    review_btn ="2024학년도 대입 합격 결과"
                    apply_txt = "온라인 원서 접수하기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"
                    baja_txt = "한 건물 내에서 강의실-바자관-자체 식당"


    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    txt_01 = "[1차] 12월 1일(일) <br> [2차] 12월 30일(월)"
                    txt_02 = "현재 접수 중"
                    regular_url ="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1846"
                    review_btn = "러셀CORE 청주 2024 대입 합격 결과"
                    baja_txt = "한 건물 내에서 강의실-바자관-자체 식당"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=179'"
End Select
%>


<div class="visual-wrap">
    <% If campus_code = "INTRO" or campus_code = "CD0245" or campus_code = "CD0250" or campus_code = "CD0244" Then '인트로/목동/부천/분당 %>
    <!-- 학원 문자 수신 알리미 -->
    <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop()"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a>
    <!-- //학원 문자 수신 알리미 -->
    <% End If %>
    
    <p class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/visual_bg.jpg" alt=""></p>
    <div class="inner">
        <p class="v-txt"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/v-txt.png" alt="단과 수업과 의무자습을 한방에!" /></p>
        <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/v-tit01.png" alt="2026" /></p>
        <% If campus_code = "CD0249" Then '영통 %>
        <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/v-tit02.png" alt="재수정규반[우선선발]" /></p>
        <% Else %>
        <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/v-tit02.png" alt="재수생 우선선발반" /></p>
        <% End If %>
        
        <% If campus_code = "INTRO" Then '인트로 %>
        <p class="v-stxt">나의 경쟁력을 높이는 한발 빠른 시작,<br>
            <strong><%=txtCampus%>에서 최상위권 대입성공을 선점</strong>하세요!</p>
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <p class="v-stxt">나의 경쟁력을 높이는 한발 빠른 시작,<br>
            <strong><%=txtCampus%>에서 목표 성적과 <br>
                대학 합격을 위한 성공을 선점</strong>하세요!</p>
        <% Else %>
        <p class="v-stxt">나의 경쟁력을 높이는 한발 빠른 시작,<br>
            <strong><%=txtCampus%>에서 <br>
                최상위권 대입성공을 선점</strong>하세요!</p>
        <% End If %>

        <div class="v-info">
            <div>
                <% If campus_code <> "CD0346" Then '코어청주 제외 %>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <% End If %>
                <dl class="mt10">
                    <dt><%=tit_02%></dt>
                    <% If campus_code = "CD0001" Then '대치 %>
                        <% if curYmdhmin < 202412031100 then %>
                        <dd><%=txt_02_before%></dd>
                        <% Else %>
                        <dd><%=txt_02%></dd>
                        <% End If %>
                    <% Else %>
                    <dd><%=txt_02%></dd>
                    <% End If %>
                </dl>
            </div>
        </div>
    </div>
</div>