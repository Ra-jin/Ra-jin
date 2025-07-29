<!--cont02-->
<div class="cont02 js-cont">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/cont02_tit.jpg" alt=""></p>
    <div class="inner">
        <div class="txt-box">
            러셀CORE 프리윈터스쿨은 <br>
            수능형 리듬이 잡히지 않은 <%=grade%> 재학생을 대상으로,<br>
            윈터스쿨 전 <strong>미리 수능 시간표와 동일한</strong><br>
            바른공부 자습전용관 표준 시간표로 생활 및 학습하여<br>
            <strong>규칙적인 생활</strong>과 최상위권 전문 입시 담임선생님의<br>
            <strong>체계적인 관리</strong>를 통해 체력과 멘탈,<br>
            그리고 학습 패턴을 수능까지 유지될 수 있게<br>
            형성 시켜주는 학습 과정입니다.
        </div>
    </div>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont02_img.jpg" alt=""></p>
</div>
<!--//cont02-->

<!--띠배너-->
<% If campus_code = "CD0343" or campus_code = "CD0344"  or campus_code = "CD0346"  or campus_code = "CD0345" Then '코어원주/전주/청주/창원 %>
<p class="line-banner mid"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/line_banner.jpg" alt="중간 띠배너"></p>
<% if campus_code = "CD0344" or campus_code = "CD0346" Then '코어전주/청주 %>
<div style="position: relative;">
    <p class="line-banner mid"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/event_banner.jpg" alt="이벤트 띠배너"></p>
    <p style="position: absolute;top: -14px;left: 5%;width:calc(647vw / 7.2);"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/particle.png" alt="종이가루"></p>
</div>
<% End If %>
<% End If %>
<!--//띠배너-->

