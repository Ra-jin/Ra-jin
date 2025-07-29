<div class="cont03 js-cont-wrap js-cont">
    <div class="inner">
        
        <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_tit_core.jpg" alt="러셀CORE 윈터스쿨, 왜 최상위권이 먼저 선택할까요?"></div>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_img02_core.jpg" alt=""></div>
        
        <% ElseIf campus_code = "CD0001" OR campus_code = "CD0342" OR campus_code = "CD0349" OR campus_code = "CD0247" Then '대치/대구/울산/강남 %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_tit.jpg" alt="러셀 윈터스쿨, 왜 최상위권이 먼저 선택할까요?"></div>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_img02_<%=campusName%>.jpg" alt=""></div>
        
        <% ElseIf campus_code = "CD0244" or campus_code = "CD0257" Then '분당/중계 %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_tit_<%=campusName%>.jpg" alt="러셀 윈터스쿨 왜 최상위권이 먼저 선택할까요?"></div>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_img02_<%=campusName%>.jpg" alt=""></div>
        
        <% Else %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_tit.jpg" alt="러셀 윈터스쿨 왜 최상위권이 먼저 선택할까요?"></div>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont03_img02.jpg" alt=""></div>
        <% End If %>
    </div>
</div>
<div class="cont04 js-cont">
    <div class="inner">
        <% If campus_code = "CD0257" Then '중계 %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_jg/2023/winter/cont04_tit02.jpg" alt="메가스터디 온오프 NO.1 강사진의 최상위권 수준별 맞춤 단과"></div>
        <% Else %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont04_tit02.jpg" alt="메가스터디 온오프 NO.1 강사진의 최상위권 수준별 맞춤 단과"></div>
        <% End If %>
        <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont04_img02_core.jpg" alt=""></div>
        <% Else %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont04_img02_1.jpg" alt=""></div>
        <% End If %>
    </div>
    
    <!-- 선생님 슬라이드 -->
    <!-- #include virtual = "/intro/2023/winter/teacher_slide.asp" -->
    <!-- //선생님 슬라이드 -->
    <div class="inner">
        <ul class="l-danka">
        <% If campus_code = "CD0001" OR campus_code = "CD0244" OR campus_code = "CD0249" OR campus_code = "CD0257"  OR campus_code = "CD0248" Then '대치/분당/영통/중계/평촌 %>
            <li>
                <a href="<%=regular_url%>" class="danka-link">
                    <span>2024년<br>1월 개강</span>
                    <p>수능 1등급을 위한 탄탄한 커리큘럼</p>
                    <div>정규 &middot; 특강 단과</div>
                </a>
            </li>
            <li>
                <a href="<%=winter_url%>" class="danka-link">
                    <span>2024년<br>1월 개강</span>
                    <p>겨울방학 실력 향상을 위한 
                        단기 집중 완성</p>
                    <div>윈터특강</div>
                </a>
            </li>
        <% ElseIf campus_code = "CD0250" Then '부천 %>
            <li>
                <a href="<%=regular_url%>" class="danka-link">
                    <span>12/29(금)부터<br>순차 개강</span>
                    <p>수능 1등급을 위한 탄탄한 커리큘럼</p>
                    <div>정규 &middot; 특강 단과</div>
                </a>
            </li>
            <li>
                <a href="<%=winter_url%>" class="danka-link">
                    <span style="padding-right: 15px; padding-left: 17px;">1/2(화)부터<br>순차 개강</span>
                    <p>겨울방학 실력 향상을 위한 
                        단기 집중 완성</p>
                    <div>윈터특강</div>
                </a>
            </li>
        <% Else %>
            <li>
                <a href="<%=regular_url%>" class="danka-link">
                    <% If campus_code = "CD0246" or campus_code = "CD0247" Then '센텀/강남 %>
                    <span>2024년<br>2월 개강</span>
                    <% Else %>
                    <span>2024년<br>1월 개강</span>
                    <% End If %>
                    <p>수능 1등급을 위한 탄탄한 커리큘럼</p>
                    <div>정규 단과</div>
                </a>
            </li>
            <% If campus_code = "CD0247" OR campus_code = "CD0245" OR campus_code = "CD0246" Then '강남/목동/센텀 %>
            <li>
                <div class="danka-link">
                    <% If campus_code = "CD0246" or campus_code = "CD0247" Then '센텀/강남 %>
                    <span>2024년<br>2월 개강</span>
                    <% Else %>
                    <span>2024년<br>1월 개강</span>
                    <% End If %>
                    <p>겨울방학 실력 향상을 위한 단기 집중 완성</p>
                    <div>윈터특강</div>
                </div>
                <ul>
                    <li><a href="<%=winter_url%>">고3</a></li>
                    <li><a href="<%=winter_url_go2%>">고2&middot;고1</a></li>
                </ul>
            </li>
            <% Else %>
            <li>
                <a href="<%=winter_url%>" class="danka-link">
                    <span>2024년<br>1월 개강</span>
                    <p>겨울방학 실력 향상을 위한 
                        단기 집중 완성</p>
                    <div>윈터특강</div>
                </a>
            </li>
            <% End If %>
        <% End If %>
        </ul>
    </div>
