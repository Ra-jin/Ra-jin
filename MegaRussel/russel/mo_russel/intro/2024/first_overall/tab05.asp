<div class="cont js-cont-wrap <%=campusName%>">
    <!-- cont07 -->
    <div class="cont07">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/cont07_tit01.jpg" alt="" /></p>
        <div class="inner">
            <div class="swiper-container baja-slide">
                <div class="swiper-wrapper">
                    <!-- 집단적인 면학분위기 -->
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/baja_slide01.jpg" alt="집단적인 면학분위기"></div>
                    </div>
                    <!-- 학습 동선 최소화 -->
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/baja_slide02.jpg" alt="학습 동선 최소화"></div>
                    </div>
                    <!-- 개방형 구조 -->
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/baja_slide03.jpg" alt="개방형 구조&학습에 최적화된 환경"></div>
                    </div>
                    <!-- 자체 식당 운영 -->
                    <% If campus_code <> "CD0249" Then '영통 %>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/baja_slide04.jpg" alt="자체 식당 운영"></div>
                    </div>
                    <% End If %>
                </div>
                <div class="swiper-pagination type07"></div>
            </div>

        </div>



    </div>
    <!-- //cont07 -->


    <!-- cont08 -->
    <div class="cont08">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont08_tit.jpg" alt="최상위권 전문 입시 담임선생님의 1:1 맞춤 관리"></p>
        <div class="inner">
            <div class="manage-slide-wrap">
                <div class="manage-slide-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            입시<br>
                            관리
                        </div>
                        <div class="swiper-slide">
                            학습<br>
                            관리
                        </div>
                        <div class="swiper-slide">
                            생활<br>
                            관리
                        </div>
                        <div class="swiper-slide">
                            태도<br>
                            점수
                        </div>
                    </div>
                </div>
                <div class="swiper-container manage-slide">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide">
                            <div class="trans-img">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/manage_tab01_slide01.jpg" alt="">
                            </div>
                            <ul>
                                <li>
                                    <p>최적의 입시전략 제시</p>
                                    <ul>
                                        <li>입학 전 성적부터 모의고사까지 성적 데이터를 체계적으로 관리</li>
                                        <li>재원생 결과를 기반으로 개인 목표에 맞춘 입시(수시/정시) 방향 제시</li>
                                    </ul>
                                </li>
                                <li>
                                    <p>개인 맞춤 1:1 상담
                                    </p>
                                    <ul>
                                        <li>성적 포트폴리오와 실제 사례를 기반으로한 체계적, 전문적 상담</li>
                                        <li>목표 학교/학과에 필요한 요소와 점수 확보에 최적화된 학습 계획 수립</li>
                                    </ul>
                                </li>
                                <li>
                                    <p>입시 설명회 및 공개특강
                                    </p>
                                    <ul>
                                        <li>최상위권  대학 합격 선배와의 간담회, 입시/학습 특강 진행
                                        </li>
                                        <li>최신 수험 정보와 다양한 입시 콘텐츠 제공</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide">
                            <div class="trans-img">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/manage_tab02_slide01.jpg" alt="">
                            </div>
                            <ul>
                                <li>
                                    <p>올바른 학습 루틴  형성
                                    </p>
                                    <ul>
                                        <li>수험생 상황에 맞춰 적합한 학습방법 설계</li>
                                        <li>학습 플래너 점검을 통한 학습 스케줄링 능력 향상
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <p>균형있는 학습 습관 형성
                                    </p>
                                    <ul>
                                        <li>러셀 학습 콘텐츠를 활용한 학습법 제시
                                        </li>
                                        <li>체득한 습관을 토대로 균형적인 공부 습관 형성
                                          </li>
                                    </ul>
                                </li>
                                <li>
                                    <p>개별 학습 상담
                                    </p>
                                    <ul>
                                        <li>전 과목 학습 상태 분석으로 과목별 학습량 조절 및 약점 보완 방법 제시
                                        </li>
                                        <li>멘탈 케어 및 구체적인 학습전략과 노하우 전수</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide">
                            <div class="trans-img">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/manage_tab03_slide01.jpg" alt="">
                            </div>
                            <ul>
                                <li>
                                    <p>출결 관리 시스템</p>
                                    <ul>
                                        <li>매 교시 철저한 출결 관리 및 상시 모니터링
                                        </li>
                                        <li>지각, 무단 외출, 무단 결석 등의 관리로 규칙적인 생활 습관 형성
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <p>정신적 멘토링
                                    </p>
                                    <ul>
                                        <li>학생에 대한 존중,과 배려로 동반자 역할 수행
                                        </li>
                                        <li>바른공부 자습전용관 가장 가까운 곳에 담임선생님 상주
                                        </li>
                                        <li>학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 정신적 멘토링 진행
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <!-- 태도점수 -->
                        <% If campus_code = "CD0340" or campus_code = "CD0342" or campus_code = "CD0349" Then '코어광주/대구/울산 %>
                        <div class="swiper-slide">
                            <div class="trans-img size">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/manage_tab04_slide01.jpg" alt="">
                            </div>
                            <ul>
                                <li>
                                    <p>강력한 태도 점수 제도</p>
                                    <ul>
                                        <li>엄격한 기준의 태도 점수 제도 시행
                                        </li>
                                        <li>태도 점수 초과 시 최대 퇴원 조치
                                        </li>
                                        <li>휴대폰 등 전자기기 사용 제재, 자습시간 중 자리 이동 제한, 원내 소란행위 등 면학분위기 저해 요소 차단 및 관리</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <% ElseIf campus_code = "CD0249" Then '영통 %>
                        <div class="swiper-slide">
                            <div class="trans-img">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/manage_tab04_slide01.jpg" alt="">
                            </div>
                            <ul>
                                <li>
                                    <p>강력한 태도 점수 제도</p>
                                    <ul>
                                        <li>엄격한 기준의 태도 점수 제도 시행
                                        </li>
                                        <li>태도 점수 초과 시 최대 퇴원 조치
                                        </li>
                                        <li>휴대폰 등 전자기기 사용 제재, 자습시간 중 자리 이동 제한, 원내 소란행위 등 면학분위기 저해 요소 차단 및 관리</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont08 -->

    <!-- cont09 -->
    <div class="cont09 <%=campusName%>">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont09_tit.jpg" alt="최상위권 합격생이 추천하는 윈터스쿨 콘텐츠"></p>
        <div class="inner">
            <div class="tab-wrap">
                <a href="javascript:void(0)" class="on">올바른 학습 습관</a>
                <a href="javascript:void(0)">꾸준한 실력 향상</a>
            </div>
            <div class="tab-cont on">
                <div class="swiper-container rolling-slide type01">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide01.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide02.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide01.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide02.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide01.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide02.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
            <div class="tab-cont two">
                <div class="swiper-container rolling-slide type02">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide03.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide04.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide05.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide03.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide04.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide05.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide03.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide04.jpg" alt="">
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/winter_slide05.jpg" alt="">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <% If campus_code = "CD0249" Then '영통 %>
        <p class="rolling-slide-end"></p>
        <% Else %>
        <div class="rolling-slide-end"><img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/first_overall/cont09_img.jpg" alt="윈터스쿨 실전 모의고사"></div>
        <p class="r-txt">* 해당 콘텐츠는 러셀 재원생 대상으로 ‘전액지원’ 되는 콘텐츠입니다.</p>
        <% End If %>
    </div>
    <!-- //cont09 -->

    <div class="bottom-bar">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/bottom-bar.jpg" alt="목표가 현실이 되는 겨울방학, 최상위권이 집결하는 러셀CORE 광주 윈터스쿨 종합반과 함께하면 결과는 최상위권입니다."></div>
    </div>
</div>