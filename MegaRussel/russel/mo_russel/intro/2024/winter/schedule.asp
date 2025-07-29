<% If campus_code = "CD0343" Then '코어원주 %>
<div class="schedule-box">
    <p>반수생 시간표 (예시)</p>
    <table class="tbl-type01">
        <colgroup>
            <col style="width:13%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
        </colgroup>
        <thead>
            <tr>
                <th>시간표(예시)</th>
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
                <th>오전 (08:00~12:10)</th>
                <td class="b-blue">대학교<br>
                수업</td>
                <td rowspan="2" class="b-blue">대학교<br>
                수업</td>
                <td rowspan="3" class="b-red">의무<br>
                    자습
                </td>
                <td class="b-blue">대학교<br>
                수업</td>
                <td rowspan="2" class="b-blue">대학교<br>
                수업</td>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td rowspan="3" class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th>오후 (13:10~17:30)</th>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td rowspan="2" class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th>저녁 (18:30~21:50)</th>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th style="padding:5px 0;">심야</th>
                <td colspan="7" style="padding:5px 0">선택자습</td>
            </tr>
        </tbody>
    </table>
</div>
<% ElseIf campus_code = "CD0250" Then '부천 %>
<div class="schedule-box">
    <p>반수생 시간표 (예시)</p>
    <table class="tbl-type01">
        <colgroup>
            <col style="width:13%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
        </colgroup>
        <thead>
            <tr>
                <th>시간표(예시)</th>
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
                <th>오전 (08:00~12:10)</th>
                <td class="b-blue">대학교<br>
                수업</td>
                <td rowspan="2" class="b-blue">대학교<br>
                수업</td>
                <td rowspan="3" class="b-red">의무<br>
                    자습
                </td>
                <td class="b-blue">대학교<br>
                수업</td>
                <td class="b-blue" rowspan="2">대학교<br>
                수업</td>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td rowspan="3" class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th>오후 (13:10~17:30)</th>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td rowspan="2" class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th>저녁 (18:30~22:00)</th>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th style="padding:5px 0;">심야</th>
                <td colspan="7" style="padding:5px 0;">선택자습</td>
            </tr>
        </tbody>
    </table>
</div>
<% Else %>
<div class="schedule-box">
    <p>반수생 시간표 (예시)</p>
    <table class="tbl-type01">
        <colgroup>
            <col style="width:13%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
            <col style="width:10%;">
        </colgroup>
        <thead>
            <tr>
                <th>시간표(예시)</th>
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
                <th style="padding:5px 0;">아침
                </th>
                <td colspan="7" style="padding:5px 0;">선택자습</td>
            </tr>
            <tr>
                <th>오전 (08:00~12:10)</th>
                <td class="b-blue">대학교<br>
                수업</td>
                <td rowspan="2" class="b-blue">대학교<br>
                수업</td>
                <td rowspan="3" class="b-red">의무<br>
                    자습
                </td>
                <td class="b-blue">대학교<br>
                수업</td>
                <td rowspan="2" class="b-blue">대학교<br>
                수업</td>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td rowspan="3" class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th>오후 (13:10~17:30)</th>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td rowspan="2" class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th>저녁 (18:30~21:50)</th>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
                <td class="b-green">단과<br>
                    수업
                </td>
                <td class="b-red">의무<br>
                    자습
                </td>
            </tr>
            <tr>
                <th style="padding:5px 0;">심야</th>
                <td colspan="7" style="padding:5px 0;">선택자습</td>
            </tr>
        </tbody>
    </table>
</div>
<% End if %>