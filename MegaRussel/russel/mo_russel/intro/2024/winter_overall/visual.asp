<%
txtCampus = "러셀"
campusName = "intro"

tit_01 = "모집 대상"
txt_01 = "25년 고3"

tit_02 = "운영 기간"
txt_02 = "24년 12월~25년 2월 [9주 완성]"

comment = "※ 모집요강 지원자격 해당자 순 접수"

danka_summer_url = "javascript:alert('추후 오픈 예정입니다.');"
danka_regular_url = "javascript:alert('추후 오픈 예정입니다.');"

apply_txt = "원서접수 바로가기"
apply_url = "alert('추후 오픈 예정입니다.')"

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

program_tab01 = "학습 동선<br>최소화"
program_tab02 = "학습<br>습관 형성"
program_tab03 = "재원생<br>전용 특강"
program_tab04 = "포트<br>폴리오"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")

    Case "CD0342": txtCampus = "러셀 대구" '대구
                    campusName = "russel_dg"
                    campusName02 = "cont_dg"  
                    tel = "053-291-1010"
                    txt_01 = "25년 고1, 고3"
                    txt_02 = "25년 1월 초 개강 (8주 과정)"
                    study_txt03 = "급식실"
                    baja_txt02 = "<strong>영어 프로그램&체조</strong><br>(영단어/영어듣기 TEST)"
                    baja_txt03 = "강의실 이동<br><strong>오전 수업 수강</strong>"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 수업 수강 및 의무자습</strong>"
                    apply_url = "alert('8/12(월) 오전10시 오픈 예정입니다.')"


    Case "CD0349": txtCampus = "러셀 울산" '울산
                    campusName = "russel_us"
                    campusName02 = "cont_us"
                    tel = "052-913-1010"
                    txt_01 = "25년 고3&middot;고1"
                    txt_02 = "2025년 2월 [4주 과정]"
                    study_txt03 = "자체식당"
                    program_tab04 = "가정<br>통신문"
                    baja_txt03 = "강의실 이동<br><strong>오전 수업 수강</strong>"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://russelus.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'"
                    
    Case "CD0340": txtCampus = "러셀CORE 광주"   '코어광주
                    campusName = "core_gj"
                    campusName02 = "cont_gj"
                    tel = "062-462-1010"
                    study_txt03 = "자체식당"
                    baja_txt05 = "바른공부 자습전용관<br><strong>오후 정규자습&체조</strong>"
                    baja_time07 = "PM 06:40"
                    baja_txt07 = "바른공부 자습전용관<br><strong>저녁 정규자습&상담</strong><br>"
                    baja_time08 = "PM 10:30"
                    baja_time09 = "AM 01:00"
                    program_tab03 = "포트<br>폴리오"
                    apply_url = "alert('원서접수는 PC 페이지에서 이용 가능합니다.'); location.href='https://coregj.megastudy.net/russel/apply/yonhab/apply.asp?app_cd=174'"

End Select
%>

<div class="visual-wrap">
    <!-- 학원 문자 수신 알리미 -->
    <!-- <a href="javascript:void(0)" class="top-banner" onclick="fncAlarmPop();"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/banner_alarm.jpg" alt="학원 문자 수신 알리미 신청"></a> -->
    <!-- //학원 문자 수신 알리미 -->

    <div class="visual-area <%=campusName%>">
        <canvas id='canv'></canvas>
        <div class="v-obj01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_obj01.png" alt="" /></div>
        <div class="v-txt01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_txt01.png" alt="올 겨울 최상위권으로 도약하기 위한 옳은 방법" /></div>
        <div class="v-txt02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_txt02.png" alt="최상위권 이과전문관" /></div>
        <div class="v-tit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_tit02.png" alt="2025" /></div>
        <div class="v-tit01">
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_tit01_1.png" alt="윈" /></span>
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_tit01_2.png" alt="터" /></span>
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_tit01_3.png" alt="스" /></span>
            <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_tit01_4.png" alt="쿨" /></span>
        </div>
        <div class="v-tit03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/v_tit03.png" alt="종합반" /></div>
        
        <% If campus_code = "CD0349" Then '울산 %>
        <p class="v-txt03">최상위권이 먼저 선택하고 만족하는 윈터스쿨 종합반,<br>
            <%=txtCampus%>에서 최상위권 대입성공을 시작하세요!</p>
        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
        <p class="v-txt03">역대 가장 탁월한 입결이 증명하는<br><%=txtCampus%>에서<br>
            최상위권 대입성공을 시작하세요!</p>
        <% Else %>
        <p class="v-txt03">역대 가장 탁월한 입결이 증명하는 <%=txtCampus%>에서<br>
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
        </div>
    </div>    
</div>