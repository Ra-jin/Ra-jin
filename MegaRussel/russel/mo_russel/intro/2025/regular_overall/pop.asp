<!-- 공통 레이어팝업 -->
<div class="layer-w-pop js-w-pop">
    <div class="layer-box">
        <a href="javascript:;" class="bt-close js-bt-close"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close.png" alt="닫기"></a>
        <div class="inner">
            <% If campus_code = "CD0250" Then '부천 %>
            <div class="daily_type01">
                <p class="title">종합반 학습 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:300%">
                        <colgroup>
                            <col style="width:64px;">
                            <col style="width:64px;">
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
                                <th colspan="2">구분</th>
                                <th>시작시간</th>
                                <th>종료시간</th>
                                <th>자습시간</th>
                                <th>월요일</th>
                                <th>화요일</th>
                                <th>수요일</th>
                                <th>목요일</th>
                                <th>금요일</th>
                                <th>토요일</th>
                                <th>일요일 <br>(공휴일)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-gray2" rowspan="4">오전</th>
                                <td class="bg-gray2 sticky">1교시</td>
                                <td>AM 08:00</td>
                                <td>AM 08:30</td>
                                <td>30분</td>
                                <td colspan="6">-</td>
                                <td rowspan="13">선택자습 <br> (*급식 미진행)</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">2교시</td>
                                <td>AM 08:40</td>
                                <td>AM 10:00</td>
                                <td>80분</td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt g">수학A,B</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어A</span></td>
                                <td rowspan="3"><span class="ico-txt g">수학A,B</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어A</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">활력시간</td>
                                <td>AM 10:20</td>
                                <td>AM 10:30</td>
                                <td>10분</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">3교시</td>
                                <td>AM 10:30</td>
                                <td>PM 12:10</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">점심식사</th>
                                <td>PM 12:10</td>
                                <td>PM 01:10</td>
                                <td>60분</td>
                                <td colspan="6">원내 급식 진행</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">일일 학습 콘텐츠</th>
                                <td>PM 01:10</td>
                                <td>PM 01:20</td>
                                <td>10분</td>
                                <td colspan="6">
                                    [월~금 : 주간지 또는 영단어 테스트 / 토 : 영어듣기 / 일 : 자습 ] <br>
                                    (*단, 토요일은 “PM 01:00”부터 영어듣기 진행)
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="4">오후</th>
                                <td class="bg-gray2 sticky">담임조회</td>
                                <td>PM 01:20</td>
                                <td>PM 01:30</td>
                                <td>10분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">4교시</td>
                                <td>PM 01:30</td>
                                <td>PM 02:20</td>
                                <td>50분</td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어B</span></td>
                                <td rowspan="3"><span class="ico-txt r">영어A,B</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어B</span></td>
                                <td rowspan="3"><span class="ico-txt r">영어A,B</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">5교시</td>
                                <td>PM 02:40</td>
                                <td>PM 04:00</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">6교시</td>
                                <td>PM 04:20</td>
                                <td>PM 05:30</td>
                                <td>70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">저녁식사</th>
                                <td>PM 05:30</td>
                                <td>PM 06:40</td>
                                <td>70분</td>
                                <td colspan="6">원내 급식 진행</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">저녁</th>
                                <td class="bg-gray2 sticky">7교시</td>
                                <td>PM 06:40</td>
                                <td>PM 08:10</td>
                                <td>90분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">8교시</td>
                                <td>PM 08:30</td>
                                <td>PM 10:00</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">담임 종례 및 귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:20</td>
                                <td>20분</td>
                                <td colspan="7">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2">심야</th>
                                <td class="bg-gray2 sticky">9교시</td>
                                <td>PM 10:20</td>
                                <td>PM 12:00</td>
                                <td>100분</td>
                                <td colspan="6"><span class="ico-txt b">선택자습</span></td>
                                <td>(이용불가)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="daily_type01">
                <p class="title">종합반 학습 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:250%">
                        <colgroup>
                            <col style="width:64px" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>요일</th>
                                <th>월</th>
                                <th>화</th>
                                <th>수</th>
                                <th>목</th>
                                <th>금</th>
                                <th>토</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="3" class="bg-sky">
                                    오전<br>
                                    (8:40~<br>
                                    12:10)
                                </th>
                                <td></td>
                                <td class="sub-pk">국어<br>
                                    강민기T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    김유한T<br>
                                    [주1회]
                                </td>
                                <td class="sub-pk">국어<br>
                                    강민기T<br>
                                    [주1회]
                                </td>
                                <td class="sub-gr">영어<br>
                                    김민경T<br>
                                    [주1회]
                                </td>
                                <td class="sub-dg" style="position:relative;">생활과윤리<br>
                                    차현호T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="sub-gr">영어<br>
                                    김민경T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    김형민T<br>
                                    [주1회]
                                </td>
                                <td class="sub-gr">영어<br>
                                    김민경T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    최봉서T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th rowspan="3" class="bg-sky">
                                    오후<br>
                                    (13:30<br>
                                    ~<br>
                                    17:00)
                                </th>
                                <td class="sub-pp">지구과학I<br>
                                    양이석T<br>
                                    [주1회]
                                </td>
                                <td class="sub-pp">물리학I<br>
                                    박민규T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                    김유한T<br>
                                    [주1회]
                                </td>
                                <td class="sub-pp">생명과학I<br>
                                    박소영T<br>
                                    [주1회]
                                </td>
                                <td class="sub-bl">수학<span class="fz12">(미적분)</span><br>
                                    김유한T<br>
                                    [주1회]
                                </td>
                                <td class="sub-dg" style="position:relative;">국어<br>
                                    신용선T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="sub-bl">수학<span class="fz12">(미적분)</span><br>
                                    최봉서T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td class="sub-bl">수학<span class="fz12">(확통)</span><br>
                                    김형민T<br>
                                    [주1회]
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <td></td>
                                <td></td>
                                <td class="sub-pp">화학I<br>
                                    박건수T<br>
                                    [주1회]
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">
                                    저녁<br>
                                    (18:30<br>
                                    ~<br>
                                    22:00)
                                </th>
                                <td class="sub-dg" style="position:relative;">수학<span class="fz12">(수I/수II)</span><br>
                                    김가람T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">정치와법<br>
                                    박지은T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">수학<span class="fz12">(수I/수II)</span><br>
                                    장영진T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">사회문화<br>
                                    정정T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">수리논술<br>
                                    유홍조T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">사회문화<br>
                                    손고운T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td class="sub-dg" style="position:relative;">윤리와사상<br>
                                    차현호T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td class="sub-dg" style="position:relative;">인문논술<br>
                                    장진석T<br>
                                    [주1회]
                                    <label for="">50%<br>지원</label>
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt">※ 학원 운영 상황에 따라 수업은 변경될 수 있습니다.</p>
            </div>

            <div class="daily_type02">
                <p class="title">2026 바른공부 자습전용관 표준 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:200%">
                        <colgroup>
                            <col style="width:64px" />
                            <col style="width:10%" />
                            <col style="width:30%" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                            <col style="width:auto" />
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th class="sticky">교시</th>
                                <th colspan="2">시간</th>
                                <th>월~토</th>
                                <th>일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th rowspan="3" class="bg-sky">오전</th>
                                <td class="bg-sky sticky">1교시<br>
                                (조회)</td>
                                <td class="bg-sky">08:00 ~ 08:30
                                </td>
                                <td class="bg-sky">30분</td>
                                <td rowspan="3">의무</td>
                                <td class="bg-empty">
                                    미운영
                                </td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">2교시</td>
                                <td class="bg-sky">08:50 ~ 10:10
                                </td>
                                <td class="bg-sky">80분</td>
                                <td class="sub-or" rowspan="2">선택</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">3교시</td>
                                <td class="bg-sky">10:30 ~ 12:10
                                </td>
                                <td class="bg-sky">100분</td>
                            </tr>
                            <tr class="bg-gray">
                                <th colspan="2" class="bg-gray">점심시간</th>
                                <td>12:10 ~ 13:10
                                </td>
                                <td>60분</td>
                                <td colspan="2">
                                </td>
                            </tr>
                            <tr>
                                <th rowspan="3" class="bg-sky">오후</th>
                                <td class="bg-sky sticky">4교시</td>
                                <td class="bg-sky">13:10 ~ 14:20
                                </td>
                                <td class="bg-sky">70분</td>
                                <td rowspan="3">의무</td>
                                <td class="sub-or" rowspan="3">선택</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">5교시</td>
                                <td class="bg-sky">14:40 ~ 16:10
                                </td>
                                <td class="bg-sky">90분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">6교시</td>
                                <td class="bg-sky">16:30 ~ 17:30
                                </td>
                                <td class="bg-sky">60분</td>
                            </tr>
                            <tr class="bg-gray">
                                <th colspan="2" class="bg-gray">저녁시간</th>
                                <td>17:30 ~ 18:40
                                </td>
                                <td>70분</td>
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">저녁</th>
                                <td class="bg-sky sticky">7교시<br>
                                (종례)</td>
                                <td class="bg-sky">18:40 ~ 20:10
                                </td>
                                <td class="bg-sky">90분</td>
                                <td rowspan="2">의무</td>
                                <td class="sub-or" rowspan="2">선택</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">8교시</td>
                                <td class="bg-sky">20:30 ~ 22:00
                                </td>
                                <td class="bg-sky">90분</td>
                            </tr>
                            <tr class="bg-gray">
                                <th colspan="2" class="bg-gray">귀가시간</th>
                                <td>22:00 ~ 22:10
                                </td>
                                <td>10분</td>
                                <td colspan="2"></td>
                            </tr>
                            <tr>
                                <th class="bg-sky" colspan="2">심야 1교시</th>
                                <td class="bg-sky">22:10 ~ 23:00
                                </td>
                                <td class="bg-sky">50분</td>
                                <td rowspan="2">신청자</td>
                                <td class="bg-empty" rowspan="2">미운영</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" colspan="2">심야 2교시</th>
                                <td class="bg-sky">23:10 ~ 24:00
    
                                </td>
                                <td class="bg-sky">50분</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="l-txt">* 학원 사정 상 운영 시간은 변경 될 수 있습니다.</p>
            </div>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div class="daily_type01">
                <p class="title">종합반 학습 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:300%">
                        <colgroup>
                            <col style="width:64px;">
                            <col style="width:64px;">
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
                                <th colspan="2">구분</th>
                                <th>시작시간</th>
                                <th>종료시간</th>
                                <th>자습시간</th>
                                <th>월요일</th>
                                <th>화요일</th>
                                <th>수요일</th>
                                <th>목요일</th>
                                <th>금요일</th>
                                <th>토요일</th>
                                <th>일요일 <br>(공휴일)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-gray2" rowspan="4">오전</th>
                                <td class="bg-gray2 sticky">0교시</td>
                                <td>AM 07:00</td>
                                <td>AM 07:50</td>
                                <td>50분</td>
                                <td colspan="6"><span class="ico-txt b"><span class="ico-txt b">선택자습</span></span></td>
                                <td rowspan="11"><span class="ico-txt b">선택자습</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">1교시</td>
                                <td>AM 08:00</td>
                                <td>AM 08:40</td>
                                <td>40분</td>
                                <td colspan="6"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">2교시</td>
                                <td>AM 08:50</td>
                                <td>AM 10:10</td>
                                <td>80분</td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt v">탐구A</span></td>
                                <td rowspan="2"><span class="ico-txt g">수학A</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt p">국어특강 <br> (선택 수업)</span></td>
                                <td rowspan="2"><span class="ico-txt r">영어 <br> (선택 수업)</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">3교시</td>
                                <td>AM 10:30</td>
                                <td>PM 12:10</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">점심식사</th>
                                <td>PM 12:10</td>
                                <td>PM 01:10</td>
                                <td>60분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="3">오후</th>
                                <td class="bg-gray2 sticky">4교시</td>
                                <td>PM 01:10</td>
                                <td>PM 02:20</td>
                                <td>70분</td>
                                <td rowspan="3"><span class="ico-txt n">수리논술<br>(선택 수업)</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt v">탐구B</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt g">수학B</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">5교시</td>
                                <td>PM 02:40</td>
                                <td>PM 04:00</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">6교시</td>
                                <td>PM 04:20</td>
                                <td>PM 05:30</td>
                                <td>70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">저녁식사</th>
                                <td>PM 05:30</td>
                                <td>PM 06:40</td>
                                <td>70분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">저녁</th>
                                <td class="bg-gray2 sticky">7교시</td>
                                <td>PM 06:40</td>
                                <td>PM 08:10</td>
                                <td>90분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">8교시</td>
                                <td>PM 08:30</td>
                                <td>PM 10:00</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:30</td>
                                <td>30분</td>
                                <td colspan="7">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">심야</th>
                                <td class="bg-gray2 sticky">9교시</td>
                                <td>PM 10:30</td>
                                <td>PM 11:40</td>
                                <td>70분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt b">선택자습</span></td>
                                <td rowspan="2">(이용불가)</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">10교시</td>
                                <td>PM 11:50</td>
                                <td>AM 01:00</td>
                                <td>70분</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="l-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
            </div>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <div class="daily_type01">
                <p class="title">종합반 학습 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:300%">
                        <colgroup>
                            <col style="width:64px;">
                            <col style="width:64px;">
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
                                <th colspan="2">구분</th>
                                <th>시작시간</th>
                                <th>종료시간</th>
                                <th>자습시간</th>
                                <th>월요일</th>
                                <th>화요일</th>
                                <th>수요일</th>
                                <th>목요일</th>
                                <th>금요일</th>
                                <th>토요일</th>
                                <th>일요일 <br>(공휴일)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-gray2" rowspan="4">오전</th>
                                <td class="bg-gray2 sticky">0교시</td>
                                <td>AM 07:00</td>
                                <td>AM 07:50</td>
                                <td>50분</td>
                                <td colspan="6"><span class="ico-txt b"><span class="ico-txt b">선택자습</span></span></td>
                                <td rowspan="11"><span class="ico-txt b">선택자습</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">1교시</td>
                                <td>AM 08:00</td>
                                <td>AM 08:40</td>
                                <td>40분</td>
                                <td colspan="6"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">2교시</td>
                                <td>AM 08:50</td>
                                <td>AM 10:10</td>
                                <td>80분</td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt v">탐구A</span></td>
                                <td rowspan="2"><span class="ico-txt g">수학A</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt p">국어특강 <br> (선택 수업)</span></td>
                                <td rowspan="2"><span class="ico-txt r">영어 <br> (선택 수업)</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">3교시</td>
                                <td>AM 10:30</td>
                                <td>PM 12:10</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">점심식사</th>
                                <td>PM 12:10</td>
                                <td>PM 01:10</td>
                                <td>60분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="3">오후</th>
                                <td class="bg-gray2 sticky">4교시</td>
                                <td>PM 01:10</td>
                                <td>PM 02:20</td>
                                <td>70분</td>
                                <td rowspan="3"><span class="ico-txt n">수리논술<br>(선택 수업)</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt v">탐구B</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt g">수학B</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">5교시</td>
                                <td>PM 02:40</td>
                                <td>PM 04:00</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">6교시</td>
                                <td>PM 04:20</td>
                                <td>PM 05:30</td>
                                <td>70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">저녁식사</th>
                                <td>PM 05:30</td>
                                <td>PM 06:40</td>
                                <td>70분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">저녁</th>
                                <td class="bg-gray2 sticky">7교시</td>
                                <td>PM 06:40</td>
                                <td>PM 08:10</td>
                                <td>90분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">8교시</td>
                                <td>PM 08:30</td>
                                <td>PM 10:00</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:30</td>
                                <td>30분</td>
                                <td colspan="7">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">심야</th>
                                <td class="bg-gray2 sticky">9교시</td>
                                <td>PM 10:30</td>
                                <td>PM 11:40</td>
                                <td>70분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt b">선택자습</span></td>
                                <td rowspan="2">(이용불가)</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">10교시</td>
                                <td>PM 11:50</td>
                                <td>AM 01:00</td>
                                <td>70분</td>
                            </tr>
                        </tbody>
                    </table>
                    <p class="l-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
                </div>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="daily_type01">
                <p class="title">종합반 학습 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:300%">
                        <colgroup>
                            <col style="width:64px;">
                            <col style="width:64px;">
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
                                <th colspan="2">구분</th>
                                <th>시작시간</th>
                                <th>종료시간</th>
                                <th>자습시간</th>
                                <th>월요일</th>
                                <th>화요일</th>
                                <th>수요일</th>
                                <th>목요일</th>
                                <th>금요일</th>
                                <th>토요일</th>
                                <th>일요일 <br>(공휴일)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-gray2" rowspan="4">오전</th>
                                <td class="bg-gray2 sticky">0교시</td>
                                <td>AM 07:00</td>
                                <td>AM 07:50</td>
                                <td>50분</td>
                                <td colspan="6"><span class="ico-txt b"><span class="ico-txt b">선택자습</span></span></td>
                                <td rowspan="11"><span class="ico-txt b">선택자습</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">1교시</td>
                                <td>AM 08:00</td>
                                <td>AM 08:40</td>
                                <td>40분</td>
                                <td colspan="6"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">2교시</td>
                                <td>AM 08:50</td>
                                <td>AM 10:10</td>
                                <td>80분</td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt v">탐구A</span></td>
                                <td rowspan="2"><span class="ico-txt g">수학A</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt p">국어특강 <br> (선택 수업)</span></td>
                                <td rowspan="2"><span class="ico-txt r">영어 <br> (선택 수업)</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">3교시</td>
                                <td>AM 10:30</td>
                                <td>PM 12:10</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">점심식사</th>
                                <td>PM 12:10</td>
                                <td>PM 01:10</td>
                                <td>60분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="3">오후</th>
                                <td class="bg-gray2 sticky">4교시</td>
                                <td>PM 01:10</td>
                                <td>PM 02:20</td>
                                <td>70분</td>
                                <td rowspan="3"><span class="ico-txt n">수리논술<br>(선택 수업)</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt v">탐구B</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt g">수학B</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">5교시</td>
                                <td>PM 02:40</td>
                                <td>PM 04:00</td>
                                <td>80분</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">6교시</td>
                                <td>PM 04:20</td>
                                <td>PM 05:30</td>
                                <td>70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">저녁식사</th>
                                <td>PM 05:30</td>
                                <td>PM 06:40</td>
                                <td>70분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">저녁</th>
                                <td class="bg-gray2 sticky">7교시</td>
                                <td>PM 06:40</td>
                                <td>PM 08:10</td>
                                <td>90분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">8교시</td>
                                <td>PM 08:30</td>
                                <td>PM 10:00</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:30</td>
                                <td>30분</td>
                                <td colspan="7">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">심야</th>
                                <td class="bg-gray2 sticky">9교시</td>
                                <td>PM 10:30</td>
                                <td>PM 11:40</td>
                                <td>70분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt b">선택자습</span></td>
                                <td rowspan="2">(이용불가)</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">10교시</td>
                                <td>PM 11:50</td>
                                <td>AM 01:00</td>
                                <td>70분</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="l-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
            </div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="daily_type01">
                <p class="title">이과 종합반 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:300%">
                        <colgroup>
                            <col style="width:64px;">
                            <col style="width:64px;">
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
                                <th colspan="2">구분</th>
                                <th>시작시간</th>
                                <th>종료시간</th>
                                <th>자습시간</th>
                                <th>월요일</th>
                                <th>화요일</th>
                                <th>수요일</th>
                                <th>목요일</th>
                                <th>금요일</th>
                                <th>토요일</th>
                                <th>일요일 <br>(공휴일)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-gray2" rowspan="3">오전</th>
                                <td class="bg-gray2 sticky">1교시</td>
                                <td>AM 08:00</td>
                                <td>AM 08:50</td>
                                <td>50분</td>
                                <td colspan="6"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="11">선택자습</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">2교시</td>
                                <td>AM 09:00</td>
                                <td>AM 10:20</td>
                                <td>80분</td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt g">수학C</span></td>
                                <td rowspan="2"><span class="ico-txt p">탐구A</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt g">수학B</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">3교시</td>
                                <td>AM 10:40</td>
                                <td>PM 12:20</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">점심식사</th>
                                <td>PM 12:20</td>
                                <td>PM 01:30</td>
                                <td>70분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="4">오후</th>
                                <td class="bg-gray2 sticky">4교시</td>
                                <td>PM 01:30</td>
                                <td>PM 01:55</td>
                                <td>25분</td>
                                <td rowspan="4"><span class="ico-txt g">수학C</span></td>
                                <td rowspan="2" style="height: 44px;"><span class="ico-txt g">수학A</span></td>
                                <td rowspan="4"><span class="ico-txt p">탐구C</span></td>
                                <td rowspan="2" style="height: 44px;"><span class="ico-txt g">수학A</span></td>
                                <td rowspan="4"><span class="ico-txt p">국어B</span></td>
                                <td rowspan="2" style="height: 44px;"><span class="ico-txt p">탐구C</span></td>
                            </tr>
                            <tr>
                                <td rowspan="2" class="bg-gray2 sticky">5교시</td>
                                <td rowspan="2">PM 02:00</td>
                                <td rowspan="2">PM 03:30</td>
                                <td rowspan="2">90분</td>
                            </tr>
                            <tr>
                                <td rowspan="2"><span class="ico-txt p">탐구B</span></td>
                                <td rowspan="2"><span class="ico-txt g">수학B</span></td>
                                <td rowspan="2"><span class="ico-txt r">영어</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">6교시</td>
                                <td>PM 03:50</td>
                                <td>PM 05:20</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">저녁식사</th>
                                <td>PM 05:20</td>
                                <td>PM 06:30</td>
                                <td>70분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">저녁</th>
                                <td class="bg-gray2 sticky">7교시</td>
                                <td>PM 06:30</td>
                                <td>PM 08:00</td>
                                <td>90분</td>
                                <td rowspan="2"><span class="ico-txt p">국어A</span></td>
                                <td colspan="5" rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">8교시</td>
                                <td>PM 08:20</td>
                                <td>PM 10:00</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:10</td>
                                <td>10분</td>
                                <td colspan="7">-</td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-gray2">심야</th>
                                <td class="bg-gray2 sticky">9교시</td>
                                <td>PM 10:10</td>
                                <td>PM 11:00</td>
                                <td>50분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt b">선택자습</span></td>
                                <td rowspan="2">(이용불가)</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">10교시</td>
                                <td>PM 11:10</td>
                                <td>PM 12:00</td>
                                <td>50분</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="l-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
            </div>

            <div class="daily_type02">
                <p class="title">문과 종합반 시간표</p>
                <div class="tbl-scroll-x">
                    <table class="tbl-type03 tbl-center" style="width:300%">
                        <colgroup>
                            <col style="width:64px;">
                            <col style="width:64px;">
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
                                <th colspan="2">구분</th>
                                <th>시작시간</th>
                                <th>종료시간</th>
                                <th>자습시간</th>
                                <th>월요일</th>
                                <th>화요일</th>
                                <th>수요일</th>
                                <th>목요일</th>
                                <th>금요일</th>
                                <th>토요일</th>
                                <th>일요일 <br>(공휴일)</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-gray2" rowspan="3">오전</th>
                                <td class="bg-gray2 sticky">1교시</td>
                                <td>AM 08:00</td>
                                <td>AM 08:50</td>
                                <td>50분</td>
                                <td colspan="6"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="10">선택자습</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">2교시</td>
                                <td>AM 09:00</td>
                                <td>AM 10:20</td>
                                <td>80분</td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt g">수학A</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt v">수학C</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">3교시</td>
                                <td>AM 10:40</td>
                                <td>PM 12:20</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">점심식사</th>
                                <td>PM 12:20</td>
                                <td>PM 01:30</td>
                                <td>70분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="3">오후</th>
                                <td class="bg-gray2 sticky">4교시</td>
                                <td>PM 01:30</td>
                                <td>PM 01:55</td>
                                <td>25분</td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="3"><span class="ico-txt n">수학 <br> [확통]</span></td>
                                <td rowspan="3"><span class="ico-txt g">수학B</span></td>
                                <td rowspan="3"><span class="ico-txt p">국어B</span></td>
                                <td rowspan="3"><span class="ico-txt r">영어</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">5교시</td>
                                <td>PM 02:00</td>
                                <td>PM 03:30</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">6교시</td>
                                <td>PM 03:50</td>
                                <td>PM 05:20</td>
                                <td>90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">저녁식사</th>
                                <td>PM 05:20</td>
                                <td>PM 06:30</td>
                                <td>70분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-gray2" rowspan="2">저녁</th>
                                <td class="bg-gray2 sticky">7교시</td>
                                <td>PM 06:30</td>
                                <td>PM 08:00</td>
                                <td>90분</td>
                                <td rowspan="2"><span class="ico-txt p">국어A</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                                <td rowspan="2"><span class="ico-txt s">의무자습 <br> /상담</span></td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">8교시</td>
                                <td>PM 08:20</td>
                                <td>PM 10:00</td>
                                <td>100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-wh">귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:10</td>
                                <td>10분</td>
                                <td colspan="7">-</td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-gray2">심야</th>
                                <td class="bg-gray2 sticky">9교시</td>
                                <td>PM 10:10</td>
                                <td>PM 11:00</td>
                                <td>50분</td>
                                <td colspan="6" rowspan="2"><span class="ico-txt b">선택자습</span></td>
                                <td rowspan="2">(이용불가)</td>
                            </tr>
                            <tr>
                                <td class="bg-gray2 sticky">10교시</td>
                                <td>PM 11:10</td>
                                <td>PM 12:00</td>
                                <td>50분</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="l-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
            </div>
            <% End if %>
        </div>
    </div>
</div>