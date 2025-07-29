<div class="cont js-cont <%=campusName%>">
    <!-- cont06 -->
    <div class="cont06">
        <% If sCampusCode = "CD0340" Then '광주 %>
        <div class="inner">
            <a href="/info/schoolBus.asp" class="banner-bus">
                <img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_bus.png" alt="셔틀버스 운영" />
            </a>
        </div>
        <% End If %>
        <p data-aos="fade-up">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont06_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" />
            <% Else %>
            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont06_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" />
            <% End If %>
        </p>
        <div class="inner">
            <% If sCampusCode = "CD0249" Then '영통 %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont06_img_02.png" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="513,975,578,1038" href="javascript:layerPop()">
                </map>
            </div>
            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont06_img.png" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="507,904,579,976" href="javascript:layerPop()">
                </map>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont06_img.png" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="511,974,579,1039" href="javascript:layerPop()">
                </map>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont06_img.png" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="516,938,578,1003" href="javascript:layerPop()">
                </map>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont06_img.png" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="507,904,579,976" href="javascript:layerPop()">
                </map>
            </div>
            <% Else %>
            <div class="mt100">
                <img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont06_img.png" alt="" usemap="#popOpen" />
                <map name="popOpen">
                    <area shape="rect" coords="507,904,579,976" href="javascript:layerPop()">
                </map>
            </div>
            <% End If %>
        </div>
        <!-- popup -->
        <% If sCampusCode = "CD0349" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0342" Then '울산/영통/중계/대구 %>
        <div class="zoom-pop">
            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont05_zoom.png" alt="" /></div>
        </div>
        <% Else %>
        <div class="zoom-pop">
            <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont05_zoom.jpg" alt="" /></div>
        </div>
        <% End If %>
        <!-- popup -->
    </div>
    <!-- //cont06 -->
    <!-- cont07 -->
    <div class="cont07">
        <div class="inner">
            <p data-aos="fade-up" class="tit">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont07_tit.png" alt="최상위권 전문 입시 담임선생님의 1:1 맞춤 관리" />
                <% Else %>
                <img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont07_tit.png" alt="최상위권 전문 입시 담임선생님의 1:1 맞춤 관리" />
                <% End If %>
            </p>
            <div class="manage-slide-wrap">
                <div class="manage-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
                <div class="swiper-container manage-slide">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide">
                            <p class="sl-title"><strong>치열한 입시에서 목표 대학 합격</strong>을 위한 전문적인 입시관리를 진행합니다.</p>
                            <ul>
                                <li>
                                    <% If sCampusCode = "CD0340" or sCampusCode = "CD0249"  Then '코어광주/영통 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide01_img01.jpg" alt="" /></div>
                                    <% Else %>                                   
                                    <div>
                                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide01_img01.jpg" alt="" />
                                    </div>
                                    <% End If %>
                                    <div class="txt-list">
                                        <p>맞춤 입시전략 제시</p>
                                        <ul>
                                            <li>수능 성적부터 모의고사 까지 재원생들의 <br> <strong>성적 데이터를 체계적으로 누적 관리</strong></li>
                                            <li>누적된 재원생 입시결과 데이터 기반으로 <br> <strong>개인 목표에 맞춘 입시(수시/정시) 방향 제시</strong></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <% If sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0249" or sCampusCode = "CD0342"  Then '중계/평촌/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide01_img02.jpg" alt="" /></div>
                                    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont05_slide01_img02.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide01_img02.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>1:1 맞춤 입시상담</p>
                                        <ul>
                                            <li>개별 성적 포트폴리오 기반으로 <strong>체계적/전문<br>적 1:1 맞춤 상담 진행</strong></li>
                                            <li>목표 대학 합격을 위한 입시 전문가의 <br><strong>수시/정시 지원 전략 컨설팅 진행</strong></li>
                                            <li>목표 학교/학과에 필요한 요소 및 점수, <br> 재원생 사례들을 통해 <strong>학습계획 수립</strong></li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <% If  sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0249" or sCampusCode = "CD0342" Then '중계/평촌/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide01_img03.jpg" alt="" /></div>
                                    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont05_slide01_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide01_img03.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>입시 특강 및 간담회 진행</p>
                                        <ul>
                                            <li> <% If sCampusCode = "CD0257" Then '중계 %>
                                                목표 대학 합격한 선배와의
                                                <% Else %>
                                                최상위권 합격선배와의
                                                <% End If %><strong>간담회, 수시 전형별 <br> 입시 설명회, 수시/정시 지원전략 설명회</strong> 등 진행
                                            </li>
                                            <li>입시전략연구소 및 입시 담임팀에서 제작한 <br>
                                                <strong>최신 입시 콘텐츠 제공</strong>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- //입시관리 -->
                        <!-- 학습관리 -->
                        <div class="swiper-slide">
                            <p class="sl-title"><strong>재원생의 학습목표와 수준에 맞춰 수능까지 성취도 있는 학습</strong>을 위한 체계적인 학습관리를 진행합니다.</p>
                            <ul>
                                <li>
                                    <% If  sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0340" or sCampusCode = "CD0249" or sCampusCode = "CD0342" Then '중계/평촌/코어광주/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide02_img01.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide02_img01.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>올바른 학습습관 형성</p>
                                        <ul>
                                            <li><strong>러셀 플래너 :</strong> 매일 학습 스케줄 관리로 학습 <br>
                                                루틴 및 습관 점검, 자습시간 관리</li>
                                            <li><strong>일일수학30제 :</strong> 매일 수학 문제풀이 훈련으로 <br>올바른 문제풀이 습관 형성</li>
                                            <li><strong>총평노트 : </strong> 모의고사 시행 전후 셀프 피드백<br>
                                                으로 실전 수능 대비</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <% If  sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0249" or sCampusCode = "CD0342"  Then '중계/평촌/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide02_img02.jpg" alt="" /></div>
                                    <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont05_slide02_img02.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide02_img02.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>1:1 맞춤 학습상담</p>
                                        <ul>
                                            <li>누적되는 학생 성적데이터와 학습 현황을<br>
                                                바탕으로 <strong>과목별 보완점과 목표 달성을 위한<br>학습 설계 및 점검</strong>
                                            </li>
                                            <li><strong>과목별 학습법 특강과 학습 Q&A</strong>를 통해 자습<br>하면서 생기는 궁금증을 바로 해결</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <% If  sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0340" or sCampusCode = "CD0249" or sCampusCode = "CD0342"  Then '중계/평촌/코어광주/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide02_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide02_img03.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>학습법 특강 및 설명회 진행</p>
                                        <ul>
                                            <li>과목별 선생님과 국&middot;수&middot;영 <strong>심층 분석 및 학습법<br> 특강,</strong> 수능 1등급 및 고득점을 위한 <strong>과목별 학습<br> 전략 설명회</strong> 등 진행</li>
                                            <li>모의고사 응시 후 <strong>모의고사 분석 및 해설 특강</strong> <br>진행</li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- //학습관리 -->
                        <!-- 생활관리 -->
                        <div class="swiper-slide">
                            <p class="sl-title"><strong>오직 학습에만 집중하고 집단적인 면학분위기 형성</strong>을 위한 엄격한 생활관리를 진행합니다.</p>
                            <ul>
                                <li>
                                    <% If  sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0340" or sCampusCode = "CD0249" or sCampusCode = "CD0342"  Then '중계/평촌/코어광주/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide03_img01.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide03_img01.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>엄격한 출결 관리</p>
                                        <ul>
                                            <li><strong>매 교시 엄격한 출결 관리 및 바자관 상시 <br> 모니터링</strong></li>
                                            <li>지각, 무단 외출, 무단 결석 등 <strong>면학분위기 저해 <br>요소 엄격하게 관리</strong></li>
                                            <li><strong>전자 출결 관리 시스템</strong>으로 등/하원 시 부모님께 문자 발송</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <% If  sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0340" or sCampusCode = "CD0249" or sCampusCode = "CD0342" Then '중계/평촌/코어광주/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide03_img02.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide03_img02.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>엄격한 태도 점수 제도 운영</p>
                                        <ul>
                                            <li>휴대폰 소지, 수면, 자습시간 중 이동 등 <strong>면학분<br>위기 저해 요소를 엄격하게 관리 및 태도 점수<br> 운영</strong></li>
                                            <li>태도 점수 제도를 통해 일정 점수 초과 시 상담/강제 퇴원 조치</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <% If  sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0340" or sCampusCode = "CD0249" or sCampusCode = "CD0342"  Then '중계/평촌/코어광주/영통/대구 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide03_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide03_img03.jpg" alt="" /></div>
                                    <% End If %>                                   
                                    <div class="txt-list">
                                        <p>정신적 멘토링</p>
                                        <ul>
                                            <li>학생중심 사고를 기반하여 학생에 대한 존중, 배려 등으로 <strong>동반자 역할</strong></li>
                                            <li>학습 고충 및 슬럼프 등으로 가장 필요할 때 가장 가까운 곳에 있기 위해 <strong>바자관 앞 또는 바자관 내<br> 상주</strong></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- //생활관리 -->
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont07 -->
    <!-- cont08 -->
    <div class="cont08">
        <div class="inner">
            <p data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont08_tit.png" alt="최상위권 합격생이 추천하는 러셀 재원생 전용 학습 콘텐츠" /></p>
            <div class="level-wrap mt70">
                <div class="d-flex">
                    <h3 class="mr50 mt10"><strong>승반&middot;강반 제도</strong><br>
                        <ul class="list-03">
                            <li>모의고사, 평가원 성적과 학습 태도 점수를 바탕으<br>로 엄격하게 <strong>수준별 반편성 실시 및 연 2~3회 수준<br>별 승반·강반 운영</strong></li>
                            <li>바자관 재원생들간의 <strong>선의의 경쟁, 학구열에 대한 <br>보상</strong>, 반대로 학습상태에 대한 경각심을 심어주며<br> <strong>재원생들의 명확한 목표 지향점 제공</strong></li>
                            <li>학습 동기 부여로 집단적인 면학분위기와 긍정적<br>인 긴장감 조성, 지속적인 학습 태도 및 성적 향상<br> 관리 가능</li>
                        </ul>
                    </h3>
                    <div class="box">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont08_level01.jpg" alt="강반, 승반" /></p>
                        <span class="arrow05"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_arrow05.png" alt="" /></span>
                        <span class="arrow06"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_arrow06.png" alt="" /></span>
                        <% If sCampusCode = "CD0349" Then '울산 %>
                        <span class="balloon01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_balloon02.png" alt="" /></span>
                        <span class="balloon02"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_balloon03.png" alt="" /></span>
                        <% Else %>
                            <% If sCampusCode <> "CD0249" Then '영통제외 %>
                            <span class="balloon01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_balloon.png" alt="" /></span>
                            <span class="balloon02"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_balloon.png" alt="" /></span>
                            <% End If %>
                        <% End If %>
                    </div>
                </div>
                <% If sCampusCode <> "CD0257" Then '중계 제외 %>
                <p class="mt50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont08_level02.jpg" alt="승반" /></p>
                <% End If %>
                <p class="mt20 tac"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/ico_plus.png" alt="플러스" /></p>
                <p class="mt20"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont08_scholarship.jpg" alt="장학제도" /></p>
            </div>
        </div>
    </div>
    <!-- //cont08 -->
     <!-- cont09 -->
     <div class="cont09">
        <div class="inner">
            <div class="inner">
                <h2 data-aos="flip-up" class="mb40">
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_overall/cont09_stit01.png" alt="학습 의욕을 높여주는 승반 강반 장학제도" />
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/regular_overall/cont09_stit01.png" alt="학습 의욕을 높여주는 승반 강반 장학제도" />
                    <% End If %>
                </h2>
                <!-- contents-list -->
             
                <div class="contents-list mt70">
                    <% If sCampusCode = "CD0340" Then '코어광주 %>
                    <div class="core-weekly">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list03.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀CORE<br>Weekly 모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/2022/weekly/index.asp">자세히 보기</a>
                                <ul>
                                    <li>러셀CORE 선생님들이 직접 출제한<br>모의고사 콘텐츠 제공</li>
                                    <li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상 및 긴장감 유지</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list01.jpg" alt=""></p>                  
                        <div>
                            <p class="c-tit">최신 출제 경향 맞춤 실전 수능<strong>QUEL<br>모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/event/2021/quel/index.asp">자세히 보기</a>
                                <ul>
                                    <li>메가스터디 통합 전 영역 실전 수능<br>대비 모의고사</li>
                                    <li>최신 출제 경향에 맞춘 강도 있는<br> 실전 훈련</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list02.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성<br>더 프리미엄 모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                                <ul>
                                    <li>과목별 전문 출제진 구성 및 다회차 <br>검토 과정</li>
                                    <li>전과목 모두 구성 및 정확한 객관적인<br> 위치 확인</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list04.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">러셀 수학 월간지<strong>월간 학습지<br>(월간 장영진)</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                                <ul>
                                    <li>수학 장영진 선생님의 자작 문항으로<br>매월 집체 모의고사 진행</li>
                                    <li>수험생활에 필요한 다양한 수학&middot;입시<br>관련 정보 제공</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list01.jpg" alt=""></p>                  
                        <div>
                            <p class="c-tit">최신 출제 경향 맞춤 실전 수능<strong>QUEL<br>모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/event/2021/quel/index.asp">자세히 보기</a>
                                <ul>
                                    <li>메가스터디 통합 전 영역 실전 수능<br>대비 모의고사</li>
                                    <li>최신 출제 경향에 맞춘 강도 있는<br> 실전 훈련</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list02.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성<br>더 프리미엄 모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                                <ul>
                                    <li>과목별 전문 출제진 구성 및 다회차 <br>검토 과정</li>
                                    <li>전과목 모두 구성 및 정확한 객관적인<br> 위치 확인</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="core-weekly">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list03.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀CORE<br>Weekly 모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/2022/weekly/index.asp">자세히 보기</a>
                                <ul>
                                    <li>러셀CORE 선생님들이 직접 출제한<br>모의고사 콘텐츠 제공</li>
                                    <li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상 및 긴장감 유지</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list04.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">러셀 수학 월간지<strong>월간 학습지<br>(월간 장영진)</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                                <ul>
                                    <li>수학 장영진 선생님의 자작 문항으로<br>매월 집체 모의고사 진행</li>
                                    <li>수험생활에 필요한 다양한 수학&middot;입시<br>관련 정보 제공</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
                    <div class="core-weekly">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list03.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀CORE<br>Weekly 모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/2022/weekly/index.asp">자세히 보기</a>
                                <ul>
                                    <li>러셀CORE 선생님들이 직접 출제한<br>모의고사 콘텐츠 제공</li>
                                    <li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상 및 긴장감 유지</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list02.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성<br>더 프리미엄 모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                                <ul>
                                    <li>과목별 전문 출제진 구성 및 다회차 <br>검토 과정</li>
                                    <li>전과목 모두 구성 및 정확한 객관적인<br> 위치 확인</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list01.jpg" alt=""></p>                  
                        <div>
                            <p class="c-tit">최신 출제 경향 맞춤 실전 수능<strong>QUEL<br>모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/event/2021/quel/index.asp">자세히 보기</a>
                                <ul>
                                    <li>메가스터디 통합 전 영역 실전 수능<br>대비 모의고사</li>
                                    <li>최신 출제 경향에 맞춘 강도 있는<br> 실전 훈련</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div>
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list04.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">러셀 수학 월간지<strong>월간 학습지<br>(월간 장영진)</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                                <ul>
                                    <li>수학 장영진 선생님의 자작 문항으로<br>매월 집체 모의고사 진행</li>
                                    <li>수험생활에 필요한 다양한 수학&middot;입시<br>관련 정보 제공</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <% Else %>
                    <div class="type02">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list01.jpg" alt=""></p>                  
                        <div>
                            <p class="c-tit">최신 출제 경향 맞춤 실전 수능<strong>QUEL<br>모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/event/2021/quel/index.asp">자세히 보기</a>
                                <ul>
                                    <li>메가스터디 통합 전 영역 실전 수능 대비 모의고사</li>
                                    <li>최신 출제 경향에 맞춘 강도 있는 실전 훈련</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="type02">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list02.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성<br>더 프리미엄 모의고사</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                                <ul>
                                    <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                                    <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="type02 mr0">
                        <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list04.jpg" alt=""></p>
                        <div>
                            <p class="c-tit">러셀 수학 월간지<strong>월간 학습지<br>(월간 장영진)</strong></p>
                            <div class="c-txt-box">
                                <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                                <ul>
                                    <li>수학 장영진 선생님의 자작 문항으로<br> 매월 집체 모의고사 진행</li>
                                    <li>수험생활에 필요한 다양한 수학&middot;입시<br>관련 정보 제공</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <% End If %>
                    <div class="three-box">
                        <div>
                            <p class="title">러셀 학습 플래너</p>
                            <p class="tac"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list07.jpg" alt=""></p>
                            <div class="c-txt-box">
                                <ul>
                                    <li>학습 목표 수립 및 자기주도학습 훈련</li>
                                    <li>매일 시간별/과목별 목표 학습량과 실제 학습량 <br> 비교 후 담임선생님의 피드백을 통해 <br> 학습 상황 점검</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="three-box">
                        <div>
                            <p class="title">일일수학 30제</p>
                            <p class="tac"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list05.jpg" alt=""></p>
                            <div class="c-txt-box">
                                <ul>
                                    <li>매일 일정한 양의 수학 문제풀이로 습관 형성</li>
                                    <li>지속적인 훈련으로 실수 방지 및 습관 개선</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="three-box">
                        <div>
                            <p class="title">러셀 총평노트</p>
                            <p class="tac"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list06.jpg" alt=""></p>
                            <div class="c-txt-box">
                                <ul>
                                    <li>시험 응시 전후 목표 성적과 실제 성적 기록</li>
                                    <li>과목별 성적 변화 확인으로 향후 목표 설정<br> 및 보완</li>
                                    <li>실수, 오답 등 자기 평가를 통해 취약점 개선</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //contents-list -->
                <p class="comment03">* 학습 플래너/일일수학 30제/총평 노트는 러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.</p>
    
                <!-- mock-schedule -->
                <div class="mock-schedule <%=campusName%>">
                    
                    <p>실전 대비 훈련을 위해 <span>정기적으로 집체 모의고사를 진행</span>합니다.</p>
                    <div class="pic-wrap">
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/mock_schedule_intro.png" alt="" /></p>
                    </div>
                    <% If sCampusCode = "CD0342"  Then '대구 %>
                    <p class="mt70" id="plan">러셀 대구 실전 콘텐츠 <span>[과목별 연간 시행 일정]</span></p>
                    <% Else %>
                    <p class="mt70">러셀 실전 콘텐츠 <span>연간 시행 일정</span></p>
                    <% End If %> 

                    <% If sCampusCode = "CD0340"  Then '코어광주 %>
                    <div class="tb-wrap">
                        <table>
                            <colgroup>
                                <col style="width:12%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th colspan="2">구분</th>
                                    <th>2월</th>
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
                                <!-- <tr>
                                    <th>평가원</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">6평</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">9평</td>
                                    <td></td>
                                    <td class="bg-01">수능</td>
                                </tr> -->
                                <tr>
                                    <th colspan="2">러셀CORE <br>Weekly 모의고사</th>
                                    <td class="bg-04">1~7회차</td>
                                    <td class="bg-04">8~9회차</td>
                                    <td class="bg-04">10~11회차</td>
                                    <td class="bg-04">12~13회차</td>
                                    <td class="bg-04">14~16회차</td>
                                    <td class="bg-04">17~18회차</td>
                                    <td class="bg-04">19회차</td>
                                    <td class="bg-04">20~21회차</td>
                                    <td class="bg-04">22회차</td>
                                    <td class="bg-04">23회차</td>
                                </tr> 
                                <tr>
                                    <th rowspan="2">QUEL</th>
                                    <td>QUEL <br> 모의고사</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02">1회</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02">2회</td>
                                    <td class="bg-02">3회</td>
                                    <td class="bg-02">4~5회</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>E-QUEL <br> 모의고사</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02-01">8/22(목)</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02-01">11/1(금)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">메가X대성<br>더 프리미엄 모의고사</th>
                                    <td></td>
                                    <td class="bg-03">3/22(금)</td>
                                    <td class="bg-03">4/16(화)</td>
                                    <td class="bg-03">5/21(화)</td>
                                    <td></td>
                                    <td class="bg-03">7/5(금)</td>
                                    <td></td>
                                    <td class="bg-03">9/27(금)</td>
                                    <td class="bg-03">10/22(화)</td>
                                    <td></td>
                                </tr>                    
                                <tr>
                                    <th colspan="2">월간 학습지<br>(월간 장영진)</th>
                                    <td></td>
                                    <td class="bg-05">3월호</td>
                                    <td class="bg-05">4월호</td>
                                    <td class="bg-05">5월호</td>
                                    <td class="bg-05">6월호</td>
                                    <td class="bg-05">7월호</td>
                                    <td class="bg-05">8월호</td>
                                    <td class="bg-05">9월호</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <% ElseIf sCampusCode = "CD0249" or sCampusCode = "CD0257" Then '영통/중계 %>
                    <div class="tb-wrap">
                        <table>
                            <colgroup>
                                <col style="width:12%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th colspan="2">구분</th>
                                    <th>2월</th>
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
                                <!-- <tr>
                                    <th>평가원</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">6평</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">9평</td>
                                    <td></td>
                                    <td class="bg-01">수능</td>
                                </tr> -->
                                <tr>
                                    <th rowspan="2">QUEL</th>
                                    <td>QUEL <br> 모의고사 </td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02">1회</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02">2회</td>
                                    <td class="bg-02">3회</td>
                                    <td class="bg-02">4~5회</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>E-QUEL <br> 모의고사</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02-01">8/22(목)</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02-01">11/1(금)</td>
                                </tr>
                                <tr>
                                    <th colspan="2">메가X대성<br>더 프리미엄 모의고사</th>
                                    <td></td>
                                    <td class="bg-03">3/22(금)</td>
                                    <td class="bg-03">4/16(화)</td>
                                    <td class="bg-03">5/21(화)</td>
                                    <td></td>
                                    <td class="bg-03">7/5(금)</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-03">10/22(화)</td>
                                    <td></td>
                                </tr>                 
                                <tr>
                                    <th colspan="2">월간 학습지<br>(월간 장영진)</th>
                                    <td></td>
                                    <td class="bg-05">3월호</td>
                                    <td class="bg-05">4월호</td>
                                    <td class="bg-05">5월호</td>
                                    <td class="bg-05">6월호</td>
                                    <td class="bg-05">7월호</td>
                                    <td class="bg-05">8월호</td>
                                    <td class="bg-05">9월호</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
                    <div class="studyHall-slide-wrap">
                        <div class="swiper-container studyHall-navi">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">2월</div>
                                <div class="swiper-slide">3월</div>
                                <div class="swiper-slide">4월</div>
                                <div class="swiper-slide">5월</div>
                                <div class="swiper-slide">6월</div>
                                <div class="swiper-slide">7월</div>
                                <div class="swiper-slide">8월</div>
                                <div class="swiper-slide">9월</div>
                                <div class="swiper-slide">10월</div>
                                <div class="swiper-slide">11월</div>
                            </div>
                        </div>
                        <div class="swiper-container studyHall-slide">
                            <div class="swiper-wrapper">
                                <!--2월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>기출분석</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 5회차</li>
                                                            <li>[장영진] 2024 모의고사 4회차</li>
                                                            <li>[장영진] 2025 모의고사 2회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                                            <li>[문호상] 데일리 독해+어법성 &middot; 영어듣기</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 5회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
        
                                <!--3월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[이감] 모의고사 2회차 + 간쓸개</li>
                                                            <li>[상상] 모의고사 2회차 + 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                            <li>[장영진] 월간지 (Half)</li>
                                                            <li>[장영진] 식스팩 주간지 4회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                            <li>[문호상] 데일리 영단어 · 영독해</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[3월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
        
                                <!--4월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[상상] 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                            <li>[장영진] 월간지 (Half)</li>
                                                            <li>[장영진] 식스팩 주간지 4회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                            <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[4월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
        
                                <!--5월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 6평 대비 1회</li>
                                                            <li>[이감] 모의고사 4회차 + 간쓸개</li>
                                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 6평 대비 1회</li>
                                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                                            <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                                            <li>[장영진] 식스팩 주간지 4회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 6평 대비 1회</li>
                                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                                            <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 6평 대비 1회</li>
                                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[5월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
        
                                <!--6월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[이감] 스폐셜시즌 (간쓸개+N제)</li>
                                                            <li>[상상] 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                                            <li>[장영진] 월간지 (Half)</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                                            <li>[문호상] Half 모의고사</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 3회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <!-- <div>
                                            <p>[6월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div> -->
                                    </div>
                                </div>
        
                                <!--7월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[이감] Pre파이널 모의고사 2회차 + 간쓸개</li>
                                                            <li>[이감] 파이널 모의고사 1회차 + 간쓸개</li>
                                                            <li>[상상] 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                            <li>[장영진] 모의고사 2회차 + 월간지 (Half)</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                            <li>[문호상] Half 모의고사</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[7월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
        
                                <!--8월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                                            <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                                            <li>[문호상] Half 모의고사</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[WEEKLY] Half 모의고사 1회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[8월] E-QUEL 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
        
                                <!--9월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 1회차</li>
                                                            <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 1회차</li>
                                                            <li>[WEEKLY] Half 모의고사 2회차</li>
                                                            <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 1회차</li>
                                                            <li>[WEEKLY] 모의고사 2회차</li>
                                                            <li>[김지영] 실전 모의고사 2회</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 1회차</li>
                                                            <li>[WEEKLY] 모의고사 2회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[9월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
        
                                <!--10월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[이감] 파이널 모의고사 4회차 + 간쓸개</li>
                                                            <li>[상상] 모의고사 4회차 + 월간지</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[장영진] 실전 모의고사 4회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[WEEKLY] 모의고사 1회차</li>
                                                            <li>[김지영] 실전 모의고사 2회</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[QUEL] 모의고사 2회차</li>
                                                            <li>[WEEKLY] 모의고사 1회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[10월] 메가X대성 더 프리미엄 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
        
                                <!--11월-->
                                <div class="swiper-slide">
                                    <div>
                                        <table class="tbl-01">
                                            <colgroup>
                                                <col style="width: 20%;">
                                                <col style="width: ;">
                                            </colgroup>
                                            <tbody>
                                                <tr>
                                                    <th>국어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[이감] 파이널 모의고사 2회차 + 간쓸개</li>
                                                            <li>*이감 파이널 엣지 모의고사 2회 추후 공지</li>
                                                            <li>상상모의고사 1회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>수학</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[장영진] 실전 모의고사 2회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>영어</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] 모의고사 1회차</li>
                                                            <li>[김지영] 실전 모의고사 3회</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <th>탐구</th>
                                                    <td>
                                                        <ul class="list-03">
                                                            <li>[WEEKLY] 모의고사 1회차</li>
                                                        </ul>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div>
                                            <p>[11월] E-QUEL 모의고사 (국수영탐 FULL 모의고사)</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
                    <div class="tb-wrap">
                        <table>
                            <colgroup>
                                <col style="width:12%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th colspan="2">구분</th>
                                    <th>2월</th>
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
                                <!-- <tr>
                                    <th>평가원</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">6평</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">9평</td>
                                    <td></td>
                                    <td class="bg-01">수능</td>
                                </tr> -->
                                <tr>
                                    <th rowspan="3">QUEL</th>
                                    <td>QUEL <br> 모의고사</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02">1회</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02">2회</td>
                                    <td class="bg-02">3회</td>
                                    <td class="bg-02">4~5회</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td>E-QUEL <br> 모의고사</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02-01">8/22(목)</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02-01">11/1(금)</td>
                                </tr>
                                <tr>
                                    <td>QUEL:UNIT</td>
                                    <td></td>
                                    <td class="bg-02-02">1~4회차</td>
                                    <td class="bg-02-02">5~8회차</td>
                                    <td class="bg-02-02">9~12회차</td>
                                    <td class="bg-02-02">13~16회차</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th colspan="2">메가X대성<br>더 프리미엄 모의고사</th>
                                    <td></td>
                                    <td class="bg-03">3/22(금)</td>
                                    <td class="bg-03">4/16(화)</td>
                                    <td class="bg-03">5/21(화)</td>
                                    <td></td>
                                    <td class="bg-03">7/5(금)</td>
                                    <td></td>
                                    <td class="bg-03">9/27(금)</td>
                                    <td class="bg-03">10/22(화)</td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th colspan="2">러셀CORE <br>Weekly 모의고사</th>
                                    <td class="bg-04">1~7회차</td>
                                    <td class="bg-04">8~9회차</td>
                                    <td class="bg-04">10~11회차</td>
                                    <td class="bg-04">12~13회차</td>
                                    <td class="bg-04">14~16회차</td>
                                    <td class="bg-04">17~18회차</td>
                                    <td class="bg-04">19회차</td>
                                    <td class="bg-04">20~21회차</td>
                                    <td class="bg-04">22회차</td>
                                    <td class="bg-04">23회차</td>
                                </tr>                      
                                <tr>
                                    <th colspan="2">월간 학습지<br>(월간 장영진)</th>
                                    <td></td>
                                    <td class="bg-05">3월호</td>
                                    <td class="bg-05">4월호</td>
                                    <td class="bg-05">5월호</td>
                                    <td class="bg-05">6월호</td>
                                    <td class="bg-05">7월호</td>
                                    <td class="bg-05">8월호</td>
                                    <td class="bg-05">9월호</td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <% Else %>
                    <div class="tb-wrap">
                        <table>
                            <colgroup>
                                <col style="width:12%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                                <col style="width:8%" />
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>2월</th>
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
                                    <th>평가원</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">6평</td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-01">9평</td>
                                    <td></td>
                                    <td class="bg-01">수능</td>
                                </tr>
                                <tr>
                                    <th>QUEL<br>모의고사</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02"></td>
                                    <td></td>
                                    <td></td>
                                    <td class="bg-02"></td>
                                    <td class="bg-02"></td>
                                    <td class="bg-02"></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th>메가X대성<br>더 프리미엄 모의고사</th>
                                    <td></td>
                                    <td class="bg-03"></td>
                                    <td class="bg-03"></td>
                                    <td class="bg-03"></td>
                                    <td></td>
                                    <td class="bg-03"></td>
                                    <td class="bg-03"></td>
                                    <td></td>
                                    <td class="bg-03"></td>
                                    <td class="bg-03"></td>
                                </tr>
                                <tr>
                                    <th>러셀CORE <br>Weekly 모의고사</th>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                    <td class="bg-04"></td>
                                </tr>                      
                                <tr>
                                    <th>월간 학습지<br>(월간 장영진)</th>
                                    <td></td>
                                    <td class="bg-05"></td>
                                    <td class="bg-05"></td>
                                    <td class="bg-05"></td>
                                    <td class="bg-05"></td>
                                    <td class="bg-05"></td>
                                    <td class="bg-05"></td>
                                    <td class="bg-05"></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <% End If %>               

                    <% If sCampusCode = "CD0342"  Then '대구 %>
                    <p class="comment03 mt10 mb20">* 상기 일정은 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
                    <% Else %>
                    <p class="comment03 mt10 mb20">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
                    <% End If %> 
                </div>
                <!-- //mock-schedule -->
            </div>
        </div>
    </div>
    <!-- //cont09 -->
    <!-- 배너 -->
    <div class="bottom-bar">
        <p><span><%=txtCampus%> 재수종합반</span>에서 <br>
            <% If sCampusCode = "CD0257"  Then '중계 %>
            목표 대학 합격의 기쁨을 쟁취할 수 있습니다.
            <% Else %>
            목표하는 최상위권 대입성공을 쟁취할 수 있습니다.
            <% End If %>
        </p>
    </div>
    <!--// 배너 -->
</div>
    

