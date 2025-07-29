<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "개강일"
txt_01 = "6월 순차적 개강"

tit_02 = "접수 방법"
txt_02 = "현장 또는 온라인 접수<br><span class='comment'>* 모집과 관련된 자세한 내용은<br>학원별 페이지에서 확인하실 수 있습니다.</span>"

tab_txt01 = "모집요강 및<br>지원혜택"
tab_txt02 = "최상위권 집결"

danka_half_url = "https://mrussel.megastudy.net/intro/danka/2024/04/half.asp"
danka_am_url = "/intro/danka/2024/08/am.asp"
danka_regular_url = "/intro/danka/2024/07/go3.asp"

susi_url = "/perfect/2024/susi/index.asp"
susi_txt = "2024학년도 대입 합격 결과"
chart_minute = "770분"

visual_txt = "최상위권 대입 결과"
bottom_txt = "최상위권 대입성공"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"
danka_half_txt = "4~6월"

calendar_wide = ""


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt_01 = "8월 순차적 개강"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "cont_gn"
                    tit_01 = "개강일"
                    txt_01 = "매월 1일 또는 매주 월/목 중 입학 가능"
                    tit_02 = "접수 방법"
                    txt_02 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    susi_txt = "러셀 강남 최상위권 대학 합격자 현황"
                    susi_url = "/russel_gn/event/2022/interview/index.asp"
                    danka_regular_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1626"
                    danka_am_url = "https://mrusselgn.megastudy.net/common/russel_danka/russel_danka.asp?idx=1679"

                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "cont_dc"
                    tit_01 = "개강일"
                    txt_01 = "매주 월/수/금"
                    tit_02 = "접수 방법"
                    txt_02 = "학원으로 문의(02-2138-1010) <br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "02-2138-1010"
                    danka_regular_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1699"
                    danka_am_url = "https://mrusseldc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1767"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"
                    apply_txt = "원서접수 바로가기"
                    endText = "전반마감<br>대기자 접수 중"

    Case "CD0245": txtCampus = "러셀 목동"   '목동
                    campusName = "russel_md"
                    campusName02 = "cont_md"
                    tit_01 = "접수 현황"
                    txt_01 = "전석 마감 (대기자 접수 중)"
                    tit_02 = "접수 방법"
                    txt_02 = "온라인 대기자 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "02-6932-1010"
                    susi_txt = "합격생들의 합격 스토리"
                    susi_url = "/russel_mokdong/event/2023/interview/index.asp"
                    chart_minute = "1,020분"
                    danka_regular_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1700"
                    danka_am_url = "https://mrusselmd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1768"
                    apply_txt = "대기자 접수 바로가기"
                    apply_url = "alert('대기자 접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164';"
                    endText = "전석 마감<br>(대기자 접수 중)"

    Case "CD0250": txtCampus = "러셀 부천"   '부천
                    campusName = "russel_bc"
                    campusName02 = "cont_bc"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tit_03 = "입학문의"
                    txt_03 = "온라인 상담<a href='https://pf.kakao.com/_sFgGxj' class='bt-gray-s ml10'>바로가기</a><br>전화 상담 032.265.1010"
                    tel = "032-265-1010"
                    susi_url = "https://mrusselbc.megastudy.net/board/notice_view.asp?code=29644"
                    chart_minute = "740분"
                    danka_regular_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1629"
                    danka_am_url = "https://mrusselbc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1682"

	Case "CD0244": txtCampus = "러셀 분당"   '분당
                    campusName = "russel_bd"
                    campusName02 = "cont_bd"
                    tit_02 = "접수 방법"
                    txt_02 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    txt_02_01 = "온라인 접수<br>※모집요강 지원자격 해당자 순 접수"
                    tel = "031-629-1010"
                    apply_txt = "원서접수 바로가기"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"
                    susi_url = "/russel_bundang/event/2023/interview/index.asp"
                    danka_regular_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1702"
                    danka_am_url = "https://mrusselbd.megastudy.net/common/russel_danka/russel_danka.asp?idx=1770"

	Case "CD0246": txtCampus = "러셀 센텀"   '센텀
                    campusName = "russel_ct"
                    campusName02 = "cont_ct"
                    tit_01 = "개강일"
                    txt_01 = "1차 4월 1일 (월) 개강<br>2차 5월 1일 (수) 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "051-715-1010"
                    tab_txt01 = "모집요강 및<br>장학혜택"
                    danka_am_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1775"
                    danka_regular_url = "https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1707"
                    susi_url = "javascript:void(0)"
                    susi_alert = "alert('PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel_ct/event/2023/hero/index.asp';"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"

    Case "CD0249": txtCampus = "러셀 영통"   '영통
                    campusName = "russel_yt"
                    campusName02 = "cont_yt"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "031-251-1010"
                    susi_url = "/russel_yt/event/2023/hero/index.asp"
                    chart_minute = "720분"
                    danka_regular_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1703"
                    danka_am_url = "https://mrusselyt.megastudy.net/common/russel_danka/russel_danka.asp?idx=1771"

    Case "CD0257": txtCampus = "러셀 중계"   '중계
                    campusName = "russel_jg"
                    campusName02 = "cont_jg"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "02-6316-1010"
                    tab_txt02 = "결과로 증명하는<br>러셀 중계"
                    susi_url = "https://mrusseljg.megastudy.net/board/notice_view.asp?code=29722"
                    chart_minute = "740분"
                    danka_regular_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1632"
                    danka_am_url = "https://mrusseljg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1685"
                    visual_txt = "목표 대학 합격 결과"
                    bottom_txt = "수능 목표 성적과 대학 합격"

	Case "CD0248": txtCampus = "러셀 평촌"   '평촌
                    campusName = "russel_pc"
                    campusName02 = "cont_pc"
                    tit_01 = "개강일"
                    txt_01 = "7월 1일(월)"
                    tit_02 = "접수 방법"
                    txt_02 = "현재 접수 중<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "031-341-6500"
                    tab_txt01 = "모집요강 및<br>장학혜택"
                    susi_url = "https://mrusselpc.megastudy.net/board/notice_view.asp?code=29714"
                    chart_minute = "780분"
                    danka_am_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1686"
                    danka_regular_url = "https://mrusselpc.megastudy.net/common/russel_danka/russel_danka.asp?idx=1633"
                    calendar_wide = "tbl-scroll-x"

	Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    tit_01 = "접수 현황"
                    txt_01 = "현재 모집 중 [마감 임박]"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "062-462-1010"
                    susi_url = "/core_gj/event/2024/interview/index.asp"
                    chart_minute = "810분"
                    danka_regular_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1709"
                    danka_am_url = "https://mcoregj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1777"

	Case "CD0341": txtCampus = "러셀CORE 대전"   '코어대전
                    campusName = "core_dj"
                    campusName02 = "cont_dj"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "042-381-2020"
                    tab_txt01 = "반수반 모집요강"
                    chart_minute = "820분"
                    danka_regular_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1638"
                    susi_url = "https://mcoredj.megastudy.net/core_dj/event/2023/interview/index.asp"
                    danka_am_url = "https://mcoredj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1691"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"


    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"
                    tit_01 = "개강일"
                    txt_01 = "10월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "053-291-1010"
                    tab_txt01 = "모집요강 및<br>장학혜택"
                    susi_url = "https://mrusseldg.megastudy.net/russel/event/2024/interview/index.asp"
                    danka_am_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1774"
                    danka_regular_url = "https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1706"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'"
                    endText = "연고대 마감<br>(대기접수中)"


    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    tit_01 = "개강일"
                    txt_01 = "10월 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "052-913-1010"
                    danka_am_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1776"
                    danka_regular_url = "https://mrusselus.megastudy.net/common/russel_danka/russel_danka.asp?idx=1708"
                    susi_url = "https://mrussel.megastudy.net/perfect/2024/susi/index.asp"

    Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "cont_wj"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "033-901-2020"
                    tab_txt01 = "모집요강 및<br>장학혜택"
                    susi_url = "/russel/event/2024/interview/index.asp"
                    chart_minute = "690분"
                    danka_regular_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1711"
                    danka_am_url = "https://mcorewj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1779"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"
                    danka_half_txt = "6월"

    Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "cont_jj"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "063-905-3030"
                    tab_txt01 = "모집요강 및<br>장학혜택"
                    susi_url = "/russel/event/2024/interview/index.asp"
                    chart_minute = "720분"
                    danka_regular_url ="https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1640"
                    danka_am_url = "https://mcorejj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1693"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"


    Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "cont_cw"
                    tit_01 = "개강일"
                    txt_01 = "매월 초 순차 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "055-605-1010"
                    susi_url = "/russel/event/2024/interview/index.asp"
                    chart_minute = "1,020분"
                    danka_am_url = "https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1781"
                    danka_regular_url ="https://mcorecw.megastudy.net/common/russel_danka/russel_danka.asp?idx=1713"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"


    Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "cont_cj"
                    tit_01 = "개강일"
                    txt_01 = "6월 개강"
                    tit_02 = "접수 방법"
                    txt_02 = "현장 또는 온라인 접수<br><span class='comment'>※ 모집요강 지원자격 해당자 순 접수</span>"
                    tel = "043-908-1010"
                    susi_url = "/russel/event/2024/interview/index.asp"
                    chart_minute = "660분"
                    danka_regular_url ="https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1642"
                    danka_am_url = "https://mcorecj.megastudy.net/common/russel_danka/russel_danka.asp?idx=1695"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170';"

