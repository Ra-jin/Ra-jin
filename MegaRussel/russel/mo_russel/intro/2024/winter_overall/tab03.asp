<!-- tab04 -->
<div class="js-cont-wrap <%=campusName%>">
    <div class="cont05 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont05_tit.jpg" alt="윈터스쿨 종합반 왜 최상위권이 먼저 선택할까요?"></p>
        <div class="inner">
            <ul class="danka-info">
                <li class="mb10"><strong>러셀 강남&middot;대치&middot;기숙 및<br>
                        메가스터디 인강</strong> 출강</li>
                <li class="mb10">종합반 전 과목<br>
                    <strong>현장강의 진행</strong></li>
                <li>과목별 성취도에 맞춘<br>
                    <strong>수준별 맞춤 수업</strong></li>
                <li><strong>1:1 맞춤 관리 및<br>
                    질의응답 직접 진행</strong></li>
            </ul>

            <!-- 선생님 롤링 슬라이드 -->
            <!--#include virtual="/intro/2024/winter_overall/teacher_slide.asp" -->
            <!-- //선생님 롤링 슬라이드 -->
        </div>
    </div>

    <div class="cont06 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont06_tit.jpg" alt="02. 최소한의 의무수업으로 충분한 자습시간이 확보되는 슬림한 종합반"></p>
        <div class="inner">
            <% If campus_code = "CD0342" Then '대구 %>
            <ul class="study-box">
                <li>
                    <dl>
                        <dt class="tit">주 17.5T 꼭 필요한 핵심 수업 구성</dt>
                        <dd class="txt">기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</dd>
                    </dl>
                    <div class="tbl-wrap">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-type01 mt10">
                            <colgroup>
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
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
                                    <th>주간<br>수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tbl-wrap">
                        <p class="stit">선택 수업(최대 택3)</p>
                        <table class="tbl-type01 mt10">
                            <colgroup>
                                <col style="width:25%;">
                                <col style="width:25%;">
                                <col style="width:25%;">
                                <col style="width:25%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>과목</th>
                                    <th>국어특강</th>
                                    <th>영어</th>
                                    <th>논술</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt">1) 기존 종합반 의무수업 42T 대비<br>
                            러셀 종합반 의무수업 17.5T 비교 시 수치<br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                    </div>
                </li>
                <li>
                    <dl>
                        <dt class="tit">자기주도학습이 가능한<br>
                            충분한 자습시간 (주 70.5T*)</dt>
                        <dd class="txt">기존 종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter_overall/cont06_img.jpg" alt=""></div>
                    <p class="r-txt mt0">2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 70.5T 비교<br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                </li>
            </ul>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <ul class="study-box">
                <li>
                    <dl>
                        <dt class="tit">주 21T 꼭 필요한 핵심 수업 구성</dt>
                        <dd class="txt">기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</dd>
                    </dl>
                    <div class="tbl-wrap">
                        <p class="stit">필수 수업</p>
                        <table class="tbl-type01 mt10">
                            <colgroup>
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
                                <col style="width:20%;">
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
                                    <th>주간<br>수업시간</th>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tbl-wrap">
                        <p class="stit">선택 수업(최대 택3)</p>
                        <table class="tbl-type01 mt10">
                            <colgroup>
                                <col style="width:25%;">
                                <col style="width:25%;">
                                <col style="width:25%;">
                                <col style="width:25%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>과목</th>
                                    <th>국어특강</th>
                                    <th>영어</th>
                                    <th>논술</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간<br>수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt">1) 기존 종합반 의무수업 42T 대비<br>
                            러셀 종합반 의무수업 21T 비교 시 수치<br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                    </div>
                </li>
                <li>
                    <dl>
                        <dt class="tit">자기주도학습이 가능한<br>
                            충분한 자습시간 (주 67T*)</dt>
                        <dd class="txt">기존 종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont06_img.jpg" alt=""></div>
                    <p class="r-txt mt0">2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교<br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                </li>
            </ul>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <ul class="study-box">
                <li>
                    <dl>
                        <dt class="tit">주 21T 꼭 필요한 핵심 수업 구성</dt>
                        <dd class="txt">기존 종합반 의무수업 30~42T 대비 최대 50%<sup>1)</sup> 축소</dd>
                    </dl>
                    <div class="tbl-wrap">
                        <p class="stit">정규 수업(현장 강의)</p>
                        <table class="tbl-type01 mt10">
                            <colgroup>
                                <col style="width:30%;">
                                <col style="width:23%;">
                                <col style="width:23%;">
                                <col style="width:23%;">
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
                                    <th>주간 수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                    <td>7T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tbl-wrap">
                        <p class="stit">정규 수업(TEST)</p>
                        <table class="tbl-type01 mt10">
                            <colgroup>
                                <col style="width:33%;">
                                <col style="width:33%;">
                                <col style="width:33%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>과목</th>
                                    <th>영단어 TEST</th>
                                    <th>수/영/탐 TEST</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간 수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="tbl-wrap">
                        <p class="stit">선택 수업</p>
                        <table class="tbl-type01 mt10">
                            <colgroup>
                                <col style="width:33%;">
                                <col style="width:33%;">
                                <col style="width:33%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>과목</th>
                                    <th>수학</th>
                                    <th>영어</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>주간 수업시간</th>
                                    <td>3.5T</td>
                                    <td>3.5T</td>
                                </tr>
                            </tbody>
                        </table>
                        <p class="r-txt">1) 기존 종합반 의무수업 42T 대비<br>
                            러셀 종합반 의무수업 21T 비교 시 수치<br>
                            * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                    </div>
                    
                </li>
                <li>
                    <dl>
                        <dt class="tit">자기주도학습이 가능한<br>
                            충분한 자습시간 (주 67T*)</dt>
                        <dd class="txt">기존 종합반 자습시간 46~58T 대비 최대 40%<sup>2)</sup> 증가</dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont06_img.jpg" alt=""></div>
                    <p class="r-txt mt0">2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 67T 비교<br>
                        * 일주일 88T 기준으로 비교, 및 선택자습시간도 포함<br>
                        * 실제 학원 운영상황에 따라 변경될 수 있습니다.</p>
                </li>
            </ul>
            <% End If %>
        </div>
    </div>

    <div class="cont07 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont07_tit.jpg" alt=""></p>
        <a class="link_bus" href="/info/schoolBus.asp" alt=""><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/ico_bus.png" alt="학원 전용 셔틀버스 운영"></a>
        <div class="inner">
            <!-- 바자관 탭슬라이드 -->
            <div class="studyHall-wrap">
                <div class="navi-studyHall core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">최적화된<br>학습환경</div>
                        <div class="swiper-slide">자체 식당<br>운영</div>
                    </div>
                </div>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <div class="study-txt">
                                <dl>
                                    <dt>최상위권이 모여 경쟁하는<br>
                                        <strong>집단적인 면학분위기</strong></dt>
                                    <dd>최상위권 재원생들의 학구열을<br>
                                        직접 체감할 수 있는 개방형 구조로<br>
                                        학습동기 부여 및 긴장감 유지하여<br>
                                        강력한 면학분위기를 형성합니다.</dd>
                                </dl>
                                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont05_slide_img01.jpg" alt=""></p>
                            </div>
                            <% If campus_code = "CD0342" Then '대구 %>
                            <div class="review-box">
                                <p>공부하기에 적합한 시간 분배, 담임선생님들의 면학분위기 조성 및 학생들을 격려하시는 모습 등 러셀의 윈터스쿨은 학생이 성적 향상을 위해 갖춰야 할 모든 환경이 갖춰져 있습니다.</p>
                                <p class="stu-name"><strong>2024 경북대 치의예과 합격</strong><br>
                                    러셀 대구 서지훈</p>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="review-box">
                                <p>바자관이 통유리로 되어 있어서 주변 친구들이 공부하는 모습을 보고 자극을 받아, 잠이 오거나 딴짓을 하고 싶을 때에도 정신이 번쩍 들어 다시 집중할 수 있었습니다.</p>
                                <p class="stu-name"><strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong></p>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="review-box">
                                <p>바자관은 개방형 구조로 되어 있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다.</p>
                                <p class="stu-name"><strong>2024 서울대 인문계열 합격</strong><br>
                                    러셀CORE 광주 김효원</p>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <div class="study-txt">
                                <dl>
                                    <dt>이동에 낭비하는 시간없도록<br>
                                        <strong>학습 동선 최소화</strong></dt>
                                    <dd>한 건물 내에서 강의실-바자관-<%=study_txt03%>을<br>
                                        한 번에 해결하여 효율적으로 시간을 <br>
                                        관리할 수 있으며, 수업 및 자습시간에 <br>
                                        높은 집중력을 발휘할 수 있습니다.</dd>
                                </dl>
                                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont05_slide_img02.jpg" alt=""></p>
                            </div>
                            <% If campus_code = "CD0342" Then '대구 %>
                            <div class="review-box">
                                <p>바자관, 강의실, 급식실이 모두 한 건물에 있어 학습 동선을 최소화할 수 있었고, 자체 식당 급식 덕분에 밖으로 밥을 먹으러 나갈 필요가 없어서 공부에 집중하기 좋았습니다.</p>
                                <p class="stu-name"><strong>2024 경북대 의예과 합격</strong><br>
                                    러셀 대구 손관우</p>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="review-box">
                                <p>독서실 다닐 때에는 밥 고민 때문에 스트레스를 많이 받았는데 7층에서 급식을 먹을 수 있어서 너무 좋았습니다. 다른 고민할 필요 없이 공부에만 집중할 수 있게 해줬습니다.</p>
                                <p class="stu-name"><strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong></p>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="review-box">
                                <p>이동에 낭비하는 시간이 없도록 도움을 주었습니다.
                                    바른공부 자습전용관과 가까운 거리에 강의실이
                                    있다는 점은 확실한 장점으로 다가왔습니다.</p>
                                <p class="stu-name"><strong>2024 동국대 한의예과 합격</strong><br>
                                    러셀 CORE 광주 권태완</p>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 최적화된 학습환경 -->
                        <div class="swiper-slide">
                            <div class="study-txt">
                                <dl>
                                    <dt>학습에만 전념할 수 있도록<br>
                                        <strong>학습에 최적화된 환경</strong></dt>
                                    <dd>학습 효율성을 높이기 위해 설계된 시설과 <br>
                                        환경에서 온전히 학습에만 집중할 수 있습니다.<br>
                                        개방형 구조와 벽면 통유리로 되어 있어 <br>
                                        건강한 긴장감과 개방감을 느낄 수 있습니다.</dd>
                                </dl>
                                <% If campus_code = "CD0349" Then '울산 %>
                                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont05_slide_img03.jpg" alt=""></p>
                                <% Else %>
                                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont05_slide_img03.jpg" alt=""></p>
                                <% End If %>
                                <a href="javascript:void(0)" class="bt-tt js-mask" alt="학습환경 자세히 보기"></a>
                            </div>
                            <% If campus_code = "CD0342" Then '대구 %>
                            <div class="review-box">
                                <p>러셀 바자관은 공기정화식물, 숯, 대형 공기청정기와 가습기가 설치되어 있고, 탁 트인 유리창을 통해 자연 햇빛을 받으며 쾌적하고 건강하게 공부할 수 있었습니다.</p>
                                <p class="stu-name"><strong>2024 서울대 의예과 합격</strong><br>
                                    러셀 대구 김민겸</p>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="review-box">
                                <p>제가 써본 책상과 의자 중에 가장 편하고 좋았습니다. 공부하면서 한 번도 불편하다고 생각해 본 적이 없었습니다. 깨끗하게 청소도 매일 해주셔서 더 좋았습니다.</p>
                                <p class="stu-name"><strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong></p>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="review-box">
                                <p>공부 외에 것들은 최대한 신경을 안 쓰게 관리를 해줘서 좋았습니다. 바자관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다.</p>
                                <p class="stu-name"><strong>2024 한양대 의예과 합격</strong><br>
                                    러셀CORE 광주 엄태옥</p>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 자체식당 운영 -->
                        <div class="swiper-slide">
                            <div class="study-txt">
                                <dl>
                                    <dt>양질의 급식으로<br>균형 잡힌 수험생 식단<br>
                                        <strong>자체 식당 운영</strong></dt>
                                    <dd>자체 식당 운영으로 균형 잡힌 식단을 유지<br>
                                        할 수 있으며, 외부와의 접촉을 최소화하고<br>
                                        이동시간을 줄여 학습에 몰입할 수 있습니다.</dd>
                                </dl>
                                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont05_slide_img04.jpg" alt=""></p>
                            </div>
                            <% If campus_code = "CD0342" Then '대구 %>
                            <div class="review-box">
                                <p>자습 공간인 바자관과 급식실이 한 건물에 있어, 자습을 하다가 급식실로 이동하는 동선이 짧았습니다. 
                                    이를 통해, 이동에 따른 시간을 아낄 수 있었습니다.</p>
                                <p class="stu-name"><strong>2024 서울대 의예과 합격</strong><br>
                                    러셀 대구 김민겸</p>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="review-box">
                                <p>급식이 맛있어서 공부할 때 더 힘이 납니다. 특식이 나오는 날도 있어서 밥 기다리는 소소한 수험생활 즐거움이 있습니다. 학원에서 밥까지 해결할 수 있어 시간도 아낄 수 있어 더 좋았습니다.</p>
                                <p class="stu-name"><strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong></p>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="review-box">
                                <p>자체 식당이 있어 급식과 단과와 자습을 한 건물에서 해결할 수 있었고, 이동시간을 줄여 효율적으로 공부하는 데에 도움이 되었습니다.</p>
                                <p class="stu-name"><strong>2023 연세대 국어국문과 합격</strong><br>
                                    러셀CORE 광주 김지윤</p>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>

                <!-- 바자관 시설보기 팝업 -->
                <div class="layer-tt">
                    <a class="bt-close-tt" href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_p_close.png" alt=""></a>
                    <% If campus_code = "CD0349" Then '울산 %>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/studyHall_slide_pop.jpg" alt=""></p>
                    <% Else %>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/studyHall_slide_pop.jpg" alt=""></p>
                    <% End If %>
                </div>
                <!-- //바자관 시설보기 팝업 -->
            </div>
            <!-- //바자관 탭슬라이드 -->
        </div>
    </div>
    <div class="cont08">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont08_tit.jpg" alt="02. 최상위권 전문 입시 담임선생님의 학생 맞춤 관리"></p>
        <div class="inner">
            <!-- 관리 탭슬라이드 -->
            <div class="manage-wrap">
                <div class="navi-manage swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
                <div class="manage-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont08_slide_img01.jpg" alt="입시관리"></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont08_slide_img02.jpg" alt="학습관리"></div>
                        <% If campus_code = "CD0342" Then '대구 %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont08_slide_img03_dg.jpg" alt="생활관리"></div>
                        <% Else %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont08_slide_img03.jpg" alt="생활관리"></div>
                        <% End If %>
                    </div>
                </div>
            </div>
            <!-- //관리 탭슬라이드 -->

            <!-- 이미지 롤링 -->
            <div class="img-rolling swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont06_rolling_img01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont06_rolling_img02.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont06_rolling_img03.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont06_rolling_img04.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont06_rolling_img05.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont06_rolling_img06.jpg" alt=""></div>
                </div>
            </div>
            <!-- //이미지 롤링 -->
        </div>
    </div>
    <div class="cont09 <%=campusName%>">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont09_tit.jpg" alt=""></p>
        <div class="inner">
            <div class="navi-program swiper-container <%=campusName%>">
                <div class="swiper-wrapper">
                    <% If campus_code = "CD0340" Then '코어광주 %>
                    <div class="swiper-slide"><%=program_tab01%></div>
                    <div class="swiper-slide"><%=program_tab02%></div>
                    <div class="swiper-slide"><%=program_tab03%></div>
                    <% Else %>
                    <div class="swiper-slide"><%=program_tab01%></div>
                    <div class="swiper-slide"><%=program_tab02%></div>
                    <div class="swiper-slide"><%=program_tab03%></div>
                    <div class="swiper-slide"><%=program_tab04%></div>
                    <% End If %>
                </div>
            </div>
            <div class="program-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="program-wrap">
                            <p class="tit">충분한 자습시간 확보</p>
                            <ul class="list-dot">
                                <li class="mt0">수능 시험에 기준한 바자관 표준 시간표로<br>
                                    공부하여 수능 학습 리듬을 체화</li>
                                <li>매일 규칙적인 시간표로 생활하여 방학 기간에도<br>
                                    학습 결손 없이 일정하게 학습 패턴을 유지</li>
                                <% If campus_code = "CD0340" Then '코어광주 %>
                                <li>개인 학습 상황에 맞춘 스케줄 운영 및 정규자습, <br>
                                    심야자습으로 충분한 자습시간 확보</li>
                                <% Else %>
                                <li>개인 학습 상황에 맞춘 스케줄 운영 및 의무자습,<br>
                                    심야자습으로 충분한 자습시간 확보</li>
                                <% End If %>
                            </ul>
                            <p class="stit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/scroll_tit.jpg" alt="# 윈터스쿨 재원생의 하루 일과"></p>
                            <!-- 표준 시간표 -->
                            <div class="scroll-slide swiper-container">
                                <ul class="swiper-wrapper">
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico01.png" alt=""></p>
                                        <p><%=baja_time01%></p>
                                        <p><%=baja_txt01%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico02.png" alt=""></p>
                                        <p><%=baja_time02%></p>
                                        <p><%=baja_txt02%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico03.png" alt=""></p>
                                        <p><%=baja_time03%></p>
                                        <p><%=baja_txt03%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico04.png" alt=""></p>
                                        <p><%=baja_time04%></p>
                                        <p><%=baja_txt04%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico05.png" alt=""></p>
                                        <p><%=baja_time05%></p>
                                        <p><%=baja_txt05%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico06.png" alt=""></p>
                                        <p><%=baja_time06%></p>
                                        <p><%=baja_txt06%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico07.png" alt=""></p>
                                        <p><%=baja_time07%></p>
                                        <p><%=baja_txt07%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico08.png" alt=""></p>
                                        <p><%=baja_time08%></p>
                                        <p><%=baja_txt08%></p>
                                    </li>
                                    <li class="swiper-slide">
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_ico09.png" alt=""></p>
                                        <p><%=baja_time09%></p>
                                        <p><%=baja_txt09%></p>
                                    </li>
                                </ul>
                                <div class="swiper-pagination type03"></div>
                            </div>
                            <!-- //표준 시간표 -->
                            <p class="r-txt mt0 mb20">* 예시 이미지로, 평일 바른공부 자습전용관 <br>
                                표준 시간표 기준으로 작성하였습니다.</p>
                            <a href="javascript:void(0)" class="schedule_link">표준 시간표 보기</a>
                        </div>
                    </div>

                    <!-- 학습 습관 형성 -->
                    <div class="swiper-slide">
                        <div class="program-wrap">
                            <div class="sub-slide type01 swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="tit">매일 1교시 영단어 1000</p>
                                        <ul class="list-dot">
                                            <li class="mt0">겨울방학 동안 영단어 1000개 암기 목표</li>
                                            <li>매일 50개의 영단어 암기 후 테스트 진행</li>
                                            <li>최근 출제 반영한 핵심 단어 수록</li>
                                        </ul>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide02_01.jpg" alt=""></p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="tit">매일 영어듣기</p>
                                        <ul class="list-dot">
                                            <li class="mt0">겨울방학 동안 영어 듣기 실력 향상 목표</li>
                                            <li>매일 일정한 시간에 바자관 재원생과 함께<br>
                                                영어듣기 기출 테스트 시행</li>
                                        </ul>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide02_02.jpg" alt=""></p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="tit">매일 국어 필수어휘</p>
                                        <ul class="list-dot">
                                            <li class="mt0">수능 국어 지문 독해에 필요한<br>
                                            어휘력 향상 목표 
                                            </li>
                                            <li>수능 국어 기초 및 필수 어휘, 고전 시가<br>
                                            필수 어휘, 고전 소설 빈출 어휘로 구성
                                            </li>
                                        </ul>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide02_03.jpg" alt=""></p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="tit">러셀 학습 플래너</p>
                                        <ul class="list-dot">
                                            <li class="mt0">학습 목표 수립 및 자기주도학습 훈련</li>
                                            <li>매일 목표 학습량과 실제 학습량 비교 후<br>담임선생님의 피드백을 통해 학습 계획 점검</li>
                                        </ul>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide02_04.jpg" alt=""></p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="tit">일일수학 30제</p>
                                        <ul class="list-dot">
                                            <li class="mt0">겨울방학 수학 실력 향상 목표</li>
                                            <li>매일 일정한 양의 수학 문제풀이로 습관 형성</li>
                                            <li>나만의 점검표 작성하여 주/월별 학습 현황 파악</li>
                                        </ul>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide02_05.jpg" alt=""></p>
                                    </div>
                                </div>
                                <div class="swiper-pagination page01"></div>
                            </div>
                            <p class="r-txt">* 해당 콘텐츠는 러셀 윈터스쿨 재원생 대상으로<br>
                            ‘전액지원’되는 콘텐츠입니다.
                            </p>
                        </div>
                    </div>

                    <% If campus_code <> "CD0340" Then '코어광주 제외 %>
                    <!-- 재원생 전용 특강 -->
                    <div class="swiper-slide">
                        <div class="program-wrap">
                            <div class="sub-slide type02 swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="tit">담임선생님의 입시 특강</p>
                                        <ul class="list-dot">
                                            <li class="mt0">각 학년에 맞춰 입시 개요 및 수시/정시 전형별<br>정보와 시기별 학습 방법에 대해 안내</li>
                                            <li>메디컬/최상위권 대학 등 목표 대학별<br>입시 로드맵 제시</li>
                                        </ul>
                                        <% If campus_code = "CD0349" Then '울산 %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide03_01.jpg" alt=""></p>
                                        <% Else %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/program_slide03_01.jpg" alt=""></p>
                                        <% End If %>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="tit">과목별 학습법 특강</p>
                                        <ul class="list-dot">
                                            <li class="mt0">과목별 선생님이 수능 및 내신 출제 방향,<br>과목별 학습법과 학습 전략 등 새학년을<br>앞두고 꼭 알아야 하는 학습 정보 안내</li>
                                        </ul>
                                        <% If campus_code = "CD0349" Then '울산 %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide03_02.jpg" alt=""></p>
                                        <% Else %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/program_slide03_02.jpg" alt=""></p>
                                        <% End If %>
                                    </div>

                                    <div class="swiper-slide">
                                        <p class="tit">수험생 맞춤 특강</p>
                                        <ul class="list-dot">
                                            <li class="mt0">학습 플래너, 수학 일일30제, 총평노트 등<br>효과적인 활용법과 우수 사례 안내</li>
                                            <li>건강한 멘탈 관리를 위한 심리특강 진행</li>
                                        </ul>
                                        <% If campus_code = "CD0349" Then '울산 %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide03_03.jpg" alt=""></p>
                                        <% Else %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/program_slide03_03.jpg" alt=""></p>
                                        <% End If %>
                                    </div>
                                    
                                    <div class="swiper-slide">
                                        <p class="tit">합격생 선배와의 만남</p>
                                        <ul class="list-dot">
                                            <li class="mt0">최상위권 대학에 진학한 선배들이 성공적인<br>수험생활 노하우와 학습방법에 대해 전수</li>
                                        </ul>
                                        <% If campus_code = "CD0349" Then '울산 %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/program_slide03_04.jpg" alt=""></p>
                                        <% Else %>
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/program_slide03_04.jpg" alt=""></p>
                                        <% End If %>
                                    </div>
                                </div>
                                <div class="swiper-pagination page02"></div>
                            </div>
                        </div>
                    </div>
                    <% End If %>

                    <!-- 포트폴리오 -->
                    <div class="swiper-slide">
                        <div class="program-wrap">
                            <% If campus_code = "CD0349" Then '울산 %>
                            <p class="tit">윈터스쿨 가정통신문</p>
                            <% Else %>
                            <p class="tit">윈터스쿨 포트폴리오</p>
                            <% End If %>
                            <ul class="list-dot">
                                <li class="mt0">윈터스쿨 기간의 학습 성취도와 최신 입시<br>
                                    정보를 확인할 수 있도록 입시 담임선생님이<br>
                                    직접 제작한 종합 안내문</li>
                                <li>출결 및 자습 현황, 영단어/영어듣기 성적,<br>
                                    실전모의고사 성적, 태도 점수, 담임 상담 내용을<br>
                                    자세히 기록하여 겨울방학 학습 현황 확인</li>
                            </ul>
                            <div class="sub-slide type03 swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/program_slide04_01.jpg" alt=""></p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/program_slide04_02.jpg" alt=""></p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/program_slide04_03.jpg" alt=""></p>
                                    </div>
                                </div>
                                <div class="swiper-pagination page03"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!-- 바자관 표준 시간표 -->
            <!-- #include virtual = "/intro/2024/winter_overall/baja_time_table.asp" -->
            <!-- //바자관 표준 시간표 -->
        </div>
    </div>
    <div class="cont10 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont10_tit.jpg" alt="05. 겨울방학 최종 마무리 윈터스쿨 실전모의고사"></p>
        <div class="inner">
            <div class="w-tab-wrap">
                <div class="w-tab-btn">
                    <a href="javascript:void(0)" class="on">윈터스쿨<br>
                     실전모의고사</a>
                    <a href="javascript:void(0)">수학 아이젠</a>
                </div>
                <div class="w-tab-con on">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont10_stit.jpg" alt=""></p>
                    <div class="cont-slide swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont09_img01.png" alt="">
                            </div>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont09_img02.png" alt="">
                            </div>
                            <% If campus_code <> "CD0349" Then '울산 제외 %>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont09_img03.png" alt="">
                            </div>
                            <% If campus_code = "CD0340" Then '코어광주 %>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont09_img04.png" alt="">
                            </div>
                            <% Else %>
                            <div class="swiper-slide">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont09_img04.png" alt="">
                            </div>
                            <% End If %>
                            <% End If %>
                        </div>
                        <div class="swiper-pagination type02"></div>
                    </div>
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont10_img.jpg" alt=""></p>
                    <p class="r-txt">* 유료로 시행되는 학습 콘텐츠로 학원별로 시행 일정이  상이합니다.
                    </p>
                </div>
                <div class="w-tab-con">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont10_stit02.jpg" alt=""></p>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont10_tab02_img.jpg" alt=""></div>
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont10_img02.jpg" alt=""></p>
                    <p class="r-txt">* 유료로 시행되는 학습 콘텐츠로 학원별로 진행 여부 및<br>
                    진행 방식이 상이합니다.
                    </p>
                    
                </div>
            </div>
        </div>
    </div>
    <div class="bottom-bar">
        <% If campus_code = "CD0340" Then '코어광주 %>
        <p>최상위권이 집결하는 <%=txtCampus%> <br>
            윈터스쿨 종합반에서 시작하면<br>
            <strong>결과는 최상위권 대입성공입니다.</strong></p>
        <% Else %>
        <p>최상위권이 집결하는<br>
            <%=txtCampus%> 윈터스쿨 종합반에서 시작하면<br>
            <strong>결과는 최상위권 대입성공입니다.</strong></p>
        <% End If %>
    </div>
</div>