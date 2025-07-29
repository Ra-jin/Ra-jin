<div class="cont js-cont <%=campusName%>">
    <div class="cont03">
        <div class="inner">
            <h3 data-aos="fade-up">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont03_tit.png" alt="여름방학동안 N수생과 격차를 줄이고 성적 향상을 향한 도약이 필요합니다." />
                <% Else %>
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont03_tit.png" alt="여름방학동안 N수생과 격차를 줄이고 최상위권으로 도약이 필요합니다." />
                <% End If %>
            </h3>
            <div class="box01">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont03_box01_stit.png" alt="여름방학은 목표 대학에 한발 더 다가갈 수 있는 절호의 기회!" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont03_box01_stit.png" alt="여름방학은 최상위권 도약을 위해 놓칠 수 없는 기회" /></p>
                <% End If %>
                <p class="contents"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont03_box01.png" alt="" /></p>
            </div>
            <div class="box02">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont03_box02_stit.png" alt="여름방학동안 성적 향상을 위한 학년별 학습 목표" /></p>
                <% Else %>
                <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont03_box02_stit.png" alt="여름방학동안 최상위권 도약을 위한 학년별 학습 목표" /></p>
                <% End If %>
                <p class="contents"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont03_box02.png" alt="" /></p>
            </div>
        </div>
    </div>

    <div class="cont04 js-cont">
        <div class="inner">
            <h3 data-aos="fade-up">
                <% If sCampusCode = "INTRO" Then 'intro %>
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont04_tit.png" alt="러셀 썸머스쿨 프로그램" />
                <% Else %>
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont04_tit.png" alt="러셀 썸머스쿨 프로그램" />
                <% End If %>
            </h3>
            <div class="cont-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont04_stit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>

                <% If isCore = 1 or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '코어/대구/울산 %>
                <a class="ico-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/ico_bus.png" alt="스쿨버스" /></a>
                <% End If %>
                <div class="studyHall-slide-wrap">
                    <div class="studyHall-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">집단적인<br> 면학분위기</div>
                            <div class="swiper-slide">학습 동선<br> 최소화</div>
                            <div class="swiper-slide">충분한<br> 자습시간 확보</div>
                            <div class="swiper-slide">개방형<br> 구조</div>
                            <% If isCore = 1 or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '코어/대구/울산 %>
                            <div class="swiper-slide">자체<br> 식당 운영</div>
                            <% End If %>
                        </div>
                    </div>

                    <div class="swiper-container studyHall-slide">
                        <div class="swiper-wrapper">
                            <!-- 집단적인 면학분위기 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <% If sCampusCode = "CD0257" Then '중계 %>
                                    <div class="tit">학생들이 모여 경쟁하는 긍정적인 학습환경</div>
                                    <div class="text">
                                        재원생들의 학구열을 직접 체감할 수 있는 개방형 구조로 <br>
                                        상호적인 학습 동기 부여 및 긍정적인 긴장감 유지 가능                                        
                                    </div>
                                    <% Else %>
                                    <div class="tit">최상위권이 모여 경쟁하는 긍정적인 학습환경</div>
                                    <div class="text">
                                        최상위권 재원생들의 학구열을 직접 체감할 수 있는 개방형 구조로 <br>
                                        상호적인 학습 동기 부여 및 긍정적인 긴장감 유지 가능
                                    </div>
                                    <% End If %>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont04_slide01.jpg" alt="집단적인 면학분위기" /></div>
                                </div>
                            </div>

                            <!-- 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">학습 동선 최소화</div>
                                    <% If sCampusCode = "CD0247" Then '강남 %>
                                    <div class="text">
                                        이동에 낭비하는 시간 없도록 학습 동선 최소화하여 <br>
                                        효율적인 시간 관리 가능, 수업 및 자습시간에 높은 집중력 발휘
                                    </div>
                                    <% Else %>
                                    <div class="text">
                                        한 건물 내에서 <%=baja_txt01%>을 한번에 해결<br>
                                        이를 통해 효율적인 시간관리가 가능하여 수업 및 자습시간에 높은 집중력 발휘
                                    </div>
                                    <% End If %>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont04_slide02.jpg" alt="학습 동선 최소화" /></div>
                                    <% If sCampusCode = "INTRO" Then 'intro %>
                                    <div class="r-txt">* 학원별 시설 및 운영방법은 상이합니다.</div>
                                    <% ElseIf sCampusCode = "CD0247" Then '강남 %>
                                    <div class="r-txt">*강의실은 운영 상황에 따라 별관(다른건물)으로 이동할 수도 있습니다.</div>
                                    <% End If %>
                                </div>
                            </div>

                            <!-- 바른공부 자습전용관 표준 시간표 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">바른공부 자습전용관 표준 시간표</div>
                                    <div class="text">
                                        수능 시험에 기준한 표준 시간표로 학습&middot;생활 리듬이 수능에 최적화<br>
                                        개인 학습 상황에 맞춘 스케줄 운영 및 의무자습과 심야자습시행으로 충분한 자습시간 확보
                                    </div>
                                    <div class="img">
                                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont04_slide03.jpg" alt="바른공부 자습전용관 표준 시간표" />
                                        <% If sCampusCode = "CD0245" or sCampusCode = "CD0250" Then '목동/부천 %>
                                        <a href="javascript:void(0);" onclick="layerPop()" style="position: absolute; left: -0.1%; top: -0.2%; width: 100%; height: 100.2%; z-index: 2;"></a>
                                        <% End If %>                                    
                                    </div>
                                    <% If sCampusCode = "INTRO" Then 'intro %>
                                    <div class="r-txt">* 학원별 운영 시간표는 상이합니다.</div>
                                    <% End If %>
                                </div>
                            </div>

                            <!-- 학습에 최적화된 환경 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">학습에 최적화된 환경</div>
                                    <div class="text">
                                        학습의 효율성을 높이기 위해 설계된<br>
                                        바른공부 자습전용관의 쾌적한 환경에서 온전히 학습에만 집중
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont04_slide04.jpg" alt="학습에 최적화된 환경" /></div>
                                    <% If sCampusCode = "INTRO" Then 'intro %>
                                    <div class="r-txt">* 학원별로 시설은 상이합니다.</div>
                                    <% End If %>
                                </div>
                            </div>

                            <% If isCore = 1 or sCampusCode = "CD0342" or sCampusCode = "CD0349" Then '코어/대구/울산 %>
                            <!-- 자체식당 운영 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="tit">자체 식당 운영</div>
                                    <% If sCampusCode = "CD0344" Then '전주 %>
                                    <div class="text">
                                        외부와의 접촉을 최소화하여 감염으로부터 학생들 보호<br>
                                        이동 시간을 줄여 학습에 몰입할 수 있도록 내부 식당 운영
                                    </div>
                                    <% Else %>
                                    <div class="text">
                                        자체 식당 운영으로 균형 잡힌 식단 유지<br>
                                        외부와의 접촉 최소화 및 이동시간을 줄여 학습에 몰입
                                    </div>
                                    <% End If %>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont04_slide05.jpg" alt="자체 식당 운영" /></div>
                                    <% If sCampusCode = "INTRO" Then 'intro %>
                                    <div class="r-txt">* 학원별로 시설은 상이합니다.</div>
                                    <% End If %>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="cont05">
        <div class="inner">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont05_stit.png" alt="입시 담임선생님의 1:1 맞춤 관리" /></h3>
            <% Else %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont05_stit.png" alt="최상위권 역임 입시 담임선생님의 1:1 맞춤 관리" /></h3>
            <% End If %>
            <div class="cont-box">
                <div class="manage-slide-wrap">
                    <div class="manage-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">입시 <br> 관리</div>
                            <div class="swiper-slide">학습 <br> 관리</div>
                            <div class="swiper-slide">생활 <br> 관리</div>
                            <% If sCampusCode <> "CD0244" Then '분당 제외 %>
                            <div class="swiper-slide">입시 특강/<br> 설명회</div>
                            <% End If %>
                        </div>
                    </div>
    
                    <div class="swiper-container manage-slide">
                        <div class="swiper-wrapper">
                            <!-- 입시 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">수시 및 정시 <br>1:1 책임 상담</div>
                                        <% If sCampusCode = "CD0244" Then '분당 %>
                                        <div class="text">
                                            썸머스쿨 기간 동안 정확한 진단 및 기초 상담 진행<br><br>
                                        </div>
                                        <% Else %>
                                        <div class="text">
                                            썸머스쿨 기간 동안 정확한 진단 및 기초 상담 진행<br>
                                            썸머스쿨 이후에도 정시지원까지 1:1 책임 상담 진행
                                        </div>
                                        <% End If %>
                                        <dl>
                                            <dt>7~8월</dt>
                                            <dd><strong>학생부 검토</strong>(내신/비교과 등)</dd>
                                        </dl>
                                        <dl>
                                            <dt>8~9월</dt>
                                            <dd><strong>수시상담</strong>(학생부 전형/논술 전형 컨설팅)</dd>
                                        </dl>
                                        <dl>
                                            <dt>11~12월</dt>
                                            <dd><strong>정시상담</strong>(수시지원여부/정시지원대학 결정)</dd>
                                        </dl>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont05_slide01.jpg" alt="입시 관리" /></div>
                                </div>
                                <% If sCampusCode = "INTRO" Then 'intro %>
                                <p class="r-txt">
                                    * 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다. <br>
                                    * 학원별 관리 프로그램 내용은 상이할 수 있습니다.
                                </p>
                                <% Else %>
                                <p class="r-txt"><%=manage_slide_txt%></p>
                                <% End If %>
                            </div>
    
                            <!-- 학습 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">개별 맞춤 <br>학습관리</div>
                                        <div class="text">
                                            여름방학 단기간 최대 효율을 위한 밀도있는 학습관리<br>
                                            더불어 재원생의 학습목표와 수준에 맞춰<br>
                                            수능까지 성취도 있는 학습을 위한 학습전략 제시
                                        </div>
                                        <% If sCampusCode = "INTRO" Then 'intro %>
                                        <p class="info_txt">* 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>
                                        <% End If %>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont05_slide02.jpg" alt="학습 관리" /></div>
                                </div>
                            </div>
    
                            <!-- 생활 관리 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">철저한 <br>생활관리</div>
                                        <div class="text">
                                            러셀 플래너를 통한 학습계획 수립 및 실천 관리<br>
                                            매 교시 엄격한 출결 관리 및 바자관 상시 모니터링<br>
                                            면학분위기 저해 요소 엄격하게 관리
                                        </div>
                                        <% If sCampusCode = "INTRO" Then 'intro %>
                                        <p class="info_txt">* 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>
                                        <% End If %>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont05_slide03.jpg" alt="생활 관리" /></div>
                                </div>
                            </div>
                            
                            <% If sCampusCode <> "CD0244" Then '분당 제외 %>
                            <!-- 입시 특강/설명회 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">다양한 <br>입시 특강/설명회</div>
                                        <div class="text">
                                            스터디 플래너&일일수학 30제 노트 활용법 특강<br>
                                          
                                            수능 D-100 과목별 학습법 특강<br>
                                           
                                            합격생과의 간담회 (선배와 1:1 개인 질의 응답)<br>
                                            수시대비 학생부전형관련 입시특강<br>
                                            수시/정시, 메디컬&최상위권 대학 지원전략 등 <br>
                                            입시 설명회
                                        </div>
                                        <% If sCampusCode = "INTRO" Then 'intro %>
                                        <p class="info_txt">* 학원별 진행되는 입시 특강/설명회는 상이할 수 있습니다.</p>
                                        <% End If %>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont05_slide04.jpg" alt="입시 특강/설명회" /></div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>

    <% If sCampusCode = "CD0244" Then '분당 %>
    <div class="cont08">
        <div class="inner">            
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont08_stit.png" alt="썸머스쿨 프로그램" /></h3>
            <div class="cont-box">
                <div class="manage-slide-wrap">
                    <div class="manage-navi02">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">입시 특강/ <br> 설명회</div>
                            <div class="swiper-slide">테스트</div>
                            <div class="swiper-slide">종강 <br> 리포트</div>
                        </div>
                    </div>
    
                    <div class="swiper-container manage-slide02">
                        <div class="swiper-wrapper">
                            <!-- 입시 특강/ 설명회 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">다양한 <br>입시 특강/설명회</div>
                                        <div class="text">
                                            스터디 플래너 & 일일수학 30제 노트 활용법 특강<br>
                                            고3 수시 대비 설명회<br>
                                            고2 입시, 빠른 정시 준비하기 설명회<br>
                                            메디컬&최상위권 대학 지원 전략 설명회 <br>
                                            합격생과의 간담회 (최상위권 대학 진학한 선배와의 1:1 질의응답)
                                        </div>                                       
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont08_slide01.jpg" alt="입시 특강/설명회" /></div>
                                </div>
                            </div>    
                            <!-- 테스트 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">테스트를 통한<br>학습 성과 확인</div>
                                        <div class="text">
                                            러셀 위클리 콘텐츠를 통한 집체 모의고사 시행<br>
                                            썸머스쿨 테스트 진행으로 본인의 실력, 위치 점검<br>
                                            영어 단어 테스트 진행 (총 10회)<br>
                                            4주간 다양한 테스트를 진행하여 학습 성과 확인 
                                        </div>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont08_slide02.jpg" alt="테스트" /></div>
                                </div>
                            </div>
    
                            <!-- 종강 리포트 -->
                            <div class="swiper-slide">
                                <div class="slide-wrap">
                                    <div class="info">
                                        <div class="tit">썸머스쿨을 마무리하는<br>종강 리포트</div>
                                        <div class="text">
                                            썸머스쿨 기간 학생의 생활, 프로그램 수행 여부 등의<br>
                                            내용을 담은 종강 리포트 전달 <br>
                                            (자습시간, 교육점수 내역, 테스트 성적 등)<br>
                                            <br>
                                            우수한 태도로 썸머스쿨을 종료한 학생들 대상으로 <br>
                                            수료식 진행                                            
                                        </div>
                                    </div>
                                    <div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont08_slide03.jpg" alt="종강 리포트" /></div>
                                </div>
                            </div>   

                        </div>
                    </div>
                </div>
            </div>        
        </div>
    </div>
    <% End If %>

    <div class="cont06">
        <div class="inner">
            <% If sCampusCode = "CD0244" Then '분당 %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont06_stit.png" alt="최상위권 수준별 맞춤 단과" /></h3>
            <% Else %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont06_stit.png" alt="최상위권 수준별 맞춤 단과" /></h3>
            <% End If %>
        </div>        
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/summer/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <!-- 단과 특강 -->
        <div class="danka-link <%=campusName%>">
            <% If sCampusCode = "CD0247" or sCampusCode = "CD0248" Then '강남/평촌 %>
            <div>
                <p class="d-stit">
                    반드시 실력이 향상되는 <br>여름방학 집중 특강
                </p>
                <p class="d-tit">썸머특강</p>
                <ul>
                    <li><%=danka_txt01%></li>
                    <li><%=danka_txt02%></li>
                </ul>
                <div class="link-box">
                    <a href="<%=summer_url%>"><%=summer_btn%></a>
                    <a href="<%=summer_url02%>"><%=summer_btn02%></a>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div>
                <p class="d-stit">
                    반드시 실력이 향상되는 <br>여름방학 집중 특강
                </p>
                <p class="d-tit">썸머특강</p>
                <ul>
                    <li><%=danka_txt01%></li>
                    <li><%=danka_txt02%></li>
                </ul>
                <div class="link-box">
                    <a href="<%=summer_url%>"><%=summer_btn%></a>
                    <a href="<%=summer_url03%>"><%=summer_btn03%></a>
                    <a href="<%=summer_url02%>"><%=summer_btn02%></a>
                </div>
            </div>
            <% Else %>
            <div>
                <p class="d-stit">
                    반드시 실력이 향상되는 <br>여름방학 집중 특강
                </p>
                <p class="d-tit"><%=summer_txt%></p>
                <ul>
                    <li><%=danka_txt01%></li>
                    <li><%=danka_txt02%></li>
                </ul>
                <div class="link-box">
                    <a href="<%=summer_url%>">바로가기</a>
                </div>
            </div>
            <% End If %>
            <div>
                <p class="d-stit">
                    기초부터 실전까지 <br> 빈틈없는 커리큘럼으로 수능 실력 향상
                </p>
                <p class="d-tit"><%=regular_txt%></p>
                <ul>                  
                    <li><%=danka_txt03%> </li>
                    <li>내게 필요한 과목별/수준별/진도별 맞춤 수업<br> 전략적으로 선택 </li>
                    <li>수업 전후 선생님의 학습관리 진행으로<br> 1:1 맞춤 완전학습 </li>
                </ul>
                <div class="link-box">
                    <a href="<%=regular_url%>">바로가기</a>
                </div>
            </div>
        </div>
        <!-- //단과 특강 -->     
    </div>
    
    <div class="cont07">
        <div class="inner">
            <% If sCampusCode = "CD0257" or sCampusCode = "CD0244" Then '중계/분당 %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont07_stit.png" alt="9월 평가원 모의고사, 수능에 최적화된 실전 학습 콘텐츠" /></h3>
            <% Else %>
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_stit.png" alt="월 평가원 모의고사, 수능에 최적화된 최상위권 맞춤 실전 학습 콘텐츠" /></h3>
            <% End If %>
            <div class="swiper-container program-slide">
                <ul class="swiper-wrapper">
                    <% If isCore = 1 or sCampusCode = "CD0349" Then '코어학원/울산 %>  
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide04.png" alt="코어 weekly모의고사"></li>
                    <% End If %> 
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide01.png" alt="QUEL 모의고사"></li>
                    <% If sCampusCode <> "CD0343" Then '코어원주 제외 %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide02.png" alt="E-QUEL 모의고사"></li>
                    <% End If %>
                    <% If sCampusCode = "CD0244" Then '분당 %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide10.png" alt="weekly모의고사"></li>
                    <% End If %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide03.png" alt="메대프 모의고사"></li>
                    <% If sCampusCode <> "CD0247" and sCampusCode <> "CD0001" and sCampusCode <> "CD0245" and sCampusCode <> "CD0249" and sCampusCode <> "CD0340" and sCampusCode <> "CD0341" and sCampusCode <> "CD0346" and sCampusCode <> "CD0343" and sCampusCode <> "CD0344" and sCampusCode <> "CD0345" and sCampusCode <> "CD0248" and sCampusCode <> "CD0244" and sCampusCode <> "CD0246" and sCampusCode <> "CD0349" Then '강남/대치/목동/영통/광주/대전/청주/원주/전주/창원/평촌/분당/센텀/울산 제외 %>
                        <% If sCampusCode = "CD0257" Then '중계  %>
                        <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide10.png" alt="weekly모의고사"></li>
                        <% Else %>
                        <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide04.png" alt="코어 weekly모의고사"></li>
                        <% End If %>
                    <% End If %>
                    <% If sCampusCode = "CD0245" Then '목동  %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide11.png" alt="장영진 식스팩 (6PACK)"></li>
                    <% End If %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide05.png" alt="월간 학습지"></li>
                    <% If sCampusCode = "CD0248" Then '평촌  %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide09.png" alt="식스팩 모의고사"></li>
                    <% ElseIf sCampusCode = "CD0245" Then '목동  %>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide06.png" alt="학습 플래너"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide07.png" alt="일일수학30제"></li>
                    <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont07_slide08.png" alt="총평노트"></li>
                    <% End If %>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>  
            <p class="r-txt mt50">* 위 콘텐츠는 썸머스쿨 기간 외 수능일까지 진행되는 콘텐츠가 포함되어 있습니다.</p>          
        </div>
    </div>

    <div class="bottom-bar">
        <% If sCampusCode = "CD0257" Then '중계  %>
        <p><%=txtCampus%> 썸머스쿨에서 <br>
            <strong>목표하는 2025학년도 메디컬&최상위권 대입성공을 이룰 수 있습니다.</strong>
        </p>
        <% Else %>
        <p>최상위권이 집결하는 <%=txtCampus%> 썸머스쿨에서 <br>
            <strong>목표하는 2025학년도 메디컬&최상위권 대입성공을 이룰 수 있습니다.</strong>
        </p>
        <% End If %>
    </div>