<!--cont03-->
<div class="cont03 js-cont">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/cont03_tit.jpg" alt="바른공부 자습전용관 표준 시간표"></p>
    <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" Then '코어광주/코어대전/코어원주 %>
    <div class="inner">
        <div class="tt-label">
            <span><%=tt_label%></span>
        </div>
        <div class="tt-wrap">
            <div class="tt-cont">
                <ul>
                    <li>
                        수능 시간표와 동일한 바자관 시간표로 <strong> 수능 리듬에 <br>
                        익숙해질 수 있습니다.</strong>
                    </li>
                    <% If campus_code = "CD0343" Then '원주 %>
                    <li>
                        수학 개념 수업 진행으로 탄탄한 기본기 확립이 <br> 가능합니다.
                    </li>
                    <% Else %>
                    <li>
                        <strong>충분한 자습시간 확보와 담임선생님의 밀착 케어</strong>가 <br>
                        가능합니다.
                    </li>
                    <% End If %>
                </ul>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont03_tt_bg.jpg" alt="시간표 이미지"></p>
            </div>
        </div>
        <p class="s-txt">* 수업 요일 및 시간은 학원 운영에 따라 변경 될 수 있습니다.</p>
    </div>
    <div class="mask-bg"></div>
    <% If campus_code = "CD0340" Then '광주 %>
    <div class="layer-tt">
        <p class="mb20">바른공부 자습전용관 표준 시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th colspan="2" class="stickyGj01">구분</th>
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
                        <th rowspan="4" class="stickyGj01">오전</th>
                        <td class="stickyGj02">0교시</td>
                        <td>07:00~07:50 (50분)</td>
                        <td colspan="5" rowspan="9">학교/선택자습</td>
                        <td rowspan="4" class="bdt bdl">자습</td>
                        <td rowspan="4" class="bdt bdr">선택 자습</td>
                    </tr>
                    <tr>
                        <td class="stickyGj02">1교시</td>
                        <td class="bdt bdl bdr">08:00~08:40 (40분)</td>
                    </tr>
                    <tr>
                        <td class="stickyGj02">2교시</td>
                        <td class="bdl bdr">08:50~10:10 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyGj02">3교시</td>
                        <td class="bdl bdr">10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyGj01">점심식사</th>
                        <td class="bdl bdr">12:10~13:10 (60분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyGj01">오후</th>
                        <td class="stickyGj02">4교시</td>
                        <td class="bdl bdr">13:10~14:20 (70분)</td>
                        <td rowspan="3" class="bdl">자습</td>
                        <td rowspan="3" class="bdr">선택 자습</td>
                    </tr>
                    <tr>
                        <td class="stickyGj02">5교시</td>
                        <td class="bdl bdr">14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyGj02">6교시</td>
                        <td class="bdl bdb bdr">16:20~17:30 (70분)</td>
                    </tr>
                    
                    <tr>
                        <th colspan="2" class="stickyGj01">저녁식사</th>
                        <td>17:30~18:30 (60분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyGj01">저녁</th>
                        <td class="stickyGj02">7교시</td>
                        <td>18:30~20:00 (90분)</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2" class="bdb bdl">자습</td>
                        <td rowspan="2" class="bdb bdr">선택 자습</td>
                    </tr>
                    <tr>
                        <td class="stickyGj02">8교시</td>
                        <td>20:30~22:00 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyGj01">귀가</th>
                        <td>22:00~22:20 (20분)</td>
                        <td colspan="7">-</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <% ElseIf campus_code = "CD0341" Then '대전 %>
    <div class="layer-tt">
        <p class="mb20">바른공부 자습전용관 표준시간표</p>
        <div style="position: relative;overflow-x: scroll;">
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
            <!-- <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th colspan="2" class="stickyDj01">구분</th>
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
                        <th rowspan="3" class="stickyDj01">오전</th>
                        <td class="stickyDj02">1교시</td>
                        <td class=" bdt bdl bdr">08:00~08:40 (40분)</td>
                        <td colspan="5" rowspan="8" class="bdr bdb">학교/내신 관리</td>
                        <td rowspan="3" class="bdt bdr">의무 자습</td>
                        <td rowspan="3">선택 자습</td>
                    </tr>
                    <tr>
                        <td class="stickyDj02">2교시</td>
                        <td class="bdl bdr">08:50~10:10 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyDj02">3교시</td>
                        <td class="bdl bdr">10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyDj01">점심식사</th>
                        <td class="bdl bdr">12:10~13:10 (60분)</td>
                        <td class="bdr"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyDj01">오후</th>
                        <td class="stickyDj02">4교시</td>
                        <td class="bdl bdr">13:10~14:20 (70분)</td>
                        <td rowspan="3" class="bdr">의무 자습</td>
                        <td rowspan="3">선택 자습</td>
                    </tr>
                    <tr>
                        <td class="stickyDj02">5교시</td>
                        <td class="bdl bdr">14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyDj02">6교시</td>
                        <td class="bdl bdr">16:20~17:30 (70분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyDj01">저녁식사</th>
                        <td class="bdl bdr bdb">17:30~18:30 (60분)</td>
                        <td class="bdr"></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyDj01">저녁</th>
                        <td class="stickyDj02">7교시</td>
                        <td class="bdr">18:30~20:00 (90분)</td>
                        <td rowspan="2" class="bdb">의무 자습</td>
                        <td rowspan="2" class="bdb">의무 자습</td>
                        <td rowspan="2" class="bdb">의무 자습</td>
                        <td rowspan="2" class="bdb">의무 자습</td>
                        <td rowspan="2" class="bdb">의무 자습</td>
                        <td rowspan="2" class="bdb bdr">의무 자습</td>
                        <td rowspan="2">선택 자습</td>
                    </tr>
                    <tr>
                        <td class="stickyDj02">8교시</td>
                        <td class="bdr">20:30~22:00 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyDj01">귀가</th>
                        <td>22:00~22:20 (20분)</td>
                        <td colspan="7">-</td>
                    </tr>
                </tbody>
            </table> -->
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <% ElseIf campus_code = "CD0343" Then '원주 %>
    <div class="layer-tt">
        <p class="mb20">바른공부 자습전용관 표준시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width:200%;">
                <colgroup>
                    <col style="width:34.91px;" />
                    <col style="width:34.91px;" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                    <col style="width:auto;" />
                </colgroup>
                <thead>
                    <tr>
                        <th colspan="2" class="stickyWj01">구분</th>
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
                        <th rowspan="4" class="stickyWj01">오전</th>
                        <td class="stickyWj02">1교시</td>
                        <td class="bdt bdl">08:00~08:30</td>
                        <td class="bdr bdt">30분</td>
                        <td>자습</td>
                        <td>자습</td>
                        <td>자습</td>
                        <td>자습</td>
                        <td>자습</td>
                        <td>자습</td>
                        <td rowspan="4">선택자습</td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">조회</td>
                        <td class="bdl">08:30~08:40</td>
                        <td class="bdr">10분</td>
                        <td colspan="6">-</td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">2교시</td>
                        <td class="bdl">08:50~10:10</td>
                        <td class="bdr">80분</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">3교시</td>
                        <td class="bdl">10:20~12:00</td>
                        <td class="bdr">100분</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyWj01">점심식사</th>
                        <td class="bdl">12:10~13:10</td>
                        <td class="bdr">70분</td>
                        <td colspan="7">-</td>
                    </tr>
                    <tr>
                        <th rowspan="4" class="stickyWj01">오후</th>
                        <td class="stickyWj02">4교시</td>
                        <td class="bdl">13:10~14:20</td>
                        <td class="bdr">70분</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="4">선택자습</td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">5교시</td>
                        <td class="bdl">14:30~15:40</td>
                        <td class="bdr">70분</td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">6교시</td>
                        <td class="bdl bdb">15:50~17:00</td>
                        <td class="bdb bdr">70분</td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">종례</td>
                        <td>17:10~17:30</td>
                        <td>20분</td>
                        <td colspan="6">-</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyWj01">저녁식사</th>
                        <td>17:30~18:40</td>
                        <td>70분</td>
                        <td colspan="7">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyWj01">저녁</th>
                        <td class="stickyWj02">7교시</td>
                        <td>18:40~20:10</td>
                        <td>90분</td>
                        <td rowspan="2" colspan="4" class="bdl bdt bdr bdb">수학(상) 수업 <br> [월/수반] <br> [화/목반]</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">선택자습</td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">8교시</td>
                        <td>20:30~22:00</td>
                        <td>90분</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyWj01">귀가</th>
                        <td>22:00~22:20</td>
                        <td>20분</td>
                        <td colspan="7">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyWj01">심야</th>
                        <td class="stickyWj02">9교시</td>
                        <td>22:20~23:00</td>
                        <td>40분</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2" colspan="2">
                            * 토요일/일요일/공휴일은 <br>
                            심야선택자습 미 진행
                        </td>
                    </tr>
                    <tr>
                        <td class="stickyWj02">10교시</td>
                        <td>23:10~24:00</td>
                        <td>50분</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <% End If %>
    <% ElseIf campus_code = "CD0344" Then '전주 %>
    <div class="inner">
        <div class="study-swiper">
            <div class="study-slide-nav">
                <div class="btn-bar"></div>
                <div class="swiper-wrapper" style="z-index: 5;">
                    <div class="left swiper-slide on"><%=tt_label%></div>
                    <div class="right swiper-slide"><%=tt_label02%></div>
                </div>
            </div>
            <div class="swiper-container study-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <ul>
                            <li>
                                수능 시간표와 동일한 바자관 시간표로 <strong>수능 리듬에 
                                익숙해질 수 있습니다.</strong>
                            </li>
                            <li>
                                <strong>충분한 자습시간 확보와 담임선생님의 밀착 케어</strong>가
                                가능합니다.
                            </li>
                        </ul>
                        <p class="tt-wrap"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont03_tt_bg01.jpg" alt="시간표 이미지"></p>
                    </div>
                    <div class="swiper-slide">
                        <ul>
                            <li>
                                수능 시간표와 동일한 바자관 시간표로 <strong>수능 리듬에 익숙해질 수 있습니다.</strong> 
                            </li>
                            <li>
                                수학 개념 수업 진행으로 탄탄한 기본기 확립이 가능합니다.
                            </li>
                        </ul>
                        <p class="tt-wrap02"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont03_tt_bg02.jpg" alt="시간표 이미지"></p>
                    </div>
                </div>
            </div>
            <p class="s-txt">* 수업 요일 및 시간은 학원 운영에 따라 변경 될 수 있습니다.</p>
        </div>
    </div>
    <div class="mask-bg"></div>
    <div class="layer-tt">
        <p class="mb20">바른공부 자습전용관 표준 시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th colspan="2" class="stickyJj01">구분</th>
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
                        <th rowspan="2" class="stickyJj01">오전</th>
                        <td class="stickyJj02">1교시</td>
                        <td>09:00~10:10 (70분)</td>
                        <td colspan="5" rowspan="7">학교 / 선택자습</td>
                        <td rowspan="2" class="bdt bdl">자습</td>
                        <td rowspan="2" class="bdt bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyJj02">2교시</td>
                        <td>10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyJj01">점심식사</th>
                        <td>12:10~13:10 (60분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyJj01">오후</th>
                        <td class="stickyJj02">3교시</td>
                        <td>13:10~14:20 (70분)</td>
                        <td rowspan="3" class="bdl">자습</td>
                        <td rowspan="3" class="bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyJj02">4교시</td>
                        <td>14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyJj02">5교시</td>
                        <td>16:20~17:30 (70분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyJj01">저녁식사</th>
                        <td>17:30~18:40 (70분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyJj01">저녁</th>
                        <td class="stickyJj02">6교시</td>
                        <td>18:40~20:10 (90분)</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2" class="bdl bdb">자습</td>
                        <td rowspan="2" class="bdr bdb">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyJj02">7교시</td>
                        <td>20:30~22:00 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyJj01">귀가</th>
                        <td>22:00~22:10 (10분)</td>
                        <td colspan="7">-</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <div class="layer-tt02">
        <p class="mb20">바른공부 자습전용관 표준 시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:63px;" />
                    <col style="width:63px;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="high">
                        <th colspan="2" class="stickyJj01">구분</th>
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
                    <tr class="high">
                        <th rowspan="2" class="stickyJj01">오전</th>
                        <td class="stickyJj03">1교시</td>
                        <td>09:00~10:10 (70분)</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyJj03">2교시</td>
                        <td>10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyJj01">점심식사</th>
                        <td>12:10~13:10 (60분)</td>
                        <td colspan="7">-</td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyJj01">오후</th>
                        <td class="stickyJj03">3교시</td>
                        <td>13:10~14:20 (70분)</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyJj03">4교시</td>
                        <td>14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyJj03">5교시</td>
                        <td>16:20~17:30 (70분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyJj01">저녁식사</th>
                        <td>17:30~18:40 (70분)</td>
                        <td colspan="7">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyJj01">저녁</th>
                        <td class="stickyJj03">6교시</td>
                        <td>18:40~20:10 (90분)</td>
                        <td rowspan="2" colspan="4" class="bdl bdr bdt bdb">
                            수학(상) 수업 <br>
                            [월/수반] <br>
                            [화/목반]
                        </td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyJj03">7교시</td>
                        <td>20:30~22:00 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyJj01">귀가</th>
                        <td>22:00~22:10 (10분)</td>
                        <td colspan="7">-</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <% ElseIf campus_code = "CD0345" Then '창원 %>
    <div class="inner">
        <div class="study-swiper">
            <div class="study-slide-nav">
                <div class="btn-bar"></div>
                <div class="swiper-wrapper" style="z-index: 5;">
                    <div class="left swiper-slide on"><%=tt_label%></div>
                    <div class="right swiper-slide"><%=tt_label02%></div>
                </div>
            </div>
            <div class="swiper-container study-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <ul>
                            <li>
                                수능 시간표와 동일한 바자관 시간표로 <strong>수능 리듬에 
                                익숙해질 수 있습니다.</strong>
                            </li>
                            <li>
                                <strong>충분한 자습시간 확보와 담임선생님의 밀착 케어</strong>가
                                가능합니다.
                            </li>
                        </ul>
                        <p class="tt-wrap"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont03_tt_bg01.jpg" alt="시간표 이미지"></p>
                    </div>
                    <div class="swiper-slide">
                        <ul>
                            <li>
                                수능 시간표와 동일한 바자관 시간표로 <strong>수능 리듬에 익숙해질 수 있습니다.</strong> 
                            </li>
                            <li>
                                수학 개념 수업 진행으로 탄탄한 기본기 확립이 가능합니다.
                            </li>
                        </ul>
                        <p class="tt-wrap02"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont03_tt_bg02.jpg" alt="시간표 이미지"></p>
                    </div>
                </div>
            </div>
            <p class="s-txt">* 수업 요일 및 시간은 학원 운영에 따라 변경 될 수 있습니다.</p>
        </div>
    </div>
    <div class="mask-bg"></div>
    <div class="layer-tt">
        <p class="mb20">바른공부 자습전용관 표준 시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th colspan="2" class="stickyCw01">구분</th>
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
                        <th rowspan="4" class="stickyCw01">오전</th>
                        <td class="stickyCw02">0교시</td>
                        <td>07:00~07:50 (50분)</td>
                        <td colspan="5" rowspan="9">학교 / 선택자습</td>
                        <td rowspan="4" class="bdt bdl">자습</td>
                        <td rowspan="4" class="bdt bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCw02">1교시</td>
                        <td class="bdt bdl bdr">08:00~08:40 (40분)</td>
                    </tr>
                    <tr>
                        <td class="stickyCw02">2교시</td>
                        <td class="bdl bdr">08:50~10:10 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyCw02">3교시</td>
                        <td class="bdl bdr">10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCw01">점심식사</th>
                        <td class="bdl bdr">12:10~13:10 (60분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyCw01">오후</th>
                        <td class="stickyCw02">4교시</td>
                        <td class="bdl bdr">13:10~14:20 (70분)</td>
                        <td rowspan="3" class="bdl">자습</td>
                        <td rowspan="3" class="bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCw02">5교시</td>
                        <td class="bdl bdr">14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyCw02">6교시</td>
                        <td class="bdl bdr bdb">16:20~17:30 (70분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCw01">저녁식사</th>
                        <td>17:30~18:30 (60분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyCw01">저녁</th>
                        <td class="stickyCw02">7교시</td>
                        <td>18:30~20:00 (90분)</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2" class="bdb bdl">자습</td>
                        <td rowspan="2" class="bdb bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCw02">8교시</td>
                        <td>20:20~21:50 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCw01">귀가</th>
                        <td>21:50~22:10 (20분)</td>
                        <td colspan="7">-</td>
                    </tr>
                    <!-- <tr>
                        <th colspan="2" rowspan="2" class="stickyCw01">심야자습<br>(월~금)</th>
                        <td>22:10~23:00 (50분)</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2" colspan="2">-</td>
                    </tr>
                    <tr>
                        <td>23:10~24:00 (50분)</td>
                    </tr> -->
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <div class="layer-tt02">
        <p class="mb20">바른공부 자습전용관 표준 시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="high">
                        <th colspan="2" class="stickyCw01">구분</th>
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
                    <tr class="high">
                        <th rowspan="4" class="stickyCw01">오전</th>
                        <td class="stickyCw03">0교시</td>
                        <td>07:00~07:50 (50분)</td>
                        <td rowspan="4">자습</td>
                        <td rowspan="4">자습</td>
                        <td rowspan="4">자습</td>
                        <td rowspan="4">자습</td>
                        <td rowspan="4">자습</td>
                        <td rowspan="4">자습</td>
                        <td rowspan="4">자습</td>
                    </tr>
                    <tr class="high">
                        <td class="stickyCw03">1교시</td>
                        <td class="bdt bdl bdr">08:00~08:40 (40분)</td>
                    </tr>
                    <tr class="high">
                        <td class="stickyCw03">2교시</td>
                        <td class="bdl bdr">08:50~10:10 (80분)</td>
                    </tr>
                    <tr class="high">
                        <td class="stickyCw03">3교시</td>
                        <td class="bdl bdr">10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCw01">점심식사</th>
                        <td class="bdl bdr">12:10~13:10 (60분)</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td colspan="2">-</td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyCw01">오후</th>
                        <td class="stickyCw03">4교시</td>
                        <td class="bdl bdr">13:10~14:20 (70분)</td>
                        <td rowspan="3" class="bdt bdr bdb">수학(상) <br> 수업</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3" class="bdt bdl bdr bdb">수학(상) <br> 수업</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCw03">5교시</td>
                        <td class="bdl bdr">14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyCw03">6교시</td>
                        <td class="bdl bdr bdb">16:20~17:30 (70분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCw01">저녁식사</th>
                        <td>17:30~18:30 (60분)</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td colspan="2">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyCw01">저녁</th>
                        <td class="stickyCw03">7교시</td>
                        <td>18:30~20:00 (90분)</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCw03">8교시</td>
                        <td>20:20~21:50 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCw01">귀가</th>
                        <td>21:50~22:10 (20분)</td>
                        <td colspan="7">-</td>
                    </tr>
                    <!-- <tr>
                        <th colspan="2" rowspan="2" class="stickyCw01">심야자습<br>(월~금)</th>
                        <td>22:10~23:00 (50분)</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2">선택자습</td>
                        <td rowspan="2" colspan="2">-</td>
                    </tr>
                    <tr>
                        <td>23:10~24:00 (50분)</td>
                    </tr> -->
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <% ElseIf campus_code = "CD0346" Then '청주 %>
    <div class="inner">
        <div class="study-swiper">
            <div class="study-slide-nav">
                <div class="btn-bar"></div>
                <div class="swiper-wrapper" style="z-index: 5;">
                    <div class="left swiper-slide on"><%=tt_label%></div>
                    <div class="right swiper-slide"><%=tt_label02%></div>
                </div>
            </div>
            <div class="swiper-container study-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <ul>
                            <li>
                                수능 시간표와 동일한 바자관 시간표로 <strong>수능 리듬에 
                                익숙해질 수 있습니다.</strong>
                            </li>
                            <li>
                                <strong>충분한 자습시간 확보와 담임선생님의 밀착 케어</strong>가
                                가능합니다.
                            </li>
                        </ul>
                        <p class="tt-wrap"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont03_tt_bg01.jpg" alt="시간표 이미지"></p>
                    </div>
                    <div class="swiper-slide">
                        <ul>
                            <li>
                                수능 시간표와 동일한 바자관 시간표로 <strong>수능 리듬에 익숙해질 수 있습니다.</strong> 
                            </li>
                            <li>
                                수학 개념 수업 진행으로 탄탄한 기본기 확립이 가능합니다.
                            </li>
                        </ul>
                        <p class="tt-wrap02"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName02%>/2023/pre_winter/cont03_tt_bg02.jpg" alt="시간표 이미지"></p>
                    </div>
                </div>
            </div>
            <p class="s-txt">* 수업 요일 및 시간은 학원 운영에 따라 변경 될 수 있습니다.</p>
        </div>
    </div>
    <div class="mask-bg"></div>
    <div class="layer-tt">
        <p class="mb20">바른공부 자습전용관 표준 시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="low">
                        <th colspan="2" class="stickyCj01">구분</th>
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
                        <th rowspan="3" class="stickyCj01">오전</th>
                        <td class="stickyCj02">1교시</td>
                        <td class="bdt bdl bdr">08:00~08:40 (40분)</td>
                        <td colspan="5" rowspan="8">학교 / 선택자습</td>
                        <td rowspan="3" class="bdt bdl">자습</td>
                        <td rowspan="3" class="bdt bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCj02">2교시</td>
                        <td class="bdl bdr">08:50~10:10 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyCj02">3교시</td>
                        <td class="bdl bdr">10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCj01">점심식사</th>
                        <td class="bdl bdr">12:10~13:10 (60분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyCj01">오후</th>
                        <td class="stickyCj02">4교시</td>
                        <td class="bdl bdr">13:10~14:20 (70분)</td>
                        <td rowspan="3" class="bdl">자습</td>
                        <td rowspan="3" class="bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCj02">5교시</td>
                        <td class="bdl bdr">14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyCj02">6교시</td>
                        <td class="bdl bdr bdb">16:20~17:30 (70분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCj01">저녁식사</th>
                        <td>17:30~18:40 (70분)</td>
                        <td colspan="2" class="bdl bdr">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyCj01">저녁</th>
                        <td class="stickyCj02">7교시</td>
                        <td>18:40~20:10 (90분)</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2">자습</td>
                        <td rowspan="2" class="bdb bdl">자습</td>
                        <td rowspan="2" class="bdb bdr">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCj02">8교시</td>
                        <td>20:30~22:00 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCj01">귀가</th>
                        <td>22:00~22:10 (10분)</td>
                        <td colspan="7">-</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <div class="layer-tt02">
        <p class="mb20">바른공부 자습전용관 표준 시간표</p>
        <div style="position: relative;overflow-x: scroll;">
            <table class="tbl-type01 tbl-center" style="width: 864px;">
                <colgroup>
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:20%;" />
                    <col style="width:%" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                    <col style="width:%;" />
                </colgroup>
                <thead>
                    <tr class="high">
                        <th colspan="2" class="stickyCj01">구분</th>
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
                    <tr class="high">
                        <th rowspan="3" class="stickyCj01">오전</th>
                        <td class="stickyCj03">1교시</td>
                        <td class="bdt bdl bdr">08:00~08:40 (40분)</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                    </tr>
                    <tr class="high">
                        <td class="stickyCj03">2교시</td>
                        <td class="bdl bdr">08:50~10:10 (80분)</td>
                    </tr>
                    <tr class="high">
                        <td class="stickyCj03">3교시</td>
                        <td class="bdl bdr">10:30~12:10 (100분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCj01">점심식사</th>
                        <td class="bdl bdr">12:10~13:10 (60분)</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td colspan="2">-</td>
                    </tr>
                    <tr>
                        <th rowspan="3" class="stickyCj01">오후</th>
                        <td class="stickyCj03">4교시</td>
                        <td class="bdl bdr">13:10~14:20 (70분)</td>
                        <td rowspan="3" class="bdt bdb bdr">수학(상) <br> 수업</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3" class="bdt bdb bdl bdr">수학(상) <br> 수업</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                        <td rowspan="3">자습</td>
                    </tr>
                    <tr>
                        <td class="stickyCj03">5교시</td>
                        <td class="bdl bdr">14:40~16:00 (80분)</td>
                    </tr>
                    <tr>
                        <td class="stickyCj03">6교시</td>
                        <td class="bdl bdr bdb">16:20~17:30 (70분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCj01">저녁식사</th>
                        <td>17:30~18:40 (70분)</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td>-</td>
                        <td colspan="2">-</td>
                    </tr>
                    <tr>
                        <th rowspan="2" class="stickyCj01">저녁</th>
                        <td class="stickyCj03">7교시</td>
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
                        <td class="stickyCj03">8교시</td>
                        <td>20:30~22:00 (90분)</td>
                    </tr>
                    <tr>
                        <th colspan="2" class="stickyCj01">귀가</th>
                        <td>22:00~22:10 (10분)</td>
                        <td colspan="7">-</td>
                    </tr>
                </tbody>
            </table>
        </div>
        <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
    </div>
    <% End If %>
</div>
<!--//cont03-->


<!--cont04-->
<div class="cont04 js-cont">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/cont04_tit.jpg" alt="러셀core 프리윈터스쿨 프로그램"></p>
    
    <!-- 프로그램 -->
    <!-- #include virtual = "/intro/2023/pre_winter/cont_program.asp" -->
    <!-- //프로그램 -->

</div>
<!--//cont04-->


<p class="line-banner nav-end"><img src="<%=Application("img_path_russel")%>/m_russel/core/pre_winter/line_banner.jpg" alt="띠배너"></p>
