<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont03">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont03_tit.jpg" alt="여름방학동안 N수생과 격차를 줄이고 최상위권으로 도약이 필요합니다."></p>
        <div class="inner">
            <% If campus_code = "CD0257" Then '중계 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont03_stit01.jpg" alt="여름방학은 최상위권 도약을 위해 놓칠 수 없는 기회"></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/cont03_stit01.jpg" alt="여름방학은 최상위권 도약을 위해 놓칠 수 없는 기회"></p>
            <% End If %>
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
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/inSlide_cont01.jpg" alt=""></p>
                        </div>
                        <!-- //학습에만 몰입 -->
                        <!-- 학습 습관 향상 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/inSlide_cont02.jpg" alt=""></p>
                        </div>
                        <!-- //학습 습관 향상 -->
                        <!-- 성적 상승 기회 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/inSlide_cont03.jpg" alt=""></p>
                        </div>
                        <!-- //성적 상승 기회 -->
                        <!-- 수시 지원 전략 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/inSlide_cont04.jpg" alt=""></p>
                        </div>
                        <!-- //수시 지원 전략 -->
                    </div>
                    <div class="swiper-pagination firstClass"></div>
                </div>
            </div>
            <!-- //최상위권 탭슬라이드 -->
            <% If campus_code = "CD0257" Then '중계 %>
            <p class="slideEnd"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont03_stit02.jpg" alt="여름방학동안 최상위권 도약을 위한 학년별 학습 목표"></p>
            <% Else %>
            <p class="slideEnd"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/cont03_stit02.jpg" alt="여름방학동안 최상위권 도약을 위한 학년별 학습 목표"></p>
            <% End If %>
            <% If campus_code = "CD0245" Then '목동 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/gradeSlide_cont01.jpg" alt=""></p>
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
                        <% If campus_code <> "CD0001" and campus_code <> "CD0341" and campus_code <> "CD0247" and campus_code <> "CD0342" and campus_code <> "CD0244" Then '대치/코어대전/강남/대구/분당 제외 %>
                        <div class="swiper-slide">
                            고1
                        </div>
                        <% End If %>
                    </div>
                </div>
                <div class="grade-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 고3 -->
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/gradeSlide_cont01.jpg" alt=""></p>
                        </div>
                        <!-- //고3 -->
                        <!-- 고2 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0345" Then '코어창원 %>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/gradeSlide_cont02.jpg" alt=""></p>
                            <% Else %>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/gradeSlide_cont02.jpg" alt=""></p>
                            <% End If %>
                        </div>
                        <!-- //고2 -->
                        <% If campus_code <> "CD0001" and campus_code <> "CD0341" and campus_code <> "CD0247" and campus_code <> "CD0342" and campus_code <> "CD0244" Then '대치/코어대전/강남/대구/분당 제외 %>
                        <!-- 고1 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0345" Then '코어창원 %>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/gradeSlide_cont03.jpg" alt=""></p>
                            <% Else %>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/gradeSlide_cont03.jpg" alt=""></p>
                            <% End If %>
                        </div>
                        <!-- //고1 -->
                        <% End If %>
                    </div>
                </div>
            </div>
            <!-- //학년별 탭슬라이드 -->
            <% End If %>
        </div>
    </div>
</div>