</div>
<div class="cont05 js-cont">
    <div class="inner">
        <% If campus_code = "CD0257" Then '중계 %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_jg/2023/winter/cont05_tit02.jpg" alt="전국 최상위권 집결 면학분위기로 소문난 바른공부 자습전용관"></div>
        <% Else %>
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont05_tit02.jpg" alt="전국 최상위권 집결 면학분위기로 소문난 바른공부 자습전용관"></div>
        <% End If %>
        <!-- 바자관 슬라이드 -->
        <div class="swiper-container baja-slide">
            <div class="swiper-wrapper">
                <!-- 집단적인 면학분위기 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" Then '코어광주/대전/원주/전주 %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide01_core.jpg" alt="집단적인 면학분위기"></div>
                    <% ElseIf campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0346" OR campus_code = "CD0345" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '강남/영통/부천/평촌/센텀/창원/청주/목동/분당/중계/대구/울산 %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide01_<%=campusName%>.jpg" alt="집단적인 면학분위기"></div>
                    <% Else %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide01.jpg" alt="집단적인 면학분위기"></div>
                    <% End If %>
                </div>
                <!-- 학습 동선 최소화 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" Then '코어광주/대전/원주/전주 %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide02_core02.jpg" alt="학습 동선 최소화"></div>
                    <% ElseIf campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '강남/대치/영통/부천/평촌/센텀/창원/청주/목동/분당/중계/대구/울산 %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide02_<%=campusName%>.jpg" alt="학습 동선 최소화"></div>
                    <% Else %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide02_1.jpg" alt="학습 동선 최소화"></div>
                    <% End If %>
                </div>
                <!-- 바자관 표준 시간표 -->
                <div class="swiper-slide">
                    <p>
                        <span class="time">
                            <% If campus_code = "CD0247" Then '강남 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide03_<%=campusName%>.jpg" alt="바자관 표준 시간표">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide03.jpg" alt="바자관 표준 시간표">
                            <% End If %>
                            <span class="bt-tt js-mask">바른공부 자습전용관 표준시간표</span>
                        </span>
                    </p>
                </div>
                <!-- 개방형 구조 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0341" Then '대전 %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide04_dj.jpg" alt="개방형 구조"></div>
                    <% ElseIf campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '강남/대치/영통/부천/평촌/센텀/원주/창원/청주/광주/전주/목동/분당/중계/대구/울산 %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide04_<%=campusName%>.jpg" alt="개방형 구조"></div>
                    <% Else %>
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide04_1.jpg" alt="개방형 구조"></div>
                    <% End If %>
                </div>
                <!-- 자체 식당 운영 -->
                <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어광주/대전/원주/전주/창원/청주/대구/울산 %>
                <div class="swiper-slide">
                    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/baja_slide05_core.jpg" alt="자체 식당 운영"></div>
                </div>
                <% End If %>
            </div>
            <div class="swiper-pagination type07"></div>
        </div>
        <!-- 바자관 시간표 -->
        <!-- #include virtual = "/intro/2023/winter/baja_time_table.asp" -->
        <!-- //바자관 시간표 -->
    </div>
