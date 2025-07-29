
<%
russelCore = InStr(GetCampusVarsSiteMGC("_CAMPUS_"), "core_")

tit01 = "개강일"
txt01 = "5월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"

go3_url = "https://russel.megastudy.net/intro/danka/2025/05/go3.asp"
go3_stxt = "1등급을 만드는 단계별 커리큘럼"
go3_txt = "정규&middot;특강 단과"

am_url = "https://russel.megastudy.net/intro/danka/2025/05/am.asp"
am_stxt = "오직 N수생을 위한 평일 오전/오후 단과"
am_txt = "AM단과"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"
result_url = "/russel/event/2024/interview/index.asp"
chart_min = "770"
baja_txt = "식당"


Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")
    Case "INTRO": txtCampus = "러셀"  '인트로
                    campusName = "intro"
                    play = "slide_play"
                    txt01 = "8월 순차적 개강"
                    go3_url = "https://russel.megastudy.net/intro/danka/2025/08/go3.asp"
                    am_url = "https://russel.megastudy.net/intro/danka/2025/08/am.asp"

    Case "CD0247": txtCampus = "러셀 강남"  '강남
                    campusName = "russel_gn"
                    campusName02 = "t_gn"
                    txt01 = "매월 1일, 매주 월/목 순차 입학"
                    txt02 = "온라인 접수 <a class='bt-apply' href='https://russelgn.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a> <p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    play = "slide_play"
                    go3_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2054"
                    am_url = "https://russelgn.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2040"

    Case "CD0001": txtCampus = "러셀 대치"  '대치
                    campusName = "russel"
                    campusName02 = "t_dc"
                    txt01 = "매주 월/목 입학"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russeldc.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "740"
                    go3_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2055"
                    am_url = "https://russeldc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2041"

    Case "CD0245": txtCampus = "러셀 목동"  '목동
                    campusName = "russel_mokdong"
                    campusName02 = "t_md"
                    tit01 = "접수 현황"
                    txt01 = "전석 마감 (대기자 접수 중)"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russelmd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "1,020"
                    play = "slide_play"
                    go3_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2056"
                    am_url = "https://russelmd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2042"
                    icoEnd = "전석마감<br>대기접수"

    Case "CD0250": txtCampus = "러셀 부천"  '부천
                    campusName = "russel_bc"
                    campusName02 = "t_bc"
                    txt01 = "매월 1일 순차적 개강"
                    txt02 = "현장 또는 온라인 접수<p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    go3_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2057"
                    am_url = "https://russelbc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2043"

	Case "CD0244": txtCampus = "러셀 분당"  '분당
                    campusName = "russel_bundang"
                    campusName02 = "t_bd"
                    txt01 = "현재 모집 중 <p class='s-txt'>※ 신규생 등원 : 매주 월요일/목요일 中 택 1</p>"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://russelbd.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=180'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "700"
                    baja_txt = "급식(자체 식당)"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "재원생 전용 내부 식당 운영을 통해 갓 지은 밥으로 따뜻하고 균형 잡힌 식단을 제공하며<br>식사를 위한 이동 시간을 줄여 학습에 더욱 몰입할 수 있도록 합니다."
                    go3_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2058"
                    am_url = "https://russelbd.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2044"

	Case "CD0246": txtCampus = "러셀 센텀"  '센텀
                    campusName = "russel_ct"
                    campusName02 = "t_ct"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelct.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    play = "slide_play"
                    baja_txt = "급식"
                    go3_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2064"
                    am_url = "https://russelct.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2049"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수<p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "730"
                    baja_txt = "급식"
                    play = "slide_play"
                    go3_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2059"
                    am_url = "https://russelyt.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2045"

    Case "CD0257": txtCampus = "러셀 중계"  '중계
                    campusName = "russel_jg"
                    campusName02 = "t_jg"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수<p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "740"
                    play = "slide_play"
                    go3_stxt = "목표 성적을 만드는 단계별 커리큘럼"
                    baja_txt = "급식"
                    go3_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2060"
                    am_url = "https://russeljg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2046"
                    

	Case "CD0248": txtCampus = "러셀 평촌"  '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 접수/유선 문의<p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "급식 전문업체 메가F&S에서 급식을 진행하며,<br>영양사와 조리장 등 전문가가 엄선한 재료와 식단으로 건강한 급식을 제공합니다."
                    go3_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2061"
                    am_url = "https://russelpc.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2047"

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    play = "slide_play"
                    baja_tit01 = "건강하고 슬기로운 식생활 자체 식당 운영"
                    baja_txt02 = "양질의 급식으로 균형 잡힌 수험생 식단 유지<br>외부와의 접촉을 최소화하여, 이동 시간을 줄여 학습에 몰입할 수 있도록 내부 식당을 운영합니다."
                    go3_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2062"
                    am_url = "https://russeldg.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2048"

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "현재 접수 중"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "720"
                    play = "slide_play"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "맛과 영양을 고려한 건강하고 든든한 한 끼를 재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong><br>외부와의 접촉과 이동시간 최소화로 <strong>학습에 몰입 가능</strong>"
                    go3_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2065"
                    am_url = "https://russelus.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2050"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 또는 온라인 접수<p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "810"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "맛과 영양을 고려한 건강하고 든든한 한 끼를 재원생의 가장 가까운 곳에서 안전하게 준비하고<br>외부와의 접촉과 이동 시간 최소화로 학습에 몰입 가능"
                    go3_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2066"

	Case "CD0341": txtCampus = "러셀 대전"  '대전
                    campusName = "core_dj"
                    campusName02 = "t_dj"
                    txt01 = "8월 순차 개강<br>*매주 (월), (수) 입학 가능"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://coredj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "725"
                    play = "slide_play"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "맛과 영양을 고려한 건강하고 든든한 한 끼를<br>재원생의 가장 가까운 곳에서 안전하게 준비합니다."
                    go3_url = "https://coredj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2063"

	Case "CD0343": txtCampus = "러셀CORE 원주"  '코어원주
                    campusName = "core_wj"
                    campusName02 = "t_wj"
                    txt01 = "현재 모집 중"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corewj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "690"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "맛과 영양을 고려한 건강하고 든든한 한 끼를<br>재원생의 가장 가까운 곳에서 안전하게 준비합니다."
                    go3_url = "https://corewj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2067"
                    result_url = "/russel/event/2025/interview/index.asp"
                    

	Case "CD0344": txtCampus = "러셀CORE 전주"  '코어전주
                    campusName = "core_jj"
                    campusName02 = "t_jj"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수<a class='bt-apply' href='https://corejj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "720"
                    baja_tit01 = "건강하고 슬기로운 식생활 급식실 운영"
                    baja_txt02 = "식당 운영으로 <strong>건강하고 균형 잡힌 식단 제공,<br>식사를 위한 이동 시간을 줄여 학습에 더욱 몰입 가능</strong>"
                    go3_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2068"
                    am_url = "https://corejj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2051"

	Case "CD0345": txtCampus = "러셀CORE 창원"  '코어창원
                    campusName = "core_cw"
                    campusName02 = "t_cw"
                    tit01 = "모집안내"
                    txt01 = "현재 모집 중"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecw.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a> <br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "1,020"
                    play = "slide_play"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "자체 식당 운영으로 균형 잡힌 수험생 식단 유지가 가능합니다.<br>외부와의 접촉을 최소화하고, 이동 시간을 줄여 학습에 몰입할 수 있습니다."
                    go3_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2069"
                    am_url = "https://corecw.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2052"

	Case "CD0346": txtCampus = "러셀CORE 청주"  '코어청주
                    campusName = "core_cj"
                    campusName02 = "t_cj"
                    txt01 = "7월 순차적 개강"
                    txt02 = "현장 또는 온라인 접수<a class='bt-apply' href='https://corecj.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=187'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "720"
                    baja_tit01 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "자체 식당 운영으로 균형 잡힌 식단을 유지하고<br>외부와의 접촉과 이동시간 최소화로 학습에 몰입 가능"
                    go3_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2070"
                    am_url = "https://corecj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=2053"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
            <% If sCampusCode = "CD0249" or sCampusCode = "CD0340" Then '영톧/코어광주 %>
            <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/v_tit01.png" alt="2026" /></p>
            <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/v_tit02.png" alt="재수정규반[반수]" /></p>
            <% Else %>
            <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_tit01.png" alt="2026" /></p>
            <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_tit02.png" alt="반수반" /></p>
            <% End If %>
            <p class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_arr_btm.png" alt="" /></p>
            <p class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/half/v_arr_top.png" alt="" /></p>
            <p class="v-txt">불필요한 수업은 <strong>줄이고,</strong> 꼭 필요한 시간은 <strong>최대로!</strong></p>
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
            </div>
            <div>
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="stxt">*학원별 일정 및 모집요강은 상이할 수 있으니, 자세한 내용은 학원별 페이지에서 확인 부탁드립니다.</p>
                <% End If %>
            </div>
            <!--마감딱지-->
            <% If sCampusCode = "CD0245" Then '목동 %>
            <div class="ico-end" style="top:480px;right:calc(50% - 560px);"><div><%=icoEnd%></div></div>
            <% End If %>
            <!--//마감딱지-->
        </div>
        <!-- <p class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/2025/half/visual_bg.jpg" alt=""></p> -->
	</div>

    <!-- quick 플로팅배너 -->
    <% If sCampusCode = "INTRO" Then '인트로 %>
	<div class="quick">
        <!--첫번째 퀵배너-->
        <a class="q-ban" href="javascript:vold(0);">
            <span>최상위권 대학 합격을 위한<br>효율적인 학습</span>
            <strong>러셀 반수반<br>학습 시스템</strong>
        </a>
        <!--//첫번째 퀵배너-->

        <!--두번째 퀵배너-->
        <a class="q-ban" href="javascript:vold(0);">
            <span>2026 반수반</span>
            <strong>학원별 모집 안내</strong>
        </a>
        <!--두번째 퀵배너-->
	</div>
    <% Else %>
    <div class="quick">
        <!--첫번째 퀵배너-->
        <a class="q-ban" href="javascript:vold(0);">
            <% If russelCore = 1 Then '코어 %>
            <span>2026 <%=txtCampus%> <br>반수반</span>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <span>2026 <%=txtCampus%> <br>재수정규반[반수]</span>
            <% Else %>
            <span>2026 <%=txtCampus%> 반수반</span>
            <% End If %>
            <strong>모집요강 및 지원혜택</strong>
        </a>
        <!--//첫번째 퀵배너-->

        <!--두번째 퀵배너-->
        <a class="q-ban" href="javascript:vold(0);">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <span>목표 대학 합격을 위한<br>효율적인 학습</span>
            <% Else %>
            <span>최상위권 대학 합격을 위한<br>효율적인 학습</span>
            <% End If %>
            <strong>러셀 반수반<br>학습 시스템</strong>
        </a>
        <!--두번째 퀵배너-->
	</div>
    <% End If %>
	<!--// quick 플로팅배너 -->
</div>
