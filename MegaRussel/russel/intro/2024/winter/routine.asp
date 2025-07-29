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

    Case "CD0247": '강남
        routine_txt00 = "오전 선택자습"
        routine_txt01 = "<strong>등원 및 영어프로그램</strong>(영단어/영어듣기 TEST)"
        routine_txt03 = "바자관 자리에서<br><strong>점심 식사</strong>"
        routine_txt04 = "강의실 이동<br><strong>오후 단과 수업 수강</strong>"
        routine_txt05 = "바자관 자리에서<br><strong>저녁 식사</strong>"
        routine_time07 = "PM 09:50"
        routine_txt07 = "바른공부 자습전용관<br><strong>귀가 또는 심야 선택자습</strong>"
        routine_txt08 = "심야 선택자습 귀가"
        
    Case "CD0001": '대치
        routine_txt02 = "강의실 이동<br><strong>오전 단과 수업 수강&amp;오전 의무자습&amp;상담</strong>"
        routine_txt03 = "자습관 좌석에서<br><strong>점심 식사</strong>"
        routine_time04 = "PM 01:20"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 의무자습&amp;상담&amp;오후 단과 수업 수강</strong>"
        routine_txt05 = "자습관 좌석에서<br><strong>저녁 식사</strong>"
        routine_txt06 = "바른공부 자습전용관<br><strong>저녁 의무자습&amp;상담<br>&amp;저녁 단과 수업 수강</strong>"
        routine_time07 = "PM 10:20"

    Case "CD0245": '목동
        routine_txt01 = "<strong>수학 / 영어 프로그램</strong>(수학 TEST)<br>(영단어/영어듣기 TEST)"
        routine_time02 = "AM 08:30"
        routine_txt03 = "자습관 좌석에서<br><strong>점심 식사</strong>"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 의무자습&amp;체조&amp;오후 단과 수업 수강</strong>"
        routine_txt05 = "자습관 좌석에서<br><strong>저녁 식사</strong>"
        routine_txt06 = "바른공부 자습전용관<br><strong>저녁 의무자습&amp;상담<br>&amp;저녁 단과 수업 수강</strong>"
        routine_txt07 = "바른공부 자습전용관<br><strong>심야 선택자습<br>(*평일 한정 운영)</strong>"

    Case "CD0250": '부천
        routine_time00 = "AM 08:00"
        routine_txt00 = "등원 및 자습"
        routine_time01 = "AM 08:40"
        routine_txt01 = "강의실 이동<br><strong>오전 단과 수업 수강 및<br>오전 의무자습</strong>"
        routine_time02 = "PM 12:10"
        routine_txt02 = "자습관 자리에서<br><strong>점심식사</strong>"
        routine_time03 = "PM 01:10"
        routine_txt03 = "바른공부 자습전용관<br><strong>일일 학습컨텐츠<br></strong><span>(주간지 or 영단어 테스트/<br>영어듣기)</span>"
        routine_time04 = "PM 01:30"
        routine_txt04 = "강의실 이동<br><strong>오후 단과 수업 수강 및 오후 의무자습</strong>"
        routine_txt05 = "자습관 자리에서<br><strong>저녁 식사</strong>"
        routine_time06 = "PM 06:40"
        routine_txt06 = "강의실 이동<br><strong>저녁 단과 수업 수강 및<br>저녁 의무자습</strong>"
        routine_time07 = "PM 10:20"

	Case "CD0244": '분당
        routine_time03 = "PM 12:20"
        routine_time04 = "PM 01:30"
        routine_time06 = "PM 06:40"
        routine_time07 = "PM 10:20"

	Case "CD0246": '센텀
        routine_time03 = "PM 12:30"
        routine_time04 = "PM 01:30"

    Case "CD0249": '영통
        routine_txt01 = "<strong>오전<br>의무자습</strong>"
        routine_time02 = "AM 08:30"
        routine_txt02 = "강의실 이동<br><strong>오전 단과 수업 수강&amp;체조</strong>"
        routine_txt03 = "급식차량으로<br><strong>점심 식사</strong>"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 의무자습</strong>"
        routine_txt05 = "급식차량으로<br><strong>저녁 식사</strong>"
        routine_time06 = "PM 06:40"

    Case "CD0257": '중계
        routine_txt03 = "바자관 자리에서<br><strong>점심 식사</strong>"
        routine_txt05 = "바자관 자리에서<br><strong>저녁 식사</strong>"

	Case "CD0248": '평촌

	Case "CD0342": '대구
        routine_txt01 = "<strong>영어 프로그램&amp;체조</strong>(영단어/영어듣기 TEST)"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 단과 수업 수강<br>및 의무자습</strong>"
        routine_txt06 = "바른공부 자습전용관<br><strong>저녁 단과 수업 수강<br>및 의무자습</strong>"

	Case "CD0349": '울산

	Case "CD0340": '코어광주
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 정규자습&amp;체조</strong>"
        routine_time06 = "PM 06:40"
        routine_txt06 = "바른공부 자습전용관<br><strong>저녁 정규자습&amp;상담</strong>"
        routine_time07 = "PM 10:30"
        routine_time08 = "AM 01:00"


	Case "CD0341": '코어대전
        routine_time00 = "AM 08:00"
        routine_time01 = "AM 08:50"
        routine_txt01 = "강의실 이동<br><strong>오전 단과 수업 수강</strong>"
        routine_time02 = "PM 12:20"
        routine_txt02 = "자체 식당에서<br><strong>점심 식사</strong>"
        routine_time03 = "PM 01:30"
        routine_txt03 = "바른공부 자습전용관<br><strong>오후 의무자습&amp;체조</strong>"
        routine_time04 = "PM 02:00"
        routine_txt04 = "<strong>영어 프로그램</strong>(영단어/영어듣기 TEST)"
        routine_time05 = "PM 05:20"

	Case "CD0343": '코어원주
        routine_time00 = "AM 08:00"
        routine_txt00 = "등원 및 의무자습"
        routine_time01 = "AM 08:30"
        routine_txt01 = "<strong>조회 및 영어 프로그램</strong>(영단어/영어듣기 TEST)"
        routine_txt02 = "<strong>단과 수업 <span>수강</span></strong><strong><span>&amp;</span>상담</strong>"
        routine_time03 = "PM 12:00"
        routine_time06 = "PM 06:40"
        routine_time07 = "PM 10:20"

	Case "CD0344": '코어전주
        routine_time00 = "AM 07:30"
        routine_time02 = "AM 08:30"
        routine_time06 = "PM 06:40"

	Case "CD0345": '코어창원
        routine_txt01 = "바른공부 자습전용관<br><strong>오전 영어 프로그램</strong>(영단어 TEST)"
        routine_txt02 = "바른공부 자습전용관<br>의무자습&amp;강의실 이동<br><strong>오전 단과 수업 수강</strong>"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 의무자습&amp;상담&amp;영어듣기 TEST</strong>"
        routine_txt06 = "바른공부 자습전용관<br><strong>저녁 의무자습&amp;강의실 이동<br>저녁 단과 수업 수강</strong>"

	Case "CD0346": '코어청주
        routine_time00 = "AM 07:50"
        routine_txt00 = "등원 완료"
        routine_txt01 = "바른공부 자습전용관<br><strong>1교시 시작</strong>"
        routine_txt04 = "바른공부 자습전용관<br><strong>오후 의무자습&amp;점심체조</strong>"
        routine_time06 = "PM 06:40"
        routine_time07 = "PM 10:00"
