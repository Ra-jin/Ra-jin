<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont04_tit.png" alt="러셀에서 최상위권 대입성공이 가능한 이유 러셀에는 최상위권 수험생을 위한 수능에 최적화된 시스템이 있습니다."></h3>
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_01.png" alt="01"></h5>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont04_stit.png" alt="강의력과 관리력이 검증된 강사진의 종합반 전용 현장강의"></h4>
        
        <ul class="danka-list">
            <li>
                <p><%=danka_txt01%></p>
            </li>
            <li>
                <p><%=danka_txt02%></p>
            </li>
            <li>
                <p><%=danka_txt03%></p>
            </li>
            <li>
                <p><%=danka_txt04%></p>
            </li>
        </ul>
        <% If sCampusCode = "CD0250" OR sCampusCode = "CD0341" Then '부천/코어대전 %>
        <div class="mt80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/teacher_list.jpg" alt=""></div>
        <div class="inner">
            <p class="r-txt">※ 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
        </div>
        
        <% If sCampusCode = "CD0250" Then '부천 %>
        <a class="btn-black" href="https://russelbc.megastudy.net/russel/info/notice/notice_view.asp?Code=32923&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1"><span>강의계획서 자세히 보기</span></a>
        <% End if %>
        
        <% Else %>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/regular_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <div class="inner">
            <p class="r-txt">※ 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
        </div>
        <% End If %>
        
    </div>
     
    <div class="cont05">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_02.png" alt="02"></h5>
        <% If sCampusCode = "CD0249" Then '영통 %>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont05_tit.png" alt="최소한의 의무수업으로 충분한 자습시간이 확보되는 슬림한 종합반"></h4>
        <% Else %>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont05_tit.png" alt="최소한의 의무수업으로 충분한 자습시간이 확보되는 슬림한 종합반"></h4>
        <% End if %>
        <div class="inner">
            
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont05_img.jpg" alt=""></div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="cont-wrap">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 50% <sup>1)</sup> 축소</span>
                    </p>
                    <div class="tbl-box no-border mt60">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>7T</td>
                                    <td>7T</td>
                                    <td>7T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택 수업(택1)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>수학</th>
                                    <th>탐구</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt20">
                            1) 기존 종합반 의무수업 42T 대비 러셀 재수종합반 의무수업 21T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 67T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 40% <sup>2)</sup> 증가</span>
                    </p>
                    <div class="mt40"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont05_graph.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 재수종합반 자습시간 46T 대비 러셀 재수종합반 자습시간 67T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <div class="cont-wrap wide">
                <div class="cont">
                    <p class="tit">
                        <strong>N수 국수영 종합반 수업 시간 및 시수 안내</strong>
                    </p>
                    <div class="c-box">
                        <div class="tbl-box no-border mt60">
                            <p class="stit">A반 (1월 개강)</p>
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>과목</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>영어</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>요일</th>
                                        <td>수/금</td>
                                        <td>화/목</td>
                                        <td>수/금</td>
                                    </tr>
                                    <tr>
                                        <th>수업 시간
                                        </th>
                                        <td>08:40~12:10</td>
                                        <td>08:40~12:10</td>
                                        <td>13:30~17:00</td>
                                    </tr>
                                    <tr>
                                        <th>시수</th>
                                        <td>7T</td>
                                        <td>7T</td>
                                        <td>7T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="tbl-box no-border mt60">
                            <p class="stit">B반 (3월 개강)
                            </p>
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>과목</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>영어</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>요일</th>
                                        <td>화/목</td>
                                        <td>화/목</td>
                                        <td>수/금</td>
                                    </tr>
                                    <tr>
                                        <th>수업 시간
                                        </th>
                                        <td>13:30~17:00</td>
                                        <td>08:40~12:10</td>
                                        <td>13:30~17:00</td>
                                    </tr>
                                    <tr>
                                        <th>시수</th>
                                        <td>7T</td>
                                        <td>7T</td>
                                        <td>7T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="cont-wrap">
                <div class="cont">
                    <p class="tit">
                        <strong>주 17.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 58% <sup>1)</sup> 축소</span>
                    </p>
                    <div class="tbl-box no-border mt60">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택 수업(택1)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어특강</th>
                                    <th>영어</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt20">
                            1) 기존 종합반 의무수업 42T 대비 러셀 재수종합반 의무수업 17.5T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 70.5T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 53% <sup>2)</sup> 증가</span>
                    </p>
                    <div class="mt40"><img src="<%=Application("img_path_russel")%>/core_gj/2025/regular_overall/cont05_graph.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 재수종합반 자습시간 46T 대비 러셀 재수종합반 자습시간 70.5T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <div class="cont-wrap">
                <div class="cont">
                    <p class="tit">
                        <strong>14T~21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 66% <sup>1)</sup> 축소</span>
                    </p>
                    <div class="tbl-box no-border mt60">
                        <p class="stit">이과전문관 필수 수업 (14T~21T)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th class="u_l" rowspan="2">
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td class="u_l" rowspan="2">3.5T</td>
                                    <td>공통 3.5T</td>
                                    <td class="u_l" rowspan="2">3.5T</td>
                                    <td class="u_l" rowspan="2">3.5T</td>
                                    <td class="u_l" rowspan="2">3.5T</td>
                                </tr>
                                <tr>
                                    <td class="u_l">선택 3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt red_txt">*국/수/영/탐 중 필요한 과목을 선택하여 최소 14T 이상 수강</p>
                        <p class="stit mt30">문과전문관 필수 수업 (14T)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th class="u_l" rowspan="2">
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td class="u_l" rowspan="2">3.5T</td>
                                    <td>공통 3.5T</td>
                                    <td class="u_l" rowspan="2">3.5T</td>
                                </tr>
                                <tr>
                                    <td class="u_l">선택 3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="r-txt mt30">
                        1) 기존 종합반 의무수업 42T 대비 러셀 대전 재수종합반 의무수업 14T 비교 시 수치<br>
                        * 수학 7T는 공통 3.5T, 선택 3.5T로 구성됩니다.
                    </p>
                </div>

                <div class="cont">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 74T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 60% <sup>2)</sup> 증가</span>
                    </p>
                    <div class="mt60"><img src="<%=Application("img_path_russel")%>/core_dj/2025/regular_overall/cont05_graph.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 재수종합반 자습시간 46T 대비 러셀 대전 재수 종합반 자습시간 74T 비교<br>
                        * 일주일 88T 기준으로 비교 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.</b>
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="cont-wrap">
                <div class="cont">
                    <p class="tit">
                        <strong>주 17.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 재수종합반 의무수업 30~42T 대비 최대 58% <sup>1)</sup> 축소</span>
                    </p>
                    <div class="tbl-box no-border mt60">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택 수업(택1)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어특강</th>
                                    <th>영어</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt20">
                            1) 기존 종합반 의무수업 42T 대비 러셀 재수종합반 의무수업 17.5T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 70.5T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 53% <sup>2)</sup> 증가</span>
                    </p>
                    <div class="mt40"><img src="<%=Application("img_path_russel")%>/russel_dg/2025/regular_overall/cont05_graph.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 종합반 자습시간 46T 대비 러셀 재수종합반 자습시간 70.5T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
            <div class="cont-wrap">
                <div class="cont">
                    <p class="tit">
                        <strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                        <span>기존 종합반 의무수업 30~42T 대비 최대 50% <sup>1)</sup> 축소</span>
                    </p>
                    <div class="tbl-box no-border mt60">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">선택 수업(택1)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어특강<br>
                                    (언매/화작)</th>
                                    <th>영어</th>
                                    <th>수리논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>
                                        주간<br>
                                        수업시간
                                    </th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt mt20">
                            1) 기존 종합반 의무수업 42T 대비 러셀 재수종합반 의무수업 21T 비교 시 수치 <br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                </div>

                <div class="cont">
                    <p class="tit">
                        <strong>자기주도학습이 가능한 충분한 자습시간 (주 67T<sup>*</sup>)</strong><br>
                        <span>기존 재수종합반 자습시간 46~58T 대비 최대 40% <sup>2)</sup> 증가</span>
                    </p>
                    <div class="mt40"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont05_graph.jpg" alt="" /></div>
                    <p class="r-txt mt0 pr55">
                        2) 기존 재수종합반 자습시간 46T 대비 러셀 재수종합반 자습시간 67T 비교 <br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함 <br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                    </p>
                </div>
            </div>
            <% End If %> 
        </div>
        
    </div>
    <div class="cont06">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_03.png" alt="03"></h5>
        <% If sCampusCode = "CD0249" Then '영통 %>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont06_tit.png" alt="메가스터디 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></h4>
        <% Else %> 
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont06_tit.png" alt="메가스터디 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></h4>
        <% End If %> 
        <div class="inner">
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="tbl-box type02">
                <p class="full-tit-sq">2026 종합반 수업 시간표</p>
                <table class="tbl-01 type02">
                    <colgroup>
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
                            <th rowspan="3" class="bg-th">
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
                            <th rowspan="3" class="bg-th">
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
                            <th rowspan="2" class="bg-th">
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
                <p class="r-txt">※ 학원 운영 상황에 따라 수업은 변경될 수 있습니다.</p>
                <p class="full-tit-sq">2026 바른공부 자습전용관 표준 시간표
                </p>
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:30%" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>교시</th>
                            <th colspan="2">시간</th>
                            <th>월~토</th>
                            <th>일</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="3" class="bg-th">오전</th>
                            <td class="bg-th">1교시<br>
                            (조회)</td>
                            <td class="bg-th">08:00 ~ 08:30
                            </td>
                            <td class="bg-th">30분</td>
                            <td rowspan="3">의무</td>
                            <td class="bg-empty">
                                미운영
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">2교시</td>
                            <td class="bg-th">08:50 ~ 10:10
                            </td>
                            <td class="bg-th">80분</td>
                            <td class="sub-or" rowspan="2">선택</td>
                        </tr>
                        <tr>
                            <td class="bg-th">3교시</td>
                            <td class="bg-th">10:30 ~ 12:10
                            </td>
                            <td class="bg-th">100분</td>
                        </tr>
                        <tr class="bg-gray">
                            <th colspan="2">점심시간</th>
                            <th>12:10 ~ 13:10
                            </th>
                            <th>60분</th>
                            <th colspan="2">
                            </th>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-th">오후</th>
                            <td class="bg-th">4교시</td>
                            <td class="bg-th">13:10 ~ 14:20
                            </td>
                            <td class="bg-th">70분</td>
                            <td rowspan="3">의무</td>
                            <td class="sub-or" rowspan="3">선택</td>
                        </tr>
                        <tr>
                            <td class="bg-th">5교시</td>
                            <td class="bg-th">14:40 ~ 16:10
                            </td>
                            <td class="bg-th">90분</td>
                        </tr>
                        <tr>
                            <td class="bg-th">6교시</td>
                            <td class="bg-th">16:30 ~ 17:30
                            </td>
                            <td class="bg-th">60분</td>
                        </tr>
                        <tr class="bg-gray">
                            <th colspan="2">저녁시간</th>
                            <th>17:30 ~ 18:40
                            </th>
                            <th>70분</th>
                            <th colspan="2"></th>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">저녁</th>
                            <td class="bg-th">7교시<br>
                            (종례)</td>
                            <td class="bg-th">18:40 ~ 20:10
                            </td>
                            <td class="bg-th">90분</td>
                            <td rowspan="2">의무</td>
                            <td class="sub-or" rowspan="2">선택</td>
                        </tr>
                        <tr>
                            <td class="bg-th">8교시</td>
                            <td class="bg-th">20:30 ~ 22:00
                            </td>
                            <td class="bg-th">90분</td>
                        </tr>
                        <tr class="bg-gray">
                            <th colspan="2">귀가시간</th>
                            <th>22:00 ~ 22:10
                            </th>
                            <th>10분</th>
                            <th colspan="2"></th>
                        </tr>
                        <tr>
                            <th class="bg-th" colspan="2">심야 1교시</th>
                            <td class="bg-th">22:10 ~ 23:00
                            </td>
                            <td class="bg-th">50분</td>
                            <td rowspan="2">신청자</td>
                            <td class="bg-empty" rowspan="2">미운영</td>
                        </tr>
                        <tr>
                            <th class="bg-th" colspan="2">심야 2교시</th>
                            <td class="bg-th">23:10 ~ 24:00

                            </td>
                            <td class="bg-th">50분</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">※ 학원 사정 상 운영 시간은 변경 될 수 있습니다.
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="tbl-box type02">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
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
                            <th>일요일<br>
                            (공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-th">오전</th>
                            <td class="bg-th">1교시</td>
                            <td class="bg-th">AM 08:00</td>
                            <td class="bg-th">AM 08:30</td>
                            <td class="bg-th">30분</td>
                            <td colspan="6" class="bg-empty">
                                -
                            </td>
                            <td rowspan="13">선택자습<br>
                            (*급식 미진행)</td>
                        </tr>
                        <tr>
                            <td class="bg-th">2교시</td>
                            <td class="bg-th">AM 08:40</td>
                            <td class="bg-th">AM 10:00</td>
                            <td class="bg-th">80분</td>
                            <td rowspan="3" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                            <td rowspan="3" class="sub-bl">수학A,B</td>
                            <td rowspan="3" class="sub-pp">국어A</td>
                            <td rowspan="3" class="sub-bl">수학A,B</td>
                            <td rowspan="3" class="sub-pp">국어A</td>
                            <td rowspan="3" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">활력시간</td>
                            <td class="bg-th">AM 10:20</td>
                            <td class="bg-th">AM 10:30</td>
                            <td class="bg-th">10분</td>
                        </tr>
                        <tr>
                            <td class="bg-th">3교시</td>
                            <td class="bg-th">AM 10:30</td>
                            <td class="bg-th">PM 12:10</td>
                            <td class="bg-th">100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <th>PM 12:10</th>
                            <th>PM 01:10</th>
                            <th>60분</th>
                            <td colspan="6">원내 급식 진행</td>
                        </tr>
                        <tr>
                            <th colspan="2">일일 학습 콘텐츠</th>
                            <th>PM 01:10</th>
                            <th>PM 01:20</th>
                            <th>10분</th>
                            <td colspan="6">
                                월~금 : 주간지 또는 영단어 테스트 / 토 : 영어듣기 / 일 : 자습 ]<br>
                                (*단, 토요일은 “PM 01:00”부터 영어듣기 진행)
                            </td>
                        </tr>
                        <tr>
                            <th rowspan="4" class="bg-th">오후</th>
                            <td class="bg-th">담임조회</td>
                            <td class="bg-th">PM 01:20</td>
                            <td class="bg-th">PM 01:30</td>
                            <td class="bg-th">10분</td>
                            <td class="bg-empty" colspan="6">-</td>
                        </tr>
                        <tr>
                            <td class="bg-th">4교시</td>
                            <td class="bg-th">PM 01:30</td>
                            <td class="bg-th">PM 02:20</td>
                            <td class="bg-th">50분</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                            <td class="sub-pp" rowspan="3">국어B</td>
                            <td class="sub-dg" rowspan="3">영어A,B</td>
                            <td class="sub-pp" rowspan="3">국어B</td>
                            <td class="sub-dg" rowspan="3">영어A,B</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                        </tr>
                        <tr>
                            <td class="bg-th">5교시</td>
                            <td class="bg-th">PM 02:40</td>
                            <td class="bg-th">PM 04:00</td>
                            <td class="bg-th">80분</td>
                        </tr>
                        <tr>
                            <td class="bg-th">6교시</td>
                            <td class="bg-th">PM 04:20</td>
                            <td class="bg-th">PM 05:30</td>
                            <td class="bg-th">70분</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <th>PM 05:30</th>
                            <th>PM 06:40</th>
                            <th>70분</th>
                            <td colspan="6">원내 급식 진행</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">저녁	</th>
                            <td class="bg-th">7교시</td>
                            <td class="bg-th">PM 06:40</td>
                            <td class="bg-th">PM 08:10</td>
                            <td class="bg-th">90분</td>
                            <td rowspan="2" colspan="6" class="sub-or">
                                의무자습/상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">8교시</td>
                            <td class="bg-th">PM 08:30</td>
                            <td class="bg-th">PM 10:00</td>
                            <td class="bg-th">90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">담임 종례 및 귀가</th>
                            <th>PM 10:00</th>
                            <th>PM 10:20</th>
                            <th>20분</th>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th class="bg-th">심야</th>
                            <td class="bg-th">9교시</td>
                            <td class="bg-th">PM 10:20</td>
                            <td class="bg-th">AM 12:00</td>
                            <td class="bg-th">100분</td>
                            <td colspan="6">선택자습</td>
                            <td>(이용불가)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="tbl-box type02">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
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
                            <th>일요일<br>
                            (공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-th">오전</th>
                            <td class="bg-th">0교시</td>
                            <td class="bg-th">AM 07:00</td>
                            <td class="bg-th">AM 07:50</td>
                            <td class="bg-th">50분</td>
                            <td colspan="6">선택자습</td>
                            <td rowspan="11">선택자습</td>
                        </tr>
                        <tr>
                            <td class="bg-th">1교시</td>
                            <td class="bg-th">AM 08:00</td>
                            <td class="bg-th">AM 08:40</td>
                            <td class="bg-th">40분</td>
                            <td colspan="6" class="sub-or">
                                의무자습/상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">2교시</td>
                            <td class="bg-th">AM 08:50</td>
                            <td class="bg-th">AM 10:10</td>
                            <td class="bg-th">80분</td>
                            <td rowspan="2" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                            <td rowspan="2" class="sub-pp">탐구A</td>
                            <td rowspan="2" class="sub-bl">수학A</td>
                            <td rowspan="2" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                            <td rowspan="2" class="sub-db">국어 특강<br>
                            (선택 수업)</td>
                            <td rowspan="2" class="sub-gr">영어<br>
                            (선택 수업)</td>
                        </tr>
                        <tr>
                            <td class="bg-th">3교시</td>
                            <td class="bg-th">AM 10:30</td>
                            <td class="bg-th">PM 12:10</td>
                            <td class="bg-th">100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <th>PM 12:10</th>
                            <th>PM 01:10</th>
                            <th>60분</th>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-th">오후</th>
                            <td class="bg-th">4교시</td>
                            <td class="bg-th">PM 01:10</td>
                            <td class="bg-th">PM 02:20</td>
                            <td class="bg-th">70분</td>
                            <td class="bg-gray" rowspan="3">수리논술<br>
                            (선택 수업)</td>
                            <td class="sub-pk" rowspan="3">국어</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                            <td class="sub-dg" rowspan="3">탐구B</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                            <td class="sub-yl" rowspan="3">수학B</td>
                        </tr>
                        <tr>
                            <td class="bg-th">5교시</td>
                            <td class="bg-th">PM 02:40</td>
                            <td class="bg-th">PM 04:00</td>
                            <td class="bg-th">80분</td>
                        </tr>
                        <tr>
                            <td class="bg-th">6교시</td>
                            <td class="bg-th">PM 04:20</td>
                            <td class="bg-th">PM 05:30</td>
                            <td class="bg-th">70분</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <th>PM 05:30</th>
                            <th>PM 06:40</th>
                            <th>70분</th>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">저녁	</th>
                            <td class="bg-th">7교시</td>
                            <td class="bg-th">PM 06:40</td>
                            <td class="bg-th">PM 08:10</td>
                            <td class="bg-th">90분</td>
                            <td rowspan="2" colspan="6" class="sub-or">
                                의무자습/상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">8교시</td>
                            <td class="bg-th">PM 08:30</td>
                            <td class="bg-th">PM 10:00</td>
                            <td class="bg-th">90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <th>PM 10:00</th>
                            <th>PM 10:30</th>
                            <th>30분</th>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">심야</th>
                            <td class="bg-th">9교시</td>
                            <td class="bg-th">PM 10:30</td>
                            <td class="bg-th">PM 11:40</td>
                            <td class="bg-th">70분</td>
                            <td rowspan="2" colspan="6">선택자습</td>
                            <td rowspan="2">(이용불가)</td>
                        </tr>
                        <tr>
                            <td class="bg-th">10교시</td>
                            <td class="bg-th">PM 11:50</td>
                            <td class="bg-th">AM 01:00</td>
                            <td class="bg-th">70분</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
            <div class="tbl-box type02">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
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
                            <th>일요일<br>
                            (공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-th">오전</th>
                            <td class="bg-th">0교시</td>
                            <td class="bg-th">AM 07:00</td>
                            <td class="bg-th">AM 07:50</td>
                            <td class="bg-th">50분</td>
                            <td colspan="6">선택자습</td>
                            <td rowspan="11">선택자습</td>
                        </tr>
                        <tr>
                            <td class="bg-th">1교시</td>
                            <td class="bg-th">AM 08:00</td>
                            <td class="bg-th">AM 08:40</td>
                            <td class="bg-th">40분</td>
                            <td colspan="6" class="sub-or">
                                의무자습/상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">2교시</td>
                            <td class="bg-th">AM 08:50</td>
                            <td class="bg-th">AM 10:10</td>
                            <td class="bg-th">80분</td>
                            <td rowspan="2" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                            <td rowspan="2" class="sub-pp">탐구A</td>
                            <td rowspan="2" class="sub-bl">수학A</td>
                            <td rowspan="2" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                            <td rowspan="2" class="sub-db">국어 특강<br>
                            (선택 수업)</td>
                            <td rowspan="2" class="sub-gr">영어<br>
                            (선택 수업)</td>
                        </tr>
                        <tr>
                            <td class="bg-th">3교시</td>
                            <td class="bg-th">AM 10:30</td>
                            <td class="bg-th">PM 12:10</td>
                            <td class="bg-th">100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <th>PM 12:10</th>
                            <th>PM 01:10</th>
                            <th>60분</th>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-th">오후</th>
                            <td class="bg-th">4교시</td>
                            <td class="bg-th">PM 01:10</td>
                            <td class="bg-th">PM 02:20</td>
                            <td class="bg-th">70분</td>
                            <td class="bg-gray" rowspan="3">수리논술<br>
                            (선택 수업)</td>
                            <td class="sub-pk" rowspan="3">국어</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                            <td class="sub-dg" rowspan="3">탐구B</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                            <td class="sub-yl" rowspan="3">수학B</td>
                        </tr>
                        <tr>
                            <td class="bg-th">5교시</td>
                            <td class="bg-th">PM 02:40</td>
                            <td class="bg-th">PM 04:00</td>
                            <td class="bg-th">80분</td>
                        </tr>
                        <tr>
                            <td class="bg-th">6교시</td>
                            <td class="bg-th">PM 04:20</td>
                            <td class="bg-th">PM 05:30</td>
                            <td class="bg-th">70분</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <th>PM 05:30</th>
                            <th>PM 06:40</th>
                            <th>70분</th>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">저녁	</th>
                            <td class="bg-th">7교시</td>
                            <td class="bg-th">PM 06:40</td>
                            <td class="bg-th">PM 08:10</td>
                            <td class="bg-th">90분</td>
                            <td rowspan="2" colspan="6" class="sub-or">
                                의무자습/상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">8교시</td>
                            <td class="bg-th">PM 08:30</td>
                            <td class="bg-th">PM 10:00</td>
                            <td class="bg-th">90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <th>PM 10:00</th>
                            <th>PM 10:30</th>
                            <th>30분</th>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">심야</th>
                            <td class="bg-th">9교시</td>
                            <td class="bg-th">PM 10:30</td>
                            <td class="bg-th">PM 11:40</td>
                            <td class="bg-th">70분</td>
                            <td rowspan="2" colspan="6">선택자습</td>
                            <td rowspan="2">(이용불가)</td>
                        </tr>
                        <tr>
                            <td class="bg-th">10교시</td>
                            <td class="bg-th">PM 11:50</td>
                            <td class="bg-th">AM 01:00</td>
                            <td class="bg-th">70분</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="tbl-box type02">
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
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
                            <th>일요일<br>
                            (공휴일)</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="4" class="bg-th">오전</th>
                            <td class="bg-th">0교시</td>
                            <td class="bg-th">AM 07:00</td>
                            <td class="bg-th">AM 07:50</td>
                            <td class="bg-th">50분</td>
                            <td colspan="6">선택자습</td>
                            <td rowspan="11">선택자습</td>
                        </tr>
                        <tr>
                            <td class="bg-th">1교시</td>
                            <td class="bg-th">AM 08:00</td>
                            <td class="bg-th">AM 08:40</td>
                            <td class="bg-th">40분</td>
                            <td colspan="6" class="sub-or">
                                의무자습/상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">2교시</td>
                            <td class="bg-th">AM 08:50</td>
                            <td class="bg-th">AM 10:10</td>
                            <td class="bg-th">80분</td>
                            <td rowspan="2" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                            <td rowspan="2" class="sub-pp">탐구A</td>
                            <td rowspan="2" class="sub-bl">수학A</td>
                            <td rowspan="2" class="sub-or">
                                의무자습<br>
                                /상담
                            </td>
                            <td rowspan="2" class="sub-db">국어 특강<br>
                            (선택 수업)</td>
                            <td rowspan="2" class="sub-gr">영어<br>
                            (선택 수업)</td>
                        </tr>
                        <tr>
                            <td class="bg-th">3교시</td>
                            <td class="bg-th">AM 10:30</td>
                            <td class="bg-th">PM 12:10</td>
                            <td class="bg-th">100분</td>
                        </tr>
                        <tr>
                            <th colspan="2">점심식사</th>
                            <th>PM 12:10</th>
                            <th>PM 01:10</th>
                            <th>60분</th>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-th">오후</th>
                            <td class="bg-th">4교시</td>
                            <td class="bg-th">PM 01:10</td>
                            <td class="bg-th">PM 02:20</td>
                            <td class="bg-th">70분</td>
                            <td class="bg-gray" rowspan="3">수리논술<br>
                            (선택 수업)</td>
                            <td class="sub-pk" rowspan="3">국어</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                            <td class="sub-dg" rowspan="3">탐구B</td>
                            <td class="sub-or" rowspan="3">의무자습<br>
                            /상담</td>
                            <td class="sub-yl" rowspan="3">수학B</td>
                        </tr>
                        <tr>
                            <td class="bg-th">5교시</td>
                            <td class="bg-th">PM 02:40</td>
                            <td class="bg-th">PM 04:00</td>
                            <td class="bg-th">80분</td>
                        </tr>
                        <tr>
                            <td class="bg-th">6교시</td>
                            <td class="bg-th">PM 04:20</td>
                            <td class="bg-th">PM 05:30</td>
                            <td class="bg-th">70분</td>
                        </tr>
                        <tr>
                            <th colspan="2">저녁식사</th>
                            <th>PM 05:30</th>
                            <th>PM 06:40</th>
                            <th>70분</th>
                            <td colspan="6">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">저녁	</th>
                            <td class="bg-th">7교시</td>
                            <td class="bg-th">PM 06:40</td>
                            <td class="bg-th">PM 08:10</td>
                            <td class="bg-th">90분</td>
                            <td rowspan="2" colspan="6" class="sub-or">
                                의무자습/상담
                            </td>
                        </tr>
                        <tr>
                            <td class="bg-th">8교시</td>
                            <td class="bg-th">PM 08:30</td>
                            <td class="bg-th">PM 10:00</td>
                            <td class="bg-th">90분</td>
                        </tr>
                        <tr>
                            <th colspan="2">귀가</th>
                            <th>PM 10:00</th>
                            <th>PM 10:30</th>
                            <th>30분</th>
                            <td colspan="7">-</td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">심야</th>
                            <td class="bg-th">9교시</td>
                            <td class="bg-th">PM 10:30</td>
                            <td class="bg-th">PM 11:40</td>
                            <td class="bg-th">70분</td>
                            <td rowspan="2" colspan="6">선택자습</td>
                            <td rowspan="2">(이용불가)</td>
                        </tr>
                        <tr>
                            <td class="bg-th">10교시</td>
                            <td class="bg-th">PM 11:50</td>
                            <td class="bg-th">AM 01:00</td>
                            <td class="bg-th">70분</td>
                        </tr>
                    </tbody>
                </table>
                <p class="r-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <div class="tab-cont-wrap tbl-box type02 mt100">
                <div class="bt-tab02">
                    <a href="javascript:void(0)" class="on"><strong>이과 종합반</strong></a>
                    <a href="javascript::void(0)"><strong>문과 종합반</strong></a>
                </div>
            
                <div class="cont-box02 on">
                    <div class="tbl-box type02">
                        <table class="tbl-01 type02" style="display: table;">
                            <colgroup>
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
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
                                    <th>일요일<br>
                                    (공휴일)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="3" class="bg-th">오전</th>
                                    <td class="bg-th">1교시</td>
                                    <td class="bg-th">AM 08:00</td>
                                    <td class="bg-th">AM 08:50</td>
                                    <td class="bg-th">50분</td>
                                    <td colspan="6" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="11">선택자습</td>
                                </tr>
                                <tr>
                                    <td class="bg-th">2교시</td>
                                    <td class="bg-th">AM 09:00</td>
                                    <td class="bg-th">AM 10:20</td>
                                    <td class="bg-th">80분</td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="2" class="sub-gr">수학C</td>
                                    <td rowspan="2" class="sub-db">탐구A</td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="2" class="sub-gg">수학B</td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bg-th">3교시</td>
                                    <td class="bg-th">AM 10:40</td>
                                    <td class="bg-th">PM 12:20</td>
                                    <td class="bg-th">100분</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <th>PM 12:20</th>
                                    <th>PM 01:30</th>
                                    <th>70분</th>
                                    <td colspan="6">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="4" class="bg-th">오후</th>
                                    <td class="bg-th">4교시</td>
                                    <td class="bg-th">PM 01:30</td>
                                    <td class="bg-th">PM 01:55</td>
                                    <td class="bg-th">25분</td>
                                    <td class="sub-gr" rowspan="4">수학C</td>
                                    <td class="sub-bl" rowspan="2" style="height:68px;">수학A</td>
                                    <td class="sub-pk" rowspan="4">탐구C</td>
                                    <td class="sub-bl" rowspan="2" style="height:68px;">수학A</td>
                                    <td class="sub-pp" rowspan="4">국어B</td>
                                    <td class="bg-gray" rowspan="2" style="height:68px;">탐구D</td>
                                </tr>
                                <tr>
                                    <td class="bg-th" rowspan="2">5교시</td>
                                    <td class="bg-th" rowspan="2">PM 02:00</td>
                                    <td class="bg-th" rowspan="2">PM 03:30</td>
                                    <td class="bg-th" rowspan="2">90분</td>
                                </tr>
                                <tr>
                                    <td class="sub-dg" rowspan="2">탐구B</td>
                                    <td class="sub-gg" rowspan="2">수학B</td>
                                    <td class="sub-yl" rowspan="2">영어</td>
                                </tr>
                                <tr>
                                    <td class="bg-th">6교시</td>
                                    <td class="bg-th">PM 03:50</td>
                                    <td class="bg-th">PM 05:20</td>
                                    <td class="bg-th">90분</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <th>PM 05:20</th>
                                    <th>PM 06:30</th>
                                    <th>70분</th>
                                    <td colspan="6">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="bg-th">저녁</th>
                                    <td class="bg-th">7교시</td>
                                    <td class="bg-th">PM 06:30</td>
                                    <td class="bg-th">PM 08:00</td>
                                    <td class="bg-th">90분</td>
                                    <td rowspan="2" class="sub-pk">국어A</td>
                                    <td rowspan="2" colspan="5" class="sub-or">
                                        의무자습/상담
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bg-th">8교시</td>
                                    <td class="bg-th">PM 08:20</td>
                                    <td class="bg-th">PM 10:00</td>
                                    <td class="bg-th">100분</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <th>PM 10:00</th>
                                    <th>PM 10:10</th>
                                    <th>10분</th>
                                    <td colspan="7">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="bg-th">심야</th>
                                    <td class="bg-th">9교시</td>
                                    <td class="bg-th">PM 10:10</td>
                                    <td class="bg-th">PM 11:00</td>
                                    <td class="bg-th">50분</td>
                                    <td rowspan="2" colspan="6">선택자습</td>
                                    <td rowspan="2">(이용불가)</td>
                                </tr>
                                <tr>
                                    <td class="bg-th">10교시</td>
                                    <td class="bg-th">PM 11:10</td>
                                    <td class="bg-th">AM 12:00</td>
                                    <td class="bg-th">50분</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.
                        </p>
                    </div>
                </div>
                <div class="cont-box02">
                    <div class="tbl-box type02">
                        <table class="tbl-01 type02" style="display: table;">
                            <colgroup>
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
                                <col style="width:auto" />
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
                                    <th>일요일<br>
                                    (공휴일)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="3" class="bg-th">오전</th>
                                    <td class="bg-th">1교시</td>
                                    <td class="bg-th">AM 08:00</td>
                                    <td class="bg-th">AM 08:50</td>
                                    <td class="bg-th">50분</td>
                                    <td colspan="6" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="10">선택자습</td>
                                </tr>
                                <tr>
                                    <td class="bg-th">2교시</td>
                                    <td class="bg-th">AM 09:00</td>
                                    <td class="bg-th">AM 10:20</td>
                                    <td class="bg-th">80분</td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="2" class="sub-bl">수학A</td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="2" class="sub-gg">수학C</td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bg-th">3교시</td>
                                    <td class="bg-th">AM 10:40</td>
                                    <td class="bg-th">PM 12:20</td>
                                    <td class="bg-th">100분</td>
                                </tr>
                                <tr>
                                    <th colspan="2">점심식사</th>
                                    <th>PM 12:20</th>
                                    <th>PM 01:30</th>
                                    <th>70분</th>
                                    <td colspan="6">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="3" class="bg-th">오후</th>
                                    <td class="bg-th">4교시</td>
                                    <td class="bg-th">PM 01:30</td>
                                    <td class="bg-th">PM 01:55</td>
                                    <td class="bg-th">25분</td>
                                    <td rowspan="3" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="3" class="sub-or">
                                        의무자습<br>
                                        /상담
                                    </td>
                                    <td rowspan="3" class="sub-dg">
                                        수학 <br>
                                        [확통]
                                    </td>
                                    <td rowspan="3" class="sub-bl">
                                        수학B
                                    </td>
                                    <td rowspan="3" class="sub-pk">
                                        국어B
                                    </td>
                                    <td rowspan="3" class="sub-yl">
                                        영어
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bg-th">5교시</td>
                                    <td class="bg-th">PM 02:00</td>
                                    <td class="bg-th">PM 03:30</td>
                                    <td class="bg-th">90분</td>
                                </tr>
                                <tr>
                                    <td class="bg-th">6교시</td>
                                    <td class="bg-th">PM 03:50</td>
                                    <td class="bg-th">PM 05:20</td>
                                    <td class="bg-th">90분</td>
                                </tr>
                                <tr>
                                    <th colspan="2">저녁식사</th>
                                    <th>PM 05:20</th>
                                    <th>PM 06:30</th>
                                    <th>70분</th>
                                    <td colspan="6">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="bg-th">저녁</th>
                                    <td class="bg-th">7교시</td>
                                    <td class="bg-th">PM 06:30</td>
                                    <td class="bg-th">PM 08:00</td>
                                    <td class="bg-th">90분</td>
                                    <td rowspan="2" class="sub-pk">국어A</td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습/상담
                                    </td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습/상담
                                    </td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습/상담
                                    </td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습/상담
                                    </td>
                                    <td rowspan="2" class="sub-or">
                                        의무자습/상담
                                    </td>
                                </tr>
                                <tr>
                                    <td class="bg-th">8교시</td>
                                    <td class="bg-th">PM 08:20</td>
                                    <td class="bg-th">PM 10:00</td>
                                    <td class="bg-th">100분</td>
                                </tr>
                                <tr>
                                    <th colspan="2">귀가</th>
                                    <th>PM 10:00</th>
                                    <th>PM 10:10</th>
                                    <th>10분</th>
                                    <td colspan="7">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="bg-th">심야</th>
                                    <td class="bg-th">9교시</td>
                                    <td class="bg-th">PM 10:10</td>
                                    <td class="bg-th">PM 11:00</td>
                                    <td class="bg-th">50분</td>
                                    <td rowspan="2" colspan="6">선택자습</td>
                                    <td rowspan="2">(이용불가)</td>
                                </tr>
                                <tr>
                                    <td class="bg-th">10교시</td>
                                    <td class="bg-th">PM 11:10</td>
                                    <td class="bg-th">AM 12:00</td>
                                    <td class="bg-th">50분</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt">* 해당 시간표는 예시사항으로 배정된 반에 따라 상이할 수 있습니다.
                        </p>
                    </div>
                </div>
            </div>

            <script>
                // tab 버튼 공통
                tabMenu('.bt-tab02','.cont-box02')  // 탭버튼 부모(a태그 부모), 탭컨텐츠 CLASS추가
            </script>
            <% End If %> 
        </div>
    </div>
    <% If sCampusCode <> "CD0250" Then '부천제외 %>
    <div class="cont07">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_04.png" alt="04"></h5>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont07_tit.png" alt="수능까지 빈틈없이 진행되어 반드시 성적이 향상되는 종합반 연간 커리큘럼"></h4>
        <div class="inner">
            <div class="mt60">
                <img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont07_img.jpg" alt="">
            </div>
            <div class="box-con box1 curi">
                <div class="tbl-wrap mt70">
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: 90px;">
                            <col style="width: auto;">
                            <col style="width: 120px;">
                            <col style="width: auto;">
                            <col style="width: 120px;">
                            <col style="width: auto;">
                            <col style="width: 120px;">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <% If sCampusCode = "CD0249" OR  sCampusCode = "CD0349" Then '영통/울산 %>
                                <th>1~6월</th>
                                <% Else %>
                                <th>2~6월</th>
                                <% End If %>
                                <th>6월 모평</th>
                                <th>7월~8월</th>
                                <th>9월 모평</th>
                                <th>9월~11월</th>
                                <th>수능</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-gray">국어</th>
                                <td>기출 문제 분석과<br>
                                    원리와 논리 적용 심화<br>
                                    (6평 대비 1달간 집중모의고사)
                                </td>
                                <td rowspan="5"><strong>평가원<br>모의고사 <br>[6월]</strong></td>
                                <td>실전모의고사와 <br>
                                    6월 모평 기준 핵심 원리 총 정리<br>
                                    (9평 대비 1달간 집중모의고사)
                                </td>
                                <td rowspan="5"><strong>평가원<br>모의고사 <br>[9월]</strong></td>
                                <td>실전모의고사와 <br>
                                    9월 모평 기준 핵심 원리 최종 정리<br>
                                    (수능 대비 2달간 집중모의고사)
                                </td>
                                <td rowspan="5"><strong>대학수학<br> 능력시험<br>[11월]</strong></td>
                            </tr>
                            <tr>
                                <th class="bg-gray">수학</th>
                                <td>핵심 주제 정리 및 <br>
                                    유형별 고난도 문제 풀이
                                </td>
                                <td>
                                    최신 경향 문제 풀이 및<br>모의고사 형태로 전체 단원 정리
                                </td>
                                <td>
                                    핵심 개념 정리 및<br>
                                    FINAL 실전모의고사
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-gray">영어</th>
                                <td>독해, EBS 소재 연계<br>
                                    6평 전략 실전 모의고사
                                </td>
                                <td>
                                    문제풀이 및 모의고사,<br>
                                    9평 전략 실전 모의고사
                                </td>
                                <td>
                                    6,9평 분석 및 유형별 최종 정리,<br> 파이널 및 실전 봉투 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-gray">과학탐구</th>
                                <td>
                                    개념정리 및 수능 기출과<br>EBS 변형문제 풀이, <br>중상~상 난이도 문제풀이
                                </td>
                                <td>상 난이도 문제풀이 및 <br>실전 모의고사</td>
                                <td>
                                    FINAL 실전 모의고사
                                </td>
                            </tr>
                            <% If sCampusCode <> "CD0341" Then '코어대전 제외 %>
                            <tr>
                                <th class="bg-gray">논술</th>
                                <td>
                                    수리논술 기본 및<br>공통수학/수Ⅰ,Ⅱ/미적분
                                </td>
                                <td>실전모의고사 및<br>기하/확통 특강</td>
                                <td>실전모의고사 및 <br> 대학별 파이널(수능 전/수능 후) </td>
                            </tr>
                            <% End If %> 
                        </tbody>
                    </table>
                    <p class="r-txt">※ 학원 사정에 의해 연간 커리큘럼 내용은 변경될 수 있습니다.</p>
                </div>
            </div>
        </div>
    </div>
    <% End If %> 
    <div class="cont08">
        <% If sCampusCode = "CD0250" Then '부천 %>
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/ico_04.png" alt="04"></h5>
        <% Else %> 
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_05.png" alt="05"></h5>
        <% End If %> 
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/baja_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관"></h4>
        <div class="inner">
            <% If sCampusCode <> "CD0249" Then '영통제외 %>
            <a href="/info/schoolBus.asp" class="school-bus"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/school_bus.png" alt="01"></a>
            <% End If %> 
            <% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" OR sCampusCode = "CD0341" Then '대구/울산/코어광주/코어대전 %>
            <ul class="baja-list">
            <% Else %> 
            <ul class="baja-list core">
            <% End If %> 
                <li>
                    <p>최상위권이 모여 경쟁하는 <strong>집단적인 면학분위기</strong></p>
                    <div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/baja_01.jpg" alt="">
                    </div>
                    <ul>
                        <li><strong>최상위권의 학구열을 체감할 수 있는 개방형 구조</strong>로
                            자연스럽게 학습 동기로 부여
                        </li>
                        <li><strong>입시 담임선생님의 관리</strong>하에 강력한 면학분위기<br>
                        
                            형성 및 유지
                        </li>
                    </ul>
                </li>
                <li>
                    <p>이동에 낭비하는 시간없이 
                        <strong>학습 동선 최소화</strong>
                    </p>
                    <div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/baja_02.jpg" alt="">
                    </div>
                    <ul>
                        <li><strong>한 건물 내에서 강의실-바자관-<%=baja_txt%>을<br class="br"> 한번에<br>
                        해결</strong>할 수 있어 이동에 낭비되는 시간 최소화
    
                        </li>
                        <li><strong>효율적인 시간관리가 가능</strong>하여 수업&middot;자습시간에<br>
                        높은 집중력 발휘, 학습량 극대화
                        </li>
                    </ul>
                </li>
                <li>
                    <p>학습에만 집중할 수 있는 
                        <strong>학습에 최적화된 환경</strong></p>
                    <div style="position:relative;">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/baja_03.jpg" alt="">
                        <% If sCampusCode <> "CD0249" Then '영통제외 %>
                        <a href="javascript:void(0)" class="bt-tt" style="position:absolute;bottom:0;right:0;width:90px;height:90px;"></a>
                        <% End If %>
                    </div>
                    <ul>
                        <li><strong>개방형 구조</strong>로 되어 있어 지속적으로 긴장감 유지 및<br>
                        학습동기 부여
    
                        </li>
                        <li><strong>쾌적한 학습공간, 수업과 자습공간 분리 등</strong> 학습 효율성을<br>
                        높이기 위해 설계된 학습시설
                        </li>
                    </ul>
                </li>
                <% If sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" OR sCampusCode = "CD0341" Then '대구/울산/코어광주/코어대전 %>
                <li>
                    <p>양질의 급식이 제공되는 
                        <strong>자체 식당 운영</strong></p>
                    <div style="position:relative;">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/baja_04.jpg" alt="">
                    </div>
                    <ul>
                        <li>자체 식당 운영으로 <strong>균형 잡힌 식단 유지</strong>
                        </li>
                        <li>맛과 영양을 고려한 건강하고 든든한 한 끼를<br>
                         재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong>
                        </li>
                        <li>외부와의 접촉과 이동시간 최소화로 <strong>학습에 몰입 가능</strong></li>
                    </ul>
                </li>
                <% End If %>
            </ul>
            <a class="btn-black" href="<%=study_hall%>"><span>바른공부 자습전용관 자세히 보기</span></a>

        </div>
    </div>
    <!-- 바자관 시설보기 팝업 -->
    <div class="layer-pop layer">
        <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/bt_close.png" alt="닫기"></a>
        <div class="layer-wrap">
            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/sh_slide_pop.jpg" alt="" />
        </div>
    </div>
    <div class="cont09">
        <% If sCampusCode = "CD0250" Then '부천 %>
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/ico_05.png" alt="05"></h5>
        <% Else %> 
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_06.png" alt="06"></h5>
        <% End If %> 
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont09_tit.png" alt="최상위권 전문 입시 담임선생님의 체계적인 관리"></h4>
        <div class="inner">

            <div class="card-box">
                <h4>치열한 입시에서 최상위권 대학 합격을 위한 <strong>전문적인 입시관리</strong></h4>
                <ul>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/manage01.jpg" alt=""></div>
                        <p>1:1 맞춤 입시전략 제시</p>
                        <ul>
                            <li>
                                수능 성적부터 모의고사까지 재원생의 <strong>성적 데이터를<br>
                                체계적으로 누적 관리</strong>
                            </li>
                            <li>
                                누적 관리된 데이터를 기반으로 <strong>개인 목표에 맞춘 입시<br>
                                (수시/정시)전략 제시</strong>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/manage02.jpg" alt=""></div>
                        <p>1:1 맞춤 입시상담 진행
                        </p>
                        <ul>
                            <li>
                                개별 성적 포트폴리오 기반으로 <strong>체계적이고<br> 전문적인 1:1 맞춤 상담</strong> 진행
                            </li>
                            <li>
                                목표 대학 합격을 위한 <strong>입시 전문가의 수시/<br>정시 지원 전략 컨설팅</strong> 진행
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="card-box">
                <h4>수능까지 성취도 있는 학습을 위한 
                    <strong>체계적인 학습관리</strong></h4>
                <ul>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/manage03.jpg" alt=""></div>
                        <p>1:1 맞춤 학습 상담 및 학습 전략
                        </p>
                        <ul>
                            <li>
                                재원생의 <strong>성적 데이터와 학습 현황</strong>을 바탕으로<br><strong>개인 목표에 맞춘 학습 전략 제시</strong>
                            </li>
                            <li>1:1 학습 상담을 통해 <strong>과목별 보완점과 학습 설계 및 점검</strong>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/manage04.jpg" alt=""></div>
                        <p>학습법 특강 및 설명회 진행
                        </p>
                        <ul>
                            <li>
                                올바른 학습 습관 형성을 위한 <strong>러셀 학습 플래너,<br>
                                러셀 총평노트 등 활용법 특강
                                </strong> 진행


                            </li>
                            <li>
                                과목별 선생님의 <strong>과목별 학습 전략 특강, 모의고사<br>분석 및 해설 특강</strong> 등 진행
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="card-box">
                <h4>집단적인 면학분위기 형성을 위한 
                    <strong>엄격한 생활관리</strong></h4>
                <ul>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/manage05.jpg" alt=""></div>
                        <p>엄격한 출결 관리 및 태도 점수 제도
                        </p>
                        <ul>
                            <li>
                                <strong>매 교시 엄격한 출결 관리</strong>와 전자 출결 관리 시스템,<br>
                                <strong>바자관 상시 모니터링</strong>
                            </li>
                            <li>
                                면학분위기 저해요소 엄격 관리 및 <strong>태도 점수 운영으로<br>
                                최대 강제 퇴원 조치</strong>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/manage06.jpg" alt=""></div>
                        <p>정신적 멘토링
                        </p>
                        <ul>
                            <li>
                                학생중심 사고를 기반하여 학생에 대한 존중, 배려 등<br>
                                <strong>동반자 역할</strong>
                            </li>
                            <li>
                                <strong>바자관 앞 또는 바자관 내 상주</strong>하여 가장 가까운 곳에<br>
                                함께 생활
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cont10">
        <% If sCampusCode = "CD0250" Then '부천 %>
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/ico_06.png" alt="06"></h5>
        <% Else %> 
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_07.png" alt="07"></h5>
        <% End If %> 
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont10_tit.png" alt="학습 의욕을 높여주는 승반?강반/장학제도"></h4>
        <div class="inner">

            <div class="card-box">
                <h4>명확한 목표 지향점과 학습 동기 부여하는 <strong>승반&middot;강반 제도</strong></h4>
                <ul class="type02">
                    <li>
                        <ul>
                            <li>
                                모의고사, 평가원 성적과 태도 점수를 바탕으로 엄격하게 <strong>수준별 반편성 실시 및 연 2~3회 수준별 승반&middot;강반 운영</strong>
                            </li>
                            <li>
                                바자관 재원생들간의 <strong>선의의 경쟁, 학구열에 대한 보상,</strong> 반대로 <strong>학습 상태에 대한 경각심</strong>을 심어주며 명확한 목표 지향점 제공
                            </li>
                        </ul>
                        <div class="arrow-wrap">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont10_graph.jpg" alt=""></div>
                            <div class="arrow-l"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/arrow_l.png" alt=""></div>
                            <div class="arrow-r"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/arrow_r.png" alt=""></div>
                        </div>
                    </li>
                </ul>
                <div class="ico-plus"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_plus.jpg" alt=""></div>
                <h4>학구열에 대한 보상과 학습 동기 부여하는 
                    <strong>장학 제도</strong></h4>
                <ul class="type02">
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont10_trophy.jpg" alt=""></div>
                        <ul>
                            <% If sCampusCode = "CD0349" Then '울산 %>
                            <li>
                                <strong>종합반 입학 시 입학 성적에 따라 장학 혜택 제공
                                </strong>
                            </li>
                            <% End If %> 
                            <li>
                                우수한 재원생들이 수능까지 더 좋은 결과를 낼 수 있도록 적극적으로 지원
                            </li>
                            <li>승반&middot;강반 제도에서 <strong>승반 적용 시 함께 적용</strong>되어 <strong>재원생들의 노력과 성공의 결과를 응원</strong>하며, 학습 동기와 성취 부여

                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>