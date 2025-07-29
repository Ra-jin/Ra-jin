<div class="danka-wrap">
    <span  class="danka-link">
        <p>수능 고득점을 위한 최종 관문</p>
        <strong>파이널 정규&middot;특강 단과</strong>
        <ul>
            <li>메가스터디 온·오프 전문 강사진의 <% if isCore = 1 Then '코어 %>생생한 현장 Live강의<% else %>몰입감 높은
                현장 강의<% end if %> 및 파이널 모의고사
            </li>
            <li>9월 모의평가에서의 취약 과목/영역 보완</li>
            <li>파이널 모의고사를 통해 실전 감각을 극대화</li>
        </ul>
        <a href="<%=url_final%>">바로가기</a>
    </span>

    <% if isCore <> 1 Then '코어 %>
    <span  class="danka-link">
        <p>오직 N수생을 위한 평일 오전/오후단과</p>
        <strong>AM단과</strong>
        <ul>
            <li>평일 오전/오후 체계적인 과목 편성</li>
            <li>관리력이 강력한 선생님의 N수생 전용 단과</li>
            <li>나에게 필요한 과목를 선택 수강하여 취약점 집중 보완</li>
        </ul>
        <a href="<%=url_am%>">바로가기</a>
    </span>
    <% end if %>

    <span  class="danka-link">
        <p>수시 합격을 결정하는 마지막 기회</p>
        <strong>대학별 논술 특강</strong>
        <ul>
            <li>대학별 기출문제의 핵심 포인트 정리 및 유형 분석</li>
            <li>출제 경향이 반영된 실전과 같은 모의논술 훈련</li>
            <li>논술 전문가의 1:1 개별 첨삭 진행</li>
        </ul>
        <a href="<%=url_non%>">바로가기</a>
        <!-- <a href="javascript:avoid(0)" onclick="alert('추후 오픈 예정입니다.')">바로가기</a> -->

        <!-- <div>
            <a href="javascript:avoid(0)" onclick="alert('추후 오픈 예정입니다.')">수능 이전 특강</a>
            <a href="javascript:avoid(0)" onclick="alert('추후 오픈 예정입니다.')">수능 이후 특강</a>
        </div> -->

    </span>
</div>