</div>
<div class="cont06 js-cont">
    <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont06_tit_core.jpg" alt="최상위권에 검증된 관리력 최상위권 전문 입시 담임선생님의 맞춤 관리"></div>
    <div class="inner">
    <% ElseIf campus_code = "CD0257" Then '중계 %>
    <div class="inner">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_jg/2023/winter/cont06_tit.jpg" alt="최상위권에 검증된 관리력 최상위권 전문 입시 담임선생님의 맞춤 관리"></div>
    <% Else %>
    <div class="inner">
        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont06_tit.jpg" alt="최상위권에 검증된 관리력 최상위권 전문 입시 담임선생님의 맞춤 관리"></div>
        
    <% End If %>
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
                    <% If campus_code <> "CD0341" Then '대전제외 %>
                    <div class="swiper-slide">
                        가정<br>
                        통신문
                    </div>
                    <% End If %>
                </div>
            </div>
            <div class="swiper-container manage-slide">
                <div class="swiper-wrapper">
                    <!-- 입시관리 -->
                    <div class="swiper-slide">
                        <% If campus_code = "CD0001" Then '대치 %>
                        <div class="trans-img type2">
                            <!-- 두번째 슬라이드 -->
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide02_<%=campusName%>.jpg" alt="">
                            <!-- 세번째 슬라이드 -->
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide03_<%=campusName%>.jpg" alt="">
                        </div>
                        <% Else %>
                        <div class="trans-img">
                            <!-- 첫번째 슬라이드 -->
                            <% If campus_code = "CD0341" OR campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '대전/강남/영통/부천/평촌/센텀/원주/창원/청주/광주/전주/목동/분당/중계/대구/울산 %>
                            <img class="first-img" src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide01_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide01.jpg" alt="">
                            <% End If %>
                            <!-- 두번째 슬라이드 -->
                            <% If campus_code = "CD0341" OR campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '대전/강남/영통/부천/평촌/센텀/원주/창원/광주/전주/목동/분당/중계/대구/울산 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide02_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide02.jpg" alt="">
                            <% End If %>
                            <!-- 세번째 슬라이드 -->
                            <% If campus_code = "CD0341" OR campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '대전/강남/영통/부천/평촌/센텀/원주/창원/광주/전주/목동/분당/중계/대구/울산 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide03_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab01_slide03.jpg" alt="">
                            <% End If %>
                        </div>
                        <% End If %>
                        <ul>
                            <li>
                                <p>최적의 입시 전략 제시</p>
                                <ul>
                                    <li>입학 전 성적부터 모의고사까지 성적 데이터 체계적 관리</li>
                                    <li>개인 목표에 맞춘 입시(수시/정시) 방향 제시</li>
                                </ul>
                            </li>
                            <li>
                                <p>개인 맞춤 1:1 상담
                                </p>
                                <ul>
                                    <li>성적 포트폴리오와 실제 사례를 기반으로 한 전문적인상담</li>
                                    <li>목표 학교/학과에 필요한 요소와 점수 확보에 최적화된 계획 수립</li>
                                </ul>
                            </li>
                            <% If campus_code = "CD0257" Then '중계 %>
                            <li>
                                <p>입시 설명회 및 공개특강</p>
                                <ul>
                                    <li>목표 대학에 합격한 선배와의 간담회, 입시/학습 특강 진행
                                    </li>
                                    <li>최신 수험 정보와 다양한 입시 콘텐츠 제공</li>
                                </ul>
                            </li>
                            <% Else %>
                            <li>
                                <p>입시 설명회 및 공개특강</p>
                                <ul>
                                    <li>최상위권  대학 합격 선배와의 간담회, 입시/학습 특강 진행
                                    </li>
                                    <li>최신 수험 정보와 다양한 입시 콘텐츠 제공</li>
                                </ul>
                            </li>
                            <% End If %>
                        </ul>
                    </div>
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <% If campus_code = "CD0341" Then '대전 %>
                        <div class="no-trans-img">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide01_cont_dj.jpg" alt="">
                        </div>
                        <% ElseIf campus_code = "CD0342" OR campus_code = "CD0349" Then '대구/울산 %>
                        <div class="trans-img type2">
                            <!-- 첫번째 슬라이드 -->
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide01_<%=campusName%>.jpg" alt="">
                            <!-- 두번째 슬라이드 -->
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide02_<%=campusName%>.jpg" alt="">
                        </div>
                        <% Else %>
                        <div class="trans-img">
                            <!-- 첫번째 슬라이드 -->
                            <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" Then '강남/대치/영통/부천/평촌/센텀/원주/창원/전주/목동/분당/중계 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide01_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide01.jpg" alt="">
                            <% End If %>
                            <!-- 두번째 슬라이드 -->
                            <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" Then '강남/대치/영통/부천/평촌/센텀/원주/창원/전주/목동/분당/중계 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide02_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide02.jpg" alt="">
                            <% End If %>
                            <!-- 세번째 슬라이드 -->
                            <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" Then '강남/대치/영통/부천/평촌/센텀/원주/창원/전주/목동/분당/중계 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide03_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab02_slide03.jpg" alt="">
                            <% End If %>
                        </div>
                        <% End If %>
                        <ul>
                            <li>
                                <p>올바른 학습 루틴  형성
                                </p>
                                <ul>
                                    <li>수험생 상황에 맞춰 적합한 학습 방법 설계
                                    </li>
                                    <li>담임선생님의 학습 플래너 점검을 통한 학습 스케줄링 능력 향상
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <p>균형 있는 학습 습관 형성
                                </p>
                                <ul>
                                    <% If campus_code = "CD0244" Then '분당 %>
                                    <li>러셀 분당 학습 콘텐츠를 활용한 학습법 제시
                                    <% Else %>
                                    <li>러셀 학습 콘텐츠를 활용한 학습법 제시
                                    </li>
                                    <% End If %>
                                    <li>윈터스쿨 기간 체득한 습관을 토대로 균형적인 공부 습관 형성
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <p>개별 학습 상담
                                </p>
                                <ul>
                                    <li>전 과목 학습 상태 분석으로 과목별 학습량 조절 및 약점 보완 방법 제시
                                    </li>
                                    <li>학습 고민 상담을 통한 멘탈 케어 및 구체적인 학습 전략과 노하우 전수
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <% If campus_code = "CD0341" Then '대전 %>
                        <div class="trans-img type2">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide01_dj.jpg" alt="">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide02_dj.jpg" alt="">
                        </div>
                        <% Else %>
                        <div class="trans-img">
                            <!-- 첫번째 슬라이드 -->
                            <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '강남/대치/영통/부천/평촌/센텀/원주/창원/광주/전주/목동/분당/중계/대구/울산 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide01_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide01.jpg" alt="">
                            <% End If %>
                            <!-- 두번째 슬라이드 -->
                            <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '강남/대치/영통/부천/평촌/센텀/원주/창원/광주/전주/목동/분당/중계/대구/울산 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide02_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide02.jpg" alt="">
                            <% End If %>
                            <!-- 세번째 슬라이드 -->
                            <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '강남/대치/영통/부천/평촌/센텀/원주/창원/광주/전주/목동/분당/중계/대구/울산 %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide03_<%=campusName%>.jpg" alt="">
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab03_slide03.jpg" alt="">
                            <% End If %>
                        </div>
                        <% End If %>
                        <ul>
                            <% If campus_code = "CD0250" Then '부천 %>
                            <li>
                                <p>출결 관리와 교육 점수 제도 
                                </p>
                                <ul>
                                    <li>매 교시 2회 이상 철저한 출결 관리 및 상시 모니터링
                                    </li>
                                    <li>지각, 무단 외출, 무단 결석 등 면학분위기 저해 요소 관리
                                    </li>
                                    <li>엄격한 기준의 교육 점수 제도 운영
                                    </li>
                                    <li>핸드폰 수거, 자습 시간 중 자리 이동 제한 등 불필요한 요소 차단 및 관리
                                    </li>
                                </ul>
                            </li>
                            <% ElseIf campus_code = "CD0342" OR campus_code = "CD0349" Then '대구/울산 %>
                            <li>
                                <p>출결 관리와 태도 점수 제도 
                                </p>
                                <ul>
                                    <li>1일 8회 이상 매 교시 철저한 출결 관리 및 상시 모니터링
                                    </li>
                                    <li>지각, 무단 외출, 무단 결석 등 면학분위기 저해 요소 관리
                                    </li>
                                    <li>엄격한 기준의 태도 점수 제도 운영
                                    </li>
                                    <li>휴대폰 수거, 자습 시간 중 자리 이동 제한 등 불필요한 요소 차단 및 관리
                                    </li>
                                </ul>
                            </li>
                            <% Else %>
                            <li>
                                <p>출결 관리와 태도 점수 제도 
                                </p>
                                <ul>
                                    <li>1일 8회 이상 매 교시 철저한 출결 관리 및 상시 모니터링
                                    </li>
                                    <li>지각, 무단 외출, 무단 결석 등 면학분위기 저해 요소 관리
                                    </li>
                                    <li>엄격한 기준의 태도 점수 제도 운영
                                    </li>
                                    <li>핸드폰 수거, 자습 시간 중 자리 이동 제한 등 불필요한 요소 차단 및 관리
                                    </li>
                                </ul>
                            </li>
                            <% End If %>
                            <li>
                                <p>정신적 멘토링
                                </p>
                                <ul>
                                    <li>학생에 대한 존중과 배려로 동반자 역할 수행
                                    </li>
                                    <li>바른공부 자습전용관 가장 가까운 곳에 담임선생님 상주
                                    </li>
                                    <li>학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 정신적 멘토링 진행
                                    </li>
                                    <li>1:1 상담을 통한 목표 상기 등 지속적인 학습동기 부여
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <!-- 가정통신문 -->
                    <% If campus_code <> "CD0341" Then '대전제외 %> 
                    <div class="swiper-slide">
                        <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0250" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0340" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0344" OR campus_code = "CD0349" Then '강남/대치/영통/부천/원주/창원/광주/목동/분당/중계/대구/전주/울산 %>
                        <div class="one-img-type <%=campusName%>">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab04_slide01_<%=campusName%>.jpg" alt="">
                        </div>
                        <% ElseIf campus_code = "CD0248" OR campus_code = "CD0346" Then '평촌/청주 %>
                        <div class="swiper-container notice-slide">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab04_slide01_<%=campusName%>.jpg" alt="">
                                </div>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab04_slide02_<%=campusName%>.jpg" alt="">
                                </div>
                                <% If campus_code <> "CD0344" Then '전주제외 %>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab04_slide03_<%=campusName%>.jpg" alt="">
                                </div>
                                <% End If %>
                                <% If campus_code = "CD0346" Then '청주 %>
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab04_slide04_<%=campusName%>.jpg" alt="">
                                </div>
                                <% End If %>
                            </div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                        <% Else %>
                        <div class="swiper-container notice-slide">
                            <div class="swiper-wrapper">
                                <!-- 첫번째 슬라이드 -->
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab04_slide01.jpg" alt="">
                                </div>
                                <!-- 두번째 슬라이드 -->
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/manage_tab04_slide02.jpg" alt="">
                                </div>
                            </div>
                            <div class="swiper-button-prev"></div>
                            <div class="swiper-button-next"></div>
                        </div>
                        <% End If %>
                        <% If campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0249" OR campus_code = "CD0248" OR campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0245" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '강남/대치/영통/평촌/원주/창원/청주/광주/전주/목동/중계/대구/울산 %>
                        <p>* 본 콘텐츠는 저작권법의 보호를 받는 저작물로써<br> 무단전재 및 무단복제와 배포를 금합니다. 
                        </p>
                        <% ElseIf campus_code = "CD0250" Then '부천 %>
                        <% ElseIf campus_code = "CD0244" Then '분당 %>
                        <p>* 본 콘텐츠는 러셀 분당 학원의 윈터스쿨 포트폴리오입니다. <br>
                        저작권법의 보호를 받는 저작물로써 무단전재 및 무단복제와 배포를 금합니다.
                        </p>
                        <% Else %>
                        <p>본 콘텐츠는 러셀 평촌 학원의 윈터스쿨 <br>
                        포트폴리오입니다. 저작권법의 보호를 받는 저작물로써<br>
                        무단전재 및 무단복제와 배포를 금합니다.</p>
                        <% End If %>
                        <ul class="pt20">
                            <li>
                                <p>가정통신문 배부
                                </p>
                                <ul>
                                    <li>윈터스쿨 기간의 학습 성취도와 최신 입시 정보를  확인할 수 있도록 입시 담임선생님이 직접 제작한 종합 안내문
                                    </li>
                                    <% If campus_code = "CD0250" Then '부천 %>
                                    <li>출결 및 자습 현황, 영단어/영어듣기 성적, 실전모의고사 성적, 교육 점수, 상담 내용을 기록하여 겨울방학의 학습 현황 확인
                                    </li>
                                    <% Else %>
                                    <li>출결 및 자습 현황, 영단어/영어듣기 성적, 실전모의고사 성적, 태도 점수, 상담 내용을 기록하여 겨울방학의 학습 현황 확인
                                    </li>
                                    <% End If %>
                                </ul>
                            </li>
                        </ul>
                    </div>
                    <% End If %>
                </div>
            </div>
            <% If campus_code = "INTRO" Then '인트로 %>
            <div class="r-txt mt10 mr10">*학원별 관리 방법은 상이할 수 있습니다.</div>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <div class="r-txt mt10 mr10">*해당 이미지는 러셀 대구학원 이미지 입니다. </div>
            <% End If %>
        </div>
    </div>
