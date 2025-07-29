<!-- 고1/고2 시간표 (첫번쨰 슬라이드) -->
<div class="baja-layer-popup no1" style="display: none;">
    <p class="mb20"></p>
    <% If campus_code = "INTRO" or campus_code = "CD0340" or campus_code = "CD0246" Then '인트로/코어광주/센텀 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="bg-sky sticky">0교시</td>
                    <td>07:00~07:50 (50분)</td>
                    <td colspan="5" rowspan="9">학교/선택자습</td>
                    <td rowspan="4">자습</td>
                    <td rowspan="4">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">1교시</td>
                    <td>08:00~08:40 (40분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td>08:50~10:10 (80분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
                    <td>10:30~12:10 (100분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">점심식사</th>
                    <td>12:10~13:10 (60분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="bg-sky sticky">4교시</td>
                    <td>13:10~14:20 (70분)</td>
                    <td rowspan="3">자습</td>
                    <td rowspan="3">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:40~16:00 (80분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>16:20~17:30 (70분)</td>
                </tr>
                
                <tr>
                    <th colspan="2" class="bg-sky">저녁식사</th>
                    <td>17:30~18:30 (60분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="bg-sky sticky">7교시</td>
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
                    <td class="bg-sky sticky">8교시</td>
                    <td>20:30~22:00 (90분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">귀가</th>
                    <td>22:00~22:20 (20분)</td>
                    <td colspan="7">-</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0341" Then '코어대전 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
                    <td>08:00~08:50 (50분)</td>
                    <td colspan="5" rowspan="8"></td>
                    <td rowspan="3">자습</td>
                    <td rowspan="3">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td>09:00~10:20 (80분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
                    <td>10:40~12:20 (100분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">점심식사</th>
                    <td>12:20~13:30 (70분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="bg-sky sticky">4교시</td>
                    <td>13:30~13:55 (25분)</td>
                    <td rowspan="3">자습</td>
                    <td rowspan="3">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:00~15:30 (90분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:20 (90분)</td>
                </tr>
                
                <tr>
                    <th colspan="2" class="bg-sky">저녁식사</th>
                    <td>17:20~18:30 (70분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="bg-sky sticky">7교시</td>
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
                    <td class="bg-sky sticky">8교시</td>
                    <td>20:20~22:00 (100분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">귀가</th>
                    <td>22:00~22:10 (10분)</td>
                    <td colspan="7">-</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0344" Then '코어전주 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
                    <td>08:00~08:40 (40분)</td>
                    <td colspan="5" rowspan="8">학교/선택자습</td>
                    <td rowspan="3">자습</td>
                    <td rowspan="3">자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td>08:50~10:10 (80분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
                    <td>10:30~12:10 (100분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">점심식사</th>
                    <td>12:10~13:10 (60분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="bg-sky sticky">4교시</td>
                    <td>13:10~14:20 (70분)</td>
                    <td rowspan="3">자습</td>
                    <td rowspan="3">자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:40~16:00 (80분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>16:20~17:30 (70분)</td>
                </tr>
                
                <tr>
                    <th colspan="2" class="bg-sky">저녁식사</th>
                    <td>17:30~18:40 (70분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="bg-sky sticky">7교시</td>
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
                    <td class="bg-sky sticky">8교시</td>
                    <td>20:30~22:00 (90분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">귀가</th>
                    <td>22:00~22:10 (10분)</td>
                    <td colspan="7">-</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0345" Then '코어창원 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="bg-sky sticky">0교시</td>
                    <td>07:00~07:50 (50분)</td>
                    <td colspan="5" rowspan="9">학교/선택자습</td>
                    <td rowspan="4">자습</td>
                    <td rowspan="4">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">1교시</td>
                    <td>08:00~08:40 (40분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td>08:50~10:10 (80분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
                    <td>10:30~12:10 (100분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">점심식사</th>
                    <td>12:10~13:10 (60분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="bg-sky sticky">4교시</td>
                    <td>13:10~14:20 (70분)</td>
                    <td rowspan="3">자습</td>
                    <td rowspan="3">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:40~16:00 (80분)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>16:20~17:30 (70분)</td>
                </tr>
                
                <tr>
                    <th colspan="2" class="bg-sky">저녁식사</th>
                    <td>17:30~18:30 (60분)</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="bg-sky sticky">7교시</td>
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
                    <td class="bg-sky sticky">8교시</td>
                    <td>20:20~21:50 (90분)</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">귀가</th>
                    <td>21:50~22:10 (20분)</td>
                    <td colspan="7">-</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0346" Then '코어청주 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
                <col style="width:15%;" />
                <col style="width:5%;" />
                <col style="width:auto" />
                <col style="width:auto;" />
                <col style="width:auto;" />
                <col style="width:auto;" />
                <col style="width:auto;" />
                <col style="width:auto;" />
                <col style="width:auto;" />
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
                    <td class="bg-sky sticky">1교시</td>
                    <td>8:00~08:30</td>
                    <td>30분</td>
                    <td colspan="6" rowspan="4">의무자습 / 단과수업 / 상담</td>
                    <td rowspan="4">선택자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td>8:40~10:10</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
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
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:40~16:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>16:20~17:20</td>
                    <td>60분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="6">의무자습 / 단과수업 / 상담</td>
                    <td rowspan="2">선택자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
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
                    <td class="bg-sky sticky">9교시</td>
                    <td>22:10~23:00</td>
                    <td>50분</td>
                    <td rowspan="2" colspan="5">선택자습</td>
                    <td rowspan="2" colspan="2">
                        이용불가
                     </td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0342" Then '대구 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
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
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
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
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
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
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td rowspan="2" class="bg-math">국어</td>
                    <td rowspan="2" class="bg-math">통합과학</td>
                    <td rowspan="2" class="bg-math">수학</td>
                    <td rowspan="2" class="bg-math">영어</td>
                    <td rowspan="2" class="bg-math">수학</td>
                    <td rowspan="2">자습</td>
                    <td rowspan="2">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
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
                    <td class="bg-sky sticky">9교시</td>
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
                    <td class="bg-sky sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% End If %>
    <p class="bt-close"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<!-- 중3 시간표 (두번쨰 슬라이드) -->
<div class="baja-layer-popup no2" style="display: none;">
    <p class="mb20"></p>
    <% If campus_code = "INTRO" OR campus_code = "CD0246" Then '인트로/센텀 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
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
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
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
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
                    <td>13:10~14:20</td>
                    <td>70분</td>
                    <td rowspan="3" class="bg-math">
                        수학(상)     
                    </td>
                    <td rowspan="3" class="bg-math">
                        국어
                    </td>
                    <td rowspan="3" class="bg-math">
                        영어
                    </td>
                    <td rowspan="3" class="bg-math">
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
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
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
                    <td class="bg-sky sticky">8교시</td>
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
                    <td class="bg-sky sticky">9교시</td>
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
                    <td class="bg-sky sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0342" Then '대구 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
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
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
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
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
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
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td rowspan="2" class="bg-math">영어</td>
                    <td rowspan="2" class="bg-math">영어</td>
                    <td rowspan="2" class="bg-math">국어</td>
                    <td rowspan="2" class="bg-math">수학</td>
                    <td rowspan="2" class="bg-math">국어</td>
                    <td rowspan="2" class="bg-math">수학</td>
                    <td rowspan="2">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
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
                    <td class="bg-sky sticky">9교시</td>
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
                    <td class="bg-sky sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0349" Then '울산 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
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
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
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
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
                    <td>13:10~14:20</td>
                    <td>70분</td>
                    <td rowspan="3" class="bg-math">
                        수학(상)     
                    </td>
                    <td rowspan="3" class="bg-math">
                        국어
                    </td>
                    <td rowspan="3" class="bg-math">
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
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
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
                    <td class="bg-sky sticky">8교시</td>
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
                    <td class="bg-sky sticky">9교시</td>
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
                    <td class="bg-sky sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0343" Then '코어원주 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <th rowspan="4" class="bg-wh">오전</th>
                    <td class="bg-sky sticky">1교시</td>
                    <td class="bg-sky">8:00~08:30</td>
                    <td class="bg-sky">30분</td>
                    <td colspan="6">자습</td>
                    <td rowspan="4">선택자습</td>
                </tr>
                <tr>
                    <td class="sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">조회</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td class="bg-sky">8:50~10:10</td>
                    <td class="bg-sky">80분</td>
                    <td colspan="6" rowspan="2">자습 / 상담 / 영어프로그램</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
                    <td class="bg-sky">10:20~12:00</td>
                    <td class="bg-sky">100분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-wh">점심식사</th>
                    <td>12:00~13:10</td>
                    <td>70분</td>
                    <td colspan="7">점심식사</td>
                </tr>
                <tr>
                    <th rowspan="4" class="bg-wh">오후</th>
                    <td class="bg-sky sticky">4교시</td>
                    <td class="bg-sky">13:10~14:20</td>
                    <td class="bg-sky">70분</td>
                    <td colspan="6" rowspan="3">자습 / 상담</td>
                    <td rowspan="4">선택자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td class="bg-sky">14:30~15:40</td>
                    <td class="bg-sky">70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td class="bg-sky">15:50~17:00</td>
                    <td class="bg-sky">70분</td>
                </tr>
                <tr>
                    <td class="sticky">종례</td>
                    <td>17:10~17:30</td>
                    <td>20분</td>
                    <td colspan="6">종례</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-wh">저녁식사</th>
                    <td>17:30~18:40</td>
                    <td>70분</td>
                    <td colspan="7">저녁식사</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-wh">저녁</th>
                    <td class="bg-sky sticky">7교시</td>
                    <td class="bg-sky">18:40~20:10</td>
                    <td class="bg-sky">90분</td>
                    <td rowspan="2" colspan="6">자습 / 상담</td>
                    <td rowspan="2">선택자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
                    <td class="bg-sky">20:30~22:00</td>
                    <td class="bg-sky">90분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-wh">귀가</th>
                    <td>22:00~22:20</td>
                    <td>20분</td>
                    <td colspan="7">귀가</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-gray">심야</th>
                    <td class="bg-gray sticky">9교시</td>
                    <td class="bg-gray">22:20~23:00</td>
                    <td class="bg-gray">40분</td>
                    <td rowspan="2" colspan="5">선택자습</td>
                    <td rowspan="2" colspan="2">
                        * 토요일/일요일/공휴일은<br>
                        심야선택자습 미 진행
                     </td>
                </tr>
                <tr>
                    <td class="bg-gray sticky">10교시</td>
                    <td class="bg-gray">23:10~24:00</td>
                    <td class="bg-gray">50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0344" Then '코어전주 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 900px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
                    <td>8:00~08:30</td>
                    <td>30분</td>
                    <td colspan="6">자습</td>
                    <td rowspan="4">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">조회</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td>8:50~10:10</td>
                    <td>80분</td>
                    <td rowspan="2" colspan="6">자습/상담/영어프로그램</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
                    <td>13:10~14:20</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="6">
                        자습/상담
                    </td>
                    <td rowspan="4">
                        선택 자습
                    </td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="6">자습/상담</td>
                    <td rowspan="2">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
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
                    <td class="bg-sky sticky">9교시</td>
                    <td>22:20~23:00</td>
                    <td>40분</td>
                    <td rowspan="2" colspan="5">선택 자습</td>
                    <td rowspan="2" colspan="2">
                        * 토요일/일요일/공휴일은<br>
                        심야 선택 자습 미 진행
                     </td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% ElseIf campus_code = "CD0345" Then '코어창원 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
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
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
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
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
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
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
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
                    <td class="bg-sky sticky">8교시</td>
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
    </div>
    <% End If %>
    <p class="bt-close"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>   
</div>
<!-- (세번쨰 슬라이드) -->
<div class="baja-layer-popup no3" style="display: none;">
    <p class="mb20"></p>
    <% If campus_code = "CD0342" Then '대구 %>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 800px;">
            <colgroup>
                <col style="width:63.34px;" />
                <col style="width:63.34px;" />
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
                    <td class="bg-sky sticky">1교시</td>
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
                    <td class="bg-sky sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
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
                    <td class="bg-sky sticky">3교시</td>
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
                    <td class="bg-sky sticky">4교시</td>
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
                    <td rowspan="3" class="bg-math">
                        수학
                    </td>
                    <td rowspan="4">
                        선택 자습
                    </td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">종례</td>
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
                    <td class="bg-sky sticky">7교시</td>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td rowspan="2" class="bg-math">수학</td>
                    <td rowspan="2">자습</td>
                    <td rowspan="2">자습</td>
                    <td rowspan="2">자습</td>
                    <td rowspan="2" class="bg-math">수학</td>
                    <td rowspan="2">자습</td>
                    <td rowspan="2">선택 자습</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
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
                    <td class="bg-sky sticky">9교시</td>
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
                    <td class="bg-sky sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <% End If %>
    <p class="bt-close"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p> 
</div>  