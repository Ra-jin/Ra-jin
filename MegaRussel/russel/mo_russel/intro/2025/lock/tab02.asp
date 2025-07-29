<div class="cont js-cont-wrap">
    <div class="cont03 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/cont03_tit.jpg" alt=""></p>
        <div class="inner">
            <div class="studyHall-slide-wrap">
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">충분한<br>자습시간</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">최적화된<br>학습환경</div>
                    </div>
                </div>
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
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/studyHall_img01.jpg" alt=""></p>
                        </div>
                        <!-- 충분한 자습시간 -->
                        <div class="swiper-slide">
                            <p class="tit">실제 수능 시간표와 동일한<br>
                                <strong>표준 시간표 운영</strong></p>
                            <ul class="list-dot">
                                <li><strong>수능 시험 기준의 표준 시간표로 생활</strong>하여<br>
                                    학습&middot;생활 리듬이 <br>
                                    수능에 최적화되도록 합니다.</li>
                                <li>개인의 학습 상황에 맞는 스케줄 운영과<br>
                                    충분한 의무자습으로 <strong>매일 최대 자습시간을<br>
                                    확보</strong>하게 합니다.</li>
                                    
                            </ul>
                            <p class="img" style="position:relative;">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/studyHall_img02.jpg" alt="">
                                <a href="javascript:void(0)" class="schedule_link"></a>
                            </p>
                        </div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">이동에 낭비하는 시간 없도록<br>
                                <strong>학습 동선 최소화</strong></p>
                            <ul class="list-dot">
                                <li>한 건물 내에서 강의실-바자관-급식을<br>
                                    한 번에 해결하여 <strong>이동에 낭비하는 시간을<br> 
                                    최소화</strong>합니다.</li>
                                <li>학습 동선을 최소화하여 <strong>효율적인<br>
                                    시간 활용</strong>이 가능하며 <strong>수업 및 자습시간에<br>
                                    높은 집중력을 발휘</strong>할 수 있습니다.</li>
                            </ul>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/studyHall_img03.jpg" alt=""></p>
                            <% If campus_code = "CD0247" Then '강남 %>
                            <p class="r-txt">※ 강의실은 운영 상황에 따라 별관(다른 건물)으로<br>이동할 수도 있습니다.</p>
                            <% End If %>
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
                            <p class="img">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/studyHall_img04.jpg" alt="">
                            </p>
                        </div>
                    </div>
                </div>

                <% If campus_code = "CD0247" Then '강남 %>
                <div class="layer-tt">
                    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
                    <div class="tbl-scroll-x">
                        <table class="tbl-type01 tbl-center" style="width: 640px;">
                            <colgroup>
                                <col style="width:63px" />
                                <col style="width:63px" />
                                <col style="width:auto" />
                                <col style="width:15%" />
                                <col style="width:20%" />
                                <col style="width:20%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th colspan="2">구분</th>
                                    <th>시간</th>
                                    <th>자습시간</th>
                                    <th>월요일~토요일</th>
                                    <th>일요일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="4" class="bg-sky">오전</th>
                                    <td class="bg-gray2 sticky">0교시</td>
                                    <td class="bg-gray2">AM 07:00~AM 07:50</td>
                                    <td class="bg-gray2">50분</td>
                                    <td class="bg-gray2"><span class="ico-txt s">선택자습</span></td>
                                    <td class="bg-gray2"><span class="ico-txt s">선택자습</span></td>
                                </tr>
                                <tr>
                                    <td class="sticky">1교시</td>
                                    <td>AM 08:00~AM 08:40</td>
                                    <td>40분</td>
                                    <td rowspan="3">
                                        <span class="ico-txt b mb5">의무자습</span><br>
                                        <span class="ico-txt v mb5">단과 수업</span><br>
                                        <span class="ico-txt r">담임 상담</span>
                                    </td>
                                    <td class="bg-gray2" rowspan="3"><span class="ico-txt s">선택자습</span></td>
                                </tr>
                                <tr>
                                    <td class="sticky">2교시</td>
                                    <td>AM 08:50~AM 10:10</td>
                                    <td>80분</td>
                                </tr>
                                <tr>
                                    <td class="sticky">3교시</td>
                                    <td>AM 10:30~PM 12:10</td>
                                    <td>100분</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="bg-wh">점심시간</th>
                                    <td>PM 12:10~PM 01:10</td>
                                    <td>60분</td>
                                    <td colspan="2">점심식사</td>
                                </tr>
                                <tr>
                                    <th rowspan="3" class="bg-sky">오후</th>
                                    <td class="sticky">4교시</td>
                                    <td>PM 01:10~PM 02:20</td>
                                    <td>70분</td>
                                    <td rowspan="3">
                                        <span class="ico-txt b mb5">의무자습</span><br>
                                        <span class="ico-txt v mb5">단과 수업</span><br>
                                        <span class="ico-txt r">담임 상담</span>
                                    </td>
                                    <td class="bg-gray2" rowspan="3"><span class="ico-txt s">선택자습</span></td>
                                </tr>
                                <tr>
                                    <td class="sticky">5교시</td>
                                    <td>PM 02:40~PM 04:00</td>
                                    <td>80분</td>
                                </tr>
                                <tr>
                                    <td class="sticky">6교시</td>
                                    <td>PM 04:20~PM 05:30</td>
                                    <td>70분</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="bg-wh">저녁시간</th>
                                    <td>PM 05:30~PM 06:30</td>
                                    <td>60분</td>
                                    <td colspan="2">저녁식사</td>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="bg-sky">저녁</th>
                                    <td class="sticky">7교시</td>
                                    <td>PM 06:30~PM 08:00</td>
                                    <td>90분</td>
                                    <td rowspan="2">
                                        <span class="ico-txt b mb5">의무자습</span><br>
                                        <span class="ico-txt v mb5">단과 수업</span><br>
                                        <span class="ico-txt r">담임 상담</span>
                                    </td>
                                    <td class="bg-gray2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
                                </tr>
                                <tr>
                                    <td class="sticky">8교시</th>
                                    <td>PM 08:20~PM 09:50</td>
                                    <td>90분</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="bg-wh">귀가</th>
                                    <td>PM 09:50~PM 10:10</td>
                                    <td>20분</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="bg-sky">심야</th>
                                    <td class="sticky bg-gray2">9교시</td>
                                    <td class="bg-gray2">PM 10:10~PM 11:00</td>
                                    <td class="bg-gray2">50분</td>
                                    <td class="bg-gray2" rowspan="2"><span class="ico-txt s">선택자습</span></td>
                                    <td class="bg-gray2" rowspan="2">(이용불가)</td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-gray2">10교시</td>
                                    <td class="bg-gray2">PM 11:10~AM 12:00</td>
                                    <td class="bg-gray2">50분</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <ul class="list-star f11">
                        <li>학원 사정에 따라 운영시간은 달라질 수 있습니다.</li>
                    </ul>
                    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
                </div>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <div class="layer-tt">
                    <p class="mb20">바른공부 자습전용관 표준 시간표</p>
                    <div class="tbl-scroll-x">
                        <table class="tbl-type01 tbl-center" style="width: 730px;">
                            <colgroup>
                                <col style="width:63px" />
                                <col style="width:63px" />
                                <col style="width:12%" />
                                <col style="width:12%" />
                                <col style="width:10%" />
                                <col style="width:%" />
                                <col style="width:%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th colspan="2">구분</th>
                                    <th>시작시간</th>
                                    <th>종료시간</th>
                                    <th>자습시간</th>
                                    <th>월요일~토요일</th>
                                    <th>일요일/공휴일</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th rowspan="4" class="bg-sky">오전</th>
                                    <td class="sticky bg-sky">1교시</td>
                                    <td>AM 08:00</td>
                                    <td>AM 08:30</td>
                                    <td>30분</td>
                                    <td rowspan="4"></td>
                                    <td rowspan="4"></td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-sky">2교시</td>
                                    <td>AM 08:40</td>
                                    <td>AM 10:00</td>
                                    <td>80분</td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-sky">활력시간</td>
                                    <td>AM 10:20</td>
                                    <td>AM 10:30</td>
                                    <td>10분</td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-sky">3교시</td>
                                    <td>AM 10:30</td>
                                    <td>PM 12:10</td>
                                    <td>100분</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="bg-sky">점심식사</th>
                                    <td>PM 12:10</td>
                                    <td>PM 01:10</td>
                                    <td>60분</td>
                                    <td>원내 급식 진행</td>
                                    <td>급식 미진행</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="bg-sky">일일 학습컨텐츠</th>
                                    <td>PM 01:10</td>
                                    <td>PM 01:20</td>
                                    <td>10분</td>
                                    <td colspan="2">[월~금 : 주간지 또는 영단어 테스트 / 토 : 영어듣기 / 일 : 자습]<br>
                                        (* 단, 토요일은 “PM 01:00”부터 영어듣기 진행)</td>
                                </tr>
                                <tr>
                                    <th rowspan="4" class="bg-sky">오후</th>
                                    <td class="sticky bg-sky">담임조회</td>
                                    <td>PM 01:20</td>
                                    <td>PM 01:30</td>
                                    <td>10분</td>
                                    <td rowspan="4"></td>
                                    <td rowspan="4"></td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-sky">4교시</td>
                                    <td>PM 01:30</td>
                                    <td>PM 02:20</td>
                                    <td>50분</td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-sky">5교시</td>
                                    <td>PM 02:40</td>
                                    <td>PM 04:00</td>
                                    <td>80분</td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-sky">6교시</td>
                                    <td>PM 04:20</td>
                                    <td>PM 05:30</td>
                                    <td>70분</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="bg-sky">저녁식사</th>
                                    <td>PM 05:30</td>
                                    <td>PM 06:40</td>
                                    <td>70분</td>
                                    <td>원내 급식 진행</td>
                                    <td>급식 미진행</td>
                                </tr>
                                <tr>
                                    <th rowspan="2" class="bg-sky">저녁</th>
                                    <td class="sticky bg-sky">7교시</td>
                                    <td>PM 06:40</td>
                                    <td>PM 08:10</td>
                                    <td>90분</td>
                                    <td rowspan="2"></td>
                                    <td rowspan="2"></td>
                                </tr>
                                <tr>
                                    <td class="sticky bg-sky">8교시</th>
                                    <td>PM 08:30</td>
                                    <td>PM 10:00</td>
                                    <td>90분</td>
                                </tr>
                                <tr>
                                    <th colspan="2" class="bg-sky">담임종례 및 귀가</th>
                                    <td>PM 10:00</td>
                                    <td>PM 10:20</td>
                                    <td>20분</td>
                                    <td colspan="2">-</td>
                                </tr>
                                <tr>
                                    <th class="bg-sky">심야</th>
                                    <td class="sticky bg-sky">9교시</td>
                                    <td>PM 10:20</td>
                                    <td>AM 00:00</td>
                                    <td>100분</td>
                                    <td></td>
                                    <td>미진행</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
                </div>
                <% End If %>
            </div>
        </div>
    </div>

    <div class="cont04 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/cont04_tit.jpg" alt=""></p>
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
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/manage_slide_img01.jpg" alt="입시관리"></p>
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
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/manage_slide_img02.jpg" alt="학습관리"></p>
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
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/manage_slide_img03.jpg" alt="생활관리"></p>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //관리 탭슬라이드 -->
        </div>
    </div>

    <% If campus_code <> "CD0250" Then '부천 제외 %>
    <div class="cont05 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/cont05_tit02.png" alt=""></p>

        <div class="inner">
            <div class="program-wrap">
                <!-- program-navi -->
                <div class="program-navi swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide mb10">OMEGA 시리즈</div>
                        <div class="swiper-slide mr0 mb10">집체 모의고사 시리즈</div>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <div class="swiper-slide mr0">학습계획 콘텐츠</div>
                    </div>
                </div>

                <!-- program-slide -->
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
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
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>실제 수능과 비슷한 난이도의 문제 구성
                                                </li>
                                                <li>신유형 포함 및 평가원 트렌드를 반영한 문제로<br>
                                                수능 출제 패턴 체화
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>OMEGA link</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>복습 최적화 OMEGA 준 연계 하프 모의고사
                                                </li>
                                                <li>10지 선다형, OX 문제 등 과목별 맞춤 문항으로<br>
                                                섬세한 실력 보완
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>

                                        <div class="swiper-slide">
                                            <label>수학/사탐/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA black</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img03.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>최상위권을 결정짓는 고난도 실전 모의고사
                                                </li>
                                                <li>1등급을 넘어 만점을 향한 고난도 문항 완전 정복
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>

                                        <div class="swiper-slide">
                                            <label>수학/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA blue</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img04.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>안정적인 상위권 성적 확보를 위한 실전 모의고사
                                                </li>
                                                <li>상수 문제 집중 훈련으로 실수 완벽 방어
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>


                                        <div class="swiper-slide">
                                            <label>국/수/영/사탐/과탐Ⅰ&middot;Ⅱ</label>
                                            <p class="tit"><strong>OMEGA weekly</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img05.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매주 제공되는 하프 문항 연습 문제로<br>
                                                실전 감각 유지 
                                                </li>
                                                <li>빠른 정답 확인을 위한 표지 날개 구성으로<br>
                                                학습 시간 단축
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro02"></div>
                                </div>
                                <p class="r-txt">* 학원별로 콘텐츠는 상이할 수 있습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">
                                    성적 향상을 위한 핵심 발판,<br>‘나의 위치 파악’<br>
                                    <strong>전국 집체 모의고사 시리즈</strong>
                                </p>
                                <div class="pro-slide pro01 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>전국 대단위 실전 모의고사</strong><br>
                                                ‘전국 수험생’과 경쟁하는 수능 실전 시뮬레이션
                                            </p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img06.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>6월 모평&middot;수능 출제 범위를 반영한 전 과목<br>
                                                실전 모의고사
                                                </li>
                                                <li>개인 성적 분석 리포트를 통한 섬세한 성적 분석
                                                </li>
                                                <li>메가스터디 과목별 대표 강사진의 해설 및<br>부가 
                                                콘텐츠 제공
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/2025/jdsm/index.asp">자세히 보기</a>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>메가X대성 더 프리미엄 모의고사</strong><br>
                                                전국 단위 전 과목 실전 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img07.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>러셀X메가스터디학원, 대성학원 재원생 전체<br>
                                                응시로 상세 성적 비교 분석 및 실력 파악
                                                </li>
                                                <li>과목별 전체 출제진의 다 회차 검토를 거친<br>
                                                고퀄리티 문항
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/intro/2022/premium/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro01"></div>
                                </div>
                                <p class="r-txt">* 학원별로 콘텐츠는 상이할 수 있습니다.</p>
                            </div>
                        </div>
                        
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">수능 수학 실력 향상을 위한<br>
                                    <strong>수학 전용 실전 콘텐츠</strong></p>
                                <div class="pro-slide pro03 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>수학 공통+선택</label>
                                            <p class="tit"><strong>ALPHA</strong></p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img08.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>수능 수학 기출 및 신유형 동시 연습으로<br>
                                                취약점 보완
                                                </li>
                                                <li>서초 메가스터디학원 전임 강사 직접 출제 및<br>
                                                SKY&middot;의치대 등 멘토 출신들의 전문적인 검토로<br>
                                                탄생한 고퀄리티 문항
                                                </li> 
                                            </ul>
                                            <a class="pr-btn" href="/event/2025/alpha/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <!-- <div class="swiper-pagination pro03"></div> -->
                                </div>
                                <p class="r-txt mt0">* ALPHA는 재원생 대상으로 ‘전액 지원’되며,<br>
                                학원별로 콘텐츠는 상이할 수 있습니다.</p>
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
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img09.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 시간별&middot;과목별 목표 학습량과<br>
                                                실제 학습량 비교
                                                </li>
                                                <li>담임 선생님의 피드백을 통해 학습 상황 점검
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 일일수학 30제
                                            </strong><br>
                                                매일 일정한 양의 수학 문제풀이</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img10.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 일정량의 수학 문제 학습으로<br>
                                                문제 풀이 습관 형성
                                                </li>
                                                <li>지속적인 문제 풀이 훈련으로 실수 방지
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 총평노트</strong><br>
                                                시험 성적 누적 관리 및 자기 평가</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img11.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>기록을 통해 성적 변화를 확인하고 향후<br>
                                                목표 설정 및 보완
                                                </li>
                                                <li>실수&middot;오답을 바탕으로 자기 평가를 진행해<br>
                                                취약점 개선
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro04"></div>
                                </div>
                                <p class="r-txt">* 학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’되며,<br>
                                학원별로 콘텐츠는 상이할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //program-slide -->
            </div>
        </div>

        <!-- <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/cont05_img.jpg" alt=""></p> -->
    </div>
    <% End If %>

    <% If campus_code = "CD0250" Then '부천 %>
    <div class="cont06 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont06_tit.png" alt="수능까지 이어지는 시기별 맞춤 학습 콘텐츠"></p>
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
                <!-- program-navi -->

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

    <div class="cont07">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/lock/cont07_tit.jpg" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정"></p>
            <a href="javascript:void(0);" class="program_link" alt=""><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont07_img.jpg" alt=""></a>
            
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
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
                <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
            </div>
            
        </div>
    </div>
    <% End If %>
</div>
<div class="bt-banner">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/lock/bt-banner.jpg" alt=""></p>
</div>