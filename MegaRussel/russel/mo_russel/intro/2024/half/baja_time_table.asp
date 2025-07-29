<% If campus_code = "INTRO" or campus_code = "CD0349" Then '인트로/울산 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:11%" />
                <col style="width:11%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~금요일</th>
                    <th>토요일</th>
                    <th>일(공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4"  class="bg-sky">오전</th>
                    <td class="sticky">0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">1교시</td>
                    <td>AM 08:00</td>
                    <td>AM 08:40</td>
                    <td>40분</td>
                    <td><span class="ico-txt p">영어 프로그램</span></td>
                    <td rowspan="3">
                        <span class="ico-txt b mb4">의무 자습</span><br>
                        <span class="ico-txt v mb4">단과 수업</span><br>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>AM 08:50</td>
                    <td>AM 10:10</td>
                    <td>80분</td>
                    <td rowspan="2">
                        <span class="ico-txt b mb4">의무 자습</span><br>
                        <span class="ico-txt v mb4">단과 수업</span><br>
                        <span class="ico-txt r">상담</span>
                    </td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>AM 10:30</td>
                    <td>PM 12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">점심식사</th>
                    <td>PM 12:10</td>
                    <td>PM 01:10</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>PM 01:10</td>
                    <td>PM 02:20</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>PM 02:40 </td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>PM 04:20</td>
                    <td>PM 05:30</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">저녁식사</th>
                    <td>PM 05:30</td>
                    <td>PM 06:30</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>PM 06:30</td>
                    <td>PM 08:00</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>PM 08:20 </td>
                    <td>PM 09:50</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">귀가</th>
                    <td>PM 09:50</td>
                    <td>PM 10:10</td>
                    <td>20분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>PM 10:10</td>
                    <td>PM 11:00</td>
                    <td>50분</td>
                    <td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>PM 11:10</td>
                    <td>AM 12:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <ul class="list-star f11">
        <% If campus_code = "INTRO" Then '인트로일 경우%>
        <li>평일 오전 영어 프로그램은 영단어&amp;듣기TEST로 진행되며 학원별 운영은 상이할 수 있습니다.</li>
        <li>학원별 운영 시간표는 상이하므로 학원별 페이지를 확인하시기 바랍니다.</li>
        
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <li>평일 오전 영어 프로그램은 영단어&amp;듣기 TEST로 진행되며 학원별 운영은 상이할 수 있습니다.</li>
        <% End If%>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0342" Then '대구 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 300%;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:50px" />
                <col style="width:20%" />
                <col style="width:10%" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">교시</th>
                    <th colspan="2">시간</th>
                    <th>월</th>
                    <th>화</th>
                    <th>수</th>
                    <th>목</th>
                    <th>금</th>
                    <th>토</th>
                    <th>일<br>
                    (공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="bg-sky sticky">0교시</td>
                    <td class="bg-sky">AM07:00 - AM07:50 
                    </td>
                    <td class="bg-sky">50분</td>
                    <td colspan="6"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="11"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">1교시</td>
                    <td class="bg-sky">AM08:00 - AM08:40
                    </td>
                    <td class="bg-sky">40분</td>
                    <td colspan="6"><span class="ico-txt p">영어 프로그램</span></td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td class="bg-sky">AM08:50 - AM10:10
                    </td>
                    <td class="bg-sky">80분</td>
                    <td rowspan="2">의무자습<br>
                    /상담</td>
                    <td rowspan="2">탐구A</td>
                    <td rowspan="2">수학A</td>
                    <td rowspan="2">의무자습<br>
                    /상담</td>
                    <td rowspan="2">국어 특강<br>
                    (선택수업)</td>
                    <td rowspan="2">영어<br>
                    (선택수업)</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
                    <td class="bg-sky">AM10:30 - PM12:10
                    </td>
                    <td class="bg-sky">100분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">점심식사</th>
                    <td class="bg-sky">PM12:10 - PM01:20
                    </td>
                    <td class="bg-sky">70분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="bg-sky sticky">4교시</td>
                    <td class="bg-sky">PM01:20 - PM02:30
                    </td>
                    <td class="bg-sky">70분</td>
                    <td rowspan="3">수리논술<br>
                    (선택수업)</td>
                    <td rowspan="3">국어</td>
                    <td rowspan="3">의무자습<br>
                    /상담</td>
                    <td rowspan="3">탐구B</td>
                    <td rowspan="3">의무자습<br>
                    /상담</td>
                    <td rowspan="3">수학B</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td class="bg-sky">PM02:40 - PM03:50
                    </td>
                    <td class="bg-sky">70분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td class="bg-sky">PM04:00 - PM05:20
                    </td>
                    <td class="bg-sky">80분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">저녁식사</th>
                    <td class="bg-sky">PM05:20 - PM06:30
                    </td>
                    <td class="bg-sky">70분</td>
                    <td colspan="6">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="bg-sky sticky">7교시</td>
                    <td class="bg-sky">PM06:30 - PM08:00
                    </td>
                    <td class="bg-sky">90분</td>
                    <td colspan="6" rowspan="2">의무자습/상담</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
                    <td class="bg-sky">PM08:20 - PM10:00
                    </td>
                    <td class="bg-sky">100분</td>
                </tr>
                <tr>
                    <th colspan="2" rowspan="2" class="bg-sky">심야자습</th>
                    <td class="bg-sky">PM10:10 - PM11:00
                    </td>
                    <td class="bg-sky">50분</td>
                    <td rowspan="2" colspan="7"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky">PM11:10 - AM12:00
                    </td>
                    <td class="bg-sky">50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0247" Then '강남 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~토요일</th>
                    <th>일요일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="sticky">0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">1교시</td>
                    <td>AM 08:00</td>
                    <td>AM 08:40</td>
                    <td>40분</td>
                    <td rowspan="3">
                        <span class="ico-txt b mb4">의무 자습</span>
                        <span class="ico-txt v mb4">단과 수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>AM 08:50</td>
                    <td>AM 10:10</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>AM 10:30</td>
                    <td>PM 12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">점심식사</th>
                    <td>PM 12:10</td>
                    <td>PM 01:10</td>
                    <td>60분</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>PM 01:10</td>
                    <td>PM 02:20</td>
                    <td>70분</td>
                    <td rowspan="3">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>PM 02:40 </td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>PM 04:20</td>
                    <td>PM 05:30</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">저녁식사</th>
                    <td>PM 05:30</td>
                    <td>PM 06:30</td>
                    <td>60분</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>PM 06:30</td>
                    <td>PM 08:00</td>
                    <td>90분</td>
                    <td rowspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</th>
                    <td>PM 08:20 </td>
                    <td>PM 09:50</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">귀가</th>
                    <td>PM 09:50</td>
                    <td>PM 10:10</td>
                    <td>20분</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>PM 10:10</td>
                    <td>PM 11:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>PM 11:10</td>
                    <td>AM 12:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0001" Then '대치 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:%;">
            <col style="width:%;">
            <col style="width:%;">
        </colgroup>
        <thead>
            <tr>
                <th>교시(시간)</th>
                <th>월~금</th>
                <th>토</th>
                <th>일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>0교시(50분)<br>AM 07:00~AM 07:50</th>
                <td><span class="ico-txt s">선택자습</span></td>
                <td><span class="ico-txt s">선택자습</span></td>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(50분)<br>AM 08:00~AM 08:50</th>
                <td><span class="ico-txt p">영어<br>프로그램</span></td>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 09:10~AM 10:30</th>
                <td rowspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
            </tr>
            <tr>
                <th>3교시(80분)<br>AM 10:50~PM 12:10</th>
            </tr>
            <tr>
                <th>점심식사(70분)<br>PM 12:10~PM 01:20</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:20~PM 02:30</th>
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>PM 02:50~PM 04:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 04:20~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 05:30~PM 06:40</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:30~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 10:00~PM 10:20</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(40분)<br>PM 10:20~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0245" Then '목동 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:auto" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~금요일</th>
                    <th>토요일</th>
                    <th>일요일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="sticky">0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td colspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">1교시</td>
                    <td>AM 08:00</td>
                    <td>AM 08:30</td>
                    <td>30분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt p mb4">대학교 수업</span><br>
                        <span class="ico-txt v mb4">단과 수업</span><br>
                        <span class="ico-txt b mb4">의무 자습</span><br>
                        <span class="ico-txt r"> 담임 상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>AM 08:40</td>
                    <td>AM 10:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>AM 10:20</td>
                    <td>PM 12:10</td>
                    <td>110분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">점심식사</th>
                    <td>PM 12:10</td>
                    <td>PM 01:10</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>PM 01:10</td>
                    <td>PM 02:20</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt p mb4">대학교 수업</span><br>
                        <span class="ico-txt v mb4">단과수업</span><br>
                        <span class="ico-txt b mb4">의무자습</span><br>
                        <span class="ico-txt r">담임 상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>PM 02:40 </td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>PM 04:20</td>
                    <td>PM 05:30</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">저녁식사</th>
                    <td>PM 05:30</td>
                    <td>PM 06:30</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>PM 06:30</td>
                    <td>PM 08:10</td>
                    <td>100분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt p mb4">대학교 수업</span><br>
                        <span class="ico-txt v mb4">단과수업</span><br>
                        <span class="ico-txt b mb4">의무자습</span><br>
                        <span class="ico-txt r">담임 상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</th>
                    <td>PM 08:30 </td>
                    <td>PM 10:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">귀가</th>
                    <td>PM 10:00</td>
                    <td>PM 10:10</td>
                    <td>10분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>PM 10:10</td>
                    <td>PM 11:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2" colspan="2">토, 일<br>
                    이용불가</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>PM 11:00</td>
                    <td>AM 12:00</td>
                    <td>60분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0250" Then '부천 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:10%" />
                <col style="width:10%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작</th>
                    <th>종료</th>
                    <th>시간(분)</th>
                    <th>월~금</th>
                    <th>토요일</th>
                    <th>일/<br>
                    공휴일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="sticky">1교시</td>
                    <td>08:00</td>
                    <td>08:30</td>
                    <td>30</td>
                    <td rowspan="4"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="4"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>08:40</td>
                    <td>10:00</td>
                    <td>80</td>
                </tr>
                <tr>
                    <td class="sticky">활력체조</td>
                    <td>10:20</td>
                    <td>10:30</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>10:30</td>
                    <td>12:10</td>
                    <td>100</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">점심식사</th>
                    <td>12:10</td>
                    <td>13:10</td>
                    <td>60</td>
                    <td colspan="2">원내 급식 진행</td>
                    <td>급식 미진행</td>
                </tr>
                <tr>
                    <th rowspan="5" class="bg-sky">오후</th>
                    <td class="sticky"><strong>일일<br>
                    테스트</strong></td>
                    <td>13:10</td>
                    <td>13:25</td>
                    <td rowspan="2">20</td>
                    <td rowspan="5"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="5"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="5"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">활력체조</td>
                    <td>13:25</td>
                    <td>13:30</td>
                </tr>
                <tr>
                    <td class="sticky">4교시</td>
                    <td>13:30</td>
                    <td>14:20</td>
                    <td>50</td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>14:40</td>
                    <td>16:00</td>
                    <td>80</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>16:20</td>
                    <td>17:30</td>
                    <td>70</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">저녁식사</th>
                    <td>17:30</td>
                    <td>18:40</td>
                    <td>70</td>
                    <td colspan="2">원내 급식 진행</td>
                    <td>급식 미진행</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>18:40</td>
                    <td>20:10</td>
                    <td>90</td>
                    <td rowspan="2"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="2"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</th>
                    <td>20:30</td>
                    <td>22:00</td>
                    <td>90</td>
                </tr>
                <tr>
                    <th class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>22:00</td>
                    <td>24:00</td>
                    <td>120</td>
                    <td colspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td>미진행</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0249" Then '영통 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:11%" />
                <col style="width:11%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~금요일</th>
                    <th>토요일</th>
                    <th>일(공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="5"  class="bg-sky">오전</th>
                    <td class="sticky">0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td colspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">1교시</td>
                    <td>AM 08:00</td>
                    <td>AM 08:30</td>
                    <td>30분</td>
                    <td rowspan="4" colspan="2">
                        <span class="ico-txt b mb4">의무 자습</span><br>
                        <span class="ico-txt v mb4">단과 수업</span><br>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">조회</td>
                    <td>AM 08:30</td>
                    <td>AM 08:40</td>
                    <td>10분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>AM 08:50</td>
                    <td>AM 10:10</td>
                    <td>80분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>AM 10:30</td>
                    <td>PM 12:10</td>
                    <td>100분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">점심식사</th>
                    <td>PM 12:10</td>
                    <td>PM 01:10</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>PM 01:10</td>
                    <td>PM 02:20</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>PM 02:40 </td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>PM 04:30</td>
                    <td>PM 05:30</td>
                    <td>60분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">저녁식사</th>
                    <td>PM 05:30</td>
                    <td>PM 06:40</td>
                    <td>70분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>PM 06:40</td>
                    <td>PM 08:10</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>PM 08:30 </td>
                    <td>PM 10:10</td>
                    <td>90분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">귀가</th>
                    <td>PM 10:00</td>
                    <td>PM 10:10</td>
                    <td>10분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th class="bg-sky">심야</th>
                    <td class="sticky">심야자습 <br> (1/2교시)</td>
                    <td>PM 10:10</td>
                    <td>AM 00:00</td>
                    <td>50/50분</td>
                    <td colspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td>(이용불가)</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="r-txt">* 학원사정에 따라 운영시간이 변경될 수 있으니,<br>
    학원으로 확인 바랍니다.
    </p>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0246" Then '센텀 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 720px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:11%" />
                <col style="width:11%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~금요일</th>
                    <th>토요일</th>
                    <th>일(공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4"  class="bg-sky">오전</th>
                    <td class="sticky">0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td><span class="ico-txt s">자습</span></td>
                    <td><span class="ico-txt s">자습</span></td>
                    <td><span class="ico-txt s">자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">1교시</td>
                    <td>AM 08:00</td>
                    <td>AM 09:00</td>
                    <td>60분</td>
                    <td><span class="ico-txt p">영어 프로그램</span></td>
                    <td rowspan="3">
                        <span class="ico-txt s mb4">자습</span>
                        <span class="ico-txt v mb4">수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>AM 09:20</td>
                    <td>AM 10:40</td>
                    <td>80분</td>
                    <td rowspan="2">
                        <span class="ico-txt s mb4">자습</span>
                        <span class="ico-txt v mb4">수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>AM 11:00</td>
                    <td>PM 12:30</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">점심식사</th>
                    <td>PM 12:30</td>
                    <td>PM 01:30</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>PM 01:30</td>
                    <td>PM 02:40</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt s">자습</span>
                        <span class="ico-txt v">수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>PM 03:00 </td>
                    <td>PM 04:10</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>PM 04:30</td>
                    <td>PM 05:30</td>
                    <td>60분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">저녁식사</th>
                    <td>PM 05:30</td>
                    <td>PM 06:30</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>PM 06:30</td>
                    <td>PM 08:10</td>
                    <td>100분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt s">자습</span>
                        <span class="ico-txt v">수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>PM 08:30 </td>
                    <td>PM 10:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background-color: #fff;">귀가</th>
                    <td>PM 10:00</td>
                    <td>PM 10:10</td>
                    <td>10분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>PM 10:10</td>
                    <td>PM 11:00</td>
                    <td>50분</td>
                    <td  rowspan="2"><span class="ico-txt s">자습</span></td>
                    <td colspan="2" rowspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>PM 11:00</td>
                    <td>AM 12:00</td>
                    <td>60분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <ul class="list-star f11">
        <li>평일 오전 영어 프로그램은 영단어&amp;듣기 TEST로 진행되며 학원별 운영은 상이할 수 있습니다.</li>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0257" Then '중계 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:50px" />
                <col style="width:20%" />
                <col style="width:10%" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:10%" />
            </colgroup>
            <thead>
                <tr>
                    <th>구분</th>
                    <th class="sticky">교시</th>
                    <th colspan="2">자습시간</th>
                    <th>평일(월~금)</th>
                    <th>토요일</th>
                    <th>일요일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="3" class="bg-sky">오전</th>
                    <td class="sticky">1교시</td>
                    <td>AM 08:00~ AM 08:40
                    </td>
                    <td>40분</td>
                    <td colspan="2" rowspan="3"><span class="ico-txt p">의무자습</span></td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span><br>
                        (OPEN 09:00)</td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>AM 08:50 ~ AM 10:20
                    </td>
                    <td>90분</td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>AM 10:30 ~ AM 12:10
                    </td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-wh">점심시간</th>
                    <td>PM 12:10 ~ PM 01:10
                    </td>
                    <td>60분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>PM 01:10 ~ PM 02:20
                    </td>
                    <td>70분</td>
                    <td colspan="2" rowspan="3"><span class="ico-txt p">의무자습</span></td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>PM 02:40 ~ PM 04:00
                    </td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>PM 04:20 ~ PM 05:30
                    </td>
                    <td>70분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-wh">저녁시간</th>
                    <td>PM 05: 30 ~ PM 06:30
                    </td>
                    <td>60분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>PM 06:30 ~ PM 08:10
                    </td>
                    <td>100분</td>
                    <td colspan="2" rowspan="2"><span class="ico-txt p">의무자습</span></td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>PM 08:30 ~ PM 10:00
                    </td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-wh">하원</th>
                    <td>PM 10:00 ~ PM 10:10
                    </td>
                    <td>10분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>PM 10:10 ~ PM 11:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td colspan="2" rowspan="2">이용불가</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>PM 11:10 ~ PM 12:00
                    </td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="r-txt">※ 학원 운영에 따라 바자관 운영시간표는 달라질 수 있습니다.

    </p>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0244" Then '분당 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:20%;">
            <col style="width:20%;">
        </colgroup>
        <thead>
            <tr>
                <th>교시(시간)</th>
                <th>월~토</th>
                <th>일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>1교시(50분)<br>AM 08:00~AM 08:50</th>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r mb4">상담</span><br>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 09:10~AM 10:30</th>
            </tr>
            <tr>
                <th>3교시(90분)<br>AM 10:50~PM 12:20</th>
            </tr>
            <tr>
                <th>점심식사(70분)<br>PM 12:20~PM 13:30</th>
                <td colspan="2">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 13:30~PM 14:40</th>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r mb4">상담</span><br>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>PM 15:00~PM 16:10</th>
            </tr>
            <tr>
                <th>6교시(60분)<br>PM 16:30~PM 17:30</th>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 17:30~PM 18:40</th>
                <td colspan="2">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 18:40~PM 20:10</th>
                <td rowspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r mb4">상담</span><br>
                </td>
                <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 20:30~PM 22:00</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 22:00~PM 22:20</th>
                <td colspan="2">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 22:20~PM 23:10</th>
                <td rowspan="3">
                    <span class="ico-txt s">선택자습</span><br>
                    (학부모님에게 안내 문자 발송)
                </td>
                <td rowspan="3">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 23:20~PM 24:10</th>
            </tr>
            <tr>
                <th>11교시(40분)<br>PM 24:20~PM 25:00</th>
            </tr>
        </tbody>
    </table>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0248" Then '평촌 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width:250%;">
            <colgroup>
                <col style="width:63px;">
                <col style="width:50px;">
                <col style="width:auto;">
                <col style="width:auto;">
                <col style="width:auto;">
                <col style="width:auto;">
                <col style="width:auto;">
                <col style="width:auto;">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">교시</th>
                    <th colspan="2">자습시간</th>
                    <th>입실<br>
                    완료</th>
                    <th>월~금</th>
                    <th>토요일</th>
                    <th>일요일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th class="bg-sky">조조</th>
                    <td class="sticky bg-sky">0교시</td>
                    <td>07:00 ~ 07:50</td>
                    <td>50분</td>
                    <td>-</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <th class="bg-sky" rowspan="3">오전</th>
                    <td class="sticky bg-sky">1교시</td>
                    <td>08:00 ~ 08:40</td>
                    <td>40분</td>
                    <td>07:57</td>
                    <td colspan="2" rowspan="3">
                        <span class="ico-txt b mb4">의무 자습</span> <span class="ico-txt v mb4">단과 수강</span><br>
                        <span class="ico-txt r mb4">개별상담</span> <span class="ico-txt p">질의응답</span><br>
                        &lt;바자관 중간 입실&gt;<br>
                        09:30, 11:30 그 외 담임 허가 시
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky bg-sky">2교시</td>
                    <td>08:50 ~ 10:10
                    </td>
                    <td>80분</td>
                    <td>08:47</td>
                </tr>
                <tr>
                    <td class="sticky bg-sky">3교시</td>
                    <td>10:30 ~ 12:10
                    </td>
                    <td>100분</td>
                    <td>10:27</td>
                </tr>
                <tr>
                    <th class="bg-sky" colspan="2">점심식사</th>
                    <td>12:10 ~ 13:10
                    </td>
                    <td>60분</td>
                    <td></td>
                    <td class="color-gray-03">급식 운영</td>
                    <td class="color-gray-03">급식 운영</td>
                    <td>-</td>
                </tr>
                <tr>
                    <th class="bg-sky" rowspan="3">오후</th>
                    <td class="sticky bg-sky">4교시</td>
                    <td>13:10 ~ 14:20
                    </td>
                    <td>70분</td>
                    <td>13:07</td>
                    <td colspan="2" rowspan="3">
                        <span class="ico-txt b mb4">의무 자습</span> <span class="ico-txt v mb4">단과 수강</span><br>
                        <span class="ico-txt r mb4">개별상담</span> <span class="ico-txt p">질의응답</span><br>
                        &lt;바자관 중간 입실&gt;<br>
                        15:30, 17:00 그 외 담임 허가 시
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky bg-sky">5교시</td>
                    <td>14:40 ~ 16:10
                    </td>
                    <td>90분</td>
                    <td>14:37</td>
                </tr>
                <tr>
                    <td class="sticky bg-sky">6교시</td>
                    <td>16:30 ~ 17:30
                    </td>
                    <td>60분</td>
                    <td>16:27</td>
                </tr>
                <tr>
                    <th class="bg-sky" colspan="2">저녁식사</th>
                    <td>17:30 ~ 18:30
                    </td>
                    <td>60분</td>
                    <td></td>
                    <td class="color-gray-03">급식 운영</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <th class="bg-sky" rowspan="2">저녁</th>
                    <td class="sticky bg-sky">7교시</td>
                    <td>18:30 ~ 20:00
                    </td>
                    <td>90분</td>
                    <td>18:27</td>
                    <td colspan="2" rowspan="2">
                        <span class="ico-txt b mb4">의무 자습</span> <span class="ico-txt v mb4">단과 수강</span><br>
                        <span class="ico-txt r mb4">개별상담</span> <span class="ico-txt p">질의응답</span><br>
                        &lt;바자관 중간 입실&gt;<br>
                        19:00, 19:30, 21:00,21:30<br>
                        그 외 담임 허가 시
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky bg-sky">8교시</td>
                    <td>20:20 ~ 22:00
                    </td>
                    <td>100분</td>
                    <td>20:17</td>
                </tr>
                <tr>
                    <th class="bg-sky" colspan="2">귀가</th>
                    <td>22:00 ~ 22:10
                    </td>
                    <td>10분</td>
                    <td></td>
                    <td></td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th class="bg-sky" rowspan="2">심야</th>
                    <td class="sticky bg-sky">9교시</td>
                    <td>22:10 ~ 23:00
                    </td>
                    <td>50분</td>
                    <td>22:07</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2" colspan="2" class="color-red">이용불가</td>
                </tr>
                <tr>
                    <td class="sticky bg-sky">10교시</td>
                    <td>23:10 ~ 00:00
                    </td>
                    <td>50분</td>
                    <td>23:07</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0340" Then '코어광주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:50px" />
                <col style="width:auto" />
                <col style="width:10%" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:10%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">교시</th>
                    <th colspan="2">시간</th>
                    <th>월~금</th>
                    <th>토</th>
                    <th>일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="bg-sky sticky">0교시</td>
                    <td class="bg-sky">07:00 ~ 07:50</td>
                    <td class="bg-sky">50분</td>
                    <td colspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">1교시</td>
                    <td class="bg-sky">08:00 ~ 08:40</td>
                    <td class="bg-sky">40분</td>
                    <td rowspan="3"><span class="ico-txt b">정규자습<br>/진학지도</span></td>
                    <td rowspan="3"><span class="ico-txt b">정규자습</span></td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">2교시</td>
                    <td class="bg-sky">08:50 ~ 10:10</td>
                    <td class="bg-sky">80분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">3교시</td>
                    <td class="bg-sky">10:30 ~ 12:10</td>
                    <td class="bg-sky">100분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">점심식사</th>
                    <td class="bg-sky">12:10 ~ 13:10</td>
                    <td class="bg-sky">60분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="bg-sky sticky">4교시</td>
                    <td class="bg-sky">13:10 ~ 14:20</td>
                    <td class="bg-sky">70분</td>
                    <td rowspan="3"><span class="ico-txt b">정규자습<br>/진학지도</span></td>
                    <td rowspan="3"><span class="ico-txt b">정규자습</span></td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">5교시</td>
                    <td class="bg-sky">14:40 ~ 16:00</td>
                    <td class="bg-sky">80분</td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">6교시</td>
                    <td class="bg-sky">16:20 ~ 17:30</td>
                    <td class="bg-sky">70분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">저녁식사</th>
                    <td class="bg-sky">17:30 ~ 18:40</td>
                    <td class="bg-sky">70분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="bg-sky sticky">7교시</td>
                    <td class="bg-sky">18:40 ~ 20:10</td>
                    <td class="bg-sky">90분</td>
                    <td rowspan="2"><span class="ico-txt b">정규자습<br>/진학지도</span></td>
                    <td rowspan="2"><span class="ico-txt b">정규자습</span></td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">8교시</td>
                    <td class="bg-sky">20:30 ~ 22:00</td>
                    <td class="bg-sky">90분</td>
                </tr>
                <tr>
                    <th colspan="2" class="bg-sky">귀가</th>
                    <td class="bg-sky">22:00 ~ 22:30</td>
                    <td class="bg-sky">30분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="bg-sky sticky">9교시</td>
                    <td class="bg-sky">22:30 ~ 23:40</td>
                    <td class="bg-sky">70분</td>
                    <td colspan="3" rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky sticky">10교시</td>
                    <td class="bg-sky">24:50 ~ 01:00</td>
                    <td class="bg-sky">70분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0341" Then '코어대전 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px">
                <col style="width:63px">
                <col style="width:11%">
                <col style="width:11%">
                <col style="width:10%">
                <col style="width:auto">
                <col style="width:auto">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">교시</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월~토<br>(공휴일 포함)</th>
                    <th><span class="red_txt">일</span></th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="3" class="bg-sky">오전</th>
                    <td class="sticky">1교시</td>
                    <td>08:00</td>
                    <td>08:50</td>
                    <td>50분</td>
                    <td rowspan="3">
                        <span class="ico-txt b">의무자습</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>09:00</td>
                    <td>10:20</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>10:40</td>
                    <td>12:20</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">점심식사</th>
                    <td>12:20</td>
                    <td>13:30</td>
                    <td>70분</td>
                    <td>학원식당<br>이용 가능</td>
                    <td>학원식당<br>이용 불가</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시<br>
                    (테스트/종례)</td>
                    <td>13:30</td>
                    <td>13:55</td>
                    <td>25분</td>
                    <td rowspan="3"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>14:00</td>
                    <td>15:30</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>15:50 </td>
                    <td>17:20</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">저녁식사</th>
                    <td>17:20</td>
                    <td>18:30</td>
                    <td>70분</td>
                    <td>학원식당<br>이용 가능</td>
                    <td>학원식당<br>이용 불가</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>18:30</td>
                    <td>20:00</td>
                    <td>90분</td>
                    <td rowspan="2">
                        <span class="ico-txt b">의무자습</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>20:20</td>
                    <td>22:00</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">귀가</th>
                    <td>22:00</td>
                    <td>22:10</td>
                    <td colspan="3">10분</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>22:10</td>
                    <td>23:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2" class="red_txt">심야자습<br>없음</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>23:10</td>
                    <td>24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0343" Then '코어원주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:15%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <th colspan="2">구분</th>
                <th colspan="2">자습시간</th>
                <th>월~금</th>
                <th>토요일</th>
                <th>일요일(공휴일)</th>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="sticky">1교시</td>
                    <td>8:00~08:30</td>
                    <td>30분</td>
                    <td colspan="2"><span class="ico-txt b mb5">의무자습</span><br><span class="mb5 pl20 pr20 ico-txt p">영어 프로그램</span></td>
                    <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">조회</td>
                    <td>8:30~08:40</td>
                    <td>10분</td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>8:50~10:10</td>
                    <td>80분</td>
                    <td colspan="2" rowspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>10:20~12:00</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">점심식사</th>
                    <td>12:00~13:10</td>
                    <td>70분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="4" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>13:10~14:20</td>
                    <td>70분</td>
                    <td colspan="2" rowspan="3">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="sticky">종례</td>
                    <td>17:10~17:30</td>
                    <td>20분</td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">저녁식사</th>
                    <td>17:30~18:40</td>
                    <td>70분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td colspan="2" rowspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>20:30~22:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">귀가</th>
                    <td>22:00~22:20</td>
                    <td>20분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>22:20~23:00</td>
                    <td>40분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td colspan="2" rowspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0344" Then '코어전주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px">
                <col style="width:63px">
                <col style="width:11%">
                <col style="width:11%">
                <col style="width:10%">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:15%">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th colspan="3">자습시간</th>
                    <th>월요일~금요일</th>
                    <th>토요일</th>
                    <th>일(공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="3" class="bg-sky">오전</th>
                    <td class="sticky">1교시<br><span class="blue_txt">(조회)</span></td>
                    <td colspan="2">08:00 ~ 08:30<br><span class="blue_txt">(08:30 ~ 08:40)</span></td>
                    <td>30분<br><span class="blue_txt">(10분)</span></td>
                    <td><span class="ico-txt p">영단어 TEST</span></td>
                    <td><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td colspan="2">08:50 ~ 10:10</td>
                    <td>80분</td>
                    <td colspan="2" rowspan="2">
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v">단과<br>수업</span>
                        <span class="ico-txt r">상<br>담</span>
                    </td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td colspan="2">10:30 ~ 12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">점심식사</th>
                    <td colspan="2">12:10 ~ 13:10</td>
                    <td>60분</td>
                    <td colspan="2">자체 식당 운영</td>
                    <td>자유식</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td colspan="2">13:10 ~ 14:20</td>
                    <td>70분</td>
                    <td rowspan="3">
                        <span class="ico-txt p mb5">영어듣기 TEST</span><br>
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v">단과<br>수업</span>
                        <span class="ico-txt r">상<br>담</span>
                    </td>
                    <td rowspan="3">
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v">단과<br>수업</span>
                        <span class="ico-txt r">상<br>담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td colspan="2">14:40 ~ 16:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시<br><span class="blue_txt">(종례)</span></td>
                    <td colspan="2">16:20 ~ 17:30<br><span class="blue_txt">(17:20 ~ 17:30)</span></td>
                    <td>60분<br><span class="blue_txt">(10분)</span></td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">저녁식사</th>
                    <td colspan="2">17:30 ~ 18:40</td>
                    <td>70분</td>
                    <td colspan="2">자체 식당 운영</td>
                    <td>자유식</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td colspan="2">18:40 ~ 20:10</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td colspan="2">20:30 ~ 22:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">귀가</th>
                    <td colspan="2">22:00 ~ 22:10</td>
                    <td>10분</td>
                    <td colspan="3">귀가</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td colspan="2">22:10 ~ 23:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2" colspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td colspan="2">23:10 ~ 24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0345" Then '코어창원 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 300%;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:15%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">교시</th>
                    <th colspan="2">자습시간</th>
                    <th>월~금</th>
                    <th>토요일</th>
                    <th>일(공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="sticky">0교시</td>
                    <td>AM 07:00~AM 07:50</td>
                    <td>50분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <td class="sticky">1교시</td>
                    <td>AM 08:00~AM 08:40</td>
                    <td>40분</td>
                    <td><span class="ico-txt p mb4">영어 프로그램</span>
                        <span class="ico-txt g">조례</span>
                    </td>
                    <td rowspan="3">
                        <span class="ico-txt b mb4">의무<br>
                        자습</span>
                        <span class="ico-txt v mb4">단과<br>수업</span>
                        <span class="ico-txt r mb4">상<br>담</span>
                        <span class="ico-txt g">조<br>례</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>AM 08:50~AM 10:10</td>
                    <td>80분</td>
                    <td rowspan="2">
                        <span class="ico-txt b mb4">의무<br>자습</span>
                        <span class="ico-txt v mb4">단과<br>수업</span>
                        <span class="ico-txt r">상<br>담</span>
                    </td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>AM 10:30~PM 12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">점심식사</th>
                    <td>PM 12:10~PM 01:10</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>PM 01:10~PM 02:20</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt b mb4">의무자습</span>
                        <span class="ico-txt v mb4">단과수업</span>
                        <span class="ico-txt r mb4">상담</span>
                        <span class="ico-txt g">조&middot;종례</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>PM 02:40~PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시</td>
                    <td>PM 04:20~PM 05:30</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">저녁식사</th>
                    <td>PM 05:30~PM 06:30</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>PM 06:30~PM 08:00</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b mb4">의무자습</span>
                        <span class="ico-txt v mb4">단과수업</span>
                        <span class="ico-txt r mb4">상담</span>
                        <span class="ico-txt g">종례</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>PM 08:20~PM 09:50</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">귀가</th>
                    <td>PM 09:50~PM 10:10</td>
                    <td>20분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>PM 10:10~PM 11:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2" colspan="2">-</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>PM 11:10~AM 12:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0346" Then '코어청주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
    <div class="tbl-scroll-x">
        <table class="tbl-type01 tbl-center" style="width: 640px;">
            <colgroup>
                <col style="width:63px" />
                <col style="width:63px" />
                <col style="width:15%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th colspan="2">자습시간</th>
                    <th>월요일 ~ 금요일</th>
                    <th>토요일</th>
                    <th>일요일<br>공휴일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="3" class="bg-sky">오전</th>
                    <td class="sticky">1교시<br><span class="color-blue">(조회)</span></td>
                    <td>08:00 ~ 08:30<br>
                        <span class="color-blue">(08:30 ~ 08:40)</span></td>
                    <td>30분<br><span class="color-blue">(10분)</span></td>
                    <td rowspan="3">
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v mb4">단과<br>수업</span>
                        <span class="ico-txt r">상<br>담</span>
                    </td>
                    <td rowspan="3">
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v mb4">단과<br>수업</span>
                        <span class="ico-txt r">상<br>담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">2교시</td>
                    <td>08:50 ~ 10:10</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">3교시</td>
                    <td>10:30 ~ 12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">점심식사</th>
                    <td>12:10 ~ 13:10</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td class="sticky">4교시</td>
                    <td>13:10 ~ 14:20</td>
                    <td>70분</td>
                    <td colspan="2" rowspan="3">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">5교시</td>
                    <td>14:40 ~ 16:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky">6교시<span class="color-blue"><br>(종례)</span></td>
                    <td>16:20 ~ 17:30<br><span class="color-blue">(17:20 ~ 17:30)</span></td>
                    <td>60분<br><span class="color-blue">(10분)</span></td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">저녁식사</th>
                    <td>17:30 ~ 18:40</td>
                    <td>70분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td class="sticky">7교시</td>
                    <td>18:40 ~ 20:10</td>
                    <td>90분</td>
                    <td colspan="2" rowspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky">8교시</td>
                    <td>20:30 ~ 22:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" style="background: #fff;">귀가</th>
                    <td>22:00 ~ 22:10</td>
                    <td>10분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="sticky">9교시</td>
                    <td>22:10 ~ 23:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td colspan="2" rowspan="2">이용불가</td>
                </tr>
                <tr>
                    <td class="sticky">10교시</td>
                    <td>23:10 ~ 24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% End If %>

