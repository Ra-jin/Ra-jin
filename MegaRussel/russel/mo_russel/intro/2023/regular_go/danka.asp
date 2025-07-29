<div class="danka-wrap">

    <% If campus_code = "CD0342" Then '대구 %>
    <div class="danka-box">
        <p>기초부터 실전까지<br>빈틈없는 커리큘럼으로 수능 실력 향상</p>
        <strong>[고3/2] 정규&middot;특강</strong>
        <ul>
            <li>메가스터디 온·오프 No.1 강사진의 생생한 현장 강의</li>
            <li>평일 저녁&주말 과목별/수준별/진도별 맞춤 강좌 개설<br> 및 내게 필요한 수업 선택</li>
            <li>강의 전후 학습관리 진행으로 1:1 맞춤 완전학습</li>
        </ul>
        <div class="btn-wrap">
            <div class="btn goto-btn">
                <a href="<%=go3_url%>">고3</a>
            </div>
            <div class="btn goto-btn">
                <a href="https://mrusseldg.megastudy.net/common/russel_danka/russel_danka.asp?idx=1357">고2</a>
            </div>
        </div>
    </div>
    <% Else %>    
    <div class="danka-box">
        <p>기초부터 실전까지<br>빈틈없는 커리큘럼으로 수능 실력 향상</p>
        <strong>
            <% If campus_code = "CD0343" Then '원주 %>
            정규&middot;특강 단과
            <% else %>
            [고3] 정규&middot;특강
            <% End If %> 
        </strong>
        <ul>
            <li>메가스터디 온·오프 No.1 강사진의 생생한 현장 강의</li>
            <li>평일 저녁&주말 과목별/수준별/진도별 맞춤 강좌 개설<br> 및 내게 필요한 수업 선택</li>
            <li>강의 전후 학습관리 진행으로 1:1 맞춤 완전학습</li>
        </ul>
        <div class="btn goto-btn"><a href="<%=go3_url%>">바로가기</a></div>
    </div>
    <% End If %>

    
    <% If isCore <> 1 And campus_code <> "CD0001" And campus_code <> "CD0244" And campus_code <> "CD0342" And campus_code <> "CD0341" And campus_code <> "CD0250" And campus_code <> "CD0245" Then '코어/대치/분당/대구/대전/부천/목동제외 %>
    <div class="danka-box">
        <p>최상위권 우위 선점을 위한<br>학교별, 단원별, 수준별 맞춤 강좌</p>        
        <% If campus_code = "CD0248" Or campus_code = "CD0246" Then '센텀 %>
        <strong>[고3&middot;2&middot;1] 내신 대비 강좌</strong>
        <% Else %>
        <strong>[고2&middot;1] 내신 대비 강좌</strong>
        <% End If %>
        <ul class="remark-03">
            <li>학교별 출제 경향 분석 기반 강좌 구성</li>
            <li>학년별/수준별 강사 담임제로 강의 진행</li>
            <li>교과서 단원별 개념&이론/문제풀이/고난도 학습 또는<br>서술형 단계적 학습</li>
            <li>시험 직전 보강 수업 및 학력평가 변형 문제 대비 학습</li>
        </ul>
        <div class="btn goto-btn"><a href="<%=go12_url%>">바로가기</a></div>
    </div>
    <% End If %>
</div>