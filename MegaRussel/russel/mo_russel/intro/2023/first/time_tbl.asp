<div class="tbl-inner">
    <% If campus_code = "INTRO" or campus_code = "CD0343" or campus_code = "CD0344" or campus_code = "CD0342" Then '인트로/CORE원주/전주/창원/러셀대구 %>
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
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel ">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(40분)<br>AM 08:00~AM 08:40</th>
                <td><span class="btn-eng">영어<br> 프로그램</span></td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 08:50~AM 10:10</th>
                <td rowspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40 ~PM 04:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 04:20~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(60분)<br>PM 05:30~PM 06:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:30~PM 08:00</th>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:20 ~PM 09:50</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 09:50~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0346" Then '청주 %>
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
                <th>교시(시간)</th>
                <th>월~금</th>
                <th>토</th>
                <th>일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>0교시(50분)<br>AM 07:00~AM 07:50</th>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel ">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(40분)<br>AM 08:00~AM 08:40</th>
                <td><span class="btn-eng">영어<br> 프로그램</span></td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 08:50~AM 10:10</th>
                <td rowspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40 ~PM 04:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 04:20~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(60분)<br>PM 05:30~PM 06:30</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:30~PM 08:00</th>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:20 ~PM 09:50</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 09:50~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0345" Then '창원 %>
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
                <td><span class="btn-eng mb10">영어<br> 프로그램</span>
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
    <% ElseIf campus_code = "CD0247" Then '강남 %>
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
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel ">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(50분)<br>AM 08:00~AM 08:50</th>
                <td><span class="btn-eng">영어<br> 프로그램</span></td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 09:10~AM 10:30</th>
                <td rowspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>PM 02:50 ~PM 04:00</th>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30 ~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 10:00~PM 10:20</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(40분)<br>PM 10:20~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0001" Then '대치 %>
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
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel ">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(50분)<br>AM 08:00~AM 08:50</th>
                <td><span class="btn-eng">영어<br> 프로그램</span></td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 09:10~AM 10:30</th>
                <td rowspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>PM 02:50 ~PM 04:00</th>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30 ~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 10:00~PM 10:20</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(40분)<br>PM 10:20~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0245" Then '목동 %>
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
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel ">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(40분)<br>AM 08:00~AM 08:40</th>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40 ~PM 04:00</th>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30 ~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(10분)<br>PM 10:00~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~PM 11:00</th>
                <td rowspan="2" colspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(60분)<br>PM 11:00~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0250" Then '부천 %>
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
                <td>1교시(30분)<br>AM 08:00~AM 08:30</td>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <td>2교시(80분)<br>AM 08:40~AM 10:00</td>
            </tr>
            <tr>
                <td>3교시(100분)<br>AM 10:30~PM 12:10</td>
            </tr>
            <tr>
                <td>점심식사(60분)<br>PM 12:10~PM 01:10</td>
                <td colspan="3">※ 5분 전 입실</td>
            </tr>
            <tr>
                <td>일일 테스트(20분)<br>PM 01:10 - PM 01:30</td>
                <td colspan="3">
                    <span class="btn-eng">영어 프로그램</span><br>*듣기, 단어 등 일자별 컨텐츠 상이
                </td>
            </tr>
            <tr>
                <td>4교시(70분)<br>PM 01:30~PM 02:20</td>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
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
                <td>저녁식사(60분)<br>PM 05:30~PM 06:40</td>
                <td colspan="3">※ 5분 전 입실</td>
            </tr>
            <tr>
                <td>7교시(90분)<br>PM 06:40~PM 08:10</td>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
            </tr>
            <tr>
                <td>8교시(90분)<br>PM 08:30 ~PM 10:00</td>
            </tr>
            <tr>
                <td>귀가(30분)<br>PM 10:00~PM 10:30</td>
                <td colspan="3">※ 빠르고 조용히 귀가</td>
            </tr>
            <tr>
                <td>9교시(50분)<br>PM 10:30~PM 12:00</td>
                <td colspan="2"><span class="btn-sel">선택자습</span></td>
                <td>미운영</td>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0244" Then '분당 %>
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
                <th>일<br>(공휴일)</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>1교시(50분)<br>AM 08:00~AM 08:50</th>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 09:00~AM 10:20</th>
            </tr>
            <tr>
                <th>3교시(90분)<br>AM 10:40~PM 12:10</th>
            </tr>
            <tr>
                <th>점심식사(70분)<br>PM 12:10~PM 01:20</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(50분)<br>PM 01:20~PM 02:10</th>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:30~PM 03:50</th>
            </tr>
            <tr>
                <th>6교시(80분)<br>PM 04:10~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 05:30~PM 06:40</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:40~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
            </tr>
            <tr>
                <th>귀가(20분)<br>PM 10:00~PM 10:20</th>
                <td colspan="3">22 : 20 까지 하원</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:20~PM 11:10</th>
                <td rowspan="3" colspan="2">
                    <span class="btn-sel">선택자습</span> <br>(학부모님에게<br>안내 문자 발송)
                </td>
                <td rowspan="3">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:20~PM 00:10</th>
            </tr>
            <tr>
                <th>(40분)<br>PM 00:20~PM 01:00</th>
            </tr>
        </tbody>
    </table>
    <ul class="remark-02">
        <li>월~토요일은 의무자습이며, 일요일은 선택자습으로 진행됩니다.</li>
        <li>매 교시 담임선생님의 출석 및 학습 태도 관리가 진행됩니다.</li>
        <li>바자관 표준시간표는 시기별 학습 전략과 바자관 위치에 따라 유동적으로 운영됩니다.</li>
    </ul>
    <% ElseIf campus_code = "CD0246" Then '센텀 %>
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
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel ">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(60분)<br>AM 08:00~AM 09:00</th>
                <td rowspan="3">
                    <span class="btn-eng mb10">영어단어<br>TEST</span><br>
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">담임상담</span>
                </td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">담임상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
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
                    <span class="btn-eng mb10">영어듣기<br>TEST</span><br>
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">담임상담</span>
                </td>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">담임상담</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
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
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">담임상담</span>
                </td>
                <td rowspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">담임상담</span>
                </td>
                <td rowspan="2"><span class="img"><span class="btn-sel">선택자습</span></span></td>
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
                <td rowspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(60분)<br>PM 11:00~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <ul class="remark-02">
        <li>사회적 거리두기 단계에 따라 운영시간은 달라질 수 있습니다.</li>
    </ul>
    <% ElseIf campus_code = "CD0249" Then '영통 %>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:40%" />
            <col style="width:20%" />
            <col style="width:20%" />
            <col style="width:20%" />
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
                <td colspan="2"><span class="img"><span class="btn-sel">선택자습</span></td>
                <td><span class="img"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(30분)<br>AM 08:00~AM 08:30</th>
                <td rowspan="4" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>조회(10분)<br>AM 08:30~AM 08:40</th>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(80분)<br>AM 08:50~AM 10:10</th>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:30~PM 12:10</th>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>점심식사(60분)<br>PM 12:10~PM 01:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:10~PM 02:20</th>
                <td rowspan="4" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40~PM 04:00</th>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>6교시(60분)<br>PM 04:20~PM 05:20</th>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>조회(10분)<br>PM 05:20~PM 05:30</th>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>저녁식사(70분)<br>PM 05:30~PM 06:40</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>7교시(90분)<br>PM 06:40~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty mb10">의무자습</span><br>
                    <span class="btn-danka-type01 mb10">단과수업</span><br>
                    <span class="btn-advice">상담</span>
                </td>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30~PM 10:00</th>
                <td><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>귀가(10분)<br>PM 10:00~PM 10:10</th>
                <td colspan="3">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~AM 11:00</th>
                <td rowspan="2" colspan="2"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <ul class="remark-02">
        <li>학원사정에 따라 운영시간이 변경될 수 있으니, 학원으로 확인 바랍니다.</li>
    </ul>
    <% ElseIf campus_code = "CD0257" Then '중계 %>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:35%;">
            <col style="width:20%;">
            <col style="width:20%;">
            <col style="width:25%;">
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
                    <span class="btn-duty">의무자습</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(90분)<br>AM 08:50~AM 10:20</th>
            </tr>
            <tr>
                <th>3교시(100분)<br>AM 10:30~PM 12:10</th>
            </tr>
            <tr>
                <th>점심시간(60분)<br>PM 12:10~PM 01:10</th>
                <td colspan="3" class="txt-center">-</td>
            </tr>
            <tr>
                <th>4교시(70분)<br>PM 01:10~PM 02:20</th>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty">의무자습</span><br>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 02:40 ~PM 04:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>PM 04:20~PM 05:30</th>
            </tr>
            <tr>
                <th>저녁시간(60분)<br>PM 05:30~PM 06:30</th>
                <td colspan="3" class="txt-center">-</td>
            </tr>
            <tr>
                <th>7교시(100분)<br>PM 06:30~PM 08:10</th>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty">의무자습</span>
                </td>
                <td rowspan="2"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>PM 08:30 ~PM 10:00</th>
            </tr>
            <tr>
                <th>하원(10분)<br>PM 10:00~PM 10:10</th>
                <td colspan="3" class="txt-center">-</td>
            </tr>
            <tr>
                <th>9교시(50분)<br>PM 10:10~PM 11:00</th>
                <td rowspan="2" colspan="2" class="txt-center"><span class="btn-sel">선택자습</span></td>
                <td rowspan="2">(이용불가)</td>
            </tr>
            <tr>
                <th>10교시(50분)<br>PM 11:10~AM 12:00</th>
            </tr>
        </tbody>
    </table>
    <ul class="remark-02">
        <li>학원 운영에 따라 표준 시간표가 달라질 수 있습니다.</li>
    </ul>
    <% ElseIf campus_code = "CD0248" Then '평촌 %>
    <table class="tbl-type01 tbl-center">
        <colgroup>
            <col style="width:%;">
            <col style="width:%;">
            <col style="width:%;">
            <col style="width:%;">
            <col style="width:%;">
        </colgroup>
        <thead>
            <tr>
                <th colspan="2">교시(시간)</th>
                <th>월~금</th>
                <th>토</th>
                <th>일</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <th>조조<br>(선택)</th>
                <td>0교시(50분)<br>07:00 ~ 07:50</td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel">선택자습</span></td>
                <td><span class="btn-sel ">선택자습</span></td>
            </tr>
            <tr>
                <th rowspan="3" class="bdR-gray">오전</th>
                <td>1교시(50분)<br>08:00 ~ 08:50</td>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty mb10">의무자습</span>
                    <span class="btn-danka-type01 mb10">단과수강</span><br>
                    <span class="btn-advice">개별상담</span>
                    <span class="btn-eng">질의응답</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>2교시(70분)<br>09:10 ~ 10:20</th>
            </tr>
            <tr>
                <th>3교시(90분)<br>10:40 ~ 12:10</th>
            </tr>
            <tr>
                <th colspan="2">점심식사(70분)<br>12:10 ~ 13:20</th>
                <td colspan="2"></td>
                <td></td>
            </tr>
            <tr>
                <th rowspan="3" class="bdR-gray">오후</th>
                <td>4교시(70분)<br>13:20 ~ 14:30</td>
                <td rowspan="3" colspan="2">
                    <span class="btn-duty mb10">의무자습</span>
                    <span class="btn-danka-type01 mb10">단과수강</span><br>
                    <span class="btn-advice">개별상담</span>
                    <span class="btn-eng">질의응답</span>
                </td>
                <td rowspan="3"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>5교시(70분)<br>14:50 ~ 16:00</th>
            </tr>
            <tr>
                <th>6교시(70분)<br>16:20 ~ 17:30</th>
            </tr>
            <tr>
                <th colspan="2">저녁식사(70분)<br>17:30 ~ 18:40</th>
                <td colspan="2"></td>
                <td></td>
            </tr>
            <tr>
                <th rowspan="2" class="bdR-gray">저녁</th>
                <td>7교시(90분)<br>18:40 ~ 20:10</td>
                <td rowspan="2" colspan="2">
                    <span class="btn-duty mb10">의무자습</span>
                    <span class="btn-danka-type01 mb10">단과수강</span><br>
                    <span class="btn-advice">개별상담</span>
                    <span class="btn-eng">질의응답</span>
                </td>
                <td rowspan="2"><span class="btn-sel">선택자습</span></td>
            </tr>
            <tr>
                <th>8교시(90분)<br>20:30 ~ 22:00</th>
            </tr>
            <tr>
                <th colspan="2">귀가(30분)<br>22:00 ~ 22:30</th>
                <td colspan="2"></td>
                <td></td>
            </tr>
            <tr>
                <th class="bdR-gray">심야<br>(선택)</th>
                <th>9교시(90분)<br>22:30 ~ 00:00</th>
                <td colspan="2"><span class="btn-sel">선택자습</span></td>
                <td><span class="txt-red">이용불가</span></td>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0340" Then '광주 %>
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
                <td colspan="3"><span class="btn-advice">선택자습</span></td>
            </tr>
            <tr>
                <th>1교시(40분)<br>AM 08:00~AM 08:40</th>
                <td rowspan="3">
                    <span class="btn-duty mb10">의무자습</span>
                    <span class="btn-eng">진학지도</span>
                </td>
                <td rowspan="3">
                    <span class="btn-duty">의무자습</span><br>
                </td>
                <td rowspan="3"><span class="btn-sel">선택학습</span></td>
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
                    <span class="btn-duty mb10">의무자습</span>
                    <span class="btn-eng">진학지도</span>
                </td>
                <td rowspan="3">
                    <span class="btn-duty">의무자습</span><br>
                </td>
                <td rowspan="3"><span class="btn-sel">선택학습</span></td>
            </tr>
            <tr>
                <th>5교시(80분)<br>PM 14:40 ~PM 16:00</th>
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
                    <span class="btn-duty mb10">의무자습</span>
                    <span class="btn-eng">진학지도</span>
                </td>
                <td rowspan="2">
                    <span class="btn-duty">의무자습</span><br>
                </td>
                <td rowspan="2"><span class="btn-sel">선택학습</span></td>
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
                <td rowspan="2"><span class="btn-advice">선택자습</span></td>
                <td rowspan="2" colspan="2">이용불가</td>
            </tr>
            <tr>
                <th>10교시(70분)<br>PM 24:50~AM 01:00</th>
            </tr>
        </tbody>
    </table>
    <% ElseIf campus_code = "CD0341" Then '대전 %>
    <div id="table-scroll" class="table-scroll" style="overflow: hidden;">
        <div class="tbl-box" style="overflow-x: scroll;">
            <div class="tbl-wrap table-wrap">
                <table class="tbl-type01 tbl-center" style="width: 250%;">
                    <colgroup>
                        <col style="width:8%;">
                        <col style="width:8%;">
                        <col style="width:8%;">
                        <col style="width:8%;">
                        <col style="width:;">
                        <col style="width:;">
                        <col style="width:;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th colspan="2" class="tb-fix">구분</th>
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
                            <th rowspan="4" class="tb-fix bg-sky">오전</th>
                            <td class="tb-fix">0교시</td>
                            <td>AM 07:00</td>
                            <td>AM 07:50</td>
                            <td>50분</td>
                            <td>
                                <span class="btn-sel">선택자습</span>
                            </td>
                            <td>
                                <span class="btn-sel">선택자습</span>
                            </td>
                            <td>
                                <span class="btn-sel">선택자습</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="tb-fix">1교시</td>
                            <td>AM 08:00</td>
                            <td>AM 08:40</td>
                            <td>40분</td>
                            <td colspan="2" rowspan="3">
                                <span class="btn-duty mr5">의무자습</span>
                            </td>
                            <td rowspan="3">
                                <span class="btn-sel">선택자습</span>
                            </td>
                        </tr>
                        <tr>
                            <td class="tb-fix">2교시</td>
                            <td>AM 08:50</td>
                            <td>AM 10:10</td>
                            <td>80분</td>
                        </tr>
                        <tr>
                            <td class="tb-fix">3교시</td>
                            <td>AM 10:30</td>
                            <td>PM 12:10</td>
                            <td>100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <td>PM 12:10</td>
                            <td>PM 01:10</td>
                            <td>60분</td>
                            <td colspan="3">■ 5분전 입실 완료</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-sky">오후</th>
                            <td>4교시</td>
                            <td>PM 01:10</td>
                            <td>PM 02:20</td>
                            <td>70분</td>
                            <td rowspan="3" colspan="2">
                                <span class="btn-duty mr5">의무자습</span>
                            </td>
                            <td rowspan="3">
                                <span class="btn-sel">선택자습</span>
                            </td>
                        </tr>
                        <tr>
                            <td>5교시</td>
                            <td>PM 02:40</td>
                            <td>PM 04:00</td>
                            <td>80분</td>
                        </tr>
                        <tr>
                            <td>6교시</td>
                            <td>PM 04:20 </td>
                            <td>PM 05:30</td>
                            <td>70분</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <td>PM 05:30</td>
                            <td>PM 06:30</td>
                            <td>60분</td>
                            <td colspan="3">■ 5분전 입실 완료</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">저녁</th>
                            <td>7교시</td>
                            <td>PM 06:30</td>
                            <td>PM 08:00</td>
                            <td>90분</td>
                            <td colspan="2" rowspan="2">
                                <span class="btn-duty mr5">의무자습</span>
                            </td>
                            <td rowspan="2"><span class="btn-sel">선택자습</span></td>
                        </tr>
                        <tr>
                            <td>8교시</td>
                            <td>PM 08:20</td>
                            <td>PM 09:50</td>
                            <td>90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <td>PM 09:50</td>
                            <td>PM 10:10</td>
                            <td>20분</td>
                            <td colspan="3">■ 심야자습 시작 전 퇴실</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-sky">심야</th>
                            <td>9교시</td>
                            <td>PM 10:10</td>
                            <td>PM 11:00</td>
                            <td>50분</td>
                            <td rowspan="2" colspan="2"><span class="btn-sel">선택자습</span></td>
                            <td rowspan="2"><span class="txt-red">심야자습<br>없음</span></td>
                        </tr>
                        <tr>
                            <td>10교시</td>
                            <td>PM 11:10</td>
                            <td>AM 12:00</td>
                            <td>50분</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
    <% End If %>

    <ul class="list-star f11">
        <% If campus_code = "INTRO" Then '인트로 %>
        <li>평일 오전 영어 프로그램은 영단어&amp;듣기TEST로 진행되며<br> 학원별 운영은 상이할 수 있습니다.</li>
        <li>학원별 운영 시간표는 상이하므로 학원별 페이지를 확인하시기 바랍니다.</li>
        <% ElseIf campus_code = "CD0247" Then '강남 %>
        <li>평일 오전 영어 프로그램은 윈터스쿨 기간에만 운영되며, 학원 사정에 의해 변경될 수 있습니다.</li>
        <% ElseIf campus_code = "CD0342" Then '러셀대구 %>
        <li>학원 운영에 따라 시간표는 변동될 수 있습니다.</li>
        <% End If %>
    </ul>
</div>









