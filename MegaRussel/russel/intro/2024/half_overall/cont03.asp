<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <div class="inner03">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont04_tit.png" alt="러셀 재수종합반에는 반수생의 실력 향상에 최적화된 수업 시스템이 있습니다." /></h3>
            <div class="box-con">
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont04_stit.png" alt="강의력과 관리력을 갖춘 힘 있는 강사진의 종합반 전용수업" /></p>
                <p class="txt">러셀 강남&middot;대치&middot;기숙 및 인강 출강 강사진의 현장강의로<br>
                    수능 고득점을 위한 실력을 완성할 수 있습니다.</p>
            </div>
            <% If sCampusCode = "CD0250" Then '부천 %>
            <ul class="danka-list">
                <li>
                    <p>러셀 출강 강사진의<br>
                        몰입감 높은 <strong>현장강의</strong></p>
                </li>
                <li>
                    <p>학생의 과목별 성취도에 맞춘<br>
                        <strong>전 과목 수준별 수업</strong>(국/수/영)</p>
                </li>
                <li>
                    <p>현강 강사진의<br>
                        <strong>수업 전후 학습관리</strong></p>
                </li>
            </ul>
            <% Else %>
            <ul class="danka-list">
                <li>
                    <p>러셀 단과와 메가스터디 인강<br>
                        <strong>선생님의 몰입감 높은 현장강의</strong></p>
                        <% If sCampusCode = "CD0257" Then '중계 %>
                        <span class="txt_right">* 수업별 상이</span>
                        <% End If %>
                </li>
                <li>
                    <p>과목별 성취도에 맞춘<br>
                        <strong>수준별 수업 운영</strong></p>
                </li>
                <li>
                    <p><strong>과목별 선생님의<br>
                        직접 1:1 맞춤 학습관리</strong></p>
                </li>
            </ul>
            <% End If %>
        </div>
        <div class="inner">
            <!-- 선생님 롤링 슬라이드 -->
            <!--#include virtual="/intro/2024/half_overall/teacher_slide.asp" -->
            <!-- //선생님 롤링 슬라이드 -->
            
        </div>
    </div>

    <div class="cont05">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont05_tit.png" alt="충분한 자습시간이 확보되는 슬림한 종합반" /></h3>
            <% If sCampusCode = "CD0250" Then '부천 %>
            <div class="cont-wrap">
                <div class="cont">
                    <div>
                        <p class="stit">필수 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:15%;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>영어<br><span class="fz13">(*연고대,블루반 해당)</span></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <div class="ml50">
                        <p class="stit">선택 수업</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:15%;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th style="height:34px">과목</th>
                                    <th>탐구1</th>
                                    <th>탐구1</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
                <div class="cont p0" style="width:100%">
                    <p class="stit">재수종합반 시간표</p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width:10%;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:10%;">
                        </colgroup>
                        <thead>
                            <tr class="low">
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
                                <th>오전</th>
                                <td colspan="6">의무자습/상담</td>
                                <td rowspan="3">선택자습</td>
                            </tr>
                            <tr>
                                <th>오후</th>
                                <td colspan="5">의무자습/상담</td>
                                <td class="red_txt">[HS,의대,<br>
                                    서울대,연고대]<br>
                                    수학 공통 김가람T</td>
                            </tr>
                            <tr>
                                <th>저녁</th>
                                <td>선택수업/<br>
                                    의무자습/상담</td>
                                <td class="red_txt">[HS,의대,<br>
                                    서울대,연고대]<br>
                                    국어 김강민T</td>
                                <td class="red_txt">[HS,의대,<br>
                                    서울대,연고대]<br>
                                    영어 위대영T</td>
                                <td colspan="3">선택수업/의무자습/상담</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <% Else %>
            <div class="cont-wrap">
                <div class="cont">
                    <% If sCampusCode = "CD0340" Then '코어광주 %>
                    <p class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont05_stit01.png" alt="주21T, 최소한의 의무수업 진행" /></p>
                    <div>
                        <p class="stit">정규 수업 (현장강의)</p>
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
                                    <th>탐구(2)</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                </tr>
                            </tbody>
                        </table>

                        <p class="stit mt30">정규 수업 (TEST)</p>
                        <table class="tbl-01">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>과목</th>
                                    <th>영단어 TEST</th>
                                    <th>수/영/탐 TEST</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3T</td>
                                    <td>4.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    
                    <p class="stit mt30">선택 수업</p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width:auto;">
                            <col style="width:auto;">
                            <col style="width:auto;">
                        </colgroup>
                        <thead>
                            <tr class="low">
                                <th>과목</th>
                                <th>수학</th>
                                <th>영어</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>주간<br>
                                    수업시간</th>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                    <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                    <p class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont05_stit01.png" alt="주21T, 최소한의 의무수업 진행" /></p>
                    <div>
                        <p class="stit">필수 수업 (현장강의)</p>
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
                                    <th>영어</th>
                                    <th>탐구1</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
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
                                    <th>국어 선택과목</th>
                                    <th>수학 선택과목</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                    <p class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont05_stit01.png" alt="주21T, 최소한의 의무수업 진행" /></p>
                    <div>
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
                                    <th>주간<br>
                                        수업시간</th>
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
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                    <p class="mb30"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont05_stit01.png" alt="주17T, 최소한의 의무수업 진행" /></p>
                    <div>
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
                                    <th>주간<br>
                                        수업시간</th>
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
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                    <p class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont05_stit01.png" alt="주21T, 최소한의 의무수업 진행" /></p>
                    <div>
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
                                    <th>주간<br>
                                        수업시간</th>
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
                                    <th>국어특강(언매)</th>
                                    <th>영어</th>
                                    <th>논술</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>
                                        수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <% End If %>

                    <% If sCampusCode = "CD0342" Then '대구 %>
                    <p class="r-txt mt30">1) 기존 재수종합반 의무수업 42T 대비 러셀 재수종합반 의무수업 17.5T 비교 시 수치<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                    <% Else %>
                    <p class="r-txt mt30">1) 기존 재수종합반 의무수업 42T 대비 러셀 재수종합반 의무수업 21T 비교 시 수치<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                    <% End If %>
                </div>

                <div class="cont ml50">
                    <% If sCampusCode = "CD0342" Then '대구 %>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont05_stit02.png" alt="주 70T, 충분한 자습시간 확보" /></p>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half_overall/cont05_img.jpg" alt="" /></div>
                    <% Else %>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont05_stit02.png" alt="주 67T, 충분한 자습시간 확보" /></p>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont05_img.jpg" alt="" /></div>
                    <% End If %>
                    <p class="r-txt">2) 기존 재수종합반 자습시간 46T 대비 러셀 재수종합반 자습시간 67T 비교<br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                </div>
            </div>
            <% End If %>
        </div>
    </div>

    <div class="cont06">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont06_tit.png" alt="반수생 학습패턴에 최적화된 실전 대비 커리큘럼" /></h3>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/half_overall/cont06_img.jpg" alt="최상위권 전문 입시 담임선생님의 학생 맞춤 관리" /></div>
            <% If sCampusCode = "CD0250" Then '부천 %>
            <% Else %>
            <div class="c-tbl-box">
                <table class="tbl-01">
                    <colgroup>
                        <col style="width:11%;">
                        <col style="width:auto;">
                        <col style="width:11%;">
                        <col style="width:auto;">
                        <col style="width:11%;">
                        <col style="width:auto;">
                        <col style="width:11%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <% If sCampusCode = "CD0342" Then '대구 %>
                            <th>5~6월</th>
                            <% Else %>
                            <th>4~6월</th>
                            <% End If %>
                            <th>6월 모평</th>
                            <th>7~8월</th>
                            <th>9월 모평</th>
                            <th>9~11월</th>
                            <th>수능</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-gray">국어</th>
                            <td>기출 문제 분석과<br>
                                원리와 논리 적용 심화<br>
                                (6평 대비 1달간 집중모의고사)</td>
                            <td rowspan="5">평가원<br>
                                모의고사<br>
                                [6월]</td>
                            <td>실전모의고사와<br>
                                6월 모평 기준 핵심 원리 총 정리<br>
                                (9평 대비 1달간 집중모의고사)</td>
                            <td rowspan="5">평가원<br>
                                모의고사<br>
                                [9월]</td>
                            <td>실전모의고사와<br>
                                9월 모평 기준 핵심 원리 최종 정리<br>
                                (수능 대비 2달간 집중모의고사)</td>
                            <td rowspan="5">대학수학<br>
                                능력시험<br>
                                [11월]</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">수학</th>
                            <td>핵심 주제 정리 및<br>
                                유형별 고난도 문제 풀이</td>
                            <td>최신 경향 문제 풀이 및<br>
                                모의고사 형태로 전체 단원 정리</td>
                            <td>핵심 개념 정리 및<br>
                                FINAL 실전모의고사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">영어</th>
                            <td>독해, EBS 소재 연계<br>
                                6평 전략 실전 모의고사</td>
                            <td>문제풀이 및 모의고사,<br>
                                9평 전략 실전 모의고사</td>
                            <td>6,9평 분석 및 유형별 최종 정리,<br>
                                파이널 및 실전 봉투 모의고사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">과학<br>탐구</th>
                            <td>개념정리 및 수능 기출과<br>
                                EBS 변형문제 풀이,<br>
                                중상~상 난이도 문제풀이</td>
                            <td>상 난이도 문제풀이 및<br>
                                실전 모의고사</td>
                            <td>FINAL 실전 모의고사</td>
                        </tr>
                        <tr>
                            <th class="bg-gray">논술</th>
                            <td>수리논술 기본 및<br>
                                공통수학/수Ⅰ,Ⅱ/미적분</td>
                            <td>실전모의고사 및<br>
                                기학/확통 특강</td>
                            <td>실전모의고사 및<br>
                                대학별 파이널(수능 전/수능 후)</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <p class="l-txt mt15">※ 학원사정에 의해 연간 커리큘럼 내용은 변경될 수 있습니다.</p>
            <% End If %>
        </div>
    </div>
</div>