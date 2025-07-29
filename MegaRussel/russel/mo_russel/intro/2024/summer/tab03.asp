<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont04">
        <p>
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont04_tit.jpg" alt="여름방학, 최상위권 도약을 위한 러셀 썸머스쿨 프로그램">
            <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어학원/대구/울산 %>
            <a class="ico-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_bus.png" alt="코어 전용 버스 딱지"></a>
            <% End If %>
        </p>
        <div class="inner">
            <!-- 바자관 탭슬라이드 -->
            <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어학원/대구/울산 %>
            <div class="studyHall-slide-wrap core">
            <% Else %>
            <div class="studyHall-slide-wrap">
            <% End If %>
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide type02">
                            집단적인<br>
                            면학분위기
                        </div>
                        <div class="swiper-slide type02">
                            학습 동선<br>
                            최소화
                        </div>
                        <div class="swiper-slide">
                            충분한<br>
                            자습시간 확보
                        </div>
                        <div class="swiper-slide">
                            개방형 구조
                        </div>
                        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어학원/대구/울산 %>
                        <div class="swiper-slide">
                            자체 식당 운영
                        </div>
                        <% End If %>
                    </div>
                </div>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/studyHallSlide_cont01.jpg" alt=""></p>
                        </div>
                        <!-- //집단적인 면학분위기 -->
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/studyHallSlide_cont02.jpg" alt=""></p>
                        </div>
                        <!-- //학습 동선 최소화 -->
                        <!-- 충분한 자습시간 확보 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/studyHallSlide_cont03.jpg" alt=""></p>
                            <% If campus_code = "CD0245" or campus_code = "CD0250" Then '목동/부천 %>
                            <span class="bt-tt js-mask"></span>
                            <% End If %>
                        </div>
                        <!-- //충분한 자습시간 확보 -->
                        <!-- 개방형 구조 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/studyHallSlide_cont04.jpg" alt=""></p>
                        </div>
                        <!-- //개방형 구조 -->
                        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어학원/대구/울산 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/studyHallSlide_cont05.jpg" alt=""></p>
                        </div>
                        <!-- //자체 식당 운영 -->
                        <% End If %>
                    </div>
                    <div class="swiper-pagination studyHall"></div>
                </div>
            </div>
            <!-- //바자관 탭슬라이드 -->

            <% If campus_code = "CD0245" or campus_code = "CD0250" Then '목동/부천 %>
            <!-- 바자관 시간표 -->
            <!-- #include virtual = "/intro/2024/summer/baja_time_table.asp" -->
            <!-- //바자관 시간표 -->
            <% End If %>
        </div>
    </div>
    <div class="cont05">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont05_tit.jpg" alt="최상위권 역임 입시 담임선생님의 1:1 맞춤 관리"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/cont05_tit.jpg" alt="최상위권 역임 입시 담임선생님의 1:1 맞춤 관리"></p>
        <% End If %>
            <!-- 관리 탭슬라이드 -->
        <div class="manage-slide-wrap">
            <div class="manage-navi">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        입시관리
                    </div>
                    <div class="swiper-slide">
                        학습관리
                    </div>
                    <div class="swiper-slide">
                        생활관리
                    </div>
                    <% If campus_code <> "CD0244" Then '분당 제외 %>
                    <div class="swiper-slide">
                        입시특강/ <br> 설명회
                    </div>
                    <% End If %>
                </div>
            </div>
            <div class="manage-slide swiper-container">
                <div class="swiper-wrapper">
                    <!-- 입시관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/manageSlide_cont01.jpg" alt=""></p>
                    </div>
                    <!-- //입시관리 -->
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/manageSlide_cont02.jpg" alt=""></p>
                    </div>
                    <!-- //학습관리 -->
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/manageSlide_cont03.jpg" alt=""></p>
                    </div>
                    <!-- //생활관리 -->
                    <!-- 입시특강/설명회 -->
                    <% If campus_code <> "CD0244" Then '분당 제외 %>
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/manageSlide_cont04.jpg" alt=""></p>
                    </div>
                    <% End If %>
                    <!-- //입시특강/설명회 -->
                </div>
                <div class="swiper-pagination manage"></div>
            </div>
        </div>
            <!-- //관리 탭슬라이드 -->
    </div>

    <% If campus_code = "CD0244" Then '분당 %>
    <div class="cont08">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont08_tit.jpg" alt="최상위권 역임 입시 담임선생님의 1:1 맞춤 관리"></p>
            <!-- 관리 탭슬라이드 -->
        <div class="manage-slide-wrap">
            <div class="manage-navi02">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        입시 특강/ <br> 설명회
                    </div>
                    <div class="swiper-slide">
                        테스트
                    </div>
                    <div class="swiper-slide">
                        종강 <br> 리포트
                    </div>
                </div>
            </div>
            <div class="manage-slide02 swiper-container">
                <div class="swiper-wrapper">
                    <!--  입시 특강 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/manageSlide2_cont01.jpg" alt=""></p>
                    </div>
                    <!-- //입시 특강 -->
                    <!-- 테스트 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/manageSlide2_cont02.jpg" alt=""></p>
                    </div>
                    <!-- //테스트 -->
                    <!-- 종강 리포트 -->
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/manageSlide2_cont03.jpg" alt=""></p>
                    </div>
                    <!-- //종강 리포트 -->
                </div>
                <div class="swiper-pagination manage"></div>
            </div>
        </div>
            <!-- //관리 탭슬라이드 -->
    </div>
    <% End If %>

    <div class="cont06">
        <% If campus_code = "CD0244" Then '분당 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont06_tit.jpg" alt="메가스터디 온오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/cont06_tit.jpg" alt="메가스터디 온오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></p>
        <% End If %>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/summer/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->

        <div class="danka-box">
            <p>
                반드시 실력이 향상되는 <br>
                여름방학 집중 특강<br>
                <strong>썸머특강</strong>
            </p>
            <ul class="list-check">
                <li>나에게 필요한 과목/진도를 선택 수강하여 취약점 집중 보완</li>
                <li>취약 과목(파트) 집중 보완 및 수시 최저 등급 대비 집중 학습을 위한 단기 집중 특강</li>
            </ul>
            <% If campus_code = "CD0247" or campus_code = "CD0248" Then '강남/평촌 %>
            <div class="danka_btn">
                <a href="<%=danka_summer_url%>"><%=summer_btn%></a>
                <a href="<%=danka_summer_url02%>"><%=summer_btn02%></a>
            </div>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <div class="danka_btn">
                <a href="<%=danka_summer_url%>"><%=summer_btn%></a>
                <a href="<%=danka_summer_url03%>"><%=summer_btn03%></a>
                <a href="<%=danka_summer_url02%>"><%=summer_btn02%></a>
            </div>
            <% Else %>
            <div class="danka_btn">
                <a href="<%=danka_summer_url%>">바로가기</a>
            </div>
            <% End If %>
        </div>
        <div class="danka-box">
            <p>
                기초부터 실전까지 <br>
                빈틈없는 커리큘럼으로 수능 실력 향상<br>
                <strong>정규&middot;특강 단과</strong>
            </p>
            <ul class="list-check">
                <li>
                    <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" Then '코어학원/대구/울산 %>
                        <% If campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0342" or campus_code = "CD0349" Then '코어광주/코어대전/대구/울산 %>
                        메가스터디 온·오프 수능 전문 강사진의 몰입감 높은 현장강의와 대치동 LIVE 강의
                        <% Else %>
                        메가스터디 온·오프 수능 전문 강사진의 몰입감 높은 대치동 LIVE 강의
                        <% End If %>
                    <% Else %>
                    메가스터디 온·오프 수능 전문 강사진의 몰입감 높은 현장강의
                    <% End If %>
                </li>
                <li>
                    내게 필요한 과목별/수준별/진도별 맞춤 수업 전략적으로 선택
                </li>
                <li>수업 전후 선생님의 학습관리 진행으로 1:1 맞춤 완전학습</li>
            </ul>
            <div class="danka_btn">
                <a href="<%=danka_regular_url%>">바로가기</a>
            </div>
        </div>
    </div>
    
    <div class="cont07">
        <% If campus_code = "CD0257" or campus_code = "CD0244" Then '중계/분당 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont07_tit.jpg" alt="9월 평가원 모의고사, 수능에 최적화된 최상위권 맞춤 실전 학습 콘텐츠"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/cont07_tit.jpg" alt="9월 평가원 모의고사, 수능에 최적화된 최상위권 맞춤 실전 학습 콘텐츠"></p>
        <% End If %>
        <!-- 학습 콘텐츠 슬라이드 -->
        <div class="program-slide swiper-container">
            <div class="swiper-wrapper">
                <% If isCore = 1 or campus_code = "CD0349" Then '코어학원/울산 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont04.jpg" alt="러셀CORE Weekly 모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont01.jpg" alt="QUEL 모의고사">
                </div>
                <% If campus_code <> "CD0343" Then '코어원주 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont02.jpg" alt="E-QUEL 모의고사">
                </div>
                <% End If %>
                <% If campus_code = "CD0244" Then '분당 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/programSlide_cont04.jpg" alt="러셀CORE Weekly 모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont03.jpg" alt="메대프 모의고사">
                </div>
                <% If campus_code = "INTRO" or campus_code = "CD0250" or campus_code = "CD0342" or campus_code = "CD0257" Then '인트로/부천/대구/중계 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/programSlide_cont04.jpg" alt="러셀CORE Weekly 모의고사">
                </div>
                <% ElseIf campus_code = "CD0245" Then '목동 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont10.jpg" alt="장영진 6PACK 모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont05.jpg" alt="월간 학습지(월간 장영진)">
                </div>
                <% If campus_code = "CD0245" Then '목동 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont06.jpg" alt="러셀 학습 플래너">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont07.jpg" alt="일일수학 30제">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont08.jpg" alt="러셀 총평노트">
                </div>
                <% ElseIf campus_code = "CD0248" Then '평촌 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/programSlide_cont09.jpg" alt="6PACK 모의고사">
                </div>
                <% End If %>
            </div>
            <div class="swiper-pagination program"></div>
        </div>
        <!-- //학습 콘텐츠 슬라이드 -->

        <span class="r-txt">* 위 콘텐츠는 썸머스쿨 기간 외 수능일까지 <br> 진행되는 콘텐츠가 포함되어 있습니다.</span>

    </div>
    <div class="bottom-bar">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><%=txtCampus%> 썸머스쿨에서<br>
            <strong>목표하는 2025학년도 메디컬&최상위권 <br> 대입성공을 이룰 수 있습니다.</strong>
        </p>
        <% Else %>
        <p>최상위권이 집결하는 <%=txtCampus%> 썸머스쿨에서<br>
            <strong>목표하는 2025학년도 메디컬&최상위권 <br> 대입성공을 이룰 수 있습니다.</strong>
        </p>
        <% End If %>
    </div>
</div>