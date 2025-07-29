<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont04 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont04_tit.jpg" alt="러셀ㅇㅇ에는 최상위권 수험생을 위한 수능에 최적화된 시스템이 있습니다."></p>
        <div class="danka-list">
            <ul>
                <li>
                    <p>
                        <%=danka_list01%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list02%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list03%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list04%>
                    </p>
                </li>
            </ul>
        </div>
        <% If campus_code = "CD0250" or campus_code = "CD0341" Then '부천/코어대전 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/teacher_img.jpg" alt="강사진"></p>
        <div class="inner">
            <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
        </div>

        <% If campus_code = "CD0250" Then '부천 %>
        <div class="inner">
            <a class="btn-common" href="https://mrusselbc.megastudy.net/board/notice_view.asp?code=32923">강의계획서 자세히 보기</a>
        </div>
        <% End if %>

        <% Else %>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/regular_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <% End if %>
    </div>

    <div class="cont05 js-cont">
        <% If campus_code = "CD0249" Then '영통 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_tit.jpg" alt="성적 향상을 결과로 증명하는 종합반"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/cont05_tit.jpg" alt="최소한의 의무수업으로 충분한 자습시간이 확보되는 슬림한 종합반"></p>
        <% End if %>
        <div class="inner">
            <!-- 자습시간 슬라이드 -->
            <div class="time-slide swiper-container">
                <div class="swiper-wrapper">
                <% If campus_code = "CD0249" Then '영통 %>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_slide01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_slide02.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_slide03.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_slide04.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_slide05.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_slide06.jpg" alt=""></div>
                <% Else %>
                    <div class="swiper-slide">
                        <!-- title -->
                        <% If campus_code = "CD0342" Then '대구 %>
                        <p class="time-tit">
                            <strong>주17.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                            <span>기존 재수종합반 의무수업 30~42T 대비 최대 58%<sup>1)</sup> 축소</span>
                        </p>
                        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                        <p class="time-tit">
                            <strong>주 17.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                            <span>기존 종합반 의무수업 30~42T 대비 최대 58%<sup>1)</sup> 축소</span>
                        </p>
                        <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                        <p class="time-tit">
                            <strong>주 14T~21T, 꼭 필요한 핵심 수업 구성</strong><br>
                            <span>기존 종합반 의무수업 30~42T 대비 최대 66%<sup>1)</sup> 축소</span>
                        </p>
                        <% Else %>
                        <p class="time-tit">
                            <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                            <span>기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</span>
                        </p>
                        <% End if %>
                        <!-- //title -->
                        
                        <!-- 1번째 table -->
                        <% If campus_code = "CD0342" Then '대구 %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 필수 수업
                            </p>
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
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
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>7T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0349" Then '울산 %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 필수 수업
                            </p>
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
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
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>7T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 필수 수업
                            </p>
                            <table>
                                <colgroup>
                                    <col style="width:%">
                                    <col style="width:%">
                                    <col style="width:%">
                                    <col style="width:%">
                                    <col style="width:%">
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
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0250" Then '부천 %>
                        <div class="tbl-wrap">
                            <p>
                                <span>|</span> 필수 수업
                            </p>
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
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
                                        <td>
                                            주간<br>
                                            수업시간
                                        </td>
                                        <td>7T</td>
                                        <td>7T</td>
                                        <td>7T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                        <div class="tbl-wrap">
                            <p>
                                <span>|</span> 이과전문관 필수 수업 (14T~21T)
                            </p>
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:16%">
                                    <col style="width:16%">
                                    <col style="width:16%">
                                    <col style="width:16%">
                                    <col style="width:16%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>영어</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td rowspan="2">
                                            주간<br>
                                            수업시간
                                        </td>
                                        <td rowspan="2">3.5T</td>
                                        <td>공통 3.5T</td>
                                        <td rowspan="2">3.5T</td>
                                        <td rowspan="2">3.5T</td>
                                        <td rowspan="2">3.5T</td>
                                    </tr>
                                    <tr>
                                        <td style="border-left:1px solid #ddd">선택 3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="r-txt mt10 txt-red bold">*국/수/영/탐 중 필요한 과목을 선택하여 최소 14T 이상 수강</p>
                        <% End if %>
                        <!-- //1번째 table -->
                        
                        <!-- 2번째 table -->
                        <% If campus_code = "CD0342" Then '대구 %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 선택 수업(택1)</p>
                            <table>
                                <colgroup>
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
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
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0349" Then '울산 %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 선택 수업 (택1)</p>
                            <table>
                                <colgroup>
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>국어특강 <br> (언매/화작)</th>
                                        <th>영어</th>
                                        <th>수리논술</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 선택 수업(택1)</p>
                            <table>
                                <colgroup>
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
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
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0250" Then '부천 %>
                        <div class="tbl-wrap">
                            <p>
                                <span>|</span> 선택 수업(택1)
                            </p>
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                    <col style="width:20%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>수학</th>
                                        <th>탐구</th>
                                        <th>논술</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            주간<br>
                                            수업시간
                                        </td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                        <div class="tbl-wrap">
                            <p>
                                <span>|</span> 문과전문관 필수 수업 (14T)
                            </p>
                            <table>
                                <colgroup>
                                    <col style="width:20%">
                                    <col style="width:16%">
                                    <col style="width:16%">
                                    <col style="width:16%">
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
                                        <td rowspan="2">
                                            주간<br>
                                            수업시간
                                        </td>
                                        <td rowspan="2">3.5T</td>
                                        <td>공통 3.5T</td>
                                        <td rowspan="2">3.5T</td>
                                    </tr>
                                    <tr>
                                        <td style="border-left:1px solid #ddd">선택 3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% End if %>
                        <!-- //2번째 table -->

                        <% If campus_code = "CD0342" or campus_code = "CD0340" Then '대구/코어광주 %>
                        <p class="r-txt">
                            1) 기존 종합반 의무수업 42T 대비<br>
                            러셀 재수종합반 의무수업 17.5T 비교  시 수치<br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                        <% ElseIf campus_code = "CD0341" Then '대전 %>
                        <div class="r-txt">
                            1) 기존 종합반 의무수업 42T 대비 <br>
                            러셀 대전 재수종합반 의무수업 14T 비교 시 수치<br>
                            * 수학 7T는 공통 3.5T, 선택 3.5T로 구성됩니다.
                        </div>
                        <% Else %>
                        <p class="r-txt">
                            1) 기존 종합반 의무수업 42T 대비<br>
                            러셀 재수종합반 의무수업 21T 비교 시 수치
                            <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                        <% End if %>
                    </div>
                    <% If campus_code = "CD0342" Then '대구 %>
                    <div class="swiper-slide">
                        <p class="time-tit">
                            <strong>자기주도학습이 가능한<br>충분한 자습시간 (주 70.5T<sup>*</sup>)</strong><br>
                            <span>기존 재수종합반 자습시간 46~58T 대비 최대 53%<sup>2)</sup> 증가</span>
                        </p>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_graph.jpg" alt="그래프"></div>
                        <p class="r-txt mt10">
                            2) 기존 재수종합반 자습시간 46T 대비 러셀 종합반 자습시간 70.5T 비교 <br>
                            * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                    <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                    <div class="swiper-slide">
                        <p class="time-tit">
                            <strong>자기주도학습이 가능한<br>충분한 자습시간 (주 70.5T<sup>*</sup>)</strong><br>
                            <span>기존 재수종합반 자습시간 46~58T 대비 최대 53%<sup>2)</sup> 증가</span>
                        </p>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_graph.jpg" alt="그래프"></div>
                        <p class="r-txt mt10">
                            2) 기존 재수종합반 자습시간 46T 대비 러셀 재수종합반 자습시간 70.5T 비교 <br>
                            * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                    <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                    <div class="swiper-slide">
                        <p class="time-tit">
                            <strong>자기주도학습이 가능한<br>충분한 자습시간 (주 74T<sup>*</sup>)</strong><br>
                            <span>기존 재수종합반 자습시간 46~58T 대비 최대 60%<sup>2)</sup> 증가</span>
                        </p>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_graph.jpg" alt="그래프"></div>
                        <p class="r-txt mt10">
                            2) 기존 재수종합반 자습시간 46T 대비 <br>러셀 대전 재수 종합반 자습시간 74T 비교<br>
                            * 일주일 88T 기준으로 비교 및 선택자습시간도 포함<br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.<br>
                        </p>
                    </div>
                    <% Else %>
                    <div class="swiper-slide">
                        <p class="time-tit">
                            <strong>자기주도학습이 가능한<br>충분한 자습시간 (주 67T<sup>*</sup>)</strong><br>
                            <span>기존 재수종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</span>
                        </p>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont05_graph.jpg" alt="그래프"></div>
                        <p class="r-txt mt10">
                            2) 기존 재수종합반 자습시간 46T 대비 <br> 러셀 재수종합반 자습시간 67T 비교 <br>
                            * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                    <% End if %>
                <% End if %>
                </div>
                <div class="swiper-pagination type03"></div>
            </div>
            <!-- //자습시간 슬라이드 -->

            <% If campus_code = "CD0250" Then '부천 %>
            <div class="time-s-box">
                <p class="time-tit">
                    <strong>N수 국수영 종합반 <br> 수업 시간 및 시수 안내</strong>
                </p>
                <div class="tbl-wrap">
                    <p>
                        <span>|</span> A반 (1월 개강)
                    </p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
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
                                <td>요일</td>
                                <td>수/금</td>
                                <td>화/목</td>
                                <td>수/금</td>
                            </tr>
                            <tr>
                                <td>수업시간</td>
                                <td>08:40~12:10</td>
                                <td>08:40~12:10</td>
                                <td>13:30~17:00</td>
                            </tr>
                            <tr>
                                <td>시수</td>
                                <td>7T</td>
                                <td>7T</td>
                                <td>7T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="tbl-wrap">
                    <p><span>|</span> B반 (3월 개강)</p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
                            <col style="width:25%">
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
                                <td>요일</td>
                                <td>화/목</td>
                                <td>화/목</td>
                                <td>수/금</td>
                            </tr>
                            <tr>
                                <td>수업시간</td>
                                <td>13:30~17:00</td>
                                <td>08:40~12:10</td>
                                <td>13:30~17:00</td>
                            </tr>
                            <tr>
                                <td>시수</td>
                                <td>7T</td>
                                <td>7T</td>
                                <td>7T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <% End if %>

        </div>
    </div>

    <div class="cont06 js-cont">
        <% If campus_code = "CD0249" Then '영통 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont06_tit.jpg" alt="종합반 수업과 바자관 표준 시간표로 구성한 종합반 학습 시간표"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/cont06_tit.jpg" alt="종합반 수업과 바자관 표준 시간표로 구성한 종합반 학습 시간표"></p>
        <% End if %>
        <div class="inner">
            <% If campus_code = "CD0341" OR campus_code = "CD0249" Then '코어대전/영통 %>
            <div class="time-slide02 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p class="time-img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/time_slide01.png" alt="바자관 표준 시간표1">
                            <a href="javascript:void(0)" class="js-bt-daily01"></a>
                        </p>
                    </div>
    
                    <div class="swiper-slide">
                        <p class="time-img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/time_slide02.png" alt="바자관 표준 시간표2">
                            <a href="javascript:void(0)" class="js-bt-daily02"></a>
                        </p>
                    </div>
                </div>
                <div class="swiper-pagination type03"></div>
            </div>
            <% Else %>
            <p class="time-img">
                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/time_slide01.jpg" alt="바자관 표준 시간표">
                <a href="javascript:void(0)" class="js-bt-daily01"></a>
            </p>
            <% End if %>
        </div>



    </div>

    <% If campus_code <> "CD0250" Then '부천 %>
    <div class="cont07 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/cont07_tit.jpg" alt="수능까지 빈틈없이 진행되어 반드시 성적이 향상되는 종합반 연간 커리큘럼"></p>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont07_img.jpg" alt="종합반 연간 커리큘럼"></p>
        <div class="inner">
            <div class="tbl-scroll-x">
                <table class="tbl-type01" style="width: 280%;">
                    <colgroup>
                        <col style="width: 64px;">
                        <col style="width: %;">
                        <col style="width: 9%;">
                        <col style="width: %;">
                        <col style="width: 9%;">
                        <col style="width: %;">
                        <col style="width: 9%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>1~6월</th>
                            <th>6월 모평</th>
                            <th>7~8월</th>
                            <th>9월 모평</th>
                            <th>9월~11월</th>
                            <th>수능</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-purple">국어</th>
                            <td>
                                기출 문제 분석과 <br>
                                원리와 논리 적용 심화 <br>
                                (6평 대비 1달간 집중모의고사)
                            </td>
                            <td rowspan="5">
                                평가원 <br>
                                모의고사 <br>
                                [6월]
                            </td>
                            <td>
                                실전모의고사와 <br>
                                6월 모평 기준 핵심 원리 총 정리 <br>
                                (9평 대비 1달간 집중모의고사)
                            </td>
                            <td rowspan="5">
                                평가원 <br>
                                모의고사 <br>
                                [9월]
                            </td>
                            <td>
                                실전모의고사와 <br>
                                9월 모평 기준 핵심 원리 최종 정리 <br>
                                (수능 대비 2달간 집중모의고사)
                            </td>
                            <td rowspan="5">
                                대학수학 <br>
                                능력시험 <br>
                                [11월]
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-purple">수학</th>
                            <td>
                                핵심 주제 정리 및 <br>
                                유형별 고난도 문제 풀이
                            </td>
                            <td>
                                최신 경향 문제 풀이 및 <br>
                                모의고사 형태로 전체 단원 정리
                            </td>
                            <td>
                                핵심 개념 정리 및  <br>
                                FINAL 실전모의고사
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-purple">영어</th>
                            <td>
                                독해, EBS 소재 연계 <br>
                                6평 전략 실전 모의고사
                            </td>
                            <td>
                                문제풀이 및 모의고사, <br>
                                9평 전략 실전 모의고사
                            </td>
                            <td>
                                6,9평 분석 및 유형별 최종 정리, <br>
                                파이널 및 실전 봉투 모의고사
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-purple">과학탐구</th>
                            <td>
                                개념정리 및 수능 기출과 <br>
                                EBS 변형문제 풀이, <br>
                                중상~상 난이도 문제풀이
                            </td>
                            <td>
                                상 난이도 문제풀이 및 <br>
                                실전 모의고사
                            </td>
                            <td>
                                FINAL 실전 모의고사
                            </td>
                        </tr>
                        <% If campus_code <> "CD0341" Then '코어대전 %>
                        <tr>
                            <th class="bg-purple">논술</th>
                            <td>
                                수리논술 기본 및 <br>
                                공통수학/수Ⅰ,Ⅱ/미적분
                            </td>
                            <td>
                                실전모의고사 및 <br>
                                기하/확통 특강
                            </td>
                            <td>
                                실전모의고사 및 <br>
                                대학별 파이널(수능 전/수능 후)
                            </td>
                        </tr>
                        <% End if %>
                    </tbody>
                </table>
            </div>
            <p class="r-txt">※ 학원 사정에 의해 연간 커리큘럼 내용은 변경될 수 있습니다.</p>
        </div>
    </div>
    <% End if %>

    <div class="cont08 js-cont">
        <% If campus_code = "CD0250" Then '부천 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont08_tit.jpg" alt="면학분위기로 소문난 바른공부 자습전용관"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/cont08_tit.jpg" alt="면학분위기로 소문난 바른공부 자습전용관"></p>
        <% End if %>
        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
        <a class="i-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_bus.png" alt="학원 전용 셔틀버스 운영"></a>
        <% End If %>

        <div class="inner">
            <div class="studyHall-wrap">
                <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">학습에<br> 최적화된 환경</div>
                        <div class="swiper-slide">자체 식당<br>운영</div>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">학습에<br> 최적화된 환경</div>
                    </div>
                </div>
                <% End If %>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                최상위권이 모여 경쟁하는 <br>
                                <strong>집단적인 면학분위기</strong>
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/studyHall_img01.jpg" alt="집단적인 면학분위기"></p>
                            <ul class="list-dot">
                                <li>
                                    <strong>최상위권의 학구열을 체감할 수 있는 <br>
                                    개방형 구조</strong>로 자연스럽게 학습 동기로 부여
                                </li>
                                <li>
                                    <strong>입시 담임선생님의 관리</strong> 하에 강력한 <br>
                                    면학분위기 형성 및 유지
                                </li>
                            </ul>
                        </div>

                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                이동에 낭비하는 시간없이 <br>
                                <strong>학습 동선 최소화</strong>
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/studyHall_img02.jpg" alt="학습 동선 최소화"></p>
                            <ul class="list-dot">
                                <li>
                                    <strong><%=food_txt%></strong>할 수 있어 이동에 낭비되는 시간 최소화
                                </li>
                                <li>
                                    <strong>효율적인 시간관리가 가능</strong>하여 수업&middot;자습시간에 높은 집중력 발휘, 학습량 극대화
                                </li>
                            </ul>
                        </div>
                        <!-- 최적화된 학습환경 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                학습에만 집중할 수 있는 <br>
                                <strong>학습에 최적화된 환경</strong>
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/studyHall_img03.jpg" alt="학습에 최적화된 환경"></p>
                            <ul class="list-dot">
                                <li>
                                    <strong>개방형 구조</strong>로 되어 있어 지속적으로 <br>
                                    긴장감 유지 및 학습동기 부여
                                </li>
                                <li>
                                    <strong>쾌적한 학습공간, 수업과 자습공간 분리 등</strong> <br>
                                    학습 효율성을 높이기 위해 설계된 학습시설
                                </li>
                            </ul>
                        </div>

                        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                양질의 급식이 제공되는 <br>
                                <strong>자체 식당 운영</strong>                                
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/studyHall_img04.jpg" alt="자체 식당 운영"></p>
                            <ul class="list-dot">
                                <li>자체 식당 운영으로 <strong>균형 잡힌 식단 유지</strong></li>
                                <li>맛과 영양을 고려한 건강하고 든든한 한 끼를 <br> 재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong></li>
                                <li>외부와의 접촉과 이동시간 최소화로 <br> <strong>학습에 몰입 가능</strong></li>
                            </ul>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
            
            <a class="btn-common" href="<%=studyHall_btn_url%>"><%=studyHall_btn%></a>
        </div>

    </div>

    <div class="cont09 js-cont">
        <% If campus_code = "CD0250" Then '부천 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont09_tit.jpg" alt="최상위권 전문 입시 담임선생님의 체계적인 관리"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/cont09_tit.jpg" alt="최상위권 전문 입시 담임선생님의 체계적인 관리"></p>
        <% End If %>
        <div class="inner">
            <div class="manage-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">입시관리</div>
                    <div class="swiper-slide">학습관리</div>
                    <div class="swiper-slide">생활관리</div>
                </div>
            </div>
    
            <div class="manage-slide swiper-container">
                <div class="swiper-wrapper">
                    <!-- 입시관리 -->
                    <div class="swiper-slide">
                        <div class="s-wrap">
                            <p class="tit">
                                치열한 입시에서 <br>
                                최상위권 대학 합격을 위한 <br>
                                <span>전문적인 입시관리</span>
                            </p>
                            <div class="s-slide swiper-container type01">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">1:1 맞춤 입시전략 제시</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/s_slide01_img01.jpg" alt="1:1 맞춤 입시전략 제시"></p>
                                        <ul class="list-dot">
                                            <li>
                                                수능 성적부터 모의고사까지 재원생의 <br>
                                                <strong>성적 데이터를 체계적으로 누적 관리</strong>
                                            </li>
                                            <li>
                                                누적 관리된 데이터를 기반으로 <strong>개인 목표에 <br>
                                                맞춘 입시(수시/정시)전략 제시</strong>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">1:1 맞춤 입시상담 진행</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/s_slide01_img02.jpg" alt="1:1 맞춤 입시상담 진행"></p>
                                        <ul class="list-dot">
                                            <li>
                                                개별 성적 포트폴리오 기반으로 <strong>체계적이고 <br> 전문적인 1:1 맞춤 상담</strong> 진행
                                            </li>
                                            <li>
                                                목표 대학 합격을 위한 <strong>입시 전문가의 <br>
                                                수시/정시 지원 전략 컨설팅</strong> 진행
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="swiper-pagination p-type01"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <div class="s-wrap">
                            <p class="tit">
                                수능까지 성취도 있는 학습을 위한 <br>
                                <span>체계적인 학습관리</span>
                            </p>
                            <div class="s-slide swiper-container type02">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">1:1 맞춤 학습 상담 및 학습 전략</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/s_slide02_img01.jpg" alt="1:1 맞춤 학습 상담 및 학습 전략"></p>
                                        <ul class="list-dot">
                                            <li>
                                                재원생의 <strong>성적 데이터와 학습 현황</strong>을 <br>
                                                바탕으로 <strong>개인 목표에 맞춘 학습 전략 제시</strong>
                                            </li>
                                            <li>
                                                1:1 학습 상담을 통해 <strong>과목별 보완점과 <br>
                                                학습 설계 및 점검</strong>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">학습법 특강 및 설명회 진행</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/s_slide02_img02.jpg" alt="학습법 특강 및 설명회 진행"></p>
                                        <ul class="list-dot">
                                            <li>
                                                올바른 학습 습관 형성을 위한 <strong>러셀 학습 플래너,<br>
                                                 러셀 총평노트 등 활용법 특강
                                                </strong> 진행
                                            </li>
                                            <li>
                                                과목별 선생님의 <strong>과목별 학습 전략 특강, <br>
                                                모의고사 분석 및 해설 특강</strong> 등 진행
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="swiper-pagination p-type02"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <div class="s-wrap">
                            <p class="tit">
                                집단적인 면학분위기 형성을 위한 <br>
                                <span>엄격한 생활관리</span>
                            </p>
                            <div class="s-slide swiper-container type03">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">엄격한 출결 관리 및 태도 점수 제도</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/s_slide03_img01.jpg" alt="엄격한 출결 관리 및 태도 점수 제도"></p>
                                        <ul class="list-dot">
                                            <li>
                                                <strong>매 교시 엄격한 출결 관리</strong>와 전자 출결 관리 <br>
                                                시스템, <strong>바자관 상시 모니터링</strong>
                                            </li>
                                            <li>
                                                면학분위기 저해요소 엄격 관리 및 <strong>태도 점수 <br> 운영으로 최대 강제 퇴원 조치</strong>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">정신적 멘토링</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/s_slide03_img02.jpg" alt="정신적 멘토링"></p>
                                        <ul class="list-dot">
                                            <li>
                                                학생중심 사고를 기반하여 학생에 대한 <br>
                                                존중, 배려 등 <strong>동반자 역할</strong>
                                            </li>
                                            <li>
                                                <strong>바자관 앞 또는 바자관 내 상주</strong>하여 <br>
                                                가장 가까운 곳에 함께 생활
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="swiper-pagination p-type03"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cont10 js-cont">
        <% If campus_code = "CD0250" Then '부천 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/cont10_tit.jpg" alt="학습 의욕을 높여주는 승반&강반/장학제도"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/cont10_tit.jpg" alt="학습 의욕을 높여주는 승반&강반/장학제도"></p>
        <% End If %>
        <div class="inner">
            <div class="box">
                <p class="tit">
                    명확한 목표 지향점과 학습 동기 부여하는 <br>
                    <span>승반&middot;강반 제도</span>
                </p>
                <div class="arrow-wrap">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular_overall/arrow01_bg.jpg" alt="배경"></p>
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/arrow01_img01.png" alt="핑크색 화살표"></p>
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/arrow01_img02.png" alt="검정색 화살표"></p>
                </div>
                <ul class="list-dot">
                    <li>
                        모의고사, 평가원 성적과 태도 점수를 <br>
                        바탕으로 엄격하게 <strong>수준별 반편성 실시 및 <br>
                        연 <%=num%> 수준별 승반&middot;강반 운영</strong>
                    </li>
                    <li>
                        바자관 재원생들간의 <strong>선의의 경쟁, 학구열에 <br>
                        대한 보상</strong>, 반대로 <strong>학습 상태에 대한 경각심</strong>을 <br>
                        심어주며 명확한 목표 지향점 제공
                    </li>
                </ul>
                <p class="ico-plus"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_plus.png" alt="플러스"></p>
            </div>
            <div class="box">
                <p class="tit">
                    학구열에 대한 보상과 학습 동기 부여하는 <br>
                    <span>장학 제도</span>
                </p>
                <ul class="list-dot">
                    <% If campus_code = "CD0349" Then '울산 %>
                    <li><strong>종합반 입학 시 입학 성적에 따라 <br> 장학혜택 제공</strong></li>
                    <% End If %>
                    <li>
                        우수한 재원생들이 수능까지 더 좋은 결과를 <br> 낼 수 있도록 적극적으로 지원
                    </li>
                    <li>
                        승반·강반 제도에서 <strong>승반 적용 시 함께 <br>
                        적용</strong>되어 <strong>재원생들의 노력과 성공의 결과를 <br> 
                        응원</strong>하며, 학습 동기와 성취 부여
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>