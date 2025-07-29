<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont03 js-cont"> 
        <!-- 학년별 탭슬라이드 -->
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/cont03_tit.jpg" alt="여름방학을 치열하게 보내야 최상위권으로 도약 할 수 있습니다."></p>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/summer_overall/cont03_stit01.jpg" alt="학년별 학습 목표"></p>
            <div class="grade-slide-wrap">
                <div class="grade-navi">
                    <div class="swiper-wrapper">
                        <% If campus_code <> "CD0342" and campus_code <> "CD0340" Then '대구/코어광주 제외 %>
                        <div class="swiper-slide">고1</div>
                        <% End If %>
                        <% If campus_code <> "CD0340" Then '코어광주 제외 %>
                        <div class="swiper-slide">고2</div>    
                        <% End If %>                    
                        <div class="swiper-slide">고3</div>
                    </div>
                </div>
                <div class="grade-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 고1 -->
                        <% If campus_code <> "CD0342" and campus_code <> "CD0340" Then '대구/코어광주 제외 %>
                        <div class="swiper-slide">
                            <p class="tit">학습 습관 형성 및 <br>
                                2학기 내신 준비!
                            </p>
                            <ul class="dot-blue">
                                <li>대입 성공을 위한 학습 습관 형성</li>
                                <li>1학기 내신 취약 단원/파트 보완</li>
                                <li>2학기 내신 대비 개념/유형 학습</li>
                            </ul>
                        </div>
                        <% End If %>
                        <!-- //고1 -->
                        <!-- 고2 -->
                        <% If campus_code <> "CD0340" Then '코어광주 제외 %>
                        <div class="swiper-slide">
                            <p class="tit">경쟁자보다 한발 빠르게 <br>
                                수능과 내신을 동시에!
                            </p>
                            <ul class="dot-blue">
                                <li>2학기 내신 대비 및 수능 전형 준비</li>
                                <li>주요 과목 수능 대비 학습</li>
                                <li>기출 등을 활용한 수능형 개념/유형 학습</li>
                            </ul>
                        </div>
                        <% End If %>       
                        <!-- //고2 -->

                        <!-- 고3 -->
                        <div class="swiper-slide">
                            <p class="tit">N수생과의 격차를 좁혀 <br>
                                최상위권으로 도약!
                            </p>
                            <ul class="dot-blue">
                                <li>6월 평가원 기준 핵심 개념/유형 총 정리</li>
                                <li>약점, 실수 유형 집중 학습 및 보완</li>
                                <li>9월 평가원 대비 실전 모의고사 집중 훈련</li>
                            </ul>
                        </div>
                        <!-- //고3 -->   
                    </div>
                </div>
            </div>
            <!-- //학년별 탭슬라이드 -->
        </div>   
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer_overall/cont03_stit02.jpg" alt=""></p>
            <div class="method-wrap">
                <div class="method-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">학습에만<br> 몰입</div>
                        <div class="swiper-slide">학습 습관 <br>유지</div>
                        <div class="swiper-slide">약점 보완<br>학습</div>
                        <div class="swiper-slide">수시 대비<br>점검</div>
                    </div>
                </div>
                <div class="method-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 학습에만 몰입 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                온전히 학습에만 몰입
                            </p>
                            <p class="dc-txt">
                                개방형 구조 등 최적의 학습 환경과 <br>
                                최상의 면학 분위기에서 의무 자습으로<br>
                                학기 중 대비 충분한 자습 시간 확보
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img01.jpg" alt=""></p>
                        </div>
                        <!-- 학습 습관 유지 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                철저한 관리로 학습 습관 유지
                            </p>
                            <p class="dc-txt">
                                입시 담임 선생님의 학기 중과 같은 <br>
                                규칙적인 등&middot;하원 및 매 교시 출결 관리로<br>
                                방학기간 동안 흐트러질 수 있는 학습 습관 유지
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img02.jpg" alt=""></p>
                        </div>
                        <!-- 약점 보완학습 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                약점 보완 및 2학기 대비 학습
                            </p>
                            <p class="dc-txt">
                                학기 중 부족했던 과목/파트 보완하고 <br>
                                나에게 꼭 필요한 강좌를 선택하여<br>
                                <% If campus_code = "CD0341" Then '대전 %>
                                2학기 모의평가 대비 학습
                                <% Else %>
                                2학기 모의평가/내신 대비 학습
                                <% End If %>
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img03.jpg" alt=""></p>
                        </div>
                        <!-- 수시 대비 점검 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                수시 전형 대비 사전 점검 및 설계
                            </p>
                            <p class="dc-txt">
                                입시 전문가인 입시 담임 선생님과의 <br>
                                정확한 학생부 진단 후 목표 대학/학과 등 <br>
                                수시 지원 전략 수립
                            </p>
                            <p class="dc-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/summer/method_img04.jpg" alt=""></p>
                        </div>
                    </div>
                </div>
            </div>          
        </div>   
    </div>
</div>