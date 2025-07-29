<% If campus_code <> "CD0340" and campus_code <> "CD0341" and campus_code <> "CD0343" and campus_code <> "CD0344" and campus_code <> "CD0345" and campus_code <> "CD0346" Then '코어광주/대전/원주/전주/창원/청주 제외%>
<div class="danka-box">
    <p>오직 N수생을 위한 평일 오전/오후 단과</p>
    <strong>AM 단과</strong>
    <ul class="remark-03">
        <% If campus_code = "CD0246" Then '센텀 %>
        <li>월~토 체계적인 과목 편성</li>
        <% Else %>
        <li>평일 오전/오후 체계적인 과목 편성</li>
        <% End If %>
        <li>관리력이 강력한 선생님의 N수생 전용 단과</li>
        <li>나에게 필요한 과목/진도를 선택 수강하여<br>취약점 집중 보완</li>
    </ul>
    <% If campus_code = "INTRO" or campus_code = "CD0247" or campus_code = "CD0001" or campus_code = "CD0245" or campus_code = "CD0250" or campus_code = "CD0244" or campus_code = "CD0249" or campus_code = "CD0257" or campus_code = "CD0248" or campus_code = "CD0246" or campus_code = "CD0342" Then '인트로/강남/대치/목동/부천/분당/영통/중계/평촌/센텀/대구일 경우 %>
    <div class="btn goto-btn"><a href="<%=danka_am_url%>">바로가기</a></div>
    <% Else %>
    <div class="btn goto-btn"><a onclick="alert('추후 오픈 예정입니다.')">바로가기</a></div>
    <% End If %>
</div>
<% End If %>
<div class="danka-box">
    <p>기초부터 실전까지<br>빈틈없는 커리큘럼으로 수능 실력 향상</p>
    <% If campus_code = "INTRO" or campus_code = "CD0247" Then '인트로/강남 %>
    <strong>정규 단과</strong>
    <% ElseIf campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0244" or campus_code = "CD0342" Then '코어광주/대전/원주/전주/창원/청주/분당/대구 %>
    <strong>정규&middot;특강 단과</strong>
    <% Else %>
    <strong>정규&middot;특강</strong>
    <% End If %>
    <ul class="remark-03">
        <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
        <li>메가스터디 온·오프 No.1 강사진의 생생한 현장 Live 강의</li>
        <% Else %>
        <li>메가스터디 온·오프 No.1 강사진의 생생한 현장 강의</li>
        <% End If %>
        <li>평일 저녁&주말 과목별/수준별/진도별 맞춤 강좌 개설 및 내게 필요한 수업 선택</li>
        <li>강의 전후 학습관리 진행으로 1:1 맞춤 완전학습</li>
    </ul>
    <div class="btn goto-btn"><a href="<%=danka_regular_url%>">바로가기</a></div>
</div>
<% If campus_code = "INTRO" or campus_code = "CD0247" Then '인트로/강남 %>
<div class="danka-box">
    <p>취약 파트 집중 보완을 위한<br>고효율 단기 특강</p>
    <strong>특강</strong>
    <ul class="remark-03">
        <li>필요한 단원을 집중 학습하는 스마트한 강좌 수강</li>
        <li>부족한 학습시간 보완 및 학습 효과 극대화</li>
        <li>공휴일, 연휴 기간 특강 개설을 통한 학습 공백 최소화</li>
    </ul>
    <div class="btn goto-btn"><a href="<%=danka_special_url%>">바로가기</a></div>
</div>
<% End If %>