<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont03">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/cont03_tit.jpg" alt="여름방학동안 N수생과 격차를 줄이고 최상위권으로 도약이 필요합니다."></p>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/cont03_stit01.jpg" alt="여름방학은 최상위권 도약을 위해 놓칠 수 없는 기회"></p>
            <!-- 최상위권 탭슬라이드 -->
            <div class="firstClass-slide-wrap">
                <div class="firstClass-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            학습에만<br>
                            몰입
                        </div>
                        <div class="swiper-slide">
                            학습 습관<br>
                            향상
                        </div>
                        <div class="swiper-slide">
                            성적 상승<br>
                            기회
                        </div>
                        <div class="swiper-slide">
                            수시 지원<br>
                            전략
                        </div>
                    </div>
                </div>
                <div class="firstClass-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 학습에만 몰입 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/inSlide_cont01.jpg" alt=""></p>
                        </div>
                        <!-- //학습에만 몰입 -->
                        <!-- 학습 습관 향상 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/inSlide_cont02.jpg" alt=""></p>
                        </div>
                        <!-- //학습 습관 향상 -->
                        <!-- 성적 상승 기회 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/inSlide_cont03.jpg" alt=""></p>
                        </div>
                        <!-- //성적 상승 기회 -->
                        <!-- 수시 지원 전략 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/inSlide_cont04.jpg" alt=""></p>
                        </div>
                        <!-- //수시 지원 전략 -->
                    </div>
                    <div class="swiper-pagination firstClass"></div>
                </div>
            </div>
            <!-- //최상위권 탭슬라이드 -->

            <p class="slideEnd"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/cont03_stit02.jpg" alt="여름방학동안 최상위권 도약을 위한 학년별 학습 목표"></p>
            <% If campus_code = "CD0340" Then '코어 광주 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer_overall/gradeSlide_cont01.jpg" alt=""></p>
            <% Else %>
            <!-- 학년별 탭슬라이드 -->
            <div class="grade-slide-wrap">
                <div class="grade-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            고3
                        </div>
                        <div class="swiper-slide">
                            고2
                        </div>
                        <div class="swiper-slide">
                            고1
                        </div>
                    </div>
                </div>
                <div class="grade-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 고3 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/gradeSlide_cont01.jpg" alt=""></p>
                        </div>
                        <!-- //고3 -->
                        <!-- 고2 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/gradeSlide_cont02.jpg" alt=""></p>
                        </div>
                        <!-- //고2 -->
                        <!-- 고1 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer_overall/gradeSlide_cont03.jpg" alt=""></p>
                        </div>
                        <!-- //고1 -->
                    </div>
                </div>
            </div>
            <!-- //학년별 탭슬라이드 -->
            <% End If %>
        </div>
    </div>
</div>