</div>
<div class="cont07 js-cont">
    <div class="inner">
        <% If campus_code = "CD0250" Then '부천 %>
        <div style="line-height:0;"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_tit_<%=campusName%>.jpg" alt="올바른 학습 습관 및 탄탄한 실력 형성 최상위권 합격생이 추천하는 윈터스쿨 프로그램"></div>
        <div class="c-box start">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_img_<%=campusName%>.jpg" alt=""></div>
            <div class="arrow-ico"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/img_arrow.png" alt=""></div>
            <p class="r-txt">
                * 평일(월~금요일) 바자관 표준 시간표 기준으로 작성하였으며.<br>
                학원별 운영 및 상세 시간은 다를 수 있습니다. 
            </p>
        </div>
        <% Else %>
        <% If campus_code = "CD0257" Then '중계 %>
        <div style="line-height:0;"><img src="<%=Application("img_path_russel")%>/m_russel/russel_jg/2023/winter/cont07_tit02.jpg" alt="올바른 학습 습관 및 탄탄한 실력 형성 최상위권 합격생이 추천하는 윈터스쿨 프로그램"></div>
        <% Else %>
        <div style="line-height:0;"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_tit02.jpg" alt="올바른 학습 습관 및 탄탄한 실력 형성 최상위권 합격생이 추천하는 윈터스쿨 프로그램"></div>
        <% End If %>
        <div class="c-box start">
            <% If campus_code = "CD0343" OR campus_code = "CD0244" Then '코어원주/분당 %>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_img02_<%=campusName%>.jpg" alt=""></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_img02.jpg" alt=""></div>
            <% End If %>
            <div class="arrow-ico"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/img_arrow.png" alt=""></div>
            <% If campus_code = "CD0244" Then '분당 %>
            <p class="r-txt">
                * 월~토요일 바자관 표준 시간표 기준으로 작성하였으며, 층별 및 시기별 학습 전략에 따라 유동적으로 운영됩니다.<br>
                * 매 교시 담임선생님의 출석 및 학습 태도 관리가 진행됩니다.
            </p>
            <% Else %>
            <p class="r-txt">
                * 평일(월~금요일) 바자관 표준 시간표 기준으로 작성하였으며.<br>
                학원별 운영 및 상세 시간은 다를 수 있습니다. 
            </p>
            <% End If %>
        </div>
        <% End If %>
        <div class="c-box">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_stit.jpg" alt="윈터스쿨 학습 콘텐츠"></div>
            <div class="swiper-container learning-slide">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con01.jpg" alt="매일 영단어&영어듣기"></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con02.jpg" alt="러셀 학습 플래너"></div>
                    </div>
                    <div class="swiper-slide">
                        <% If campus_code = "CD0257" Then '중계 %>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con03_<%=campusName%>.jpg" alt="일일수학 30제"></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con03.jpg" alt="일일수학 30제"></div>
                        <% End If %>
                    </div>
                    <% If campus_code = "CD0244" Then '분당 %>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con04_<%=campusName%>.jpg" alt="윈터스쿨 실전모의고사"></div>
                    </div>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con08.jpg" alt="러셀 총평노트"></div>
                    </div>
                    <% Else %>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con04.jpg" alt="윈터스쿨 실전모의고사"></div>
                    </div>
                    <% End If %>
                    <% If campus_code = "INTRO" OR campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" OR campus_code = "CD0342" Then '인트로/코어광주/대전/원주/전주/창원/청주/대구 %>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con05.jpg" alt="러셀CORE Weekly 모의고사"></div>
                    </div>
                    
                    <% ElseIf campus_code = "CD0250" Then '부천 %>
                    <div class="swiper-slide pt0">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con07.jpg" alt="러셀 부천 국/수/영 주간지"></div>
                    </div>

                    <% End If %>
                    <div class="swiper-slide">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/w-con06.jpg" alt="월간 학습지(월간 장영진)"></div>
                    </div>
                </div>
            </div>
            <div class="r-txt mt10 mr10">*해당 콘텐츠는 러셀 윈터스쿨 재원생 대상으로 <br>
            ‘전액지원’ 되는 콘텐츠입니다.</div>
        </div>
            
        <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
        <div class="c-box core-only">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_img02_core02.jpg" alt="러셀CORE Weekly 모의고사"></div>
            <div class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/core_badge.png" alt="러셀CORE ONLY"></div>
        </div>
        <% End If %>
        <div class="c-box">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_stit02_1.jpg" alt="윈터스쿨 실전 모의고사"></div>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_stit03.jpg" alt=""></div>
            <div class="swiper-container exam-slide">
                <div class="swiper-wrapper">
                    <% If campus_code = "CD0343" OR campus_code = "CD0345" OR campus_code = "CD0340"  Then '원주/창원/광주 %>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_slide01_<%=campusName%>.jpg" alt=""></div>
                    <% Else %>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_slide01.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_slide02.jpg" alt=""></div>
                    <% End If %>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_slide03.jpg" alt=""></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/cont07_slide04.jpg" alt=""></div>
                </div>
                <div class="swiper-pagination type08"></div>
            </div>
        </div>
    </div>