</div>

<% If sCampusCode = "CD0245" Then '목동 %>
<!-- 바자관 레이어팝업(목동) -->
<div class="zoom-pop layer-popup">
    <div>
        <div class="btn-close"></div>
        <p class="stit">바른공부 자습전용관 표준 시간표</p>
        <table class="tbl-01">
            <colgroup>
                <col style="width:8%">
                <col style="width:8%">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:auto">
                <col style="width:auto">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~금요일</th>
                    <th>토요일</th>
                    <th>일요일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td>0교시</td>
                    <td>AM 07:00</td>
                    <td>AM 07:50</td>
                    <td>50분</td>
                    <td colspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td>1교시</td>
                    <td>AM 08:00</td>
                    <td>AM 08:30</td>
                    <td>30분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt v">단과 수업</span>
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt r">담임 상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td>2교시</td>
                    <td>AM 08:40</td>
                    <td>AM 10:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td>3교시</td>
                    <td>AM 10:20</td>
                    <td>AM 12:10</td>
                    <td>110분</td>
                </tr>
                <tr>
                    <th colspan="2">점심식사</th>
                    <td>PM 12:10</td>
                    <td>PM 01:10</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="3" class="bg-sky">오후</th>
                    <td>4교시</td>
                    <td>PM 01:10</td>
                    <td>PM 02:20</td>
                    <td>70분</td>
                    <td rowspan="3" colspan="2">
                        <span class="ico-txt v">단과 수업</span>
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt r">담임 상담</span>
                    </td>
                    <td rowspan="3"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td>5교시</td>
                    <td>PM 02:40</td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td>6교시</td>
                    <td>PM 04:20</td>
                    <td>PM 05:30</td>
                    <td>70분</td>
                </tr>
                <tr>
                    <th colspan="2">저녁식사</th>
                    <td>PM 05:30</td>
                    <td>PM 06:30</td>
                    <td>60분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">저녁</th>
                    <td>7교시</td>
                    <td>PM 06:30</td>
                    <td>PM 08:10</td>
                    <td>100분</td>
                    <td rowspan="2" colspan="2">
                        <span class="ico-txt v">단과 수업</span>
                        <span class="ico-txt b">의무자습</span>
                        <span class="ico-txt r">담임 상담</span>
                    </td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td>8교시</td>
                    <td>PM 08:30</td>
                    <td>PM 10:00</td>
                    <td>90분</td>
                </tr>
                <tr>
                    <th colspan="2">귀가</th>
                    <td>PM 10:00</td>
                    <td>PM 10:10</td>
                    <td>10분</td>
                    <td colspan="3">-</td>
                </tr>
                <tr>
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td>9교시</td>
                    <td>PM 10:10</td>
                    <td>PM 11:00</td>
                    <td>50분</td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                    <td colspan="2" rowspan="2">토, 일<br>
                    이용 불가</td>
                </tr>
                <tr>
                    <td>10교시</td>
                    <td>PM 11:00</td>
                    <td>AM 12:00</td>
                    <td>60분</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<% Else %>
