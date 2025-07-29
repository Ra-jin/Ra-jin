
<div class="js-cont">
    <div class="cont07">
        <div class="inner">
            <p class="tit mt0">반수반 연간 커리큘럼</p>
                  
            <% If sCampusCode = "CD0258" Then '남자기숙 %>
            <table class="tbl-01">
                <colgroup>
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
                        <th>구분</th>
                        <th>7월</th>
                        <th>8월</th>
                        <th>9월</th>
                        <th>10월</th>
                        <th>11월</th>
                        <th>12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">정규반</th>
                        <td colspan="2">9평 대비 집중 문제풀이</td>
                        <td rowspan="2">수능 원서접수<br>수시상담 & 지원</td>
                        <td rowspan="2">과목별 실전 컨텐츠<br>+<br>약점 보완<br>집중 질답</td>
                        <td rowspan="2">수능 실전 <br>시뮬레이션</td>
                        <td rowspan="2">정시상담</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">반수반</th>
                        <td colspan="2">9평 대비 집중 문제풀이<br>+<br>개념 리마인드 특별 제공</td>
                    </tr>
                </tbody>
            </table>
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
                </colgroup>
                <thead>
                    <tr>
                        <th>구분</th>
                        <th>7월</th>
                        <th>8월</th>
                        <th>9월</th>
                        <th>10월</th>
                        <th>11월</th>
                        <th>12월</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">반수반</th>
                        <td colspan="3"><strong>9평 대비 및 약점 체크<br>(개념+문제풀이)</strong></td>
                        <td>핵심체크<br>(실전 문제풀이)</td>
                        <td>수능 직전 대비</td>
                        <td>정시 상담</td>
                    </tr>
                </tbody>
            </table>
            <% End If %>
            
            <p class="tit">표준 일과표</p>
            <% If sCampusCode = "CD0347" Then '서의치기숙 %>
            <table class="tbl-01 standard">
				<colgroup>
					<col style="width: 14%;">
					<col style="width: 14%;">
					<col style="width:auto">
					<col style="width: 20%;">
				</colgroup>
				<thead>
					<tr>
						<th>교시</th>
						<th>시간</th>
						<th>월 ~ 토요일</th>
						<th>일요일</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th rowspan="2" class="bd-r">0교시</th>
						<th>AM6:20 ~ AM7:20</th>
						<td colspan="2">기상, 인원파악, 세면, 조식</td>
					</tr>
					<tr>
						<th>AM7:20 ~ AM8:20</th>
						<td colspan="2">학습계획서 작성, 명상의 시간, 아침체조, 일일TEST
						</td>
					</tr>
					<tr>
						<th>1교시</th>
						<th>AM8:20~AM9:20</th>
						<td rowspan="3" class="bd-r">오전수업 및 의무자습</td>
						<td rowspan="3">의무자습</td>
					</tr>
					<tr>
						<th>2교시</th>
						<th>AM9:35~AM10:35</th>
					</tr>
					<tr>
						<th>3교시</th>
						<th>AM10:50~AM11:50</th>
					</tr>
					<tr>
						<th>점심식사</th>
						<th>AM11:50~PM12:50</th>
						<td colspan="2">점심식사 및 체조</td>
					</tr>
					<tr>
						<th>영어듣기</th>
						<th>PM12:50~PM13:10</th>
						<td>영어듣기</td>
						<td rowspan="2">의무자습</td>
					</tr>
					<tr>
						<th>4교시</th>
						<th>PM13:10~PM14:10</th>
						<td rowspan="3" class="bd-r">오후수업 / 의무자습 / 질의응답</td>
					</tr>
					<tr>
						<th>5교시</th>
						<th>PM14:25~PM15:25</th>
						<td rowspan="2">Healing Time<br>및 종교활동</td>
					</tr>
					<tr>
						<th>6교시</th>
						<th>PM15:40~PM16:40</th>
					</tr>
					<tr>
						<th>담임시간</th>
						<th>PM16:50~PM17:30</th>
						<td colspan="2">일일TEST 및 담임시간
						</td>
					</tr>
					<tr>
						<th>저녁식사</th>
						<th>PM17:30~PM18:30</th>
						<td colspan="2">저녁식사 및 체조</td>
					</tr>
					<tr>
						<th>7교시</th>
						<th>PM18:30~PM19:30</th>
						<td rowspan="3" class="bd-r">질의응답 및 의무자습</td>
						<td rowspan="2">주간Test</td>
					</tr>
					<tr>
						<th>8교시</th>
						<th>PM19:45~PM20:45</th>
					</tr>
					<tr>
						<th>9교시</th>
						<th>PM21:00~PM23:00</th>
						<td>의무자습</td>
					</tr>
					<tr>
						<th>종료</th>
						<th>PM23:00~PM23:40</th>
						<td colspan="2">일과종료, 세면, 인원파악, 취침
						</td>
					</tr>
				</tbody>
			</table>
            <% ElseIf sCampusCode = "CD0258" Then '남자기숙 %>
            <div class="tbl-2p-box">
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
                            <th class="bg-gray">06:20 ~ 07:20</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:20 ~ 07:30</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:30 ~ 08:30</th>
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
                <table class="tbl-03 ml_50">
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
                            <th class="bg-gray">06:50 ~ 07:50</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:50 ~ 08:00</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">08:00 ~ 08:30</th>
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
                            <td>점심식사<br>(수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <th class="bg-gray">13:10 ~ 14:20</th>
                            <td>의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">HEALING TIME</th>
                            <th class="bg-gray">14:30 ~ 16:50</th>
                            <td>HEALING TIME 및<br>종교활동</td>
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
                            <td>의무자습 / 주간 TEST</td>
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
            
            <% ElseIf sCampusCode = "CD0348" Then '여자기숙' %>
            <div class="tbl-2p-box">
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
                            <th class="bg-gray">06:20 ~ 07:20</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:20 ~ 07:30</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:30 ~ 08:30</th>
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
                <table class="tbl-03 ml_50">
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
                            <th class="bg-gray">06:50 ~ 07:50</th>
                            <td>기상,세면,조식<br>자습관 입실</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">07:50 ~ 08:00</th>
                            <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray b-l">08:00 ~ 08:30</th>
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
                            <td>점심식사<br>(수능체조)</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">4교시</th>
                            <th class="bg-gray">13:10 ~ 14:20</th>
                            <td>의무자습</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">HEALING TIME</th>
                            <th class="bg-gray">14:30 ~ 16:50</th>
                            <td>HEALING TIME 및<br>종교활동</td>
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
                            <td>의무자습 / 주간 TEST</td>
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
</div>