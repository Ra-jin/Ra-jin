<div class="cont js-cont-wrap <%=campusName%>">
    <!-- cont06 -->
    <div class="cont06 <%=campusName%>">
        <% If campus_code = "CD0340" or campus_code = "CD0342" or campus_code = "CD0349" Then '코어광주/대구/울산 %>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont05_tit01.jpg" alt="러셀CORE 광주 재수종합반에서는 서울에 가지 않아도 서울보다 더 나은 수업 환경을 제공합니다." /></p>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont05_img.jpg" alt="" /></div>
        </div>
        <% End If %>
        <div class="inner">
            <!-- 시수안내 -->
            <div class="box-con box1">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont05_tit02.png" alt="러셀 재수종합반은 최소 의무수업으로 충분한 자습시간이 확보되는 슬림한 종합반입니다." /></p>

                <p class="s-tit">
                    기존 종합반 대비 <b>40%이상 의무수업이 축소*된 <br>
                    주 <%=time_txt%>시간 수업</b>으로 <b>충분한 자습시간을  <br>
                    확보</b>할 수 있습니다.</p>
                <p class="txt-ss">
                    (*기존 종합반 30T~42T 대비 러셀 종합반 <%=time_txt%>T 비교 시)
                </p>

                <% If campus_code = "CD0340" Then '코어광주 %>
                <!-- 수업시수 -->
                <div class="swiper-container time-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="tbl-tit">| 정규 수업</p>
                            <table class="tbl-type01 tbl-center">
                                <colgroup>
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>영어</th>
                                        <th>과탐</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>주간 수업시간</th>
                                        <td>3.5T</td>
                                        <td>7T</td>
                                        <td>3.5T</td>
                                        <td>7T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="swiper-slide">
                            <p class="tbl-tit">| 정규 수업(TEST)</p>
                            <table class="tbl-type01 tbl-center">
                                <colgroup>
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어/수학/영어 TEST<br>(일일/주간)</th>
                                        <th>영어듣기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>주간 수업시간</th>
                                        <td>5.1T</td>
                                        <td>3T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-pagination type10"></div>
                </div>
                <!-- //수업시수 -->
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01 tbl-center" style="width: 200%;">
                        <colgroup>
                            <col style="width: 63px">
                            <col style="width: auto;">
                            <col style="width: auto;">
                            <col style="width: auto;">
                            <col style="width: auto;">
                            <col style="width: auto;">
                            <col style="width: auto;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th></th>
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
                                <th class="bg-sky">오전</th>
                                <td class="bg-kor">국어(독서) <br> 엄정애T <br> [월수/주2회] </td>
                                <td class="bg-math">수학 <br> (수Ⅰ/수Ⅱ) <br> 김유한T <br> [화목/주2회] </td>
                                <td class="bg-kor">국어(문학) <br> 엄정애T <br> [월수/주2회] </td>
                                <td class="bg-math">수학 <br> (수Ⅰ/수Ⅱ) <br> 김유한T <br> [화목/주2회] </td>
                                <td class="bg-sci">물리학Ⅰ<br> 박민규T <br> [주1회] </td>
                                <td class="bg-sci">지구과학Ⅰ<br> 양이석T <br> [주1회] </td>
                            </tr>
                            <tr>
                                <th class="bg-sky">오후</th>
                                <td class="bg-sci">생명과학Ⅰ<br> 황민준T <br> [주1회] </td>
                                <td class="bg-math">수학(미적분) <br> 김형민T <br> [주1회] </td>
                                <td class="bg-sci">화학Ⅰ <br> 박건수T <br> [주1회] </td>
                                <td></td>
                                <td class="bg-eng">영어<br> 김선덕T <br> [주1회] </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th class="bg-sky">저녁</th>
                                <td></td>
                                <td class="bg-math">수학(질의응답) <br> 김형민T <br> [주1회] </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <!-- 수업시수 -->
                <div class="swiper-container time-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="tbl-tit">| 필수 수업</p>
                            <table class="tbl-type01 tbl-center">
                                <colgroup>
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>주간 수업시간</th>
                                        <td>3.5T</td>
                                        <td>7T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="swiper-slide">
                            <p class="tbl-tit">| 필수 수업(TEST)</p>
                            <table class="tbl-type01 tbl-center">
                                <colgroup>
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어/수학/영어 TEST<br>(일일/주간)</th>
                                        <th>영어듣기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>주간 수업시간</th>
                                        <td>9T</td>
                                        <td>2.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="swiper-slide">
                            <p class="tbl-tit">| 선택 수업</p>
                            <table class="tbl-type01 tbl-center">
                                <colgroup>
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어특강</th>
                                        <th>영어</th>
                                        <th>논술</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>주간 수업시간</th>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-pagination type10"></div>
                </div>
                <p class="r-txt mt10">
                    ※ 사회탐구, 인문논술의 경우 해당 단과 회차별 금액이 추가됩니다.
                </p>
                <!-- //수업시수 -->
                <% ElseIf campus_code = "CD0349" Then '울산 %>
                <!-- 수업시수 -->
                <div class="swiper-container time-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="tbl-tit">| 필수 수업</p>
                            <table class="tbl-type01 tbl-center">
                                <colgroup>
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>영어</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>주간 수업시간</th>
                                        <td>7T</td>
                                        <td>10.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="swiper-slide">
                            <p class="tbl-tit">| 필수 수업(TEST)</p>
                            <table class="tbl-type01 tbl-center">
                                <colgroup>
                                    <col style="width:auto">
                                    <col style="width:auto">
                                    <col style="width:auto">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어/수학/영어 TEST<br>(일일/주간)</th>
                                        <th>영어듣기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>주간 수업시간</th>
                                        <td>9T</td>
                                        <td>2.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-pagination type10"></div>
                </div>
                <!-- //수업시수 -->
                <% End If %>
            </div>
            <!-- //시수안내 -->

            <!-- 강사진 -->
            <div class="box-con box2">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont05_tit03.png" alt="러셀 CORE광주 종합반에는 강의력과 관리력을 갖춘 힘 있는 강사진의 수업이 있습니다." /></p>
                <p class="s-tit">
                    <b>러셀 강남&middot;대치&middot;기숙 및 메가스터디 인강에 출강</b>하는 <br> 강사진의 <b>현장강의</b>가 진행됩니다.
                </p>
            </div>
            <!-- //강사진 -->
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/first_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
            
        <div class="inner">
            <!-- 학습 시간표 -->
            <div class="box-con box3 <%=campusName%>">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont05_tit04.png" alt="러셀 재수종합반 학습 시간표 (예시)" /></p>
                <p class="s-tit">수능 리듬에 맞춘 수업과 자습시간 구성으로 <br> <b>규칙적인 학습습관을 체화</b>할 수 있습니다.
                </p>
                <% If campus_code = "CD0340" Then '코어광주 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01 tbl-center" style="width: 640px;">
                        <colgroup>
                            <col style="width:63px">
                            <col style="width:63px">
                            <col style="width:15%;">
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
                                <th colspan="2">교시</th>
                                <th colspan="2">시간</th>
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
                                <th class="bg-sky" rowspan="4">오전</th>
                                <td class="bg-sky sticky">0교시</td>
                                <td class="bg-sky">AM 07:00 - 07:50</td>
                                <td class="bg-sky">50분</td>
                                <td colspan="6">선택자습</td>
                                <td rowspan="11">선택<br>
                                자습</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">1교시</td>
                                <td class="bg-sky">AM 08:00 - 08:40</td>
                                <td class="bg-sky">40분</td>
                                <td colspan="6">영어단어 TEST</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">2교시</td>
                                <td class="bg-sky">AM 08:50 - 10:10</td>
                                <td class="bg-sky">80분</td>
                                <td rowspan="2">의무자습<br>/상담</td>
                                <td rowspan="2">탐구1</td>
                                <td rowspan="2">수학A</td>
                                <td rowspan="2">의무자습<br>/상담</td>
                                <td rowspan="2">국어</td>
                                <td rowspan="2">영어<br></td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">3교시</td>
                                <td class="bg-sky">AM 10:30 - 12:10</td>
                                <td class="bg-sky">100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">점심시간</th>
                                <td class="bg-sky">PM 12:10 - 01:10</td>
                                <td class="bg-sky">60분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="3">오후</th>
                                <td class="bg-sky sticky">4교시</td>
                                <td class="bg-sky">PM 01:10 - 02:20</td>
                                <td class="bg-sky">70분</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">탐구2</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">수학B</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">5교시</td>
                                <td class="bg-sky">PM 02:40 - 04:00</td>
                                <td class="bg-sky">80분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">6교시</td>
                                <td class="bg-sky">PM 04:20 - 05:30</td>
                                <td class="bg-sky">70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">저녁시간</th>
                                <td class="bg-sky">PM 05:30 - 06:40</td>
                                <td class="bg-sky">70분</td>
                                <td colspan="6"></td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="2">저녁</th>
                                <td class="bg-sky sticky">7교시</td>
                                <td class="bg-sky">PM 06:40 - 08:10</td>
                                <td class="bg-sky">90분</td>
                                <td colspan="6" rowspan="2">의무자습/상담</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">8교시</td>
                                <td class="bg-sky">PM 08:30 - 10:00</td>
                                <td class="bg-sky">90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">귀가</th>
                                <td class="bg-sky">PM 10:00 - 10:30</td>
                                <td class="bg-sky">30분</td>
                                <td colspan="7">-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt10">※ 시간표 확정 후 변동될 수 있습니다.</p>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01 tbl-center" style="width: 640px;">
                        <colgroup>
                            <col style="width:63px" />
                            <col style="width:63px" />
                            <col style="width:11%" />
                            <col style="width:11%" />
                            <col style="width:10%" />
                            <col style="width:auto" />
                            <col style="width:auto" />
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
                                <th rowspan="5" class="bg-sky">오전</th>
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
                                    <span class="ico-txt b">의무자습</span>
                                    <span class="ico-txt v">수업</span>
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
                                <th colspan="2" style="background: #fff;">점심식사</th>
                                <td>PM 12:10</td>
                                <td>PM 01:10</td>
                                <td>60분</td>
                                <td colspan="3">-</td>
                            </tr>
                            <tr>
                                <th rowspan="4" class="bg-sky">오후</th>
                                <td class="sticky">4교시</td>
                                <td>PM 01:10</td>
                                <td>PM 02:20</td>
                                <td>70분</td>
                                <td rowspan="4" colspan="2">
                                    <span class="ico-txt b">의무자습</span>
                                    <span class="ico-txt v">수업</span>
                                    <span class="ico-txt r">상담</span>
                                </td>
                                <td><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <td class="sticky">5교시</td>
                                <td>PM 02:40</td>
                                <td>PM 04:00</td>
                                <td>80분</td>
                                <td><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <td class="sticky">종례</td>
                                <td>PM 04:20</td>
                                <td>PM 04:10</td>
                                <td>10분</td>
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
                                <th colspan="2" style="background: #fff;">저녁식사</th>
                                <td>PM 05:30</td>
                                <td>PM 06:40</td>
                                <td>70분</td>
                                <td colspan="3">-</td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">저녁	</th>
                                <td class="sticky">7교시</td>
                                <td>PM 06:40</td>
                                <td>PM 08:10</td>
                                <td>90분</td>
                                <td rowspan="2" colspan="2">
                                    <span class="ico-txt b">의무자습</span>
                                    <span class="ico-txt v">수업(정규반 단과)</span>
                                    <span class="ico-txt r">상담</span>
                                </td>
                                <td><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <td class="sticky">8교시</td>
                                <td>PM 08:30</td>
                                <td>PM 10:00</td>
                                <td>90분</td>
                                <td><span class="ico-txt s">선택자습</span></td>
                            </tr>
                            <tr>
                                <th colspan="2" style="background: #fff;">귀가</th>
                                <td>PM 10:00</td>
                                <td>PM 10:10</td>
                                <td>10분</td>
                                <td colspan="3">-</td>
                            </tr>
                            <tr>
                                <th rowspan="2" class="bg-sky">심야</th>
                                <td class="sticky">심야자습<br>
                                (1/2교시)</td>
                                <td>PM 10:10</td>
                                <td>AM 00:00</td>
                                <td>50/50분</td>
                                <td rowspan="2" colspan="2"><span class="ico-txt s">선택자습</span></td>
                                <td rowspan="2">(이용불가)</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt10">* 학원사정에 따라 운영시간이 변경될 수 있으니, 학원으로 확인 바랍니다.</p>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01 tbl-center" style="width: 900px;">
                        <colgroup>
                            <col style="width:63px">
                            <col style="width:63px">
                            <col style="width:15%;">
                            <col style="width:8%">
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
                                <th class="bg-sky" rowspan="4">오전</th>
                                <td class="bg-sky sticky">0교시</td>
                                <td class="bg-sky">AM 07:00 - AM 07:50</td>
                                <td class="bg-sky">50분</td>
                                <td colspan="6">선택자습</td>
                                <td rowspan="11">선택자습</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">1교시</td>
                                <td class="bg-sky">AM 08:00 - AM 08:40</td>
                                <td class="bg-sky">40분</td>
                                <td colspan="6" class="bg-gray">영어 프로그램</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">2교시</td>
                                <td class="bg-sky">AM 08:50 - AM 10:10</td>
                                <td class="bg-sky">80분</td>
                                <td rowspan="2" class="bg-non">의무자습<br>/상담</td>
                                <td rowspan="2" class="bg-sci">탐구A</td>
                                <td rowspan="2" class="bg-math">수학A</td>
                                <td rowspan="2" class="bg-non">의무자습<br>/상담</td>
                                <td rowspan="2" class="bg-kor2">국어 특강<br>
                                (선택 수업)</td>
                                <td rowspan="2" class="bg-eng">영어<br>(선택 수업)</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">3교시</td>
                                <td class="bg-sky">AM 10:30 - PM 12:10</td>
                                <td class="bg-sky">100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky b-l-n">점심식사</th>
                                <td class="bg-sky">PM 12:10 - PM 01:10</td>
                                <td class="bg-sky">60분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="3">오후</th>
                                <td class="bg-sky sticky">4교시</td>
                                <td class="bg-sky">PM 01:10 - PM 02:20</td>
                                <td class="bg-sky">70분</td>
                                <td rowspan="3" class="bg-math">수리논술<br>
                                (선택수업)</td>
                                <td rowspan="3" class="bg-kor">국어</td>
                                <td rowspan="3" class="bg-non">의무자습<br>
                                /상담</td>
                                <td rowspan="3" class="bg-khy">탐구B</td>
                                <td rowspan="3" class="bg-non">의무자습<br>
                                /상담</td>
                                <td rowspan="3" class="bg-math2">수학B</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">5교시</td>
                                <td class="bg-sky">PM 02:40 - PM 04:00</td>
                                <td class="bg-sky">80분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">6교시</td>
                                <td class="bg-sky">PM 04:20 - PM 05:30</td>
                                <td class="bg-sky">70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky b-l-n">저녁식사</th>
                                <td class="bg-sky">PM 05:30 - PM 06:30</td>
                                <td class="bg-sky">60분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="2">저녁</th>
                                <td class="bg-sky sticky">7교시</td>
                                <td class="bg-sky">PM 06:30 - PM 08:00</td>
                                <td class="bg-sky">90분</td>
                                <td colspan="6" rowspan="2" class="bg-non">의무자습/상담</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">8교시</td>
                                <td class="bg-sky">PM 08:20 - PM 09:50</td>
                                <td class="bg-sky">90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">귀가</th>
                                <td class="bg-sky">PM 09:50 - PM 10:10</td>
                                <td class="bg-sky">20분</td>
                                <td colspan="7">-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt10">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.</p>
                <% ElseIf campus_code = "CD0349" Then '울산 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01 tbl-center" style="width:250%">
                        <colgroup>
                            <col style="width:63px">
                            <col style="width:63px">
                            <col style="width:15%;">
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
                                <th colspan="2">교시</th>
                                <th colspan="2">시간</th>
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
                                <th class="bg-sky" rowspan="4">오전</th>
                                <td class="bg-sky sticky">0교시</td>
                                <td class="bg-sky">AM 07:00 - 07:50</td>
                                <td class="bg-sky">50분</td>
                                <td colspan="6">선택자습</td>
                                <td rowspan="11">선택<br>
                                자습</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">1교시</td>
                                <td class="bg-sky">AM 08:00 - 08:40</td>
                                <td class="bg-sky">40분</td>
                                <td colspan="6">영어단어 TEST</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">2교시</td>
                                <td class="bg-sky">AM 08:50 - 10:10</td>
                                <td class="bg-sky">80분</td>
                                <td rowspan="2">의무자습<br>/상담</td>
                                <td rowspan="2">탐구1</td>
                                <td rowspan="2">수학A</td>
                                <td rowspan="2">의무자습<br>/상담</td>
                                <td rowspan="2">국어</td>
                                <td rowspan="2">영어<br></td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">3교시</td>
                                <td class="bg-sky">AM 10:30 - 12:10</td>
                                <td class="bg-sky">100분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky b-l-n">점심시간</th>
                                <td class="bg-sky">PM 12:10 - 01:10</td>
                                <td class="bg-sky">60분</td>
                                <td colspan="6">-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="3">오후</th>
                                <td class="bg-sky sticky">4교시</td>
                                <td class="bg-sky">PM 01:10 - 02:20</td>
                                <td class="bg-sky">70분</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">탐구2</td>
                                <td rowspan="3">의무자습<br>
                                /상담</td>
                                <td rowspan="3">수학B</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">5교시</td>
                                <td class="bg-sky">PM 02:40 - 04:00</td>
                                <td class="bg-sky">80분</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">6교시</td>
                                <td class="bg-sky">PM 04:20 - 05:30</td>
                                <td class="bg-sky">70분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky b-l-n">저녁시간</th>
                                <td class="bg-sky">PM 05:30 - 06:30</td>
                                <td class="bg-sky">60분</td>
                                <td colspan="6"></td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="2">저녁</th>
                                <td class="bg-sky sticky">7교시</td>
                                <td class="bg-sky">PM 06:30 - 08:00</td>
                                <td class="bg-sky">90분</td>
                                <td colspan="6" rowspan="2">의무자습/상담</td>
                            </tr>
                            <tr>
                                <td class="bg-sky sticky">8교시</td>
                                <td class="bg-sky">PM 08:30 - 10:00</td>
                                <td class="bg-sky">90분</td>
                            </tr>
                            <tr>
                                <th colspan="2" class="bg-sky">귀가</th>
                                <td class="bg-sky">PM 10:00 - 10:20</td>
                                <td class="bg-sky">20분</td>
                                <td colspan="7">-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt10">* 시간표 확정 후 변동될 수 있습니다.</p>
                <% End If %>
            </div>
            <!-- //학습 시간표 -->
        </div>
    </div>
    <!-- //cont06 -->
</div>