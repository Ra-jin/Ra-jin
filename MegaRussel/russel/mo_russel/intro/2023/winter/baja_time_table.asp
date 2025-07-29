<% If campus_code = "INTRO" or campus_code = "CD0342" or campus_code = "CD0349" Then '인트로/대구/울산 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <div style="position: relative;overflow-x: scroll;">
        <table class="tbl-type01 tbl-center" style="width: 633.59px;">
            <colgroup>
                <col style="width:10%" />
                <col style="width:10%" />
                <col style="width:11%" />
                <col style="width:11%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2" class="sticky">구분</th>
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
                    <th rowspan="4"  class="bg-sky sticky">오전</th>
                    <td class="sticky2">0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky2">1교시</td>
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
                    <td class="sticky2">2교시</td>
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
                    <td class="sticky2">3교시</td>
                    <td>AM 10:30</td>
                    <td>PM 12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <td colspan="2" class="sticky" style="background-color: #fff;">점심식사</td>
                    <td>PM 12:10</td>
                    <td>PM 01:10</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky sticky">오후</th>
                    <td class="sticky2">4교시</td>
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
                    <td class="sticky2">5교시</td>
                    <td>PM 02:40 </td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky2">6교시</td>
                    <td>PM 04:20</td>
                    <td>PM 05:30</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td colspan="2" class="sticky" style="background-color: #fff;">저녁식사</td>
                    <td>PM 05:30</td>
                    <td>PM 06:30</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">저녁</th>
                    <td class="sticky2">7교시</td>
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
                    <td class="sticky2">8교시</td>
                    <td>PM 08:20 </td>
                    <td>PM 09:50</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <td colspan="2" class="sticky" style="background-color: #fff;">귀가</td>
                    <td>PM 09:50</td>
                    <td>PM 10:10</td>
                    <td>20분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">심야</th>
                    <td class="sticky2">9교시</td>
                    <td>PM 10:10</td>
                    <td>PM 11:00</td>
                    <td>50분</td>
                    <td colspan="2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky2">10교시</td>
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
<% ElseIf campus_code = "CD0247" Then '강남 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <div style="position: relative;overflow-x: scroll;">
        <table class="tbl-type01 tbl-center" style="width: 633.59px;">
            <colgroup>
                <col style="width:10%" />
                <col style="width:10%" />
                <col style="width:11%" />
                <col style="width:11%" />
                <col style="width:10%" />
                <col style="width:%" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2" class="sticky">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~토요일</th>
                    <th>일요일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky sticky">오전</th>
                    <td class="sticky2">0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td><span class="ico-txt s">선택자습</span></td>
                    <td><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky2">1교시</td>
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
                    <td class="sticky2">2교시</td>
                    <td>AM 08:50</td>
                    <td>AM 10:10</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky2">3교시</td>
                    <td>AM 10:30</td>
                    <td>PM 12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky" style="background-color: #fff;">점심식사</th>
                    <td>PM 12:10</td>
                    <td>PM 01:10</td>
                    <td>60분</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky sticky">오후</th>
                    <td class="sticky2">4교시</td>
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
                    <td class="sticky2">5교시</td>
                    <td>PM 02:40 </td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="sticky2">6교시</td>
                    <td>PM 04:20</td>
                    <td>PM 05:30</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky" style="background-color: #fff;">저녁식사</th>
                    <td>PM 05:30</td>
                    <td>PM 06:30</td>
                    <td>60분</td>
                    <td colspan="2">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">저녁</th>
                    <td class="sticky2">7교시</td>
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
                    <td class="sticky2">8교시</td>
                    <td>PM 08:20 </td>
                    <td>PM 09:50</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky" style="background-color: #fff;">귀가</th>
                    <td>PM 09:50</td>
                    <td>PM 10:10</td>
                    <td>20분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">심야</th>
                    <td class="sticky2">9교시</td>
                    <td>PM 10:10</td>
                    <td>PM 11:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td rowspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky2">10교시</td>
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
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:20%;">
            <col style="width:20%;">
            <col style="width:20%;">
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
    <!-- <ul class="list-star f11">
        <li>사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul> -->
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0245" Then '목동 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:20%;">
            <col style="width:20%;">
            <col style="width:20%;">
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
                <th>1교시(40분)<br>AM 08:00~AM 08:40</th>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(90분)<br>AM 08:50~AM 10:20</th>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:30~PM 12:10</th>
            </tr>
            <tr>
                <th>점심식사(60분)<br>PM 12:10~PM 01:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:10~PM 02:20</th>
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40~PM 04:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 04:20~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(60분)<br>PM 05:30~PM 06:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(00분)<br>PM 06:30~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="ico-txt s">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(10분)<br>PM 10:00~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(60분)<br>PM 11:00~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet f11">
        <li>학원 사정에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0250" Then '부천 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:36%;">
            <col style="width:18%;">
            <col style="width:18%;">
            <col style="width:18%;">
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
                <th>1교시(30분)<br>AM 08:00~AM 08:30</th>
                <td rowspan="4" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 08:40~AM 10:00</th>
            </tr>
            <tr>
                <th>활력체조(10분)<br>AM 10:20~AM 10:30</th>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:30~PM 12:10</th>
            </tr>
            <tr>
                <th>점심식사(60분)<br>PM 12:10~PM 01:10</th>
                <td colspan="3">※ 5분 전 입실</td>
            </tr>
            <tr>
                <th>일일 테스트(10분)<br>PM 01:10~PM 01:20</th>
                <td colspan="3">
                    <span class="ico-txt p">영어 프로그램</span><br>*듣기, 단어 등 일자별 컨텐츠 상이
                </td>
            </tr>
            <tr>
                <th>담임조회(10분)<br>PM 13:20~PM 13:30</th>
                <td colspan="3"></td>
            </tr>
            <tr>
                <th>4교시(50분)<br>PM 01:30~PM 02:20</th>
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40~PM 04:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 04:20~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 05:30~PM 06:40</th>
                <td colspan="3">※ 5분 전 입실</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:40~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="ico-txt s">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
            </tr>
            <tr>
                <th>담임 종례 및 귀가(20분)<br>PM 10:00~PM 10:20</th>
                <td colspan="3">※ 빠르고 조용히 귀가</td>
            </tr>
            <tr>
                <th>9교시(100분)<br>PM 10:20~PM 12:00</th>
                <td colspan="2"><span class="ico-txt s">선택자습</span></td>
                <td>미운영</td>
            </tr>
        </tbody>
    </table>
    <!-- <ul class="list-star f11">
        <li>사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul> -->
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0249" Then '영통 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:38%" />
            <col style="width:20%" />
            <col style="width:20%" />
            <col style="width:22%" />
        </colgroup>
        <thead>
            <tr>
                <th>교시(시간)</th>
                <th>월~금</th>
                <th>토</th>
                <th>일<br>(공휴일)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>0교시(50분)<br>AM 07:00~AM 07:50</th>
                <td colspan="2"><span class="img"><span class="ico-txt s">선택자습</span></td>
                <td><span class="img"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(30분)<br>AM 08:00~AM 08:30</th>
                <td rowspan="4" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>조회(10분)<br>AM 08:30~AM 08:40</th>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 08:50~AM 10:10</th>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:30~PM 12:10</th>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>점심식사(60분)<br>PM 12:10~PM 01:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:10~PM 02:20</th>
                <td rowspan="4" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40~PM 04:00</th>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>6교시(60분)<br>PM 04:20~PM 05:20</th>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>조회(10분)<br>PM 05:20~PM 05:30</th>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 05:30~PM 06:40</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:40~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
                <td><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>귀가(10분)<br>PM 10:00~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~AM 11:00</th>
                <td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet f11">
        <li>학원사정에 따라 운영시간이 변경될 수 있으니, 학원으로 확인 바랍니다.</li>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0246" Then '센텀 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:37%;">
            <col style="width:20%;">
            <col style="width:20%;">
            <col style="width:20%;">
        </colgroup>
        <thead>
            <tr>
                <th>교시(시간)</th>
                <th>월~금</th>
                <th>토</th>
                <th>일<br>(공휴일)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>0교시(50분)<br>AM 07:00~AM 07:50</th>
                <td><span class="ico-txt s">선택자습</span></td>
                <td><span class="ico-txt s">선택자습</span></td>
                <td><span class="ico-txt s ">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(60분)<br>AM 08:00~AM 09:00</th>
                <td rowspan="3">
                    <span class="ico-txt p mb10">영어단어<br>TEST</span><br>
                    <span class="ico-txt b mb10">의무자습</span><br>
                    <span class="ico-txt v mb10">단과수업</span><br>
                    <span class="ico-txt r">담임상담</span>
                </td>
                <td rowspan="3">
                    <span class="ico-txt b mb10">의무자습</span><br>
                    <span class="ico-txt v mb10">단과수업</span><br>
                    <span class="ico-txt r">담임상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 09:20~AM 10:40</th>
            </tr>
            <tr>
                <th>3교시(90분)<br>AM 11:00~PM 12:30</th>
            </tr>
            <tr>
                <th>점심식사(60분)<br>PM 12:30~PM 01:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:30~PM 02:40</th>
                <td rowspan="3">
                    <span class="ico-txt p mb10">영어듣기<br>TEST</span><br>
                    <span class="ico-txt b mb10">의무자습</span><br>
                    <span class="ico-txt v mb10">단과수업</span><br>
                    <span class="ico-txt r">담임상담</span>
                </td>
                <td rowspan="3">
                    <span class="ico-txt b mb10">의무자습</span><br>
                    <span class="ico-txt v mb10">단과수업</span><br>
                    <span class="ico-txt r">담임상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>PM 03:00~PM 04:10</th>
            </tr>
            <tr>
                <th>6교시(60분)<br>PM 04:30~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(60분)<br>PM 05:30~PM 06:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(100분)<br>PM 06:30~PM 08:10</th>
                <td rowspan="2">
                    <span class="ico-txt b mb10">의무자습</span><br>
                    <span class="ico-txt v mb10">단과수업</span><br>
                    <span class="ico-txt r">담임상담</span>
                </td>
                <td rowspan="2">
                    <span class="ico-txt b mb10">의무자습</span><br>
                    <span class="ico-txt v mb10">단과수업</span><br>
                    <span class="ico-txt r">담임상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="ico-txt s">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(10분)<br>PM 10:00~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~PM 11:00</th>
                <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(60분)<br>PM 11:00~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <!-- <ul class="list-star f11">
        <li>사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul> -->
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0257" Then '중계 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:20%;">
            <col style="width:20%;">
            <col style="width:20%;">
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
                <th>1교시(40분)<br>AM 08:00~AM 08:40</th>
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span><br><span class="color-red">(OPEN 09:00)</span></td>
            </tr>
            <tr>
                <th>2교시(90분)<br>AM 08:50~AM 10:20</th>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:30~PM 12:10</th>
            </tr>
            <tr>
                <th>점심식사(60분)<br>PM 12:10~PM 01:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:10~PM 02:20</th>
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40~PM 04:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 04:20~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁시간(60분)<br>PM 05:30~PM 06:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(100분)<br>PM 06:30~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                </td>
                <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
            </tr>
            <tr>
                <th>하원(10분)<br>PM 10:00~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <ul class="list-star f11">
        <li>학원 운영에 따라 바자관 운영시간표는 달라질 수 있습니다.</li>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0244" Then '분당 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
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
                <th>일<br>(공휴일)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>1교시(50분)<br>AM 08:00~AM 08:50</th>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 09:00~AM 10:20</th>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:40~PM 12:20</th>
            </tr>
            <tr>
                <th>점심식사(70분)<br>PM 12:20~PM 01:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:30~PM 02:40</th>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>PM 03:00~PM 04:10</th>
            </tr>
            <tr>
                <th>6교시(60분)<br>PM 04:30~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 05:30~PM 06:40</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:40~PM 08:10</th>
                <td rowspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="ico-txt s">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 10:00~PM 10:20</th>
                <td colspan="2">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:20~PM 11:10</th>
                <td rowspan="2">
                    <span class="ico-txt s">선택자습</span> <br>(신청서 제출)
                </td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:20~AM 12:10</th>
            </tr>
        </tbody>
    </table>
    <ul class="list-bullet f11">
        <li>바자관 표준 시간표는 층별 및 시기별 학습 전략에 따라 유동적으로 운영됩니다.</li>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0248" Then '평촌 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:20%;">
            <col style="width:20%;">
            <col style="width:20%;">
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
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수강</span><br>
                    <span class="ico-txt r mb4">개별상담</span><br>
                    <span class="ico-txt p">질의응답</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(70분)<br>AM 09:10~AM 10:20</th>
            </tr>
            <tr>
                <th>3교시(90분)<br>AM 10:40~PM 12:10</th>
            </tr>
            <tr>
                <th>점심식사(70분)<br>PM 12:10~PM 13:20</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 13:20~PM 14:30</th>
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수강</span><br>
                    <span class="ico-txt r mb4">개별상담</span><br>
                    <span class="ico-txt p">질의응답</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>PM 14:50~PM 16:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 16:20~PM 17:30</th>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 17:30~PM 18:40</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 18:40~PM 20:10</th>
                <td rowspan="2" colspan="2">
                    <span class="ico-txt b mb4">의무자습</span><br>
                    <span class="ico-txt v mb4">단과수강</span><br>
                    <span class="ico-txt r mb4">개별상담</span><br>
                    <span class="ico-txt p">질의응답</span>
                </td>
                <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 20:30~PM 22:00</th>
            </tr>
            <tr>
                <th>귀가(30분)<br>PM 22:00~PM 22:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(90분)<br>PM 22:30~AM 00:00</th>
                <td>
                    <span class="ico-txt s">선택자습</span>
                </td>
                <td colspan="2">(이용불가)</td>
            </tr>
        </tbody>
    </table>
    <!-- <ul class="list-star f11">
        <li>사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul> -->
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0340" Then '코어광주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:20%;">
            <col style="width:20%;">
            <col style="width:20%;">
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
                <td colspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(40분)<br>AM 08:00~AM 08:40</th>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span>
                    <span class="ico-txt p">진학지도</span>
                </td>
                <td rowspan="3">
                    <span class="ico-txt b">의무자습</span><br>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택학습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 08:50~AM 10:10</th>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:30~PM 12:10</th>
            </tr>
            <tr>
                <th>점심식사(60분)<br>PM 12:10~PM 13:10</th>
                <td colspan="3"></td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 13:10~PM 14:20</th>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무자습</span>
                    <span class="ico-txt p">진학지도</span>
                </td>
                <td rowspan="3">
                    <span class="ico-txt b">의무자습</span><br>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택학습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 14:40~PM 16:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 16:20~PM 17:30</th>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 17:30~PM 18:40</th>
                <td colspan="3"></td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 18:40~PM 20:10</th>
                <td rowspan="2">
                    <span class="ico-txt b mb4">의무자습</span>
                    <span class="ico-txt p">진학지도</span>
                </td>
                <td rowspan="2">
                    <span class="ico-txt b">의무자습</span><br>
                </td>
                <td rowspan="2"><span class="ico-txt s">선택학습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 20:30~PM 22:00</th>
            </tr>
            <tr>
                <th>귀가(30분)<br>PM 22:00~PM 22:30</th>
                <td colspan="3"></td>
            </tr>
            <tr>
                <th>9교시(70분)<br>PM 22:30~PM 23:40</th>
                <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                <td rowspan="2" colspan="2">이용불가</td>
            </tr>
            <tr>
                <th>10교시(70분)<br>PM 24:50~AM 01:00</th>
            </tr>
        </tbody>
    </table>
    <!-- <ul class="list-star f11">
        <li>사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul> -->
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0341" Then '코어대전 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:14%;">
            <col style="width:14%;">
            <col style="width:;">
            <col style="width:;">
            <col style="width:;">
        </colgroup>
        <thead>
            <tr>
                <th colspan="2">교시</th>
                <th>시작시간</th>
                <th>종료시간</th>
                <th>자습시간</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th rowspan="3" class="bg-sky">오전</th>
                <td>1교시</td>
                <td>08:00</td>
                <td>08:50</td>
                <td>50분</td>
            </tr>
            <tr>
                <td>2교시</td>
                <td>09:00</td>
                <td>10:20</td>
                <td>80분</td>
            </tr>
            <tr>
                <td>3교시</td>
                <td>10:40</td>
                <td>12:20</td>
                <td>100분</td>
            </tr>
            <tr>
                <th colspan="2">점심식사</th>
                <td>12:20</td>
                <td>13:30</td>
                <td>70분</td>
            </tr>
            <tr>
                <th rowspan="3" class="bg-sky">오후</th>
                <td>4교시</td>
                <td>13:30</td>
                <td>14:00</td>
                <td>30분</td>
            </tr>
            <tr>
                <td>5교시</td>
                <td>14:00</td>
                <td>15:30</td>
                <td>90분</td>
            </tr>
            <tr>
                <td>6교시</td>
                <td>15:50</td>
                <td>17:20</td>
                <td>90분</td>
            </tr>
            <tr>
                <th colspan="2">저녁식사</th>
                <td>17:20</td>
                <td>18:30</td>
                <td>70분</td>
            </tr>
            <tr>
                <th rowspan="2" class="bg-sky">저녁</th>
                <td>7교시</td>
                <td>18:30</td>
                <td>20:00</td>
                <td>90분</td>
            </tr>
            <tr>
                <td>8교시</td>
                <td>20:20</td>
                <td>22:00</td>
                <td>100분</td>
            </tr>
            <tr>
                <th colspan="2">귀가</th>
                <td>22:00</td>
                <td>22:10</td>
                <td>10분</td>
            </tr>
            <tr>
                <th rowspan="2" class="bg-sky">심야</th>
                <td>9교시</td>
                <td>22:10</td>
                <td>23:00</td>
                <td>50분</td>
            </tr>
            <tr>
                <td>10교시</td>
                <td>23:10</td>
                <td>24:00</td>
                <td>50분</td>
            </tr>
        </tbody>
    </table>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0343" Then '코어원주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <div style="position: relative;overflow-x: scroll;">
        <table class="tbl-type01 tbl-center" style="width: 633.59px;">
            <colgroup>
                <col style="width:10%" />
                <col style="width:10%" />
                <col style="width:22%" />
                <col style="width:10%" />
                <col style="width:auto" />
                <col style="width:auto" />
                <col style="width:15%" />
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2" class="sticky">구분</th>
                    <th colspan="2">자습시간</th>
                    <th>월~금</th>
                    <th>토요일</th>
                    <th>일요일(공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky sticky">오전</th>
                    <td class="sticky2">1교시</td>
                    <td>08:00~08:30</td>
                    <td>30분</td>
                    <td colspan="2">
                        <span class="ico-txt b mb5">의무자습</span><br>
                        <span class="ico-txt p">영어 프로그램</span>
                    </td>
                    <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky2">조회</td>
                    <td>08:30~08:40</td>
                    <td>10분</td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <td class="sticky2">2교시</td>
                    <td>08:50~10:10</td>
                    <td>80분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                </tr>
                <tr>
                    <td class="sticky2">3교시</td>
                    <td>10:20~12:00</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky" style="background-color: #fff;">점심식사</th>
                    <td>12:00~13:10</td>
                    <td>70분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="4" class="bg-sky sticky">오후</th>
                    <td class="sticky2">4교시</td>
                    <td>13:10~14:20</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky2">5교시</td>
                    <td>14:30~15:40</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="sticky2">6교시</td>
                    <td>15:50~17:00</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <td class="sticky2">종례</td>
                    <td>17:10~17:30</td>
                    <td>20분</td>
                    <td colspan="2"></td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky" style="background-color: #fff;">저녁식사</th>
                    <td>17:30~18:40</td>
                    <td>70분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">저녁</th>
                    <td class="sticky2">7교시</td>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt v">단과수업</span>
                        <span class="ico-txt r">상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="sticky2">8교시</td>
                    <td>20:30~22:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky" style="background-color: #fff;">귀가</th>
                    <td>22:00~22:20</td>
                    <td>20분</td>
                    <td colspan="3"></td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">심야</th>
                    <td class="sticky2">9교시</td>
                    <td>22:20~23:00</td>
                    <td>40분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td colspan="2" rowspan="2">(이용불가)</td>
                </tr>
                <tr>
                    <td class="sticky2">10교시</td>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    <ul class="list-star f11">
        <li>학원 사정에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0344" Then '코어전주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <div style="position: relative;overflow-x: scroll;">
        <table class="tbl-type01 tbl-center" style="width: 633.59px;">
            <colgroup>
                <col style="width:10%">
                <col style="width:10%">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:auto">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2" class="sticky">구분</th>
                    <th colspan="2">자습시간</th>
                    <th>월요일~<br>
                    금요일</th>
                    <th>토요일</th>
                    <th>일(공휴일)</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="3" class="bg-sky sticky">오전</th>
                    <th class="sticky2">1교시<br><span class="txt-blue">(조회)</span></th>
                    <td>08:00~08:30<br>
                    <span class="txt-blue">(08:30~08:40)</span></td>
                    <td>30분<br><span class="txt-blue">(10분)</span></td>
                    <td><span class="btn-eng">영단어TEST</span></td>
                    <td><span class="btn-duty">의무자습</span></td>
                    <td rowspan="3"><span class="btn-sel">선택자습</span></td>
                </tr>
                <tr>
                    <th class="sticky2">2교시</th>
                    <td>08:50~10:10</td>
                    <td>80분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v">단과<br>수업</span>
                        <span class="ico-txt r">상담<br>&nbsp;</span>
                    </td>
                </tr>
                <tr>
                    <th class="sticky2">3교시</th>
                    <td>10:30~12:10</td>
                    <td>100분</td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky bg-white">점심식사</th>
                    <td>12:10~13:10</td>
                    <td>60분</td>
                    <td colspan="2">자체 식당 운영</td>
                    <td>자유식</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky sticky">오후</th>
                    <th class="sticky2">4교시</th>
                    <td>13:10~14:20</td>
                    <td>70분</td>
                    <td rowspan="3">
                        <span class="btn-eng02 mb10">영어듣기TEST</span><br>
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v">단과<br>수업</span>
                        <span class="ico-txt r">상담<br>&nbsp;</span>
                    </td>
                    <td rowspan="3">
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v">단과<br>수업</span>
                        <span class="ico-txt r">상담<br>&nbsp;</span>
                    </td>
                    <td rowspan="3"><span class="btn-sel">선택자습</span></td>
                </tr>
                <tr>
                    <th class="sticky2">5교시</th>
                    <td>14:40~16:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <th class="sticky2">6교시<br><span class="txt-blue">(종례)</span></th>
                    <td>16:20~17:30<br>
                        <span class="txt-blue">(17:20~17:30)</span>
                    </td>
                    <td>60분<br><span class="txt-blue">(10분)</span></td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky bg-white">저녁식사</th>
                    <td>17:30~18:40</td>
                    <td>70분</td>
                    <td colspan="2">자체 식당 운영</td>
                    <td>자유식</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">저녁</th>
                    <th class="sticky2">7교시</th>
                    <td>18:40~20:10</td>
                    <td>90분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt b">의무<br>자습</span>
                        <span class="ico-txt v">단과<br>수업</span>
                        <span class="ico-txt r">상담<br>&nbsp;</span>
                    </td>
                    <td rowspan="2"><span class="btn-sel">선택자습</span></td>
                </tr>
                <tr>
                    <th class="sticky2">8교시</th>
                    <td>20:30~22:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2" class="sticky bg-white">귀가</th>
                    <td>22:00~22:10</td>
                    <td>10분</td>
                    <td colspan="3">귀가</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky sticky">심야</th>
                    <th class="sticky2">9교시</th>
                    <td>22:10~23:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="btn-sel">선택자습</span></td>
                    <td rowspan="2" colspan="2">
                        (이용불가)
                    </td>
                </tr>
                <tr>
                    <th class="sticky2">10교시</th>
                    <td>23:10~24:00</td>
                    <td>50분</td>
                </tr>
            </tbody>
        </table>
    </div>
    
    <ul class="list-bullet f11">
        <li>학원 사정에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0345" Then '코어창원 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:auto;">
            <col style="width:auto;">
            <col style="width:auto;">
        </colgroup>
        <thead>
            <tr>
                <th>교시(시간)</th>
                <th>월~금</th>
                <th>토</th>
                <th>일<br>(공휴일)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>0교시(50분)<br>AM 07:00~AM 07:50</td>
                <td><span class="btn-sel">선택자습</span></td>
                <td colspan="2">-</td>
            </tr>
            <tr>
                <td>1교시(40분)<br>AM 08:00~AM 08:40</td>
                <td><span class="btn-eng mb10">영어<br> 프로그램</span><br>
                    <span class="btn-greet">조례</span>
                </td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice mb10">상담</span><br>
                    <span class="btn-greet">조례</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <td>2교시(80분)<br>AM 08:50~AM 10:10</td>
                <td rowspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
            </tr>
            <tr>
                <td>3교시(100분)<br>AM 10:30~PM 12:10</td>
            </tr>
            <tr>
                <td>점심식사(60분)<br>PM 12:10~PM 01:10</td>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <td>4교시(70분)<br>PM 01:10~PM 02:20</td>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice mb10">상담</span><br>
                    <span class="btn-greet">조&middot;종례</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <td>5교시(80분)<br>PM 02:40 ~PM 04:00</td>
            </tr>
            <tr>
                <td>6교시(70분)<br>PM 04:20~PM 05:30</td>
            </tr>
            <tr>
                <td>저녁식사(60분)<br>PM 05:30~PM 06:30</td>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <td>7교시(90분)<br>PM 06:30~PM 08:00</td>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice mb10">상담</span><br>
                    <span class="btn-greet">종례</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <td>8교시(90분)<br>PM 08:20 ~PM 09:50</td>
            </tr>
            <tr>
                <td>귀가(20분)<br>PM 09:50~PM 10:10</td>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <td>9교시(50분)<br>PM 10:10~PM 11:00</td>
                <td rowspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2" colspan="2">-</td>
            </tr>
            <tr>
                <td>10교시(50분)<br>PM 11:10~AM 12:00</td>
            </tr>
        </tbody>
    </table>
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>
<% ElseIf campus_code = "CD0346" Then '코어청주 %>
<div class="layer-tt">
    <p class="mb20">바른공부 자습전용관 표준시간표</p>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:auto">
            <col style="width:auto">
            <col style="width:auto">
            <col style="width:auto">
            <col style="width:auto">
            <col style="width:auto">
        </colgroup>
        <thead>
            <tr>
                <th></th>
                <th colspan="2">자습 시간</th>
                <th>월요일~<br>
                금요일</th>
                <th>토요일</th>
                <th>일요일<br>공휴일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>1교시<br>
                (조회)</th>
                <th>08:00 ~ 08:30<br><span class="txt-blue">(08:30 ~ 40)</span></th>
                <td>(30분)<br><span class="txt-blue">(10분)</span></td>
                <td>
                    <span class="ico-txt p">영어 프로그램</span>
                </td>
                <td rowspan="3">
                    <span class="ico-txt b mb4">의무 자습</span><br>
                    <span class="ico-txt v mb4">단과 수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시</th>
                <td>08:50 ~ 10:10</td>
                <td>80분</td>
                <td rowspan="2">
                    <span class="ico-txt b mb4">의무 자습</span><br>
                    <span class="ico-txt v mb4">단과 수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
            </tr>
            <tr>
                <th>3교시</th>
                <td>10:30 ~ 12:10</td>
                <td>100분</td>
            </tr>
            <tr>
                <th>점심식사</th>
                <td>12:10 ~ 13:10</td>
                <td>60분</td>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시</th>
                <td>13:10 ~ 14:20</td>
                <td>70분</td>
                <td rowspan="3" colspan="2">
                    <span class="ico-txt b mb4">의무 자습</span><br>
                    <span class="ico-txt v mb4">단과 수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시</th>
                <td>14:40 ~ 16:00</td>
                <td>80분</td>
            </tr>
            <tr>
                <th>6교시<br>(종례)</th>
                <td>16:20 ~ 17:30<br><span class="txt-blue">(17:20 ~ 30)</span></td>
                <td>70분<br><span class="txt-blue">(10분)</span></td>
            </tr>
            <tr>
                <th>저녁식사</th>
                <td>17:30 ~ 18:40</td>
                <td>70분</td>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시</th>
                <td>18:40 ~ 20:10</td>
                <td>90분</td>
                <td rowspan="2" colspan="2">
                    <span class="ico-txt b mb4">의무 자습</span><br>
                    <span class="ico-txt v mb4">단과 수업</span><br>
                    <span class="ico-txt r">상담</span>
                </td>
                <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시</th>
                <td>20:30 ~ 22:00</td>
                <td>90분</td>
            </tr>
            <tr>
                <th>귀가</th>
                <td>22:00 ~ 22:10</td>
                <td>10분</td>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시</th>
                <td>22:10 ~ 23:00</td>
                <td>50분</td>
                <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                <td rowspan="2" colspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시</th>
                <td>23:10 ~ 24:00</td>
                <td>50분</td>
            </tr>
        </tbody>
    </table>
    <!-- <ul class="list-star f11">
        <li>사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul> -->
    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
</div>

<% End If %>