</div>
<% If campus_code = "CD0244" Then '분당 %>
<div class="recruit-wrap pt0">
    <div class="inner">

        <p class="recruit-tit">2024 러셀 분당<br><strong>윈터스쿨 미리보기</strong></p>

        <div class="tbl-scroll-x">
            <table class="tbl-type01" style="width: 400%;">
                <colgroup>
                    <col style="width:63.34px" />
                    <col style="width:5%" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                    <col style="width:auto" />
                </colgroup>
                <thead>
                    <tr>
                        <th colspan="2">구분</th>
                        <th>1주</th>
                        <th>2주</th>
                        <th>3주</th>
                        <th>4주</th>
                        <th>5주</th>
                        <th>6주</th>
                        <th>7주</th>
                        <th>8주</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="sticky bg-sky" colspan="2">주요 일정</th>
                        <td>&middot; 개강</td>
                        <td colspan="2">&middot; 국수영 학습법 특강</td>
                        <td>&middot; 설 연휴</td>
                        <td>&middot; 월간 장영진<br />
                        모의고사</td>
                        <td>&middot; 러셀 실전<br />
                        모의고사</td>
                        <td>&middot; 선배와의 만남</td>
                        <td>&middot; 종강<br />
                        &middot; 윈터스쿨 수료식<br />
                        &middot; 윈터스쿨 우수자 시상</td>
                    </tr>
                    <tr>
                        <th class="sticky bg-sky" colspan="2">1:1 상담</th>
                        <td colspan="3">&middot; 초기 상담<br />
                        - 공부 습관 형성을 위한 학원 생활 규율 안내<br />
                        - 개별 학습 상태 파악 및 목표 대학 확인</td>
                        <td colspan="3">&middot; 중기 및 심화 상담<br />
                        - 개인별 학습 계획 수립 및 진행 상황 피드백<br />
                        - 목표 대학을 위한 입시 전략 수립 및 개인별 입시 로드맵 설정</td>
                        <td colspan="2">&middot; 종강 상담<br />
                        - 실전 모의고사 성적에 따른 약점 분석<br />
                        - 윈터스쿨 생활 총평</td>
                    </tr>
                    <tr>
                        <th class="sticky bg-sky" rowspan="4">윈터스쿨<br />
                        프로그램</th>
                        <th class="sticky2 bg-sky">영단어,<br />
                        듣기TEST</th>
                        <td class="diagonal">&nbsp;</td>
                        <td colspan="6">&middot; 영단어 TEST (평일 오전, 점심시간에 진행)<br />
                        &middot; 듣기 TEST (매주 토요일 1교시 진행)</td>
                        <td class="diagonal">&nbsp;</td>
                    </tr>
                    <tr>
                        <th class="sticky2 bg-sky">일일수학<br />
                        30제</th>
                        <td class="diagonal">&nbsp;</td>
                        <td colspan="6">&middot; 일일수학 30제 풀이 및 확인 (매일 일정한 양의 수학 문제를 꾸준히 푸는 연습)</td>
                        <td class="diagonal">&nbsp;</td>
                    </tr>
                    <tr>
                        <th class="sticky2 bg-sky">설명회</th>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&middot; 인문계열 입시 전략<br />
                        &middot; 자연계열 입시 전략</td>
                        <td>&nbsp;</td>
                        <td>&middot; 메디컬 학생부종합 전형</td>
                        <td>&middot; 메디컬 논술 전형</td>
                        <td>&middot; 인문 논술<br />
                        &middot; 수리 논술</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <th class="sticky2 bg-sky">공개 특강</th>
                        <td>&middot; 플래너 작성법(1차)</td>
                        <td>&middot; 플래너 작성법(2차)<br />
                        &middot; 영어 학습법</td>
                        <td>&middot; 국어 학습법</td>
                        <td>&middot; 수학 학습법</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&middot; 모의고사 피드백</td>
                        <td>&nbsp;</td>
                    </tr>
                </tbody>
            </table>
        </div>
            
        <ul class="list-bullet ml0">	
            <li>위 표는 2023 윈터스쿨에서 실제 진행된 내용을 바탕으로 구성된 학사일정입니다.<br>	다가오는 2024 윈터스쿨 학사일정은 이보다 더욱 보완되어 진행될 예정입니다.</li>
        </ul>
    </div>
</div>
<% End If %>
<div class="bottom-bar js-cont">
    <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" Then '코어광주/대전/원주/전주/창원/청주 %>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/bottom-bar_core02.jpg" alt=""></div>
    <% ElseIf campus_code = "CD0257" Then '중계 %>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/bottom-bar02_<%=campusName%>.jpg" alt=""></div>
    <% Else %>
    <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/winter/bottom-bar02.jpg" alt=""></div>
    <% End If %>
</div>