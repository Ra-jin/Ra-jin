<div class="danka-wrap">    
    <!-- <% If campus_code <> "CD0244" And campus_code <> "CD0250" And campus_code <> "CD0249" And campus_code <> "CD0257" And campus_code <> "CD0248" And campus_code <> "CD0342" And campus_code <> "CD0340" And campus_code <> "CD0341" And campus_code <> "CD0344" Then '분당/부천/영통/중계/평촌/대구/광주/대전/코어전주제외 %>
    <a href="<%=url_half%>" class="danka-link">
        <p>반수생을 위한 고효율 단기 특강</p>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/danka_half.jpg" alt=""></p>
        <ul>
            <li>취약 파트 집중 보완을 위한 고효율 단기 특강</li>
            <li>부족한 학습시간 보완 및 학습 효과 극대화</li>
        </ul>
        <span>go</span>
    </a>
    <% End If %> -->
    <% If isCore <> 1 Then '코어제외 %>
    <a href="<%=url_am%>" class="danka-link">
        <p>오직 N수생을 위한 평일 오전/오후 단과</p>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/danka_am.jpg" alt=""></p>
        <ul>
            <li>관리력이 강력한 선생님의 N수생 전용 단과</li>
            <li>나에게 필요한 과목/진도를 선택 수강하여<br>취약점 집중 보완, 실력 향상</li>
        </ul>
        <span>go</span>
    </a>
    <% End If %>
    <a href="<%=url_regular%>" class="danka-link">
        <p>기초부터 실전까지<br>빈틈없는 커리큘럼으로 수능 실력 향상</p>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/half/danka_regular.jpg" alt=""></p>
        <ul>
            <li>메가스터디 온&middot;오프 강사진의 생동감 있는 현장 강의</li>
            <li>과목별/수준별/진도별 나에게 필요한 수업만 선택&수강</li>
        </ul>
        <span>go</span>
    </a>
</div>