<!-- 바자관 레이어팝업(부천) -->
<div class="zoom-pop layer-popup">
    <div>
        <div class="btn-close"></div>
        <p class="stit">바른공부 자습전용관 표준 시간표</p>
        <table class="tbl-01">
            <colgroup>
                <col style="width:8%">
                <col style="width:8%">
                <col style="width:14%">
                <col style="width:14%">
                <col style="width:8%">
                <col style="width:auto">
                <col style="width:auto">
            </colgroup>
            <thead>
                <tr>
                    <th colspan="2">구분</th>
                    <th>시작시간</th>
                    <th>종료시간</th>
                    <th>자습시간</th>
                    <th>월요일~금요일</th>
                    <th>일요일/공휴일</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <th rowspan="4" class="bg-sky">오전</th>
                    <td class="bg-sky">1교시</td>
                    <td>AM 08:00</td>
                    <td>AM 08:30</td>
                    <td>30분</td>
                    <td rowspan="4"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky">2교시</td>
                    <td>AM 08:40</td>
                    <td>AM 10:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="bg-sky">활력시간</td>
                    <td>AM 10:20</td>
                    <td>AM 10:30</td>
                    <td>10분</td>
                </tr>
                <tr>
                    <td class="bg-sky">3교시</td>
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
                    <td colspan="2">
                        <b>[월~금 : 주간지 또는 영단어 테스트 / 토 : 영어듣기 / 일 : 자습]</b> <br>
                        <span class="fz14">(* 단, 토요일은 “PM 01:00”부터 영어듣기 진행)</span>
                    </td>
                </tr>
                <tr>
                    <th rowspan="4" class="bg-sky">오후</th>
                    <td class="bg-sky">담임조회</td>
                    <td>PM 01:20</td>
                    <td>PM 01:30</td>
                    <td>10분</td>
                    <td rowspan="4"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="4"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky">4교시</td>
                    <td>PM 01:30</td>
                    <td>PM 02:20</td>
                    <td>50분</td>
                </tr>
                <tr>
                    <td class="bg-sky">5교시</td>
                    <td>PM 02:40</td>
                    <td>PM 04:00</td>
                    <td>80분</td>
                </tr>
                <tr>
                    <td class="bg-sky">6교시</td>
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
                    <td class="bg-sky">7교시</td>
                    <td>PM 06:40</td>
                    <td>PM 08:10</td>
                    <td>90분</td>
                    <td rowspan="2"><span class="ico-txt b">의무자습</span></td>
                    <td rowspan="2"><span class="ico-txt s">선택자습</span></td>
                </tr>
                <tr>
                    <td class="bg-sky">8교시</td>
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
                    <th rowspan="2" class="bg-sky">심야</th>
                    <td class="bg-sky">9교시</td>
                    <td>PM 10:20</td>
                    <td>AM 00:00</td>
                    <td>100분</td>
                    <td><span class="ico-txt s">선택자습</span></tdn=>
                    <td>미진행</td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<% End If %>