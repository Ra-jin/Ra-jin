<div class="cont js-cont-wrap <%=campusName%>">
    <!-- cont07 -->
    <div class="cont07">
        <p>
            <% If campus_code = "CD0257" Then '중계 %>
            <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont07_tit01.jpg" alt="" />            
            <% Else %>
            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_tit01.jpg" alt="" />
            <% End If %>
            <% If campus_code = "CD0340" Then '광주 %>
            <a class="banner-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/ico_bus.png" alt="" /></a>
            <% End If %>
        </p>
        <div class="inner">
            <div class="contbox">
                <div class="baja-slide-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">개방형 구조</div>
                        <% If campus_code <> "CD0249" and campus_code <> "CD0257" Then '영통/중계 제외 %>
                        <div class="swiper-slide">자체 식당<br>운영</div>
                        <% End If %>
                    </div>
                </div>
                <div class="baja-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0349" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" OR campus_code = "CD0340" Then '울산/영통/대구/중계/광주 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/baja_slide01.jpg" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/baja_slide01.jpg" alt="" /></p>
                            <% End If %>
                        </div>
                        <!-- //집단적인 면학분위기 -->
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0349" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '울산/영통/대구/중계 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/baja_slide02.jpg" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/baja_slide02.jpg" alt="" /></p>
                            <% End If %>
                        </div>
                        <!-- //학습 동선 최소화 -->
                        <!-- 개방형 구조 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0349" OR campus_code = "CD0249" OR campus_code = "CD0342" Then '울산/영통/대구 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/baja_slide03.jpg" alt="" /></p>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/baja_slide03.jpg" alt="" /></p>
                            <div class="bt-tt"></div>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/baja_slide03.jpg" alt="" /></p>
                            <% End If %>
                        </div>
                        <!-- //개방형 구조 -->
                        <!-- 자체 식당 운영 -->
                        <% If campus_code <> "CD0249" and campus_code <> "CD0257" Then '영통/중계 제외 %>
                        <div class="swiper-slide">
                            <% If campus_code = "CD0349" OR campus_code = "CD0342" Then '울산/대구 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/baja_slide04.jpg" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/baja_slide04.jpg" alt="" /></p>
                            <% End If %>
                        </div>
                        <% End If %>
                        <!-- //자체 식당 운영 -->
                    </div>
                </div>
            </div>
        </div>
        
        <% If campus_code = "CD0257" Then '중계 %>
        <!-- 개방형 구조 popup -->
        <div class="dim-mask"></div>
        <div class="layer-tt">
            <p class="img">
                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/baja_slide03_pop.png" alt="" />
                <a href="javascript:void(0)" class="bt-close-tt"></a>
            </p>
        </div>
        <!-- //popup -->
        <% End If %>
    </div>
    <!-- //cont07 -->

    <!-- cont08 -->
    <div class="cont08">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont08_tit.jpg" alt="전문 입시 담임선생님의 1:1 맞춤 관리"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont08_tit.jpg" alt="최상위권 전문 입시 담임선생님의 1:1 맞춤 관리"></p>
        <% End If %>
        <div class="inner">
            <div class="contbox">
                <div class="manage-slide-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
        
                <div class="manage-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide">
                            <div class="s-wrap">
                                <p class="tit"><strong>치열한 입시에서 목표 대학 합격</strong>을 위한<br>전문적인 입시관리를 진행합니다.</p>
                                <div class="s-slide swiper-container type01">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" Then '코어광주/영통 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab01_img01.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '울산/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab01_img01.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>맞춤 입시전략 제시</p>
                                            <ul class="list-check">
                                                <li>수능 성적부터 모의고사까지 재원생들의<br>
                                                    <strong>성적 데이터를 체계적으로 누적 관리</strong></li>
                                                <li>누적된 재원생 입시결과 데이터 기반으로<br>
                                                    <strong>개인 목표에 맞춘 입시(수시/정시) 방향 제시</strong></li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab01_img02.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab01_img02.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>1:1 맞춤 입시상담</p>
                                            <ul class="list-check">
                                                <li>개별 성적 포트폴리오 기반으로<br>
                                                    <strong>체계적/전문적 1:1 맞춤 상담 진행</strong></li>
                                                <li>목표 대학 합격을 위한 입시 전문가의<br>
                                                    <strong>수시/정시 지원 전략 컨설팅 진행</strong></li>
                                                <li>목표 학교/학과에 필요한 요소 및 점수,<br>
                                                    재원생 사례들을 통해 <strong>학습계획 수립</strong></li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab01_img03.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab01_img03.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>입시 특강 및 간담회 진행</p>
                                            <ul class="list-check">
                                                <% If campus_code = "CD0257" Then '중계 %>
                                                <li>목표 대학 합격한 선배와의 <strong>간담회,</strong><br>
                                                    <strong>수시 전형별 입시 설명회,<br>
                                                    수시/정시 지원전략 설명회</strong> 등 진행</li>
                                                <% Else %>
                                                <li>최상위권 합격선배와의 <strong>간담회,</strong><br>
                                                    <strong>수시 전형별 입시 설명회,<br>
                                                    수시/정시 지원전략 설명회</strong> 등 진행</li>
                                                <% End If %>
                                                <li>입시전략연구소 및 입시 담임팀에서<br>
                                                    제작한 <strong>최신 입시 콘텐츠 제공</strong></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination p-type01"></div>
                                </div>
                            </div>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide">
                            <div class="s-wrap">
                                <p class="tit"><strong>재원생의 학습목표와 수준에 맞춰<br>수능까지 성취도 있는 학습</strong>을 위한<br>체계적인 학습관리를 진행합니다.</p>
                                <div class="s-slide swiper-container type02">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab02_img01.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab02_img01.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>올바른 학습습관 형성</p>
                                            <ul class="list-check">
                                                <li><strong>러셀 플래너</strong> : 매일 학습 스케줄 관리로<br>
                                                    학습 루틴 및 습관 점검, 자습시간 관리</li>
                                                <li><strong>일일수학30제</strong> : 매일 수학 문제풀이<br>
                                                    훈련으로 올바른 문제풀이 습관 형성</li>
                                                <li><strong>총평노트</strong> : 모의고사 시행 전후 셀프<br>
                                                    피드백으로 실전 수능 대비</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab02_img02.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab02_img02.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>1:1 맞춤 학습상담</p>
                                            <ul class="list-check">
                                                <li>누적되는 학생 성적데이터와 학습 현황을<br>
                                                    바탕으로 <strong>과목별 보완점과 목표 달성을 위한<br>
                                                    학습 설계 및 점검</strong></li>
                                                <li><strong>과목별 학습법 특강과 학습 Q&amp;A</strong>를 통해<br>
                                                    자습하면서 생기는 궁금증을 바로 해결</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab02_img03.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab02_img03.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>학습법 특강 및 설명회 진행</p>
                                            <ul class="list-check">
                                                <li>과목별 선생님과 국&middot;수&middot;영 <strong>심층 분석 및<br>
                                                    학습법 특강,</strong> 수능 1등급 및 고득점을 위한<br>
                                                    <strong>과목별 학습전략 설명회</strong> 등 진행</li>
                                                <li>모의고사 응시 후<br>
                                                    <strong>모의고사 분석 및 해설 특강</strong> 진행</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination p-type02"></div>
                                </div>
                            </div>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide">
                            <div class="s-wrap">
                                <p class="tit"><strong>오직 학습에만 집중하고<br>집단적인 면학분위기 형성</strong>을 위한<br>엄격한 생활관리를 진행합니다.</p>
                                <div class="s-slide swiper-container type03">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab03_img01.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab03_img01.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>엄격한 출결 관리</p>
                                            <ul class="list-check">
                                                <li><strong>매 교시 엄격한 출결 관리 및<br>
                                                    바자관 상시 모니터링</strong></li>
                                                <li>지각, 무단 외출, 무단 결석 등<br>
                                                    <strong>면학분위기 저해 요소 엄격하게 관리</strong></li>
                                                <li><strong>전자 출결 관리 시스템</strong>으로<br>
                                                    등/하원 시 부모님께 문자 발송</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab03_img02.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab03_img02.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>엄격한 태도 점수 제도 운영 </p>
                                            <ul class="list-check">
                                                <li>휴대폰 소지, 수면, 자습시간 중 이동 등<br>
                                                    <strong>면학분위기 저해 요소를 엄격하게 관리 및<br>
                                                    태도 점수 운영</strong></li>
                                                <li>태도 점수 제도를 통해 일정 점수 초과 시<br>
                                                    상담/강제 퇴원 조치</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0340" OR campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '코어광주/영통/대구/중계 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont05_tab03_img03.jpg" alt="" /></div>
                                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                                            <div class="mb20"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab03_img03.jpg" alt="" /></div>
                                            <% End If %>
                                            <p>정신적 멘토링</p>
                                            <ul class="list-check">
                                                <li>학생중심 사고를 기반하여 학생에 대한<br>
                                                    존중, 배려 등으로 <strong>동반자 역할</strong></li>
                                                <li>학습 고충 및 슬럼프 등으로 가장 필요할 때<br>
                                                    가장 가까운 곳에 있기 위해<br>
                                                    <strong>바자관 앞 또는 바자관 내 상주</strong></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination p-type03"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont08 -->

    <!-- cont09 -->
    <div class="cont09">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont09_tit.jpg" alt="학습 의욕을 높여주는 승반,강반/장학제도"></p>
        
        <div class="inner">
            <div class="rbox">
                <p class="img">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont09_stit.jpg" alt="승반,강반 제도" />
                </p>
                <div class="graph-wrap02">
                    <% If campus_code = "CD0349" OR campus_code = "CD0249" Then '울산/영통 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont06_img01.png" alt="" />
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont06_img01.png" alt="" />
                    <% End If %>
                    <p class="arr-bottom"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/img_arr_bottom.png" alt="" /></p>
                    <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/img_arr_top.png" alt="" /></p>
                </div>

                <% If campus_code <> "CD0257" Then '중계 제외 %>
                <div class="rolling-wrap">
                    <div class="grade-swiper swiper-container">
                        <% If campus_code = "CD0340" OR campus_code = "CD0249" Then '코어광주/영통 %>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont06_slide01.jpg" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont06_slide02.jpg" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont06_slide03.jpg" alt="" /></div>
                        </div>
                        <% Else %>
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont06_slide01.jpg" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont06_slide02.jpg" alt="" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont06_slide03.jpg" alt="" /></div>
                        </div>
                        <% End If %>
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
                <% End If %>

                <p class="ico"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/img_plus.png" alt="" /></p>
                <p class="mt15"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont06_img02.jpg" alt="" /></p>
            </div>
        </div>
    </div>
    <!-- //cont09 -->

    <!-- cont10 -->
    <div class="cont10">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont07_tit.jpg" alt="" /></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_tit.jpg" alt="" /></p>
        <% End If %>
        <div class="inner">
            <div class="contbox">
                <div class="program-slide-navi swiper-container">
                    <div class="swiper-wrapper">
                        <% If campus_code <> "CD0249" and campus_code <> "CD0342" and campus_code <> "CD0257" Then '영통/대구/중계 제외 %>
                        <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                        <% End If %>
                        <% If campus_code <> "CD0349"  Then '울산 제외 %>
                        <div class="swiper-slide">QUEL<br>모의고사</div>
                        <% End If %>
                        <% If campus_code = "CD0249" OR campus_code = "CD0257" Then '영통/중계 %>
                        <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                        <% Else %>
                        <div class="swiper-slide">메가X대성<br>더 프리미엄 모의고사</div>
                        <% End If %>
                        <% If campus_code = "CD0349"  Then '울산 %>
                        <div class="swiper-slide">QUEL<br>모의고사</div>
                        <% End If %>
                        
                        <% If  campus_code = "CD0342" Then '대구 %>
                        <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                        <% End If %>

                        <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                    </div>
                </div>
                
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <% If campus_code <> "CD0249"  and campus_code <> "CD0342" and campus_code <> "CD0257" Then '영통/대구/중계 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_img01.png" alt="러셀CORE Weekly 모의고사" />
                            <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:10%;top:15.47%;width:28.6%;height:8.39%;z-index:2;"></a>
                        </div>
                        <% End If %>
                        <% If campus_code <> "CD0349"  Then '울산 제외 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_img02.png" alt="QUEL 모의고사" />
                            <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:10%;top:13.47%;width:26.6%;height:8.39%;z-index:2;"></a>
                        </div>
                        <% End If %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_img03_1.png" alt="THE PREMIUM 모의고사" />
                            <a href="/intro/2022/premium/index.asp" title="" style="position:absolute;right:10.4%;top:11%;width:27.9%;height:8.39%;z-index:2;"></a>
                        </div>
                        <% If campus_code = "CD0342" Then '대구 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_img01.png" alt="러셀CORE Weekly 모의고사" />
                            <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:10%;top:15.47%;width:28.6%;height:8.39%;z-index:2;"></a>
                        </div>
                        <% End If %>
                        <% If campus_code = "CD0349"  Then '울산 %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_img02.png" alt="QUEL 모의고사" />
                            <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:10%;top:13.47%;width:26.6%;height:8.39%;z-index:2;"></a>
                        </div>
                        <% End If %>
                        <div class="swiper-slide">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_img04.png" alt="월간 학습지 (월간 장영진)" />
                            <a href="/intro/info/2022/monthly/index.asp" title="" style="position:absolute;right:11.4%;top:14.47%;width:25.9%;height:8.39%;z-index:2;"></a>
                        </div>
                    </div>
                </div>
            </div>
    
            <div class="rolling-wrap type01">
                <div class="js-program swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_slide01_img01_1.png" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_slide01_img02_1.png" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_slide01_img03_1.png" alt="" /></div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <p class="r-txt">* 학습 플래너/일일수학 30제/총평 노트는<br>
            러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.
            </p>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_stit01.jpg" alt="러셀 실전 콘텐츠 연간 시행 일정" /></p>
            <div class="rolling-wrap type02">
                <div class="js-study swiper-container">
                    <div class="swiper-wrapper">
                        <% If campus_code = "CD0349" Then '울산 %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide02_img01.png" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide02_img02.png" alt="" /></div>
                        <% ElseIf campus_code = "CD0249" OR campus_code = "CD0342" OR campus_code = "CD0257" Then '영통/대구/중계 %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont07_slide02_img01.png" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont07_slide02_img02.png" alt="" /></div>
                        <% Else %>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_slide02_img01.png" alt="" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_slide02_img02.png" alt="" /></div>
                        <% End If %>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% If campus_code = "CD0342" Then '대구 %>
            <p id="plan"><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2024/regular_overall/cont07_stit02.jpg" alt="러셀 실전 콘텐츠 연간 시행 일정" /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont07_stit02.jpg" alt="러셀 실전 콘텐츠 연간 시행 일정" /></p>
            <% End If %>
            <div style="position: relative;">
                <% If campus_code = "CD0349" Then '울산 %>
                <table class="tbl-type01 tbl-center">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
    
                    <thead>
                        <tr>
                            <th rowspan="2">구분</th>
                            <th colspan="3">QUEL</th>
                            <th rowspan="2">메대프 <br>모의고사 </th>
                            <th rowspan="2">러셀<br>CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL <br>모의고사</th>
                            <th>E-QUEL<br>모의고사</th>
                            <th style="border-right: 1px solid #d9d9d9;">QUEL: <br> UNIT</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">2월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-g">1~7회차</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">3월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-bbb">1~4회차</td>
                            <td class="ico-y">3/22(금)</td>
                            <td class="ico-g">8~9회차</td>
                            <td class="ico-yg">3월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-bbb">5~8회차</td>
                            <td class="ico-y">4/16(화)</td>
                            <td class="ico-g">10~11회차</td>
                            <td class="ico-yg">4월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td class="ico-b">1회</td>
                            <td></td>
                            <td class="ico-bbb">9~12회차</td>
                            <td class="ico-y">5/21(화)</td>
                            <td class="ico-g">12~13회차</td>
                            <td class="ico-yg">5월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-bbb">13~16회차</td>
                            <td></td>
                            <td class="ico-g">14~16회차</td>
                            <td class="ico-yg">6월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">7/5(금) </td>
                            <td class="ico-g">17~18회차</td>
                            <td class="ico-yg">7월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td class="ico-b">2회</td>
                            <td class="ico-bb">8/22(목) </td>
                            <td></td>
                            <td></td>
                            <td class="ico-g">19회차</td>
                            <td class="ico-yg">8월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-b">3회</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">9/27(금)</td>
                            <td class="ico-g">20~21회차</td>
                            <td class="ico-yg">9월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td class="ico-b">4~5회</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">10/22(화)</td>
                            <td class="ico-g">22회차</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">11월</th>
                            <td></td>
                            <td class="ico-bb">11/1(금)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-g">23회차</td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf campus_code = "CD0249" or campus_code = "CD0257" Then '영통/중계 %>
                <table class="tbl-type01 tbl-center">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
    
                    <thead>
                        <tr>
                            <th rowspan="2">구분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br> 모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL <br>모의고사</th>
                            <th style="border-right: 1px solid #d9d9d9;">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">2월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">3월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-y">3/22(금) </td>
                            <td class="ico-yg">3월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-y">4/16(화)</td>
                            <td class="ico-yg">4월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td class="ico-b">1회</td>
                            <td></td>
                            <td class="ico-y">5/21(화)</td>
                            <td class="ico-yg">5월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">6월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-y">7/5(금)</td>
                            <td class="ico-yg">7월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td class="ico-b">2회</td>
                            <td class="ico-bb">8/22(목)</td>
                            <td></td>
                            <td class="ico-yg">8월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-b">3회</td>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">9월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td class="ico-b">4~5회</td>
                            <td></td>
                            <td class="ico-y">10/22(화)</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">11월</th>
                            <td></td>
                            <td class="ico-bb">11/1(금)</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                <table class="tbl-type01 tbl-center">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
    
                    <thead>
                        <tr>
                            <th rowspan="2">구분</th>
                            <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br> 모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL <br>모의고사</th>
                            <th style="border-right: 1px solid #d9d9d9;">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">2월</th>
                            <td class="ico-g">1~7회차</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">3월</th>
                            <td class="ico-g">8~9회차</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">3/22(금)</td>
                            <td class="ico-yg">3월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td class="ico-g">10~11회차</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">4/16(화)</td>
                            <td class="ico-yg">4월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td class="ico-g">12~13회차</td>
                            <td class="ico-b">1회</td>
                            <td></td>
                            <td class="ico-y">5/21(화)</td>
                            <td class="ico-yg">5월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td class="ico-g">14~16회차</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">6월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td class="ico-g">17~18회차</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">7/5(금)</td>
                            <td class="ico-yg">7월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td class="ico-g">19회차</td>
                            <td class="ico-b">2회</td>
                            <td class="ico-bb">8/22(목)</td>
                            <td></td>
                            <td class="ico-yg">8월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-g">20~21회차</td>
                            <td class="ico-b">3회</td>
                            <td></td>
                            <td class="ico-y">9/27(금)</td>
                            <td class="ico-yg">9월호</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td class="ico-g">22회차</td>
                            <td class="ico-b">4~5회</td>
                            <td></td>
                            <td class="ico-y">10/22(화)</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">11월</th>
                            <td class="ico-g">23회차</td>
                            <td></td>
                            <td class="ico-bb">11/1(금)</td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="study-schedule">
                    <div class="year-tab-wrap">
                        <div class="year-tab">
                            <a href="" class="on"><strong>2</strong>월</a>
                            <a href=""><strong>3</strong>월</a>
                            <a href=""><strong>4</strong>월</a>
                            <a href=""><strong>5</strong>월</a>
                            <a href=""><strong>6</strong>월</a>
                            <a href=""><strong>7</strong>월</a>
                            <a href=""><strong>8</strong>월</a>
                            <a href=""><strong>9</strong>월</a>
                            <a href=""><strong>10</strong>월</a>
                            <a href=""><strong>11</strong>월</a>
                        </div>
                    </div>
                    <!-- 2월 -->
                    <div class="year-cont" style="display: block;">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>기출분석</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 5회차</li>
                                            <li>[장영진] 2024 모의고사 4회차</li>
                                            <li>[장영진] 2025 모의고사 2회차</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                            <li>[문호상] 데일리 독해+어법성 &middot; 영어듣기</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 5회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- //2월 -->

                    <!-- 3월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[이감] 모의고사 2회차 + 간쓸개</li>
                                            <li>[상상] 모의고사 2회차 + 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                            <li>[장영진] 월간지 (Half)</li>
                                            <li>[장영진] 식스팩 주간지 4회차</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                            <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>

                        <div>
                            <p>
                                [3월] <br>
                                메가X대성 더 프리미엄 모의고사<br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //3월 -->
                
                    <!-- 4월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[상상] 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                            <li>[장영진] 월간지 (Half)</li>
                                            <li>[장영진] 식스팩 주간지 4회차</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                            <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <p>
                                [4월] <br>
                                메가X대성 더 프리미엄 모의고사<br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //4월 -->
                
                    <!-- 5월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 6평 대비 1회</li>
                                            <li>[이감] 모의고사 4회차 + 간쓸개</li>
                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 6평 대비 1회</li>
                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                            <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                            <li>[장영진] 식스팩 주간지 4회차</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 6평 대비 1회</li>
                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                            <li>[문호상] 데일리 영단어 · 영독해</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 6평 대비 1회</li>
                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <p>
                                [5월] <br>
                                메가X대성 더 프리미엄 모의고사<br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //5월 -->
                
                    <!-- 6월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[이감] 스폐셜시즌 (간쓸개+N제)</li>
                                            <li>[상상] 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                            <li>[장영진] 월간지 (Half)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                            <li>[문호상] Half 모의고사</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- <div>
                            <p>
                                [6월] <br>
                                메가X대성 더 프리미엄 모의고사<br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div> -->
                    </div>
                    <!-- //6월 -->
                
                    <!-- 7월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[이감] Pre파이널 모의고사 2회차 + 간쓸개</li>
                                            <li>[이감] 파이널 모의고사 1회차 + 간쓸개</li>
                                            <li>[상상] 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                            <li>[장영진] 모의고사 2회차 + 월간지 (Half)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                            <li>[문호상] Half 모의고사</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <p>
                                [7월] <br>
                                메가X대성 더 프리미엄 모의고사<br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //7월 -->
                
                    <!-- 8월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                            <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                            <li>[문호상] Half 모의고사</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <p>
                                [8월] <br>
                                E-QUEL 모의고사 <br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //8월 -->
                
                    <!-- 9월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 1회차</li>
                                            <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 1회차</li>
                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                            <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 1회차</li>
                                            <li>[WEEKLY] 모의고사 2회차</li>
                                            <li>[김지영] 실전 모의고사 2회</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 1회차</li>
                                            <li>[WEEKLY] 모의고사 2회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <p>
                                [9월] <br>
                                메가X대성 더 프리미엄 모의고사<br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //9월 -->
                
                    <!-- 10월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[이감] 파이널 모의고사 4회차 + 간쓸개</li>
                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[장영진] 실전 모의고사 4회차</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[WEEKLY] 모의고사 1회차</li>
                                            <li>[김지영] 실전 모의고사 2회</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[QUEL] 모의고사 2회차</li>
                                            <li>[WEEKLY] 모의고사 1회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <p>
                                [10월] <br>
                                메가X대성 더 프리미엄 모의고사<br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //10월 -->
                
                    <!-- 11월 -->
                    <div class="year-cont">
                        <table class="tbl-type01">
                            <tbody>
                                <tr>
                                    <th>국어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[이감] 파이널 모의고사 2회차 + 간쓸개</li>
                                            <li>*이감 파이널 엣지 모의고사 2회 추후 공지</li>
                                            <li>상상모의고사 1회차</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>수학</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[장영진] 실전 모의고사 2회차</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>영어</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] 모의고사 1회차</li>
                                            <li>[김지영] 실전 모의고사 3회</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <th>탐구</th>
                                </tr>
                                <tr>
                                    <td>
                                        <ul class="list-dot">
                                            <li>[WEEKLY] 모의고사 1회차</li>
                                        </ul>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <div>
                            <p>
                                [11월] <br>
                                E-QUEL 모의고사 <br>
                                (국수영탐 FULL 모의고사)
                            </p>
                        </div>
                    </div>
                    <!-- //11월 -->
                </div>
                <% Else %>
                <table class="tbl-type01 tbl-center">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <% If campus_code <> "CD0249" and campus_code <> "CD0257" Then '영통/중계 제외 %>
                        <col style="width: 15%;">
                        <% End If %>
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
    
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>평가원</th>
                            <% If campus_code <> "CD0249" and campus_code <> "CD0257" Then '영통/중계 제외 %>
                            <th>러셀CORE<br>Weekly<br>모의고사</th>
                            <% End If %>
                            <th>QUEL<br>모의고사</th>
                            <th>THE PREMIUM<br>모의고사</th>
                            <th><%=monthly%></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">2월</th>
                            <td></td>
                            <td class="ico-g"></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">3월</th>
                            <td></td>
                            <td class="ico-g"></td>
                            <td></td>
                            <td class="ico-y"></td>
                            <td class="ico-yg"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td></td>
                            <td class="ico-g"></td>
                            <td></td>
                            <td class="ico-y"></td>
                            <td class="ico-yg"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td></td>
                            <td class="ico-g"></td>
                            <td class="ico-b"></td>
                            <td class="ico-y"></td>
                            <td class="ico-yg"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td class="ico-p">6평</td>
                            <td class="ico-g"></td>
                            <td></td>
                            <td></td>
                            <td class="ico-yg"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td></td>
                            <td class="ico-g"></td>
                            <td></td>
                            <td class="ico-y"></td>
                            <td class="ico-yg"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td></td>
                            <td class="ico-g"></td>
                            <td class="ico-b"></td>
                            <td class="ico-y"></td>
                            <td class="ico-yg"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-p">9평</td>
                            <td class="ico-g"></td>
                            <td class="ico-b"></td>
                            <td></td>
                            <td class="ico-yg"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td></td>
                            <td class="ico-g"></td>
                            <td class="ico-b"></td>
                            <td class="ico-y"></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">11월</th>
                            <td class="ico-p">수능</td>
                            <td class="ico-g"></td>
                            <td></td>
                            <td class="ico-y"></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
                <% End If %>
            </div>
            <% If campus_code = "CD0342" Then '대구 %>
            <p class="r-txt mt15">*상기 일정은 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
            <% Else %>
            <p class="r-txt mt15">* 상기 일정은 평가원 시행 계획 및<br>
            학원 학사일정에 따라 변경 및 조정될 수 있습니다.
            </p>
            <% End If %>
        </div>
    </div>
    <!-- //cont10 -->
    <div class="bt-banner">
        <% If campus_code = "CD0257"  Then '중계 %>
        <p><strong><%=txtCampus%> 재수종합반</strong>에서<br>
            목표대학 합격의 기쁨을<br>
            쟁취할 수 있습니다.
        </p>
        <% Else %>
        <p><strong><%=txtCampus%> 재수종합반</strong>에서<br>
            목표하는 최상위권 대입성공을<br>
            쟁취할 수 있습니다.
        </p>
        <% End If %>
    </div>
</div>