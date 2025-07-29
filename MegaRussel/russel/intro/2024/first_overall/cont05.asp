<div class="cont js-cont <%=campusName%>">
    <!-- cont06 -->
    <div class="cont06">
        <div class="inner">
            <p data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont06_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/russel_yt/2024/first_overall/cont06_img.jpg" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="530,832,597,901" href="javascript:layerPop()">
               </map>
            </div>
            <% ElseIf sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '대구/울산 %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont06_img.jpg" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="507,904,579,976" href="javascript:layerPop()">
               </map>
            </div>
            <% Else %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont06_img.jpg" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="507,904,579,976" href="javascript:layerPop()">
               </map>
            </div>
            <% End If %>
        </div>
        <!-- popup -->
        <div class="zoom-pop">
            <% If sCampusCode = "CD0349" or sCampusCode = "CD0249" Then '울산/영통 %>
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont05_zoom.jpg" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont05_zoom.jpg" alt="" /></div>
            <% End If %>
        </div>
        <!-- popup -->
    </div>
    <!-- //cont06 -->
    <!-- cont07 -->
    <div class="cont07">
        <div class="inner">
            <p data-aos="fade-up" class="tit"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont07_tit.png" alt="최상위권 전문 입시 담임선생님의 1:1 맞춤 관리" /></p>
            <div class="study-swiper">
                <div class="study-slide-nav">
                    <div class="swiper-wrapper" style="z-index: 5;">
                        <div class="swiper-slide on"><a href="javascript:void(0)">입시관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">학습관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">생활관리</a></div>
                        <div class="swiper-slide"><a href="javascript:void(0)">생활규정</a></div>
                    </div>
                </div>
                <div class="swiper-container study-slide">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>최적의 입시전략 제시</p>
                                    <ul>
                                        <li>입학 전 성적부터 모의고사까지 성적 데이터를 체계적으로 관리
                                        </li>
                                        <li>재원생 결과를 기반으로 개인 목표에 맞춘 입시(수시/정시) 방향 제시</li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>개인 맞춤 1:1 상담</p>
                                    <ul>
                                        <li>성적 포트폴리오와 실제 사례를 기반으로 한 체계적, 전문적 상담</li>
                                        <li>목표 학교/학과에 필요한 요소와 점수 확보에 최적화된 학습 계획 수립</li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>입시 설명회 및 공개특강</p>
                                    <ul>
                                        <li>최상위권  대학 합격 선배와의 간담회, 입시/학습 특강 진행</li>
                                        <li>최신 수험 정보와 다양한 입시 콘텐츠 제공</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab01_img01.jpg" alt="" /></div>
                                    <% If sCampusCode <> "CD0249" and sCampusCode <> "CD0342" and sCampusCode <> "CD0349" Then '영통/대구/울산 제외 %>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab01_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab01_img03.jpg" alt="" /></div>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>올바른 학습 루틴 형성</p>
                                    <ul>
                                        <li>수험생 상황에 맞춰 적합한 학습방법 설계</li>
                                        <li>학습 플래너 점검을 통한 학습 스케줄링 능력 향상</li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>균형 있는 학습 습관 형성</p>
                                    <ul>
                                        <li>러셀 학습 콘텐츠를 활용한 학습법 제시</li>
                                        <li>체득한 습관을 토대로 균형적인 공부 습관 형성
                                        </li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>개별 학습 상담</p>
                                    <ul>
                                        <li>전 과목 학습 상태 분석으로 과목별 학습량 조절 및 약점 보완 방법 제시</li>
                                        <li>멘탈 케어 및 구체적인 학습전략과 노하우 전수</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab02_img01.jpg" alt="" /></div>
                                    <% If sCampusCode <> "CD0249" and sCampusCode <> "CD0342" and sCampusCode <> "CD0349" Then '영통/대구/울산 제외 %>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab02_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab02_img03.jpg" alt="" /></div>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list">
                                    <p>출결 관리 시스템</p>
                                    <ul>
                                        <li>매 교시 철저한 출결 관리 및 상시 모니터링
                                        </li>
                                        <li>지각, 무단 외출, 무단 결석 등의 관리로 규칙적인 생활 습관 형성 
                                        </li>
                                    </ul>
                                </div>
                                <div class="study_list">
                                    <p>정신적 멘토링</p>
                                    <ul>
                                        <li>학생에 대한 존중과 배려로 동반자 역할 수행</li>
                                        <li>바른공부 자습전용관 가장 가까운 곳에 담임선생님 상주</li>
                                        <li>학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 정신적 멘토링 진행</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab03_img01.jpg" alt="" /></div>
                                    <% If sCampusCode <> "CD0249" and sCampusCode <> "CD0342" and sCampusCode <> "CD0349" Then '영통/대구/울산 제외 %>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab03_img02.jpg" alt="" /></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab03_img03.jpg" alt="" /></div>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                        <!-- 생활규정 -->
                        <div class="swiper-slide tabslide">
                            <div style="margin-left:85px;">
                                <div class="study_list bn">
                                    <p>강력한 태도 점수 제도</p>
                                    <ul>
                                        <li>엄격한 기준의 태도 점수 제도 시행</li>
                                        <li>태도 점수 초과 시 최대 퇴원 조치</li>
                                        <li>휴대폰 등 전자기기 사용 제재, 자습시간 중 자리 이동 제한, <br>
                                        원내 소란행위 등 면학분위기 저해 요소 차단 및 관리</li>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first_overall/cont07_tab04_img01.jpg" alt="" /></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont07 -->
    <div class="cont08">
        <div class="inner">
            <p data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont08_tit.png" alt="최상위권 합격생이 추천하는 러셀 재원생 전용 학습 콘텐츠" /></p>
            <div class="studyHall-slide-wrap">
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">올바른 학습 습관</div>
                        <div class="swiper-slide">꾸준한 실력 향상</div>
                        <% If sCampusCode <> "CD0249" Then '영통 제외 %>
                        <div class="swiper-slide">러셀 실전 모의고사</div>
                        <div class="swiper-slide">러셀CORE<br>
                        Weekly 모의고사</div>
                        <% End If %>
                    </div>
                </div>
                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <!-- 올바른 학습 습관 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont08_slide01.jpg" alt="" /></div>
                        </div>
                        <!-- //올바른 학습 습관 -->
                        <!-- 꾸준한 실력 향상 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont08_slide02.jpg" alt="" /></div>
                        </div>
                        <!-- //꾸준한 실력 향상 -->
                        <% If sCampusCode <> "CD0249" Then '영통 제외 %>
                        <!-- 러셀 실전 모의고사 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont08_slide03.jpg" alt="" /></div>
                        </div>
                        <!-- //러셀 실전 모의고사 -->
                        <!-- 러셀CORE Weekly 모의고사 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/cont08_slide04.jpg" alt="" /></div>
                        </div>
                        <!-- //러셀CORE Weekly 모의고사 -->
                        <% End If %>
                    </div>
                </div>
            </div>
            <p class="r-txt mt20">* 해당 콘텐츠는 러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.</p>
        </div>
    </div>
    <!-- 배너 -->
    <div class="bt-banner">
      <p><img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/banner_tit.png" alt="재도전을 결심했다면 지금이 바로 도약의 기회! 최상위권 이과전문관N 러셀 재수종합반에서 최상위권 대입성공을 쟁취할 수 있습니다." /></p>
  </div>
  <!--// 배너 -->
</div>
    

