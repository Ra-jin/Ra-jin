<div class="cont js-cont">
    <div class="cont15">
        <div class="inner">
            <!-- 반수반 연간 커리큘럼 -->
            <h5>반수반 연간 커리큘럼</h5>
            <img src="<%=img_path_yangji%>/2024/half/cont15_img.jpg" alt="" />
            <div class="c-tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:18%;">
                        <col style="width:auto;">
                        <col style="width:20%;">
                        <col style="width:auto;">
                        <col style="width:20%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>7~8월</th>
                            <th>9월 모평</th>
                            <th>9~11월</th>
                            <th>수능</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray">국어</th>
                            <td>실전모의고사와<br>
                                6월 모평 기준 핵심 원리 총 정리<br>
                                (9평 대비 1달간 집중모의고사)</td>
                            <td rowspan="5"><strong>평가원<br>
                                모의고사<br>
                                [9월]</strong></td>
                            <td>실전모의고사와<br>
                                9월 모평 기준 핵심 원리 최종 정리<br>
                                (수능 대비 2달간 집중모의고사)</td>
                            <td rowspan="5"><strong>대학수학<br>
                                능력시험<br>
                                [11월]</strong></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수학</th>
                            <td>최신 경향 문제 풀이 및<br>
                                모의고사 형태로 전체 단원 정리</td>
                            <td>핵심 개념 정리 및<br>
                                FINAL 실전모의고사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">영어</th>
                            <td>문제풀이 및 모의고사,<br>
                                9평 전략 실전 모의고사</td>
                            <td>6,9평 분석 및 유형별 최종 정리,<br>
                                파이널 및 실전 봉투 모의고사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">과학 탐구</th>
                            <td>상 난이도 문제풀이 및<br>
                                실전 모의고사</td>
                            <td>FINAL 실전 모의고사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">논술</th>
                            <td><%=curriculum_txt%></td>
                            <td>실전모의고사 및<br>
                                대학별 파이널(수능 전/수능 후)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="l-txt mt15">※ 학원사정에 의해 연간 커리큘럼 내용은 변경될 수 있습니다.<br>
            ※ 논술 과목은 선택입니다.</p>
            
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <div class="c-tbl-box type02">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                        <col style="width:auto;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="puple01">6월</th>
                            <th class="puple01">7월</th>
                            <th class="puple01">8월</th>
                            <th class="puple01">9평</th>
                            <th class="puple02">9월</th>
                            <th class="puple02">10월</th>
                            <th class="puple02">11월</th>
                            <th>12월</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td colspan="4"><strong class="fz20">2학기</strong></td>
                            <td colspan="3"><strong class="fz20">3학기</strong></td>
                            <td>4학기</td>
                        </tr>
                        <tr>
                            <td colspan="3">약점체크<br>
                                (개념+문제풀이)</td>
                            <td>9평 대비</td>
                            <td colspan="2">핵심체크<br>
                                (실전 문제풀이)</td>
                            <td>수능 직전대비</td>
                            <td>정시 상담</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% End If %>

            <!-- 표준 일과표 -->
            <h5>표준 일과표</h5>
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <div class="tbl-box">
                <table class="tbl-03">
                    <colgroup>
                        <col style="width:12%;">
                        <col style="width:20%;">
                        <col style="width:auto;">
                        <col style="width:25%;">
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th>교시</th>
                            <th>시간</th>
                            <th>월 ~ 토</th>
                            <th>일요일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray" rowspan="2">0교시</th>
                            <td>AM 6:20 ~ AM 7:20</td>
                            <td colspan="2">기상, 인원파악, 세면, 조식</td>
                        </tr>
                        <tr>
                            <td>AM 7:20 ~ AM 8:20</td>
                            <td colspan="2">학습계획서 작성, 명상의 시간, 아침체조, 일일TEST</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">1교시</th>
                            <td>AM 8:20 ~ AM 9:20</td>
                            <td rowspan="3">오전수업 및 의무자습</td>
                            <td rowspan="3">의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">2교시</th>
                            <td>AM 9:35 ~ AM 10:35</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">3교시</th>
                            <td>AM 10:50 ~ AM 11:50</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">점심식사</th>
                            <td>AM 11:50 ~ PM 12:50</td>
                            <td colspan="2">점심식사 및 체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">영어듣기</th>
                            <td>PM 12:50 ~ PM 13:10</td>
                            <td>영어듣기</td>
                            <td rowspan="2">의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <td>PM 13:10 ~ PM 14:10</td>
                            <td rowspan="3">오후수업 / 의무자습 / 질의응답</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">5교시</th>
                            <td>PM 14:25 ~ PM 15:25</td>
                            <td rowspan="2">Healing Time 및 <br>
                                종교활동</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">6교시</th>
                            <td>PM 15:40 ~ PM 16:40</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">담임시간</th>
                            <td>PM 16:50 ~ PM 17:30</td>
                            <td colspan="2">일일TEST 및 담임시간</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">저녁식사</th>
                            <td>PM 17:30 ~ PM 18:30</td>
                            <td colspan="2">저녁식사 및 체조</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">7교시</th>
                            <td>PM 18:30 ~ PM 19:30</td>
                            <td rowspan="3">질의응답 및 의무자습</td>
                            <td rowspan="2">주간TEST</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">8교시</th>
                            <td>PM 19:45 ~ PM 20:45</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">9교시</th>
                            <td>PM 21:00 ~ PM 23:00</td>
                            <td>의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">종료</th>
                            <td>PM 23:00 ~ PM 23:40</td>
                            <td colspan="2">일과종료, 세면, 인원파악, 취침</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% Else %>
            <div class="tbl-box type02">
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
    <div class="bottom-bar">
        <p><img src="<%=imgUrl%>/bt_banner.png" alt="다시 도전하는 최상위권 대입성공, 러셀 반수반이 대입성공의 가장 강력한 경쟁력입니다." /></p>
    </div>
</div>