<div class="danka-wrap">
    <span  class="danka-link">
        <p>반드시 실력이 향상되는 여름방학 집중 특강</p>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/summer/danka_special.jpg" alt=""></p>
        <ul>
            <li>취약 과목(파트) 집중 보완을 위한 단기 집중 특강</li>
            <li>수시 최저 등급 대비 집중 학습을 위한 단기 집중 특강</li>
        </ul>
    </span>

    <% If campus_code = "CD0247" Then '강남 %>
    <div>
        <a href="<%=url_special%>">고3</a>
        <a href="<%=url_special2%>">고2</a>
    </div>
    <% ElseIf campus_code = "CD0250" Then '부천 %>
    <div>
        <a href="<%=url_special%>">고3</a>
        <a href="<%=url_special2%>">고1&middot;고2</a>
        <a onclick="alert('추후 오픈됩니다.')">중3</a>
    </div>
    <% Else %>
    <a href="<%=url_special%>">바로가기</a>
    <% End If %>

    <span  class="danka-link">
        <p>수능 1등급을 위한 탄탄한 커리큘럼</p>
        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/summer/danka_regular.jpg" alt=""></p>
        <ul>
            <li>메가스터디 온·오프 No.1 강사진의 생생한 <% If isCore = 1 Then '코어 %>현강 Live 강의<% Else %>현장 강의<% End If %></li>
            <li>기초부터 실전까지 빈틈없는 커리큘럼으로 수능 실력 향상</li>
        </ul>
    </span>
    <a href="<%=url_regular%>">바로가기</a>
</div>