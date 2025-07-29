<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont03 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont03_tit.jpg" alt=""></p>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont03_txt.jpg" alt="강의력과 관리력이 검증된 강사진의 종합반 전용 수업"></p>
        <div class="inner">
            <ul class="danka-info">
                <li class="mb10"><strong>러셀 강남&middot;대치&middot;기숙 및<br>
                    메가스터디 인강</strong> 출강</li>
                <% If campus_code = "CD0349" Then '울산 %>
                <li class="mb10 ml10">국/수/영 전 과목<br>
                    <strong>현장강의 진행</strong></li>
                <% Else %>
                <li class="mb10 ml10">종합반 전 과목<br>
                    <strong>현장강의 진행</strong></li>
                <% End If %>
                <li>과목별 성취도에 맞춘<br>
                    <strong>수준별 맞춤 수업</strong></li>
                <li class="ml10"><strong>1:1 맞춤 관리</strong> 및<br>
                    <strong>질의응답 직접 진행</strong></li>
            </ul>

            <% If campus_code = "CD0341" Then '코어대전 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/teacher_img.jpg" alt=""></p>
            <p class="c-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% Else %>
            <!-- 선생님 롤링 슬라이드 -->
            <!--#include virtual="/intro/2025/first_overall/teacher_slide.asp" -->
            <!-- //선생님 롤링 슬라이드 -->
            <% End If %>
        </div>
    </div>

    <!-- cont04 -->
    <div class="cont04 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont04_tit.jpg" alt=""></p>
        <div class="inner">
            <% If campus_code = "CD0249" Then '영통 %>
            <div class="time-s-box">
                <p class="tit"><strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                    기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</p>
                <div class="tbl-wrap">
                    <p>필수 수업</p>
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
                                <th>주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>7T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="tbl-wrap mt15">
                    <p>선택 수업(택1)</p>
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
                                <th>주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt15">1) 기존 종합반 의무수업 42T 대비<br>
                    러셀 재수종합반 의무수업 21T 비교 시 수치<br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="time-s-box">
                <p class="tit"><strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                    기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</p>
                <div class="tbl-wrap">
                    <p>필수 수업</p>
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
                                <th>주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="tbl-wrap mt15">
                    <p>선택 수업(택1)</p>
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
                                <th>주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt15">1) 기존 종합반 의무수업 42T 대비 <br>
                    러셀 재수종합반 의무수업 21T 비교 시 수치<br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
            </div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="time-s-box">
                <p class="tit"><strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                    기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</p>
                <div class="tbl-wrap">
                    <p>필수 수업</p>
                    <table>
                        <colgroup>
                            <col style="width:20%">
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
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt15">1) 기존 종합반 의무수업 42T 대비 <br>러셀 재수종합반 의무수업 21T 비교 시 수치</p>
            </div>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div class="time-s-box">
                <p class="tit"><strong>주 17.5T, 꼭 필요한 핵심 수업 구성</strong><br>
                    기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</p>
                <div class="tbl-wrap">
                    <p>필수 수업</p>
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
                                <th>주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>7T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="tbl-wrap mt15">
                    <p>선택 수업(택1)</p>
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
                                <th>주간<br>
                                수업시간</th>
                                <td>3.5T</td>
                                <td>3.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt15">1) 기존 종합반 의무수업 42T 대비<br>
                    러셀 재수종합반 의무수업 17.5T 비교 시 수치<br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
            </div>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <div class="time-s-box">
                <p class="tit"><strong>주 21T, 꼭 필요한 핵심 수업 구성</strong><br>
                    기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</p>
                <div class="tbl-wrap">
                    <p>필수 수업</p>
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
                                <th>주간<br>
                                수업시간</th>
                                <td>7T</td>
                                <td>10.5T</td>
                                <td>3.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <div class="tbl-wrap mt15">
                    <p>필수 수업(TEST)</p>
                    <table>
                        <colgroup>
                            <col style="width:25%">
                            <col style="width:auto">
                            <col style="width:33%">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>과목</th>
                                <th>국어/수학/영어 TEST<br>
                                    (일일/주간)</th>
                                <th>영어듣기</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>주간<br>
                                수업시간</th>
                                <td>9T</td>
                                <td>2.5T</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt mt15">1) 기존 종합반 의무수업 42T 대비 <br>
                    러셀 재수종합반 의무수업 21T 비교 시 수치<br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
            </div>
            <% End If %>
            <% If campus_code = "CD0342" Then '대구 %>
            <div class="time-s-box mt20">
                <p class="tit"><strong>자기주도학습이 가능한<br>
                    충분한 자습시간 (주 70.5T<span>*</span>)</strong><br>
                    기존 종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</p>
                <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/cont04_img.jpg" alt=""></div>
                <p class="r-txt mt15">2) 기존 재수종합반 자습시간 46T 대비<br>
                    러셀 재수종합반 자습시간 70.5T 비교<br>
                    * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
            </div>
            <% Else %>
            <div class="time-s-box mt20">
                <p class="tit"><strong>자기주도학습이 가능한<br>
                    충분한 자습시간 (주 67T<span>*</span>)</strong><br>
                    기존 종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</p>
                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont04_img.jpg" alt=""></div>
                <p class="r-txt mt15">2) 기존 재수종합반 자습시간 46T 대비<br>
                    러셀 재수종합반 자습시간 67T 비교<br>
                    * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                    * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
            </div>
            <% If campus_code = "CD0249" Then '영통 %>
            <p class="mt20"><img src="<%=Application("img_path_russel")%>/m_russel/russel_yt/2025/first_overall/cont04_tbl_img.png" alt=""></p>
            <% End If %>
            <% End If %>
        </div>
    </div>

    <!-- cont05 -->
    <div class="cont05 js-cont <%=campusName%>">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont05_tit.jpg" alt="면학분위기로 소문난 바른공부 자습전용관"></p>
        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
        <a class="i-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_bus.png" alt=""></a>
        <% End If %>
        <div class="inner">
            <div class="studyHall-wrap">
                <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">최적화된<br>학습환경</div>
                        <div class="swiper-slide">자체<br>식당 운영</div>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">최적화된<br>학습환경</div>
                    </div>
                </div>
                <% End If %>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <p class="tit">최상위권이 모여 경쟁하는<br>
                                <strong>집단적인 면학분위기</strong></p>
                            <ul class="list-dot">
                                <li>최상위권의 학구열을 직접 체감할 수 있는<br>
                                    <strong>개방형 구조</strong>로 <strong>지속적인 학습동기를<br>
                                        부여하며 긴장감을 유지</strong>하게 합니다.</li>
                                <li><strong>입시 담임선생님의 관리</strong>하에 자율과 통제의<br>
                                    균형적인 운영으로 <strong>강력한 면학분위기를<br>
                                    형성</strong>합니다.</li>
                            </ul>
                            <% If campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0340" Then '대구/울산/코어광주 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img01.jpg" alt=""></p>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="tab-slide swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/studyHall_img01.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img01_2.jpg" alt=""></div>
                                </div>
                                <div class="swiper-pagination style01"></div>
                            </div>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/studyHall_img01.jpg" alt=""></p>
                            <% End If %>
                        </div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">이동에 낭비하는 시간 없도록<br>
                                <strong>학습 동선 최소화</strong></p>
                            <ul class="list-dot">

                                <li><%=baja_txt%>을<br>
                                    한 번에 해결하여 <strong>이동에 낭비하는 시간을<br> 
                                    최소화</strong>합니다.</li>
                                <li>학습 동선을 최소화하여 <strong>효율적인<br>
                                    시간 활용</strong>이 가능하며 <strong>수업 및 자습시간에<br>
                                    높은 집중력을 발휘</strong>할 수 있습니다.</li>
                            </ul>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img03.jpg" alt=""></p>
                        </div>
                        <!-- 최적화된 학습환경 -->
                        <div class="swiper-slide">
                            <p class="tit">학습에만 전념할 수 있도록<br>
                                <strong>학습에 최적화된 환경</strong></p>
                            <ul class="list-dot">
                                <li><strong>학습 효율성을 높이기 위해 설계된 시설과<br>
                                    환경</strong>에서 온전히 학습에만<br>
                                    집중할 수 있습니다.</li>
                                <li>바자관은 <strong>개방형 구조와 벽면이 통유리</strong>로<br>
                                    되어 있어 건강한 긴장감과 개방감을<br>
                                    느낄 수 있습니다.</li>
                            </ul>
                            <% If campus_code = "CD0341" Then '코어대전 %>
                            <div class="tab-slide02 swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/studyHall_img03.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/studyHall_img03_2.jpg" alt=""></div>
                                </div>
                                <div class="swiper-pagination style02"></div>
                            </div>
                            <% Else %>
                            <p class="img" style="width:calc(600vw/7.2)"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/studyHall_img03.jpg" alt=""></p>
                            <% End If %>
                        </div>
                        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <p class="tit">양질의 급식이 제공되는<br>
                                <strong>자체 식당 운영</strong></p>
                            <ul class="list-dot">
                                <li>자체 식단 운영으로 <br>
                                    <strong>균형 잡힌 식단을 유지</strong>합니다.</li>
                                <li>맛과 영양을 고려한 건강하고 든든한 한 끼를<br>
                                    재원생의 <strong>가장 가까운 곳에서 안전하게<br>
                                    준비</strong>합니다.</li>
                                <li>외부와의 접촉 최소화 및 <strong>이동시간을 줄여<br>
                                    학습에 몰입</strong>할 수 있습니다.</li>
                            </ul>
                            <% If campus_code = "CD0340" Then '코어광주 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/studyHall_img05.jpg" alt=""></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img05.jpg" alt=""></p>
                            <% End If %>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="cont06 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont06_tit.jpg" alt="최상위권 전문 입시 담임선생님의 체계적인 관리"></p>
        <div class="inner">
            <!-- 관리 탭슬라이드 -->
            <div class="manage-wrap">
                <div class="manage-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
                <div class="manage-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="tit">목표 대학 합격을 위한 개인 맞춤<br>
                                <strong>입시관리</strong></p>
                            <ul class="list-dot">
                                <li>입시 결과 및 수능 성적을 기반으로<br>
                                    체계적인 1:1 상담</li>
                                <li>재원생 입시 결과를 활용하여 개인 목표에<br>
                                    맞춘 시기별 입시(수시/정시) 방향 제시</li>
                                <li class="mb0">입시특강, 전형별 설명회 등<br>
                                    최신 입시 정보 제공</li>
                            </ul>
                            <% If campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0340" or campus_code = "CD0341" Then '대구/울산/코어광주/코어대전 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/manage_slide_img01.jpg" alt="입시관리"></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/manage_slide_img01.jpg" alt="입시관리"></p>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <p class="tit">체계적인 분석을 통한 전략 수립<br>
                                <strong>학습관리</strong></p>
                            <ul class="list-dot">
                                <li>성적 데이터와 학습 현황 기반으로<br>
                                    과목별 보완점과 학습 방향 1:1 상담</li>
                                <li>목표 성적 맞춤 시기별 학습 전략 제시</li>
                                <li class="mb0">과목별 학습법 특강 및 설명회 제공으로<br>
                                    시기별 맞춤 학습 전략 제안</li>
                            </ul>
                            <% If campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0340" or campus_code = "CD0341" Then '대구/울산/코어광주/코어대전 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/manage_slide_img02.jpg" alt="학습관리"></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/manage_slide_img02.jpg" alt="학습관리"></p>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <p class="tit">학습에만 전념할 수 있도록<br>
                                <strong>생활관리</strong></p>
                            <ul class="list-dot">
                                <li>면학분위기가 유지될 수 있도록<br>
                                    강력한 관리 및 태도 점수 운영</li>
                                <li>학습 플래너 점검 및 피드백으로<br>
                                    학습 습관 및 방법 개선</li>
                                <li class="mb0">학습 고충 및 슬럼프를 극복할 수 있도록<br>
                                    지속적인 상담으로 학습동기 부여</li>
                            </ul>
                            <% If campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0340" Then '대구/울산/코어광주 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/manage_slide_img03.jpg" alt="생활관리"></p>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/manage_slide_img03.jpg" alt="생활관리"></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/manage_slide_img03.jpg" alt="생활관리"></p>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //관리 탭슬라이드 -->
        </div>
    </div>
    <div class="cont07 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont07_tit.png" alt="수능까지 이어지는 시기별 맞춤 학습 콘텐츠"></p>
        <div class="inner">
            <div class="program-wrap">
                <!-- program-navi -->
                <div class="program-navi swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide mb10">집체 모의고사 시리즈</div>
                        <div class="swiper-slide mr0 mb10">OMEGA 시리즈</div>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <div class="swiper-slide mr0">학습계획 콘텐츠</div>
                    </div>
                </div>

                <!-- program-slide -->
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">전국 수험생 중 나의 위치를<br>
                                    가장 정확하게 확인<br>
                                    <strong>전국 집체 모의고사 시리즈</strong></p>
                                <div class="pro-slide pro01 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>전국 대단위 실전 모의고사</strong><br>
                                                메가스터디 전국 집체 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro01_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>완벽한 실전 연습과 실전 대비를 위한<br>
                                                    수능 시뮬레이션</li>
                                                <li>6월 모의평가와 9월 모의평가 출제 경향을<br>
                                                    반영한 집체 모의고사</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>메가X대성 더 프리미엄 모의고사</strong><br>
                                                전국 단위 전 과목 실전 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro01_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                                                <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
                                            </ul>
                                            <a class="pr-btn" href="/intro/2022/premium/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro01"></div>
                                </div>
                                <p class="r-txt">* 해당 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라<br>
                                    사용여부 등이 변경 및 조정될 수 있습니다.</p>
                            </div>
                        </div>
                        
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">처음부터 끝까지 가장 완벽한 수능 플랜<br>
                                    <strong>O<span>ptimum</span> MEGA 실전 모의고사 시리즈</strong></p>
                                <div class="pro-slide pro02 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>OMEGA</strong><br>
                                                수능 실전 대비 전 과목 FULL 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>전과목 FULL 모의고사 구성하여<br>
                                                    내 위치 파악과 실전 연습</li>
                                                <li>실제 수능과 유사한 난이도로 엄선된 문항 구성</li>
                                                <li>평가원의 트렌드에 맞는 출제 가능한 신유형 등<br>
                                                    참신한 문항 구성</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>OMEGA LINK</strong><br>
                                                <span>* OMEGA 모의고사와 세트로 구성</span></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>OMEGA 실전 모의고사 복습 및<br>
                                                    연계 학습에 최적화</li>
                                                <li>과목별 하프 문항 or 주제별 6~8지선다<br>
                                                    & 다중답안 형태로 구성</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>수학/사탐/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA BLACK</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img03.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>상위권을 가르는 변수 문제가 포함된 모의고사</li>
                                                <li>1등급을 넘어 만점 획득을 위한<br>
                                                    고난도 문항 완전 정복</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>수학/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA BLUE</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img04.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>쉬운 문제가 아닌 상수 문제가 포함된 모의고사<br>
                                                    <span>(실전 문항 수에서 고난도 문항 제외)</span></li>
                                                <li>반드시 맞춰야 하는 상수 문제를<br>
                                                    틀리지 않기 위한 연습</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>국/수/영/사탐/과탐Ⅰ&middot;Ⅱ</label>
                                            <p class="tit"><strong>OMEGA WEEKLY</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img05.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매주 과목별 학습 상태 체크 및 실력<br>
                                                    향상시켜주는 3~6월까지 주간 미니 모의고사</li>
                                                <li>국수영 주간지와 탐구 과목별 월간지로 구성</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro02"></div>
                                </div>
                                <p class="r-txt">* 해당 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라<br>
                                    사용여부 등이 변경 및 조정될 수 있습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">수능 수학 실력 향상을 위한<br>
                                    <strong>수학 전용 실전 콘텐츠</strong></p>
                                <div class="pro-slide pro03 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>수Ⅰ/수Ⅱ/미적분</label>
                                            <p class="tit"><strong>수학 아이젠</strong></p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro03_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 꾸준한 수학으로 실력이 향상되는 N제</li>
                                                <li>[아이젠 블랙] 최상위권 전용<br>
                                                    고난도 하드트레이닝</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>수학 공통+선택</label>
                                            <p class="tit"><strong>알파 모의고사</strong></p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro03_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>수능 기출 변형 수학 모의고사</li>
                                                <li>기출의 반복 및 완벽 연습을 통해<br>
                                                    실전 응용력 향상</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro03"></div>
                                </div>
                                <p class="r-txt">* 수학 아이젠 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및<br>
                                    사정에 따라 사용여부 등이 변경 및 조정될 수 있습니다.<br>
                                    * 알파 모의고사 콘텐츠는 재원생 대상으로 ‘전액지원’되는 콘텐츠입니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">규칙적인 학습 습관 형성을 위한<br>
                                    <strong>학습계획 콘텐츠</strong></p>
                                <div class="pro-slide pro04 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 학습 플래너</strong><br>
                                                학습 목표 수립 및 자기주도학습 훈련</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro04_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 시간별/과목별 목표 학습량과<br>
                                                    실제 학습량 비교 후 담임선생님의<br>
                                                    피드백을 통해 학습 상황 점검</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>일일수학 30제</strong><br>
                                                매일 일정한 양의 수학 문제풀이</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro04_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 일정한 양의 수학 문제풀이로<br>
                                                    올바른 문제풀이 습관 형성</li>
                                                <li>지속적인 훈련으로 실수 방지 및 습관 개선</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 총평노트</strong><br>
                                                시험 성적 누적 관리 및 자기 평가</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro04_img03.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>시험 목표 성적과 실제 성적 기록,<br>
                                                    성적 변화 확인으로 향후 목표 설정 및 보완</li>
                                                <li>실수, 오답 등 자기 평가를 통해 취약점 개선</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro04"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //program-slide -->
            </div>
        </div>
    </div>

    <div class="cont08 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont12_tit.jpg" alt=""></p>
        <div class="inner">
            <a href="javascript:void(0);" class="program_link" alt=""><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont12_img.png" alt=""></a>
            <div class="layer-tt02">
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width:240%">
                        <colgroup>
                            <col style="width:83px">
                            <col style="width:9%">
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
                                <th>구분</th>
                                <th class="sticky3">과목</th>
                                <th>총 회차</th>
                                <th>3월</th>
                                <th>4월</th>
                                <th>5월</th>
                                <th>6월</th>
                                <th>7월</th>
                                <th>8월</th>
                                <th>9월</th>
                                <th>10월</th>
                                <th>11월</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-sky">전국 대단위<br>실전 모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>2회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky">메가X대성<br>더 프리미엄<br>모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>6회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA<br>LINK</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="3">OMEGA<br>BLACK</th>
                                <td class="sticky3">수학</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr> 
                                <th class="bg-sky" rowspan="2">OMEGA<br>BLUE</th>
                                <td class="sticky3">수학</td>
                                <td>10회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>3회</td>
                                <td>3회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>10회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>3회</td>
                                <td>3회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="6">OMEGA<br>WEEKLY</th>
                                <td class="sticky3">국어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky">알파 모의고사</th>
                                <td class="sticky3">수학</td>
                                <td>7회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라<br>변경 및 조정될 수 있습니다.</p>
                <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
            </div>
        </div>
    </div>
    <div class="bt_banner">
        재도전을 결심했다면<br>
        지금이 바로 앞서나갈 수 있는 기회!<br>
        <strong>러셀 재수종합반에서<br>
        최상위권 대입성공을 선점하세요.</strong>
    </div>
</div>