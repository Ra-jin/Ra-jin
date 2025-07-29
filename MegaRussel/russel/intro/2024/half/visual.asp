
<%
isCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tab01 = "모집요강 및 지원혜택"
tab02 = "최상위권 집결"
tit01 = "개강일"
txt01 = "6월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"
v_txt = "최상위권 대입 결과"
half_txt = "반수 특강"
half_url = "https://russel.megastudy.net/intro/danka/2024/04/half.asp"
am_txt = "AM단과"
am_url = "/intro/danka/2024/08/am.asp"
regular_txt = "정규&middot;특강 단과"
regular_url = "/intro/danka/2024/07/go3.asp"
btn_txt = "2024학년도 대입 합격 결과"
btn_url = "/perfect/2024/susi/index.asp"
quick_tit = "2025 수능 대비 단과"
chart_minute = "770분"
danka_half_txt = "4~6월"
danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 현장강의</strong>"
danka_txt02 = "<strong>수업 전후 학습관리</strong>와<br><strong>선생님 전용 학습 콘텐츠</strong>"
slide_txt01 = "최상위권"
slide_txt02 = "급식"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    txt01 = "8월 순차적 개강"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt01 = "매월 1일 또는 매주 월/목 중 입학 가능"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1626"
                    am_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1679"
                    btn_url = "/russel_gn/event/2022/hero/index.asp"
                    danka_half_txt = "5~6월"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    txt01 = "매주 월/수/금"
                    txt02 = "학원으로 문의(02-2138-1010) <br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1767"
                    regular_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1699"
                    icoEnd = "전반마감 <br>대기자 접수 중"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    tit01 = "접수 현황"
                    txt01 = "전석 마감 (대기자 접수 중)"
                    txt02 = "온라인 대기자 접수 <a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=164'>대기자 접수 바로가기</a><br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    icoEnd = "전석 마감<br>(대기자 접수 중)"
                    am_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1768"
                    regular_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1700"
                    btn_txt = "합격생들의 합격 스토리"
                    btn_url = "/russel_mokdong/event/2023/interview/index.asp"
                    chart_minute = "1,020분"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 접수<br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tit03 = "입학문의"
                    txt03 = "온라인 상담 <a class='bt-apply' href='https://pf.kakao.com/_sFgGxj'>바로가기</a><br>전화 상담 032.265.1010"
                    am_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1682"
                    regular_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1629"
                    btn_url = "https://russelbc.megastudy.net/russel/info/notice/notice_view.asp?Code=29644&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"
                    chart_minute = "740분"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1770"
                    regular_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1702"
                    btn_url = "/russel_bundang/event/2023/interview/index.asp"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    tab01 = "모집요강 및 장학혜택"
                    txt01 = "1차 4월 1일 (월) 개강<br>2차 5월 1일 (수) 개강"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1775"
                    regular_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1707"
                    btn_url = "https://russelct.megastudy.net/russel_ct/event/2023/hero/index.asp"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 접수<br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1703"
                    am_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1771"
                    btn_url = "/russel_yt/event/2023/hero/index.asp"
                    chart_minute = "720분"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    tab02 = "결과로 증명하는 러셀 중계"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수<br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    v_txt = "목표 대학 합격 결과"
                    am_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1685"
                    regular_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1632"
                    btn_url = "https://russeljg.megastudy.net/russel/info/notice/notice_view.asp?Code=29722&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"
                    chart_minute = "740분"
                    slide_txt01 = "학생들"

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = "7월 1일(월)"
                    txt02 = "현재 접수 중<br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    tab01 = "모집요강 및 장학혜택"
                    am_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1686"
                    regular_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1633"
                    btn_url = "https://russelpc.megastudy.net/russel/info/notice/notice_view.asp?Code=29714"
                    chart_minute = "780분"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    tab01 = "모집요강 및 장학혜택"
                    txt01 = "10월 초 순차 개강"
                    txt02 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><br><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1687"
                    regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1634"
                    btn_url = "https://russeldg.megastudy.net/russel/event/2024/interview/index.asp"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>현장강의/대치동 LIVE 강의</strong>"
                    icoEnd = "연고대 마감<br>(대기접수中)"
                    am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1774"
                    regular_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1706"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "10월 순차 개강"
                    txt02 = "현장 또는 온라인 접수<br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1708"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>현장강의/대치동 LIVE 강의</strong>"
                    btn_url ="https://russel.megastudy.net/perfect/2024/susi/index.asp"
                    am_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1776"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    tit01 = "접수 현황"
                    txt01 = "현재 모집 중 [마감 임박]"
                    txt02 = "현장 접수<br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    regular_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1709"
                    btn_url ="/core_gj/event/2024/interview/index.asp"
                    chart_minute = "810분"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 현장강의/대치동 LIVE 강의</strong>"
                    am_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1777"

	Case "CD0341": txtCampus = "러셀CORE 대전"  '코어대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    tab01 = "반수반 모집요강"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1691"
                    regular_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1638"
                    btn_url = "/core_dj/event/2023/interview/index.asp"
                    chart_minute = "820분"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 현장강의/대치동 LIVE 강의</strong>"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    tab01 = "모집요강 및 장학혜택"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><br><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1779"
                    regular_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1711"
                    btn_url = "/russel/event/2024/interview/index.asp"
                    chart_minute = "690분"
                    danka_txt01 = "몰입도 높은 <strong>LIVE 강의와<br>대치동 현강 콘텐츠/수업 관리</strong>"
                    danka_txt02 = "<strong>강의 전후 학습관리</strong>와<br><strong>시기별 맞춤 학습 콘텐츠</strong>"
                    slide_txt02 = "자체 식당을"
                    danka_half_txt = "6월"

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt01 = "매월 초 순차 개강"
                    tab01 = "모집요강 및 장학혜택"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><br><p class='fz18 bold mt5'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1693"
                    regular_url ="https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1640"
                    btn_url = "/russel/event/2024/interview/index.asp"
                    chart_minute = "720분"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 대치동 LIVE 강의</strong>"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    txt01 = "매월 초 순차 개강"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1781"
                    regular_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1713"
                    btn_url = "/russel/event/2024/interview/index.asp"
                    chart_minute = "1,020분"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 대치동 LIVE 강의</strong>"
                    danka_txt02 = "<strong>강의 전후 학습관리</strong>와<br><strong>선생님 전용 학습 콘텐츠</strong>"
        
	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "6월 개강"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=170'>원서접수 바로가기</a><br><p class='fz18 bold'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    am_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1695"
                    regular_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1642"
                    btn_url = "https://corecj.megastudy.net/russel/event/2024/interview/index.asp"
                    chart_minute = "660분"
                    danka_txt01 = "메가스터디 온&middot;오프 강사진의<br><strong>몰입감 높은 현장강의/대치동 LIVE 강의</strong>"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="v-tit">
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half/v-tit01.png" alt="불필요한 수업은 줄이고, 자습은 충분하게" /></div>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/v-tit02.png" alt="2025" /></div>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/v-tit03.png" alt="반수반" /></div>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/v-img.png" alt="" /></div>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/v-tit04.png" alt="반수반" /></div>
            </div>
            <% Else %>
            <div class="v-tit">
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half/v-tit01.png" alt="불필요한 수업은 줄이고, 자습은 충분하게" /></div>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half/v-tit02.png" alt="2025" /></div>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half/v-img.png" alt="" /></div>
                <% If sCampusCode = "CD0245" Then '목동 %>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/v-tit03.png" alt="반수반" /></div>
                <% Else %>
                <div><img src="<%=Application("img_path_russel")%>/intro/2024/half/v-tit03.png" alt="반수반" /></div>
                <% End If %>
            </div>
            <% End If %>

            <% If sCampusCode = "CD0247" Then '강남 %>
            <p class="v-txt"><%=v_txt%>가 증명하는 러셀 반수반 시스템<br>
                <strong>러셀 내 최상위권 대학 입결 1위* <%=txtCampus%>에서 반수 성공에 도전하세요.</strong> <br>
                <span class="fz14">*2018~2023학년도 러셀 전학원 내 의약학계열 및 주요대학 (서울대, 연세대, 고려대 등 13개 대학교) 누적 합격자 수 기준
                </span>
            </p>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <p class="v-txt"><%=v_txt%>가 증명하는 러셀 반수반 시스템<br>
                <strong>다시 시작한다면, 선택은 역시 러셀 분당입니다!</strong>
            </p>
            <% Else %>
            <p class="v-txt"><%=v_txt%>가 증명하는 러셀 반수반 시스템<br>
                <strong>학업과 수능 준비가 동시에 가능한 <%=txtCampus%>에서 반수 성공에 도전하세요.</strong>
            </p>
            <% End If %>

            <div class="v-info">
                <% If sCampusCode <> "CD0246" and sCampusCode <> "CD0346" and sCampusCode <> "CD0244" Then '센텀/코어청주/분당 제외 %>
                <dl>
                    <dt><%=tit01%></dt>
                    <dd><%=txt01%></dd>
                </dl>
                <% End If %>
                <dl>
                    <dt><%=tit02%></dt>
                    <dd><%=txt02%></dd>
                </dl>
                <% If sCampusCode = "CD0250" Then '부천 %>
                <dl>
                    <dt><%=tit03%></dt>
                    <dd><%=txt03%></dd>
                </dl>
                <% End If %>
            </div>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="stxt">* 모집과 관련된 자세한 내용은 학원별 페이지에서 확인하실 수 있습니다.</p>
            <% End If %>
        </div>
        <div class="bg"><img src="<%=Application("img_path_russel")%>/intro/2024/half/visual_bg.jpg" alt="" /></div>

        <!-- <% If sCampusCode = "CD0247" Then '강남 %>
        <a href="https://russelgn.megastudy.net/russel/info/notice/notice_view.asp?Code=30768&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1" class="ico_recruit">
            <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_recruit_gn.png" alt="" />
        </a>
        <% End If %> -->
	</div>
    
	<!--마감딱지-->
    <% If sCampusCode = "CD0245" Then '목동 %>
	<div class="ico-end" style="top:660px;right:calc(50% - 653px);"><div class="fz20"><%=icoEnd%></div></div>
    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
    <div class="ico-end" style="top:615px;right:calc(50% - 610px);"><div><%=icoEnd%></div></div>
    <% End If %>
	<!--//마감딱지-->

	<!-- quick 플로팅배너 -->
	<div class="quick">
        <p class="b-tit"><%=quick_tit%></p>
        <a class="q-ban" href="<%=am_url%>">
            <span>
                N수생을 위한<br>
                평일 오전&middot;오후 단과
            </span>
            <strong><%=am_txt%></strong>
        </a>
        <a class="q-ban" href="<%=regular_url%>">
            <span>
                수능까지 체계적인<br>
                과목별/수준별 단과
            </span>
            <strong><%=regular_txt%></strong>
        </a>
        <% If sCampusCode = "CD0247" Then '강남 %>
        <a class="mt15" href="/russel/event/2020/megapass/megapass.asp"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/img_quick.jpg" alt="" /></a>
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
            <a href="javascript:void(0);">반수생 특화 시스템</a>
            <a href="javascript:void(0);">학원별 모집안내</a>
            <% Else %>
            <a class="on" href="javascript:void(0);"><%=tab01%></a>
            <a href="javascript:void(0);"><%=tab02%></a>
            <a href="javascript:void(0);">반수생 특화 시스템</a>
            <% End If %>
        </div>
    </div>
</nav>
<!-- //fix-menu -->
