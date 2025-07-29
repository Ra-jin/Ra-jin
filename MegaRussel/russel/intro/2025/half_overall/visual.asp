
<%

tit01 = "개강일"
txt01 = "5월 순차적 개강"
tit02 = "접수 방법"
txt02 = "현장 또는 온라인 접수"

go3_url = "javascript:alert('추후 오픈 예정입니다.');"
go3_stxt = "1등급을 만드는 단계별 커리큘럼"
go3_txt = "정규&middot;특강 단과"

am_url = "javascript:alert('추후 오픈 예정입니다.');"
am_stxt = "오직 N수생을 위한 평일 오전/오후 단과"
am_txt = "AM단과"

apply_url = "javascript:alert('추후 오픈 예정입니다.');"

chart_min = "770"
baja_txt = "식당"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0248": txtCampus = "러셀 평촌" '평촌
                    campusName = "russel_pc"
                    campusName02 = "t_pc"
                    txt01 = ""
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='javascript:alert(`추후 공개 예정입니다.`)'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"

    Case "CD0249": txtCampus = "러셀 영통"  '영통
                    campusName = "russel_yt"
                    campusName02 = "t_yt"
                    txt01 = "매월 초 개강"
                    txt02 = "현장 접수<p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    chart_min = "730"
                    baja_txt = "급식"
                    menu_tit01 = "최적화된<br><strong>종합반 시스템</strong>"
                    danka_txt = "러셀 강남&middot;대치&middot;기숙 및 인강 출강 강사진의 현장 강의로<br>수능 고득점을 위한 실력을 완성할 수 있습니다."

	Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "t_dg"
                    txt01 = "현재 모집 중"
                    txt02 = "온라인 접수 <a class='bt-apply' href='https://russeldg.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=188'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    menu_tit01 = "검증된 강사진의<br><strong>종합반 전용 수업</strong>"
                    baja_tit02 = "건강하고 슬기로운 식생활 자체 식당 운영"
                    baja_txt02 = "양질의 급식으로 균형 잡힌 수험생 식단 유지<br>외부와의 접촉을 최소화하여, 이동 시간을 줄여 학습에 몰입할 수 있도록 내부 식당을 운영합니다."
                    danka_txt = "더 높은 목표 달성을 위한 도전<br>반수종합반에서 나의 경쟁력을 높일 수 있습니다."

	Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "t_us"
                    txt01 = "6월 30일(월) 개강"
                    txt02 = "현장 또는 온라인 접수 <a class='bt-apply' href='https://russelus.megastudy.net/russel/apply/jaejung/apply.asp?app_cd=188'>원서접수 바로가기</a><br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    menu_tit01 = "종합반<br><strong>전용 시스템</strong>"
                    baja_tit02 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "맛과 영양을 고려한 건강하고 든든한 한 끼를 재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong><br>외부와의 접촉과 이동시간 최소화로 <strong>학습에 몰입 가능</strong>"

	Case "CD0340": txtCampus = "러셀CORE 광주"  '코어광주
                    campusName = "core_gj"
                    campusName02 = "t_gj"
                    txt01 = "매월 순차 개강"
                    txt02 = "현장 또는 온라인 접수<br><p class='s-txt'>※ 모집요강 지원자격 해당자 순 접수</p>"
                    menu_tit01 = "검증된 강사진의<br><strong>종합반 전용 현장 강의</strong>"
                    danka_txt = "현장 강의 선생님들이 직접 진행하는 1:1 맞춤 관리와 질의응답으로 <br>과목별 성취도에 맞춘 수준별 맞춤 수업을 만나보세요."
                    go3_url = "https://coregj.megastudy.net/russel/campus_common/russel_danka/russel_danka_new.asp?idx=1950"
                    baja_tit02 = "양질의 급식이 제공되는 자체 식당 운영"
                    baja_txt02 = "맛과 영양을 고려한 건강하고 든든한 한 끼를 재원생의 가장 가까운 곳에서 안전하게 준비하고<br>외부와의 접촉과 이동 시간 최소화로 학습에 몰입 가능"

End Select
%>

<div class="visual-wrap <%=campusName%>">
	<div class="visual-area">
        <div class="inner">
            <% If sCampusCode = "CD0349" Then '울산 %>
            <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
            <% Else %>
            <p class="v-tit01"><img src="<%=Application("img_path_russel")%>/intro/2025/half_overall/v_stit.png" alt="더 빠르게, 더 높은 목표에 도달하는 반수 성공 공식" /></p>
            <% End If %>
            
            <p class="v-tit02"><img src="<%=Application("img_path_russel")%>/intro/2025/half_overall/v_tit01.png" alt="2026" /></p>

            <% If sCampusCode = "CD0249" Then '영통 %>
            <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/v_tit02.png" alt="반수종합반" /></p>
            <% Else %>
            <p class="v-tit03"><img src="<%=Application("img_path_russel")%>/intro/2025/half_overall/v_tit02.png" alt="반수종합반" /></p>
            <% End If %>
            <p class="v-obj01"><img src="<%=Application("img_path_russel")%>/intro/2025/half_overall/v_arr_btm.png" alt="" /></p>
            <p class="v-obj02"><img src="<%=Application("img_path_russel")%>/intro/2025/half_overall/v_arr_top.png" alt="" /></p>

            <% If sCampusCode = "CD0349" Then '울산 %>
            <p class="v-txt">러셀 울산 반수종합반에서 경쟁하는 것이<br>
                바로 <strong>대입성공의 경쟁력</strong>입니다.</p>
            <% Else %>
            <p class="v-txt">불필요한 수업은 <strong>줄이고,</strong> 꼭 필요한 시간은 <strong>최대로!</strong></p>
            <% End If %>
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
            <!-- <div class="ico-end" style="top:310px;right:calc(50% - 500px);"><div><%=icoEnd%></div></div> -->
            <!--//마감딱지-->
        </div>
        <!-- <p class="v-bg"><img src="<%=Application("img_path_russel")%>/intro/2025/half/visual_bg.jpg" alt=""></p> -->
	</div>

    <!-- quick 플로팅배너 -->
    <div class="quick">
        <!--첫번째 퀵배너-->
        <% If sCampusCode = "CD0249" Then '영통 %>
        <a class="q-ban" href="javascript:vold(0);">
            <span>2026 <%=txtCampus%><br>재수종합반[반수]</span>
            <strong>모집요강 및 <br>지원혜택</strong>
        </a>
        <% Else %>
        <a class="q-ban" href="javascript:vold(0);">
            <span>2026 <%=txtCampus%><br>반수종합반</span>
            <strong>모집요강 및 <br>지원혜택</strong>
        </a>
        <% End If %>
        <!--//첫번째 퀵배너-->

        <!--두번째 퀵배너-->
        <a class="q-ban" href="javascript:vold(0);">
            <span>최상위권 대학 합격을 위한<br>효율적인 학습</span>
            <strong>러셀 반수반<br>학습 시스템</strong>
        </a>
        <!--두번째 퀵배너-->
	</div>
	<!--// quick 플로팅배너 -->
</div>
