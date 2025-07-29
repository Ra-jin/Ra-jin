<h2 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/pre_winter/cont04_tit.png" alt="프리윈터스쿨 바른공부 자습전용관 표준 시간표" /></h2>
<div class="tab-cont-wrap">
    <!-- Tab 버튼 -->
<% If sCampusCode <> "CD0346" Then '코어청주 제외 %>
    <div class="btn-wrap">
    <% If sCampusCode = "CD0349" OR sCampusCode = "CD0343" Then '울산/코어원주 %>
        <a href="javascript:void(0)" class="on">중3 시간표</a>
    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <a href="javascript:void(0)" class="on">중3 시간표</a>
        <a href="javascript:void(0)">고1 시간표</a>
        <a href="javascript:void(0)">고2/고3 시간표</a>
    <% Else %>
        <% If sCampusCode = "CD0344" Then '코어전주 %>
        <a href="javascript:void(0)" class="on">고1/고2 시간표 &amp; 중3 시간표</a>
        <% Else %>
        <a href="javascript:void(0)" class="on">고1/고2 시간표</a>
        <% End If %>

        <% If sCampusCode <> "CD0340" and sCampusCode <> "CD0341" and sCampusCode <> "CD0344" Then '코어광주/코어대전/코어전주 제외 %>
        <a href="javascript:void(0)">중3 시간표</a>
        <% End If %>

    <% End If %>
