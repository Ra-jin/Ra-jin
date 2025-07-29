<!-- 윈터스쿨 프로그램 -->
<div class="cont js-cont">
    <div class="cont13">
        <div class="inner box-con box1 curi pb0">
            <!-- 연간 커리큘럼 -->
            <p class="tit mt0"><img src="<%=img_path_yangji%>/2024/regular/cont13_tit01.png" alt="연간 커리큘럼" /></p>
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <p class="mt100"><img src="<%=imgUrl%>/cont13_img.png" alt="모의고사 일정" /></p>
            <div class="tbl-wrap mt73">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width: 155px;">
                        <col style="width: auto;">
                        <col style="width: 174px;">
                        <col style="width: auto;">
                        <col style="width: 174px;">
                        <col style="width: auto;">
                        <col style="width: 174px;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>2~6월</th>
                            <th>6월 모평</th>
                            <th>7월~8월</th>
                            <th>9월 모평</th>
                            <th>9월~11월</th>
                            <th>수능</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray02">국어</th>
                            <td>기출 문제 접근 확립 <br>
                                원리와 논리 적용 심화<br>
                                (6평 대비 1달간 집중모의고사)
                            </td>
                            <td rowspan="5"><strong>평가원 모의고사 <br>[6월]</strong></td>
                            <td>실전모의고사와 <br>
                                6월 모평 기준 핵심 원리 총 정리<br>
                                (9평 대비 1달간 집중모의고사)
                            </td>
                            <td rowspan="5"><strong>평가원 모의고사 <br>[9월]</strong></td>
                            <td>실전모의고사와 <br>
                                9월 모평 기준 핵심 원리 총 정리<br>
                                (수능 대비 2달간 집중모의고사)
                            </td>
                            <td rowspan="5"><strong>대학수학<br> 능력시험<br>[11월]</strong></td>
                        </tr>
                        <tr>
                            <th class="bg-gray02">수학</th>
                            <td>핵심 주제 정리 및 <br>
                                유형별 문제 풀이
                            </td>
                            <td>
                                최신 경향 문제 풀이 및<br>모의고사 형태로 전체 단원 정리
                            </td>
                            <td>
                                핵심 개념 정리 및<br>
                                FINAL 실전모의고사
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray02">영어</th>
                            <td>독해, EBS 소재 연계<br>
                                6평 전략 실전 모의고사
                            </td>
                            <td>
                                문제풀이 및 모의고사,<br>
                                9평 전략 실전 모의고사
                            </td>
                            <td>
                                6,9평 분석 및 유형별 최종 정리,<br> 파이널 및 실전 봉투 모의고사
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray02">과학탐구</th>
                            <td>
                                개념정리 및 수능 기출과<br>EBS 변형문제 풀이, <br>중상~상 난이도 문제풀이
                            </td>
                            <td>상 난이도 문제풀이 및 <br>실전 모의고사</td>
                            <td>
                                FINAL 실전 모의고사
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-gray02">논술</th>
                            <td>
                                수리논술 기본 및<br>공통수학/수Ⅰ,Ⅱ/미적분
                            </td>
                            <td>실전모의고사 및<br>기학/확통 특강</td>
                            <td>실전모의고사 및 <br> 대학별 파이널(수능 전/수능 후) </td>
                        </tr>
                    </tbody>
                </table>
                <ul class="list-02">
                    <li>학원 사정에 의해 연간 커리큘럼 내용은 변경될 수 있습니다. </li>
                    <li>논술 과목은 선택입니다.</li>
                </ul>
            </div>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <div class="tbl-box">
                <div class="tobe">
                    <div><img src="<%=img_path_yangji%>/2024/regular/ico_tobe.png" alt=" [재수생 우선선발반] 학습 계획표는 추후 공개될 예정입니다."></div>
                    <p>최상위권 여학생 의대전문관은<br>
                        추후 공개될 예정입니다
                    </p>
                </div>
            </div>
            <% Else %>        
            <table class="tbl-01">
                <colgroup>
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                    <col style="width:auto">
                </colgroup>
                <thead>
                    <tr>
                        <th>1월</th>
                        <th>2월</th>
                        <th>3월</th>
                        <th>4월</th>
                        <th>5월</th>
                        <th>6평</th>
                        <th>6월</th>
                        <th>7월</th>
                        <th>8월</th>
                        <th>9평</th>
                        <th>9월</th>
                        <th>10월</th>
                        <th>11월</th>
                        <th>12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td colspan="2">우선선발반</td>
                        <td colspan="4">1학기</td>
                        <td colspan="4">2학기</td>
                        <td colspan="3">3학기</td>
                        <td>4학기</td>
                    </tr>
                    <tr>
                        <td colspan="2">국수영탐<br>기본개념학습</td>
                        <td colspan="3">개념정리</td>
                        <td>6평<br>대비</td>
                        <td colspan="3">약점체크<br>(개념 + 문제풀이)</td>
                        <td>9평<br>대비</td>
                        <td colspan="2">핵심체크<br>(실전 문제풀이)</td>
                        <td>수능<br>직전대비</td>
                        <td>정시<br>상담</td>
                    </tr>
                </tbody>
            </table>	        
            <% End If %>
    
            <!-- 표준 일과표 -->
            <p class="tit mt120"><img src="<%=img_path_yangji%>/2024/regular/cont13_tit02.png" alt="표준 일과표" /></p>
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <div class="tbl-box">
                <table class="tbl-03">
                    <colgroup>
                    <col style="width:15%;">
                    <col style="width:15%;">
                    <col style="width:auto;">
                    <col style="width:25%;">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>교시</th>
                        <th>시간</th>
                        <th>월~토</th>
                        <th>일요일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th class="bg-gray" rowspan="2">0교시</th>
                        <td class="bg-gray">AM6:20~AM7:20</td>
                        <td colspan="2">기상, 인원파악, 세면, 조식</td>
                    </tr>
                    <tr>
                        <td class="bg-gray">AM7:20~AM8:20</td>
                        <td colspan="2">학습계획서 작성, 명상의 시간, 아침체조, 일일TEST</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">1교시</th>
                        <td class="bg-gray">AM8:20~AM9:20</td>
                        <td rowspan="3">오전수업 및 의무자습</td>
                        <td rowspan="3">의무자습</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">2교시</th>
                        <td class="bg-gray">AM9:35~AM10:35</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">3교시</th>
                        <td class="bg-gray">AM10:50~AM11:50</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">점심식사</th>
                        <td class="bg-gray">AM11:50~PM12:50</td>
                        <td colspan="2">점심식사 및 체조</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">영어듣기</th>
                        <td class="bg-gray">PM12:50~PM13:10</td>
                        <td>영어듣기</td>
                        <td rowspan="2">의무자습</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">4교시</th>
                        <td class="bg-gray">PM13:10~PM14:10</td>
                        <td rowspan="3">오후수업 / 의무자습 / 질의응답</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">5교시</th>
                        <td class="bg-gray">PM14:25~PM15:25</td>
                        <td rowspan="2">Healing Time<br>
                        및 종교활동</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">6교시</th>
                        <td class="bg-gray">PM15:40~PM16:40</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">담임시간</th>
                        <td class="bg-gray">PM16:50~PM17:30</td>
                        <td colspan="2">일일TEST 및 담임시간</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">저녁식사</th>
                        <td class="bg-gray">PM17:30~PM18:30</td>
                        <td colspan="2">저녁식사 및 체조</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">7교시</th>
                        <td class="bg-gray">PM18:30~PM19:30</td>
                        <td rowspan="3">질의응답 및 의무자습</td>
                        <td rowspan="2">주간 Test</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">8교시</th>
                        <td class="bg-gray">PM19:45~PM20:45</td>                    
                    </tr>
                    <tr>
                        <th class="bg-gray">9교시</th>
                        <td class="bg-gray">PM21:00~PM23:00</td>
                        <td>의무자습</td>
                    </tr>
                    <tr>
                        <th class="bg-gray">종료</th>
                        <td class="bg-gray">PM23:00~PM23:40</td>
                        <td colspan="2">일과종료, 세면, 인원파악, 취침</td>
                    </tr>
                    </tbody>
                </table>
                <!-- <p class="l-txt mt20">※ 2월 정규반부터는 의무 자습이 23시까지 진행됩니다. </p> -->
            </div>
            <% Else %>
            <div class="tbl-box p2 bn">
                <table class="tbl-03">
                    <colgroup>
                        <col style="width: 25%;">
                        <col style="width: 25%;">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>교시</th>
                            <th>시간</th>
                            <th>월 ~ 토요일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray row" rowspan="3">0교시</th>
                            <th class="bg-gray">06:30 ~ 07:40</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:40 ~ 07:50</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:50 ~ 08:30</th>
                            <td>학습계획서 작성<br>명상의 시간,수능체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">1교시</th>
                            <th class="bg-gray">08:40 ~ 09:40</th>
                            <td rowspan="3">오전 수업 및 의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">2교시</th>
                            <th class="bg-gray">09:55 ~ 10:55</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">3교시</th>
                            <th class="bg-gray">11:10 ~ 12:10</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">점심식사</th>
                            <th class="bg-gray">12:10 ~ 13:00</th>
                            <td>점심식사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">영어듣기</th>
                            <th class="bg-gray">13:00 ~ 13:20</th>
                            <td>영어 듣기 (수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <th class="bg-gray">13:30 ~ 14:30</th>
                            <td rowspan="3">오후 수업 / 의무자습<br>질의응답</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">5교시</th>
                            <th class="bg-gray">14:45 ~ 15:45</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">6교시</th>
                            <th class="bg-gray">16:00 ~ 17:00</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">담임시간</th>
                            <th class="bg-gray">17:10 ~ 17:20</th>
                            <td>자습 및 담임시간</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">저녁식사</th>
                            <th class="bg-gray">17:20 ~ 18:10</th>
                            <td>저녁식사<br>(수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">7교시</th>
                            <th class="bg-gray">18:30 ~ 19:30</th>
                            <td rowspan="2">저녁수업 / 의무자습<br>질의응답</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">8교시</th>
                            <th class="bg-gray">19:45 ~ 20:45</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">9교시</th>
                            <th class="bg-gray">21:00 ~ 23:00</th>
                            <td>저녁수업 / 의무자습<br>일과 종료,일일 TEST</td>
                        </tr>
                    </tbody>
                </table>
        
                <table class="tbl-03 ml50">
                    <colgroup>
                        <col style="width: 25%;">
                        <col style="width: 25%;">
                        <col style="width:auto">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>교시</th>
                            <th>시간</th>
                            <th>일요일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray" rowspan="3">0교시</th>
                            <th class="bg-gray">07:00 ~ 08:00</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">08:00 ~ 08:10</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">08:10 ~ 08:30</th>
                            <td>학습계획서 작성<br>명상의 시간,수능체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">1교시</th>
                            <th class="bg-gray">08:40 ~ 09:40</th>
                            <td rowspan="3">의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">2교시</th>
                            <th class="bg-gray">09:55 ~ 10:55</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">3교시</th>
                            <th class="bg-gray">11:10 ~ 12:10</th>
                        </tr>
                        <tr>
                            <th class="bg-gray">점심식사</th>
                            <th class="bg-gray">12:10 ~ 13:00</th>
                            <td>점심식사 (수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <th class="bg-gray">13:10 ~ 14:20</th>
                            <td>의무자습</td>
                        </tr>
                        <tr style="height:240px !important">
                            <th class="bg-gray">HEALING TIME</th>
                            <th class="bg-gray">14:30 ~ 16:50</th>
                            <td>HEALING TIME 및<br>종교활동</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">담임시간</th>
                            <th class="bg-gray">17:00 ~ 17:20</th>
                            <td>자습 및 담임시간</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">저녁식사</th>
                            <th class="bg-gray">17:20 ~ 18:10</th>
                            <td>저녁식사<br>(수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">7교시</th>
                            <th class="bg-gray">18:30 ~ 19:30</th>
                            <td>의무자습 / <br>
                            주간 TEST</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">8교시</th>
                            <th class="bg-gray">19:45 ~ 20:45</th>
                            <td rowspan="2">의무자습<br>일과 종료</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">9교시</th>
                            <th class="bg-gray">21:00 ~ 22:00</th>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% End If %>
        </div>
    </div>
    <!-- 배너 -->
    <div class="bottom-bar">
        <p data-aos="zoom-in"><span><%=txtCampus%> 러셀 기숙학원</span> N수 정규반에서 <br> 목표하는 최상위권 대입성공을 쟁취할 수 있습니다.</p>
    </div>
    <!--// 배너 -->
</div>
      
  
  