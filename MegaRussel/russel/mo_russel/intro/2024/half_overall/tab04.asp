<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont03">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half_overall/cont03_tit.jpg" alt="반수생의 실력 향상에 최적화된 수업 시스템이 있습니다."></p>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont03_stit.jpg" alt="반수생의 실력 향상에 최적화된 수업 시스템이 있습니다."></p>
            <% If campus_code = "CD0250" Then '부천 %>
            <ul class="danka-info">
                <li>
                    <p>러셀 출강 강사진의<br>
                        몰입감 높은 <strong>현장강의</strong></p>
                </li>
                <li>
                    <p>학생의 과목별 성취도에 맞춘
                        <br>
                    <strong>전 과목 수준별 수업
                    </strong>(국/수/영)</p>
                </li>
                <li>
                    <p>현강 강사진의<br><strong>
                        수업 전후 학습관리
                        </strong>
                    </p>
                </li>
            </ul>
            <% Else %>
            <ul class="danka-info">
                <li>
                    <p>러셀 단과와 메가스터디 인강<br>
                    <strong>선생님의 몰입감 높은 현장강의</strong></p>
                    <% If campus_code = "CD0257" Then '중계 %>
                    <p class="r-txt">*수업별 상이</p>
                    <% End If %>
                </li>
                <li>
                    <p>과목별 성취도에 맞춘<br>
                    <strong>수준별 수업 운영</strong></p>
                </li>
                <li>
                    <p><strong>과목별 선생님의<br>
                            직접 1:1 맞춤 학습관리
                        </strong>
                    </p>
                </li>
            </ul>
            <% End If %>
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/half_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <% If campus_code <> "CD0257" Then '중계 제외 %>
        <div class="inner">
            <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
        </div>
        <% End If %>
    </div>
    <div class="cont04">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont04_tit.jpg" alt="충분한 자습시간이 확보되는 슬림한 종합반"></p>
        <div class="inner">
            <% If campus_code = "CD0250" Then '부천 %>
            <div class="time-s-box">
                <div class="tbl-wrap mt0">
                    <p><span>|</span> 필수 수업
                    </p>
                    <table>
                        <colgroup>
                            <col style="width:20%">
                            <col style="width:24%">
                            <col style="width:24%">
                            <col style="width:32%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어</th>
                                <th>수학</th>
                                <th>영어<br>
                                (*연고대,블루반 해당)</th>
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
                <div class="tbl-wrap">
                    <p><span>|</span> 선택 수업</p>
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
                                <th>탐구1</th>
                                <th>탐구2</th>
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
                <div class="tbl-wrap">
                    <p><span>|</span> 재수종합반 시간표</p>
                    <div class="tbl-scroll-x">
                        <table style="width:200%">
                            <colgroup>
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
                                    <th>구분</th>
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
                                    <th class="bg-sky">오전</th>
                                    <td colspan="6">의무자습/상담</td>
                                    <td rowspan="3">선택자습</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">오후</th>
                                    <td colspan="5">의무자습/상담</td>
                                    <td class="color-red">[HS,의대,<br>
                                    서울대,<br>연고대]<br>
                                        수학 공통 김가람T
                                    </td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">저녁</th>
                                    <td>선택수업/의무자습/상담
                                    </td>
                                    <td class="color-red">[HS,의대,<br>서울대,<br>연고대]<br>
                                        국어 김강민T
                                        </td>
                                    <td class="color-red">[HS,의대,<br>서울대,<br>연고대]<br>
                                        영어 위대영T
                                        </td>
                                    <td colspan="3">선택수업/의무자습/상담
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <% Else %>
            <!-- 자습시간 슬라이드 -->
            <div class="time-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <!-- title -->
                        <% If campus_code = "CD0342" Then '대구 %>
                        <p class="time-tit">
                            <strong>주17.5T, 최소한의 의무수업 진행</strong><br>
                            <span>기존 재수종합반 의무수업 30~42T 대비<br>최대 50%<sup>1)</sup> 축소</span>
                        </p>
                        <% Else %>
                        <p class="time-tit">
                            <strong>주21T, 최소한의 의무수업 진행</strong><br>
                            <span>기존 재수종합반 의무수업 30~42T 대비<br>
                            최대 50%<sup>1)</sup> 축소</span>
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
                            <p><span>|</span> 정규 수업 (현장강의)
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
                                        <th>탐구(2)</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                        <td>7T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% Else %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 필수 수업 (현장강의)
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
                                        <th>영어</th>
                                        <% If campus_code = "CD0249" OR  campus_code = "CD0257" Then '영통/중계 %>
                                        <th>탐구1</th>
                                        <% Else %>
                                        <th>탐구(2)</th>
                                        <% End if %>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>7T</td>
                                        <td>3.5T</td>
                                        <% If campus_code = "CD0249" OR  campus_code = "CD0257" Then '영통/중계 %>
                                        <td>3.5T</td>
                                        <% Else %>
                                        <td>7T</td>
                                        <% End if %>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% End if %>
                        <!-- //1번째 table -->
                        <!-- 2번째 table -->
                        <% If campus_code = "CD0249" OR  campus_code = "CD0257" Then '영통/중계 %>
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
                                        <th>국어 선택과목</th>
                                        <th>수학 선택과목</th>
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
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% ElseIf campus_code = "CD0342" Then '대구 %>
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
                                        <th>국어특강<br>
                                        (언매)</th>
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
                        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                        <!-- 광주 수정  -->
                        <div class="tbl-wrap">
                            <p><span>|</span> 정규 수업 (TEST)</p>
                            <table>
                                <colgroup>
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>영단어<br>
                                        TEST</th>
                                        <th>수/영/탐<br>
                                        TEST</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3T</td>
                                        <td>4.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% End if %>
                        <!-- //2번째 table -->

                        <!-- 3번째 -->
                        <% If campus_code = "CD0340" Then '코어광주 %>
                        <div class="tbl-wrap">
                            <p><span>|</span> 선택 수업</p>
                            <table>
                                <colgroup>
                                    <col style="width:25%">
                                    <col style="width:25%">
                                    <col style="width:25%">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th>과목</th>
                                        <th>수학</th>
                                        <th>영어</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>주간<br>
                                        수업시간</td>
                                        <td>3.5T</td>
                                        <td>3.5T</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <% End if %>
                        <!-- //3번째 -->
                        <% If campus_code = "CD0342" Then '대구 %>
                        <p class="r-txt mt10">1) 기존 재수종합반 의무수업 42T 대비 러셀 재수종합반 의무수업 17.5T 비교  시 수치<br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                        <% Else %>
                        <p class="r-txt mt10">1) 기존 재수종합반 의무수업 42T 대비<br>
                        
                            러셀 재수종합반 의무수업 21T 비교 시 수치<br>
                            
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                        <% End if %>
                    </div>
                    <% If campus_code = "CD0342" Then '대구 %>
                    <div class="swiper-slide doughnut">
                        <p class="time-tit">
                            <strong>주70.5T, 충분한 자습시간 확보</strong><br>
                            <span>기존 재수종합반 자습시간 46~58T 대비<br>
                            최대 40%<sup>2)</sup> 증가</span>
                        </p>
                        <div class="chart-area01">
                            <canvas id="doughnut-chart01"></canvas>
                            <div class="chart-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/doughnut_img.png" alt="" /></div>
                            <p class="chart-txt01">
                                의무수업<br>
                                <strong>주 17.5T</strong>
                            </p>
                            <p class="chart-txt02">
                                의무자습<br>
                                <strong>주 70.5T</strong>
                            </p>
                        </div>
                        <p class="r-txt">2) 기존 재수종합반 자습시간 46T 대비 러셀 재수종합반 자습시간 67T 비교<br>
                            * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                    <% Else %>
                    <div class="swiper-slide doughnut">
                        <p class="time-tit">
                            <strong>주67T, 충분한 자습시간 확보</strong><br>
                            <span>기존 재수종합반 자습시간 46~58T 대비<br>
                            최대 40%<sup>2)</sup> 증가</span>
                        </p>
                        <div class="chart-area01">
                            <canvas id="doughnut-chart01"></canvas>
                            <div class="chart-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/doughnut_img.png" alt="" /></div>
                            <p class="chart-txt01">
                                의무수업<br>
                                <strong>주 21T</strong>
                            </p>
                            <p class="chart-txt02">
                                의무자습<br>
                                <strong>주 67T</strong>
                            </p>
                        </div>
                        <p class="r-txt">2) 기존 재수종합반 자습시간 46T 대비<br>
                        
                            러셀 재수종합반 자습시간 67T 비교<br>
                            
                            * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                            
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.
                        </p>
                    </div>
                    <% End if %>
                </div>
                <div class="swiper-pagination type03"></div>
            </div>
            <!-- //자습시간 슬라이드 -->
            <% End If %>
        </div>
    </div>
    <div class="cont05">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont05_tit.jpg" alt=""></p>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half_overall/cont05_img.jpg" alt=""></div>
        <% If campus_code <> "CD0250" Then '부천 제외 %>
        <div class="inner">
            <!-- 연간 커리큘럼-->
            <div class="tbl-scroll-x mt40">
                <table class="tbl-type01 tbl-center" style="width: 300%;">
                    <colgroup>
                        <col style="width:5%">
                        <col style="width:auto">
                        <col style="width:8%">
                        <col style="width:auto">
                        <col style="width:8%">
                        <col style="width:auto">
                        <col style="width:8%">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <% If campus_code = "CD0342" Then '대구 %>
                            <th>5~6월</th>
                            <% Else %>
                            <th>4~6월</th>
                            <% End if %>
                            <th>6월 모평</th>
                            <th>7~8월</th>
                            <th>9월 모평</th>
                            <th>9~11월</th>
                            <th>수능</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">국어</th>
                            <td>기출 문제 분석과<br>
                                원리와 논리 적용 심화<br>
                                (6평 대비 1달간 집중모의고사)
                            </td>
                            <td rowspan="5">평가원<br>
                                모의고사<br>
                                [6월]
                            </td>
                            <td>실전모의고사와<br>
                                6월 모평 기준 핵심 원리 총 정리<br>
                                (9평 대비 1달간 집중모의고사)
                                </td>
                            <td rowspan="5">평가원<br>
                                모의고사<br>
                                [9월]
                            </td>
                            <td>실전모의고사와<br>
                                9월 모평 기준 핵심 원리 최종 정리<br>
                                (수능 대비 2달간 집중모의고사)
                                
                            </td>
                            <td rowspan="5">대학수학<br>
                                능력시험<br>
                                [11월]
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">수학</th>
                            <td>핵심 주제 정리 및<br>
                                유형별 고난도 문제 풀이
                                
                                
                            </td>
                            <td>최신 경향 문제 풀이 및<br>
                                모의고사 형태로 전체 단원 정리
                                
                            </td>
                            <td>핵심 개념 정리 및 <br>
                                FINAL 실전모의고사
                                                                  
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">영어</th>
                            <td>독해, EBS 소재 연계<br>
                                6평 전략 실전 모의고사
                                
                                
                            </td>
                            <td>문제풀이 및 모의고사,<br>
                                9평 전략 실전 모의고사
                                
                            </td>
                            <td>6,9평 분석 및 유형별 최종 정리,<br>
                                파이널 및 실전 봉투 모의고사
                                                              
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">과학<br>
                            탐구</th>
                            <td>개념정리 및 수능 기출과<br>
                                EBS 변형문제 풀이,<br>
                                중상~상 난이도 문제풀이
                                
                                
                            </td>
                            <td>상 난이도 문제풀이 및<br>
                                실전 모의고사
                                
                            </td>
                            <td>FINAL 실전 모의고사
                         
                            </td>
                        </tr>
                        <tr>
                            <th class="bg-sky">논술</th>
                            <td>수리논술 기본 및<br>
                                공통수학/수Ⅰ,Ⅱ/미적분
                                </td>
                            <td>실전모의고사 및<br>
                                기학/확통 특강
                                </td>
                            <td>실전모의고사 및<br>
                                대학별 파이널(수능 전/수능 후)
                                </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!-- //연간 커리큘럼-->
            <p class="r-txt">※ 학원 사정에 의해 연간 커리큘럼 내용은 변경될 수 있습니다.
            </p>
        </div>
        <% End If %>
    </div>
</div>