End Select
%>




<div class="visual-wrap">
    <div class="visual-area <%=campusName%>">
        <div class="bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/visual_bg.jpg" alt="" /></div>
        <% If campus_code = "CD0249" Then '영통 %>
        <!-- 재수정규반[반수] -->
        <div class="v2-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v2-tit01.png" alt="불필요한 수업은 줄이고, 자습은 충분하게" /></div>
        <div class="v2-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v2-tit02.png" alt="2025" /></div>
        <div class="v2-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v2-img.png" alt="" /></div>
        <div class="v2-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v2-tit03.png" alt="재수정규반[반수]" /></div>
        <!-- //재수정규반[반수] -->
        <% Else %>
        <!-- 반수반 -->
        <div class="v-tit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v-tit01.png" alt="불필요한 수업은 줄이고, 자습은 충분하게" /></div>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v-tit02.png" alt="2025" /></div>
        <div class="v-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v-img.png" alt="" /></div>
        <% If campus_code = "CD0245" Then '목동 %>
        <div class="v-tit04"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/v-tit04.png" alt="반수반" /></div>
        <% End If %>
        <div class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/v-tit03.png" alt="반수반" /></div>
        <!-- //반수반 -->
        <% End If %>
        
        <% If campus_code = "CD0247" Then '강남 %>
        <p class="v-txt">
            <%=visual_txt%>가 증명하는 러셀 반수반 시스템<br>
            <strong>러셀 내 최상위권 대학 입결 1위*<br>
            <%=txtCampus%>에서 반수 성공에 도전하세요.</strong> <br>
            <span style="font-size: 1.3rem;display: inline-block;">*2018~2023학년도 러셀 전학원 내 
            의약학계열 및 주요대학<br>
            (서울대, 연세대, 고려대 등 13개 대학교) 누적 합격자 수 기준
            </span>
        </p>
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <p class="v-txt">
            <%=visual_txt%>가 증명하는 러셀 반수반 시스템<br>
            <strong>다시 시작한다면, 선택은 역시 러셀 분당입니다!
            </strong>
        </p>
        <% Else %>
        <p class="v-txt">
            <%=visual_txt%>가 증명하는 러셀 반수반 시스템<br>
            <strong>학업과 수능 준비가 동시에 가능한
            <%=txtCampus%>에서<br>
            반수 성공에 도전하세요.</strong>
        </p>
        <% End If %>

        <div class="v-info">
            <div>
                <% If campus_code <> "CD0246" and campus_code <> "CD0346" and campus_code <> "CD0244" Then '센텀/코어청주/분당 제외 %>
                <dl>
                    <dt><%=tit_01%></dt>
                    <dd><%=txt_01%></dd>
                </dl>
                <% End If %>
                <dl>
                    <dt><%=tit_02%></dt>
                    <dd><%=txt_02%></dd>
                </dl>
            </div>
        </div>
	</div>    
</div>