End Select
%>

<div class="routine">
    <ul>
        <li class="arr-r" style="left:253px;top:90px;">
            <% If sCampusCode = "CD0247" Then '강남 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/ico_00.png" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_00.png" alt="" /></div>
            <% End If %>
            <div class="time"><%=routine_time00%></div>
            <p><%=routine_txt00%></p>
        </li>
        <li class="arr-r" style="left:467px;top:90px;">
            <% If sCampusCode = "CD0250" OR sCampusCode = "CD0341" OR sCampusCode = "CD0346" Then '부천/코어대전/코어청주 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/ico_01.png" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_01.png" alt="" /></div>
            <% End If %>
            <div class="time"><%=routine_time01%></div>
            <p><%=routine_txt01%></p>
        </li>
        <li style="left:681px;top:90px;">
            <% If sCampusCode = "CD0250" OR sCampusCode = "CD0341" Then '부천/코어대전 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/ico_02.png" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_02.png" alt="" /></div>
            <% End If %>
            <div class="time"><%=routine_time02%></div>
            <p><%=routine_txt02%></p>
        </li>
        <li class="s-hori" style="left:876px;top:186px;">
            <div>
                <div class="time"><%=routine_time03%></div>
                <p><%=routine_txt03%></p>
            </div>
            <% If sCampusCode = "CD0250" OR sCampusCode = "CD0341" Then '부천/코어대전 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/ico_03.png" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_03.png" alt="" /></div>
            <% End If %>
        </li>
        <li class="arr-l" style="left:681px;top:284px;">
            <% If sCampusCode = "CD0341" Then '코어대전 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/ico_04.png" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_04.png" alt="" /></div>
            <% End If %>
            <div class="time"><%=routine_time04%></div>
            <p><%=routine_txt04%></p>
        </li>
        <li style="left:253px;top:284px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_05.png" alt="" /></div>
            <div class="time"><%=routine_time05%></div>
            <p><%=routine_txt05%></p>
        </li>
        <li class="arr-r" style="left:253px;top:475px;">
            <% If sCampusCode = "CD0250" Then '부천 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/ico_06.png" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_06.png" alt="" /></div>
            <% End If %>
            <div class="time"><%=routine_time06%></div>
            <p><%=routine_txt06%></p>
        </li>
        <li class="arr-r" style="left:467px;top:475px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_07.png" alt="" /></div>
            <div class="time"><%=routine_time07%></div>
            <p><%=routine_txt07%></p>
        </li>
        <li style="left:681px;top:475px;">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_08.png" alt="" /></div>
            <div class="time"><%=routine_time08%></div>
            <p><%=routine_txt08%></p>
        </li>
    </ul>
    <% If sCampusCode = "CD0257" Then '중계 %>
    <p class="r-txt">* 예시 이미지로, 평일 바른공부 자습전용관 표준 시간표 기준으로 작성하였습니다.<br>
        * 학원 운영에 따라 변경 될 수 있습니다. 
    </p>
    <% Else %>
    <p class="r-txt">* 예시 이미지로, 평일 바른공부 자습전용관 표준 시간표 기준으로 작성하였습니다.
    </p>
    <% End If %>
</div>