<% End If %>
    </div>
    <!-- //Tab 버튼 -->

    <!-- 고1/고2 시간표 -->
    <% If sCampusCode <> "CD0342" and sCampusCode <> "CD0349" and sCampusCode <> "CD0343" and sCampusCode <> "CD0346" Then '대구/울산/코어원주/코어청주 제외 %>
    <div class="cont-box on">
        <% If sCampusCode = "CD0341" Then '코어대전 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:20%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="3" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>08:00~08:50 (50분)</td>
                            <td colspan="5" rowspan="8"></td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>09:00~10:20 (80분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:40~12:20 (100분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:20~13:30 (70분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:30~13:55 (25분)</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:00~15:30 (90분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:20 (90분)</td>
                        </tr>
                        
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:20~18:30 (70분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:30~20:00 (90분)</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:20~22:00 (100분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:10 (10분)</td>
                            <td colspan="7">-</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:20%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2"></th>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="3" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>08:00~08:40 (40분)</td>
                            <td colspan="5" rowspan="8">학교 / 선택자습</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>08:50~10:10 (80분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:30~12:10 (100분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:10~13:10 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20 (70분)</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:40~16:00 (80분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>16:20~17:30 (70분)</td>
                        </tr>
                        
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40 (70분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10 (90분)</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00 (90분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:10 (10분)</td>
                            <td colspan="7">-</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-r">
                    <strong>충분한 자습시간 확보와<br>
                        담임선생님의 밀착 케어 시간!</strong>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:20%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2"></th>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">0교시</td>
                            <td>07:00~07:50 (50분)</td>
                            <td colspan="5" rowspan="9">학교 / 선택자습</td>
                            <td rowspan="4">자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">1교시</td>
                            <td>08:00~08:40 (40분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>08:50~10:10 (80분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:30~12:10 (100분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:10~13:10 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20 (70분)</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:40~16:00 (80분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>16:20~17:30 (70분)</td>
                        </tr>
                        
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:30 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:30~20:00 (90분)</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:20~21:50 (90분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>21:50~22:10 (20분)</td>
                            <td colspan="7">-</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-r">
                    <strong>충분한 자습시간 확보와<br>
                        담임선생님의 밀착 케어 시간!</strong>
                </div>
            </div>
        </div>
        <% Else %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:20%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2"></th>
                            <th>시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">0교시</td>
                            <td>07:00~07:50 (50분)</td>
                            <td colspan="5" rowspan="9">학교 / 선택자습</td>
                            <td rowspan="4">자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">1교시</td>
                            <td>08:00~08:40 (40분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>08:50~10:10 (80분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:30~12:10 (100분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:10~13:10 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20 (70분)</td>
                            <td rowspan="3">자습</td>
                            <td rowspan="3">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:40~16:00 (80분)</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>16:20~17:30 (70분)</td>
                        </tr>
                        
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:30 (60분)</td>
                            <td colspan="2">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:30~20:00 (90분)</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00 (90분)</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20 (20분)</td>
                            <td colspan="7">-</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-r">
                    <strong>충분한 자습시간 확보와<br>
                        담임선생님의 밀착 케어 시간!</strong>
                </div>
            </div>
        </div>
        <% End If %>

        <% If sCampusCode = "CD0342" Then '대구 %>
        <p class="r-txt">
            ※ 수업일정은 12월 중순~12월 말, 2주 집중과정으로 진행<br>
            ※ 학교 기말고사 일정에 따라 변동 가능성 있습니다.
        </p>
        <% ElseIf sCampusCode = "CD0345" OR sCampusCode = "CD0344" Then '코어창원/코어전주 %>
        <% Else %>
        <p class="r-txt">※ 표준 시간표는 학원 사정에 의해 변동될 수 있습니다.
        </p>
        <% End If %>
    </div>
    <% End If %>
    <!-- //고1/고2 시간표 -->
    
    <!-- 중3 시간표 -->
    <% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0343" OR sCampusCode = "CD0346" Then '대구/울산/코어원주/코어청주 %>
    <div class="cont-box on">
    <% Else %>
    <div class="cont-box">
    <% End If %>
        <% If sCampusCode = "CD0343" Then '코어원주 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td class="bg-sky">8:00~08:30</td>
                            <td class="bg-sky">30분</td>
                            <td colspan="6">자습</td>
                            <td rowspan="4">선택자습</td>
                        </tr>
                        <tr>
                            <td>조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">조회</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td class="bg-sky">8:50~10:10</td>
                            <td class="bg-sky">80분</td>
                            <td colspan="6" rowspan="2">자습 / 상담 / 영어프로그램</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td class="bg-sky">10:20~12:00</td>
                            <td class="bg-sky">100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">점심식사</td>
                        </tr>
                        <tr>
                            <th rowspan="4">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td class="bg-sky">13:10~14:20</td>
                            <td class="bg-sky">70분</td>
                            <td colspan="6" rowspan="3">자습 / 상담</td>
                            <td rowspan="4">선택자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td class="bg-sky">14:30~15:40</td>
                            <td class="bg-sky">70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td class="bg-sky">15:50~17:00</td>
                            <td class="bg-sky">70분</td>
                        </tr>
                        <tr>
                            <td>종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">종례</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">저녁식사</td>
                        </tr>
                        <tr>
                            <th rowspan="2">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td class="bg-sky">18:40~20:10</td>
                            <td class="bg-sky">90분</td>
                            <td rowspan="2" colspan="6">자습 / 상담</td>
                            <td rowspan="2">선택자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td class="bg-sky">20:30~22:00</td>
                            <td class="bg-sky">90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">귀가</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-gray">심야</th>
                            <td class="bg-gray">9교시</td>
                            <td class="bg-gray">22:20~23:00</td>
                            <td class="bg-gray">40분</td>
                            <td rowspan="2" colspan="5">선택자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은<br>
                                심야선택자습 미 진행
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-gray">10교시</td>
                            <td class="bg-gray">23:10~24:00</td>
                            <td class="bg-gray">50분</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:210px;left:416px">
                    수능 시간표와 동일한<br>
                    바자관 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-b" style="top:-82px;left:765px;">
                    타 학원/외부스케줄에<br>
                    따른 외출 조정 가능
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td colspan="6">자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">조회</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2" colspan="6">자습/상담/영어프로그램</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">점심식사</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3" colspan="6">
                                자습/상담
                            </td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">종례</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">저녁식사</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2" colspan="6">자습/상담</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">귀가</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td class="bg-sky">9교시</td>
                            <td>22:20~23:00</td>
                            <td>40분</td>
                            <td rowspan="2" colspan="5">선택 자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은<br>
                                심야 선택 자습 미 진행
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:206px;">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="4">
                                선택 자습
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:203px;">
                    수능 시간표와 동일한 <br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td colspan="6" rowspan="4">의무자습 / 단과수업 / 상담</td>
                            <td rowspan="4">선택자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:40~10:10</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:30~12:10</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:10~13:10</td>
                            <td>60분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3" colspan="6">
                                의무자습 / 단과수업 / 상담
                            </td>
                            <td rowspan="4">
                                선택자습
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:40~16:00</td>
                            <td>80분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>16:20~17:20</td>
                            <td>60분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:20~17:30</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2" colspan="6">의무자습 / 단과수업 / 상담</td>
                            <td rowspan="2">선택자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>21:50~22:10</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td class="bg-sky">9교시</td>
                            <td>22:10~23:00</td>
                            <td>50분</td>
                            <td rowspan="2" colspan="5">선택자습</td>
                            <td rowspan="2" colspan="2">
                                이용불가
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0349" Then '울산 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>선택 자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3" class="bg-sbj">
                                수학(상)
                            </td>
                            <td rowspan="3" class="bg-sbj">
                                국어
                            </td>
                            <td rowspan="3" class="bg-sbj">
                                영어
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                선택 자습
                            </td>
                            <td rowspan="4">
                                선택 자습
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td class="bg-sky">9교시</td>
                            <td>22:20~23:00</td>
                            <td>40분</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은<br>
                                심야 선택 자습 미 진행
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:386px;">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-t" style="top:410px;left:735px;">
                    과목별 개념 수업 진행으로<br>
                    탄탄한 기본기 확립!
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="4">
                                선택 자습
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2" class="bg-sbj">국어</td>
                            <td rowspan="2" class="bg-sbj">통합과학</td>
                            <td rowspan="2" class="bg-sbj">수학</td>
                            <td rowspan="2" class="bg-sbj">영어</td>
                            <td rowspan="2" class="bg-sbj">수학</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td class="bg-sky">9교시</td>
                            <td>22:20~23:00</td>
                            <td>40분</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은<br>
                                심야 선택 자습 미 진행
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:386px;">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-t" style="top:410px;left:735px;">
                    과목별 개념 수업 진행으로<br>
                    탄탄한 기본기 확립!
                </div>
            </div>
        </div>
        <% Else %>
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3" class="bg-sbj">
                                수학(상)
                            </td>
                            <td rowspan="3" class="bg-sbj">
                                국어
                            </td>
                            <td rowspan="3" class="bg-sbj">
                                영어
                            </td>
                            <td rowspan="3" class="bg-sbj">
                                통합과학
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="4">
                                선택 자습
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td class="bg-sky">9교시</td>
                            <td>22:20~23:00</td>
                            <td>40분</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은<br>
                                심야 선택 자습 미 진행
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:386px;">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-t" style="top:410px;left:735px;">
                    과목별 개념 수업 진행으로<br>
                    탄탄한 기본기 확립!
                </div>
            </div>
        </div>
        <% End If %>
        <% If sCampusCode <> "CD0345" and sCampusCode <> "CD0344" and sCampusCode <> "CD0346" Then '코어창원/코어전주/코어청주 제외 %>
        <p class="r-txt">※ 표준 시간표는 학원 사정에 의해 변동될 수 있습니다.
        </p>
        <% End If %>
    </div>
    <!-- //중3 시간표 -->

    <% If sCampusCode = "CD0342" Then '대구 %>
    <!-- 고1 시간표 -->
    <div class="cont-box">
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="4">
                                선택 자습
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2" class="bg-sbj">영어</td>
                            <td rowspan="2" class="bg-sbj">영어</td>
                            <td rowspan="2" class="bg-sbj">국어</td>
                            <td rowspan="2" class="bg-sbj">수학</td>
                            <td rowspan="2" class="bg-sbj">국어</td>
                            <td rowspan="2" class="bg-sbj">수학</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td class="bg-sky">9교시</td>
                            <td>22:20~23:00</td>
                            <td>40분</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은<br>
                                심야 선택 자습 미 진행
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:386px;">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-t" style="top:410px;left:735px;">
                    과목별 개념 수업 진행으로<br>
                    탄탄한 기본기 확립!
                </div>
            </div>
        </div>
    </div>
    <!-- //고1 시간표 -->
    <!-- 고2/3 시간표 -->
    <div class="cont-box">
        <div class="tbl-box">
            <div class="tbl-wrap">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:15%;" />
                        <col style="width:5%;" />
                        <col style="width:auto" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                        <col style="width:auto;" />
                    </colgroup>
                    <thead>
                        <tr class="low">
                            <th colspan="2">구분</th>
                            <th colspan="2">자습시간</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                            <th>일(공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-sky">오전</th>
                            <td class="bg-sky">1교시</td>
                            <td>8:00~08:30</td>
                            <td>30분</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td>자습</td>
                            <td rowspan="4">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">조회</td>
                            <td>8:30~08:40</td>
                            <td>10분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">2교시</td>
                            <td>8:50~10:10</td>
                            <td>80분</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">3교시</td>
                            <td>10:20~12:00</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">점심식사</th>
                            <td>12:00~13:10</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-sky">오후</th>
                            <td class="bg-sky">4교시</td>
                            <td>13:10~14:20</td>
                            <td>70분</td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3">
                                자습
                            </td>
                            <td rowspan="3" class="bg-sbj">
                                수학
                            </td>
                            <td rowspan="4">
                                선택 자습
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">5교시</td>
                            <td>14:30~15:40</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">6교시</td>
                            <td>15:50~17:00</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">종례</td>
                            <td>17:10~17:30</td>
                            <td>20분</td>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">저녁식사</th>
                            <td>17:30~18:40</td>
                            <td>70분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td class="bg-sky">7교시</td>
                            <td>18:40~20:10</td>
                            <td>90분</td>
                            <td rowspan="2" class="bg-sbj">수학</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2" class="bg-sbj">수학</td>
                            <td rowspan="2">자습</td>
                            <td rowspan="2">선택 자습</td>
                        </tr>
                        <tr>
                            <td class="bg-sky">8교시</td>
                            <td>20:30~22:00</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2" class="bg-sky">귀가</th>
                            <td>22:00~22:20</td>
                            <td>20분</td>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td class="bg-sky">9교시</td>
                            <td>22:20~23:00</td>
                            <td>40분</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2">선택 자습</td>
                            <td rowspan="2" colspan="2">
                                * 토요일/일요일/공휴일은<br>
                                심야 선택 자습 미 진행
                             </td>
                        </tr>
                        <tr>
                            <td class="bg-sky">10교시</td>
                            <td>23:10~24:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
                <div class="bubble-l" style="top:386px;">
                    수능 시간표와 동일한<br>
                    표준 시간표로 <strong>수능 리듬에<br>
                        익숙해질 수 있습니다.</strong>
                </div>
                <div class="bubble-t" style="top:410px;left:735px;">
                    과목별 개념 수업 진행으로<br>
                    탄탄한 기본기 확립!
                </div>
            </div>
        </div>
    </div>
    <!-- //고2/3 시간표 -->
    <% End If %>
</div>