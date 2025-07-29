<%
routine_time00 = "AM 07:00"
routine_txt00 = "등원 및 선택자습"
routine_time01 = "AM 08:00"
routine_txt01 = "<strong>영어 프로그램</strong>(영단어/영어듣기 TEST)"
routine_time02 = "AM 08:50"
routine_txt02 = "강의실 이동<br><strong>오전 단과 수업 수강</strong>"
routine_time03 = "PM 12:10"
routine_txt03 = "자체 식당에서<br><strong>점심 식사</strong>"
routine_time04 = "PM 01:10"
routine_txt04 = "바른공부 자습전용관<br><strong>오후 의무자습&amp;체조</strong>"
routine_time05 = "PM 05:30"
routine_txt05 = "자체 식당에서<br><strong>저녁 식사</strong>"
routine_time06 = "PM 06:30"
routine_txt06 = "바른공부 자습전용관<br><strong>저녁 의무자습&amp;상담</strong>"
routine_time07 = "PM 10:10"
routine_txt07 = "바른공부 자습전용관<br><strong>심야 선택자습</strong>"
routine_time08 = "AM 12:00"
routine_txt08 = "귀가"

Select Case GetCampusVarsSiteMGC("_CAMPUS_CODE_")	
    Case "INTRO":  '인트로

	Case "CD0342": '대구
        routine_txt01 = "<strong>영어 프로그램&amp;체조</strong>(영단어/영어듣기 TEST)"
        routine_txt02 = "강의실 이동<br><strong>오전 수업 수강</strong>"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 수업 수강 및 의무자습</strong>"

	Case "CD0349": '울산
        routine_txt02 = "강의실 이동<br><strong>오전 수업 수강</strong>"

	Case "CD0340": '코어광주
    routine_txt02 = "강의실 이동<br><strong>오전 수업 수강</strong>"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 정규자습&amp;체조</strong>"
        routine_time06 = "PM 06:40"
        routine_txt06 = "바른공부 자습전용관<br><strong>저녁 정규자습&amp;상담</strong>"
        routine_time07 = "PM 10:30"
        routine_time08 = "AM 01:00"

End Select
%>

<div class="routine">
    <ul>
        <li class="arr-r" style="left:253px;top:90px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_00.png" alt="" /></div>
            <div class="time"><%=routine_time00%></div>
            <p><%=routine_txt00%></p>
        </li>
        <li class="arr-r" style="left:467px;top:90px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_01.png" alt="" /></div>
            <div class="time"><%=routine_time01%></div>
            <p><%=routine_txt01%></p>
        </li>
        <li style="left:681px;top:90px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_02.png" alt="" /></div>
            <div class="time"><%=routine_time02%></div>
            <p><%=routine_txt02%></p>
        </li>
        <li class="s-hori" style="left:876px;top:186px;">
            <div>
                <div class="time"><%=routine_time03%></div>
                <p><%=routine_txt03%></p>
            </div>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_03.png" alt="" /></div>
        </li>
        <li class="arr-l" style="left:681px;top:284px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_04.png" alt="" /></div>
            <div class="time"><%=routine_time04%></div>
            <p><%=routine_txt04%></p>
        </li>
        <li style="left:253px;top:284px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_05.png" alt="" /></div>
            <div class="time"><%=routine_time05%></div>
            <p><%=routine_txt05%></p>
        </li>
        <li class="arr-r" style="left:253px;top:475px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_06.png" alt="" /></div>
            <div class="time"><%=routine_time06%></div>
            <p><%=routine_txt06%></p>
        </li>
        <li class="arr-r" style="left:467px;top:475px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_07.png" alt="" /></div>
            <div class="time"><%=routine_time07%></div>
            <p><%=routine_txt07%></p>
        </li>
        <li style="left:681px;top:475px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter_overall/ico_08.png" alt="" /></div>
            <div class="time"><%=routine_time08%></div>
            <p><%=routine_txt08%></p>
        </li>
    </ul>
    <p class="r-txt">* 예시 이미지로, 평일 바른공부 자습전용관 표준 시간표 기준으로 작성하였습니다.
    </p>
</div>