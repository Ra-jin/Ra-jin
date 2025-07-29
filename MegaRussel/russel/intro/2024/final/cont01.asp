<div class="cont js-cont <%=campusName%>">
    <div class="cont01">
        <div class="inner">
            <div class="ico-dday">
                <p>2025 수능까지 <strong class="dday"></strong></p>
            </div>
            <h3>
                실전에서 <br>
                더 높은 목표 달성을 위한 <br>
                <strong>가장 확실한 방법</strong>
            </h3>
            <p class="s-txt">
                <strong>정확한 9월 모의평가 분석</strong>을 통해 <br>
                <% If sCampusCode = "CD0257" Then '중계 %>   
                <strong>파이널 합격 전략을 세우고 <br> 러셀 중계 재원생들과 경쟁</strong>하는 것입니다.
                <% Else %>
                <strong>파이널 합격 전략을 세우고 <br> <%=txtCampus%> 최상위권 재원생들과 경쟁</strong>하는 것입니다.
                <% End If %>  
            </p>

            <div class="final-info-list">
                <div class="final-info-box">
                    <div class="box">
                        <div class="month">9~10월</div>
                        <div class="plan-txt">
                            <p>수능 대비 파이널 학습 및 실전력 향상 <br>
                                수시 지원 전략 수립
                            </p>
                            <ul>
                                <li><strong>9/4(수) 9월 모의평가 응시</strong> 및 1:1 상담</li>
                                <li>9월 모의평가 분석 설명회</li>
                                <li>수시 지원 컨설팅 및 <strong>수시모집 원서접수</strong></li>
                                <li><strong>QUEL 모의고사/메대프 모의고사 응시</strong> 및 1:1 상담</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <p class="ptb25"><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_down_arrow.png" alt="" /></p>
                <div class="final-info-box">
                    <div class="box">
                        <div class="month">11~12월</div>
                        <div class="plan-txt">
                            <p>수능 대비 최종 실력 완성 및 수능 응시 <br>
                                정시 지원 전략 수립
                            </p>
                            <ul>
                                <li><strong>E-QUEL 모의고사 응시</strong> 및 1:1 상담</li>
                                <li><strong>11/14(목) 대학수학능력시험 응시</strong></li>
                                <li>수능 가채점/실채점 설명회</li>
                                <li>정시 지원 컨설팅 및 <strong>정시모집 원서접수</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>

            <div class="cont-box">  
                <!-- 분석,전략 슬라이드-->
                <div class="analyze-slide-wrap">
                    <div class="analyze-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">모의평가 점검 및 분석</div>
                            <div class="swiper-slide">파이널 맞춤 학습 전략</div>
                            <div class="swiper-slide">개인 맞춤 입시 전략</div>
                        </div>
                    </div>

                    <div class="swiper-container analyze-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0001" or sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0342" or sCampusCode = "CD0349" or sCampusCode = "CD0340" or sCampusCode = "CD0346" Then '인트로/대치/부천/중계/대구/울산/코어광주/코어청주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/anal_slide01.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/anal_slide01.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            정확한 9월 모의평가 <br> 점검 및 분석
                                        </dt>
                                        <dd>
                                            예비 수능 성격인 <strong>9월 모의평가의 난이도 및 <br>출제 경향 분석</strong>으로 2025 수능 출제 방향 등 예측
                                        </dd>
                                        <dd>
                                            정확한 9월 모의평가 성적 분석을 통해 <br>
                                            <strong>
                                                객관적인 자신의 위치 및 본인의 강점/약점 파악 등 <br>
                                                수능 경쟁력 점검
                                            </strong>
                                        </dd>
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0349" or sCampusCode = "CD0340" or sCampusCode = "CD0346" Then '인트로/울산/코어광주/코어청주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/anal_slide02.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/anal_slide02.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            수능 대비 파이널 맞춤 <br> 학습 전략 수립
                                        </dt>
                                        <dd>
                                            정확한 9월 모의평가 성적 분석을 통한 <br>
                                            <strong>자신의 취약 과목/영역 파악 및 집중 보완책 마련</strong>
                                        </dd>
                                        <dd>
                                            9월 모의평가 등 <strong>최신 출제 경향이 반영된 <br>
                                            학습 방향 제시</strong> 및 자신의 상황에 맞는 학습 전략 수립
                                        </dd>
                                        <dd>
                                            수능 대비 실전 감각을 향상시키는 <br>
                                            <strong>파이널 모의고사로 실전력 강화 훈련</strong>
                                        </dd>
                                    </dl> 
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0349" or sCampusCode = "CD0346" Then '인트로/울산/코어청주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/anal_slide03.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/anal_slide03.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            개인별 맞춤 입시 전략 수립
                                        </dt>
                                        <dd>
                                            입시 담임선생님과 6월/9월 모의평가 등 <br>누적된 모의고사 성적을 통한 <br>
                                            <strong>수시/정시 경쟁력 검토 및 지원 전략 수립</strong>
                                        </dd>
                                        <dd>
                                            수시모집 원서접수 대비 <strong>수시 컨설팅</strong> 및 <br>수능 이후
                                            개인별 맞춤 <strong>정시 컨설팅 진행</strong>
                                        </dd>
                                        <dd>
                                            수시 논술전형 대비 학교별 맞춤 논술 프로그램 진행
                                        </dd>
                                    </dl> 
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //분석,전략 슬라이드-->
            </div>           
        </div>
    </div>
    <!-- cont02 -->
    <div class="cont02">
        <div class="inner">
            <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/cont02_tit.png" alt="러셀 파이널 정규반 프로그램" /></h3>
        </div>
        <div class="inner02">            
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final/txt_num01.png" alt="01" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final/cont_stit01.png" alt="최상위권 수준별 맞춤 단과" />
            </h3>
        </div>
        <div class="inner">
            <ul class="class-list">
                <li>
                    <p>메가스터디 온&middot;오프라인<br>
                        <strong>수능 전문 강사진 </strong>
                    </p>                        
                </li>                
                <li>
                    <p><%=program_box02%></p>
                </li>
                <li>
                    <p>최신 출제 경향이 반영된<br>
                        수능 대비 <strong>파이널 모의고사</strong>
                    </p>
                </li>
                <li>
                    <p>자신의 약점을 보완해줄<br>
                        <strong>꼭 필요한 수업만 선택 수강</strong>
                    </p>
                </li>
            </ul>
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/final/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <div class="inner02">
            <!-- 단과 특강 -->
            <div class="danka-wrap">
                <div class="danka-btn">
                    <p class="stit">파이널 정규&middot;특강 단과</p>
                    <p class="txt"><%=danka_txt01%></p>
                    <a href="<%=regular_url%>">바로가기</a>
                </div>
                <div class="danka-btn">
                    <span>N수 전용</span>
                    <p class="stit">AM단과</p>
                    <p class="txt"><%=danka_txt02%></p>
                    <a href="<%=am_url%>">바로가기</a>
                </div>                    
                <div class="danka-btn">
                    <p class="stit">대학별 논술 특강</p>
                    <p class="txt"><%=danka_txt03%></p>
                    <a href="<%=non_url%>">바로가기</a>
                </div>       
            </div>
        </div>
    </div>
    <!-- //cont02 -->
    <!-- cont03 -->
    <div class="cont03">
        <div class="inner">
            <% If isCore OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
            <a class="banner-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/final/ico_bus.png" alt="" /></a>
            <% end if %>            
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final/txt_num02.png" alt="02" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final/cont_stit02.png" alt="면학분위기로 소문난 바른공부 자습전용관" />
            </h3>
            <!-- 바자관슬라이드 -->
            <div class="studyHall-slide-wrap">                
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">바자관 표준 시간표</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <% If isCore OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
                        <div class="swiper-slide">자체 식당 운영</div>
                        <% end if %>   
                    </div>
                </div>
                <div class="content-box">
                    <div class="swiper-container studyHall-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0246" or sCampusCode = "CD0341" or sCampusCode = "CD0340" Then '인트로/강남/센텀/코어대전/코어광주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/baja_slide01.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/baja_slide01.jpg" alt="" /></div>
                                <% End If %>  

                                <div class="info-detail">
                                    <dl>
                                        <dt>
                                            <% If sCampusCode <> "CD0257" Then '중계 제외 %>최상위권<% End If %> 
                                            재원생들이 모여 경쟁하는 <br> 긍정적인 학습환경
                                        </dt>
                                        <dd>
                                            <strong>개방형 구조</strong>로 이루어져 있어 <strong>재원생들의 <br>학구열이 자연스럽게 학습동기로 부여</strong>
                                        </dd>
                                        <dd>
                                            <strong>입시 담임선생님의 관리</strong>하에 자율과 통제의 균형적인 운영으로 <br><strong>집단적인 면학분위기 형성 및 유지</strong>
                                        </dd>                                      
                                    </dl> 
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p class="l-txt">※ 각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
                                    <% End If %>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0248" or sCampusCode = "CD0249" or sCampusCode = "CD0342" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0341" or sCampusCode = "CD0340" or sCampusCode = "CD0345" or sCampusCode = "CD0346" Then '인트로/강남/대치/평촌/영통/대구/센텀/울산/코어대전/코어광주/코어창원/코어청주 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/baja_slide02.jpg" alt="" /></div>
                                <% Else %>
                                <div>
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/baja_slide02.jpg" alt="" />
                                    <% If sCampusCode = "CD0250" Then '부천 %>  
                                    <a href="javascript:void(0)" onclick="javascript:layerPop()" style="position: absolute; left: 0%; top: 0.33%; width: 100.22%; height: 92.67%; z-index: 2;"></a>                                  
                                    <% End If %>                                 
                                </div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>실제 수능 시간표와 동일한<br>
                                            표준 시간표 운영
                                        </dt>
                                        <dd>
                                            <strong>실제 수능 시간표와 동일한 바자관 표준 시간표와 <br>
                                                타종 알람</strong>으로 실전 연습 최적화 및 실전 감각 극대화
                                        </dd>
                                        <dd>
                                            바자관 의무자습과 개인 맞춤형 학습 스케줄 운영으로<br>
                                            <strong>매일 최대 720분의 충분한 자습시간 확보</strong>
                                        </dd>                                      
                                    </dl> 
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p class="l-txt">※ 각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
                                    <% End If %>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0249" Then '인트로/영통 %>   
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/baja_slide03.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/baja_slide03.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>한 건물 내에서 <br>
                                            <%=baja_txt01%> 한번에 해결
                                        </dt>
                                        <dd>
                                            한 건물 내에서 <%=baja_txt01%> 한 번에 해결할 수 있어 <strong class="non-br"><br>이동에 낭비되는 시간 최소화</strong>
                                        </dd>
                                        <dd>
                                            학습 동선 최소화를 통해 효율적인 시간관리가 가능하여<br>
                                            <strong>수업, 자습시간에 높은 집중력 발휘</strong>
                                        </dd>                                      
                                    </dl> 
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p class="l-txt">※ 각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
                                    <% End If %>
                                </div>
                            </div>
                            <% If isCore OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/baja_slide04.jpg" alt="" /></div>
                                <div class="info-detail">
                                    <dl>
                                        <dt>양질의 급식이 제공되는 <br>
                                            자체 식당 운영
                                        </dt>
                                        <dd>
                                            자체 식당 운영으로 <strong>균형 잡힌 식단 유지</strong>
                                        </dd>
                                        <dd>
                                            맛과 영양을 고려한 건강하고 든든한 한 끼를<br>
                                            재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong>
                                        </dd>  
                                        <dd>
                                            외부와의 접촉 최소화 및 <strong>이동시간을 줄여 학습에 몰입 가능</strong>
                                        </dd>                                      
                                    </dl> 
                                </div>
                            </div>
                            <% end if %>   
                        </div>
                    </div> 
                    <% If sCampusCode = "INTRO" Then '인트로 %>     
                    <div class="b-review">
                        <dl>
                            <dt>
                                <p class="uni-logo"><img src="<%=Application("img_path_russel")%>/intro/2024/final/logo_korea.png" alt="" /></p>
                                2024학년도 <br>
                                <strong>
                                    고려대학교 <br>
                                    의예과 합격
                                </strong><br>
                                <span>러셀CORE 전주 서진원</span>
                            </dt>
                            <dd>                              
                                가장 좋았던 점은 <strong>표준 시간표를 통한 공부 리듬 형성과 집단적인 면학분위기</strong>였습니다. <br>
                                러셀에서 수능 시간표대로 공부하고,  그를 토대로 목요일마다 위클리 모의고사를 실시하여<br>
                                <strong>수능 리듬에 최적화되게끔 반복 연습했던 부분은 실제로 수능을 더욱더 익숙하게 느끼는데 큰 도움</strong>을 주었습니다.<br>
                                또한 <strong>개방적인 분위기도</strong> 수능 시험 도중 집중력을 잃고 부정적인 생각들이 밀려올 때마다<br>
                                빠르게 <strong>다시 집중할 수 있도록 해준 주역</strong>이었다고 생각합니다.
                            </dd>
                        </dl>
                    </div>
                    <% End If %>
                </div>
            </div>
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final/txt_num03.png" alt="03" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final/cont_stit03.png" alt="입시 담임선생님의 파이널 맞춤 관리" />
            </h3>
            <!-- 입시,생활,학습관리 슬라이드 -->
            <div class="manage-slide-wrap">                
                <div class="manage-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
                <div class="content-box">
                    <div class="swiper-container manage-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0349" or sCampusCode = "CD0346" Then '인트로/울산/코어청주 %>  
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/manage_slide01.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/manage_slide01.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>개인별 수시/정시 맞춤 지원 전략
                                        </dt>
                                        <dd>
                                            9월 모의평가 성적 분석을 통한 <br>
                                            <strong>수시 최종 지원 대학 결정 등 수시 컨설팅 진행</strong>
                                        </dd>
                                        <dd>
                                            <strong>9월 모의평가 성적 기반 수능 성적 예측</strong>으로 <br>
                                            정시 지원 가능 대학 파악 및 목표 대학 합격 가능성 확인
                                        </dd> 
                                        <dd>
                                            수능 이후 가채점/실채점 성적 분석을 통해 <br>
                                            <strong>개인별 맞춤 정시 컨설팅 진행</strong>
                                        </dd>                                     
                                    </dl> 
                                    <% If sCampusCode = "INTRO" Then '인트로 %>    
                                    <p class="l-txt">※ 각 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>
                                    <% End If %>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0349" or sCampusCode = "CD0340" or sCampusCode = "CD0346" Then '인트로/울산/코어광주/코어청주 %>  
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/manage_slide02.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/manage_slide02.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>개인 성적 분석을 통한 <br>최종 학습 전략 수립
                                        </dt>
                                        <dd>
                                            재원 시작부터 9월 모의평가까지의 성적 분석 및 유사 사례 비교 등 <br>
                                            <strong>수능 고득점을 위한 학습 상담 진행</strong>
                                        </dd>
                                        <dd>
                                            <strong>실전과 유사한 환경에서 집체 모의고사 지속적인 진행</strong>으로<br>
                                            실전 감각 극대화
                                        </dd> 
                                        <dd>
                                            마지막까지 흐트러지지 않도록 <strong>매일 학습 습관 루틴 점검</strong>
                                        </dd>                                     
                                    </dl> 
                                    <% If sCampusCode = "INTRO" Then '인트로 %>    
                                    <p class="l-txt">※ 각 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>
                                    <% End If %>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" or sCampusCode = "CD0341" or sCampusCode = "CD0346" Then '인트로/코어대전/코어청주 %>  
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/manage_slide03.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/manage_slide03.jpg" alt="" /></div>
                                <% End If %>  
                                <div class="info-detail">
                                    <dl>
                                        <dt>수능 시간표와 동일한 <br>
                                            수능 학습 리듬 체화
                                        </dt>
                                        <dd>
                                            <strong>실제 수능 시간표와 동일한 바자관 표준 시간표 운영</strong> 및 <br>
                                            수능 학습 리듬 체화
                                        </dd>
                                        <dd>
                                            마지막까지 면학분위기가 유지될 수 있도록 <br>
                                            <strong>강력한 관리 및 태도 점수 운영</strong>
                                        </dd> 
                                        <dd>
                                            수능까지 최상의 컨디션을 유지할 수 있도록 <strong>1:1 정신적 멘토링 진행</strong>
                                        </dd>                                     
                                    </dl> 
                                    <% If sCampusCode = "INTRO" Then '인트로 %>   
                                    <p class="l-txt">※ 각 학원별 관리 프로그램 내용은 상이할 수 있습니다. </p>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                    </div>  
                    <% If sCampusCode = "INTRO" Then '인트로 %>       
                    <div class="b-review">
                        <dl>
                            <dt>
                                <p class="uni-logo"><img src="<%=Application("img_path_russel")%>/intro/2024/final/logo_seoul.png" alt="" /></p>
                                2024학년도 <br>
                                <strong>
                                    서울대학교 <br>
                                    공과대학(광역) 합격
                                </strong><br>
                                <span>러셀 분당 박현수</span>
                            </dt>
                            <dd>                              
                                평가원 모의평가와 메대프 모의고사의 성적표가 나오면 <strong>담임선생님이 성적에 대한 분석</strong>을 도와주시고, <br>
                                <strong>추가 학습계획에서 보완해야 할 부분을 짚어주셔서 성적 향상에 도움</strong>이 되었습니다.<br>
                                <strong>원서접수할 때</strong>는 제가 접근하기 힘든 <strong>다양한 정보를 바탕으로 적절한 과를 정확하게</strong> 짚어내 주셨습니다.
                            </dd>
                        </dl>
                    </div>
                    <% End If %>
                </div>
            </div>
        </div>
    </div>
    <!--// cont03 -->
    <!-- cont04 -->
    <div class="cont04">
        <div class="inner">          
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final/txt_num04.png" alt="04" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final/cont_stit04.png" alt="실전에 최적화된 파이널 실전 콘텐츠 & 집체 모의고사" />
            </h3>
            <ul class="class-list white pb40">
                <li>
                    <p>최신 출제 경향이 반영된<br>
                        <strong>실전 모의고사 </strong>
                    </p>                        
                </li>
                <li>
                    <p>현장감을 느낄 수 있도록<br>
                        수능장과 동일하게 <strong>집체 진행</strong>
                    </p>
                </li>
                <li>
                    <p>전국 단위 집체 모의고사로<br>
                        <strong>객관적인 나의 위치 파악</strong>
                    </p>
                </li>
                <li>
                    <p>수능까지 매주 집체 진행으로<br>
                        <strong>강도 있는 실전 훈련</strong>
                    </p>
                </li>
            </ul>
            <!-- 모의고사 -->
            <div class="contents-list">		
                <% If sCampusCode = "CD0341" or sCampusCode = "CD0340" or sCampusCode = "CD0344" or sCampusCode = "CD0345"  or sCampusCode = "CD0346" Then '코어대전/코어광주/코어전주/코어창원/코어청주 %>  
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list04.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>러셀CORE <br>Weekly 모의고사</strong></p>
                        <p class="c-day">9월 2주/4주차, 10월 1주차, <br> 11월 2주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>러셀CORE 선생님들이 <br>
                                    직접 출제한 모의고사 콘텐츠 제공</li>
                                <li>매주 정해진 시간에 집체 모의고사 <br>
                                    응시하여 실전 감각 향상</li>
                            </ul>
                        </div>
                    </div>                 
                </div>
                <% End If %>    
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list01.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>QUEL<br>모의고사</strong></p>
                        <p class="c-day">9월 3주차, 10월 2주/3주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>실전 마무리 및 최종 점검을 위해 <br>
                                    수능과 동일하게 제작</li>
                                <li>수능과 가장 유사한 문항을 통해 <br>
                                    상대적 위치 및 학습 상태 점검</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list02.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>E-QUEL <br>모의고사</strong></p>
                        <p class="c-day">11월 1주차 시행 : 11/1(금)</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>전 과목 구성으로 수능과 <br>
                                    동일하게 실전 훈련</li>
                                <li>러셀 및 메가스터디학원 집체 응시로 <br>
                                    객관적인 위치 점검</li>
                            </ul>
                        </div>
                    </div>
                </div>   
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list03.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>메대프 <br>모의고사</strong></p>
                        <p class="c-day">10월 4주차 시행 : 10/22(화)</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>과목별 전문 출제진 구성과 <br>
                                    다 회차 검토</li>
                                <li>전 과목 구성 및 정확하고 <br>
                                    객관적인 나의 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>  
                <% If sCampusCode <> "CD0247" and sCampusCode <> "CD0249" and sCampusCode <> "CD0246" and sCampusCode <> "CD0341" and sCampusCode <> "CD0340" and sCampusCode <> "CD0344" and sCampusCode <> "CD0345" and sCampusCode <> "CD0346" Then '강남/영통/센텀/코어대전/코어광주/코어전주/코어창원/코어청주 제외 %>  
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list04.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>러셀CORE <br>Weekly 모의고사</strong></p>
                        <p class="c-day">9월 2주/4주차, 10월 1주차, <br> 11월 2주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>러셀CORE 선생님들이 <br>
                                    직접 출제한 모의고사 콘텐츠 제공</li>
                                <li>매주 정해진 시간에 집체 모의고사 <br>
                                    응시하여 실전 감각 향상</li>
                            </ul>
                        </div>
                    </div>
                    <% If sCampusCode = "CD0250" Then '부천 %>  
                    <p class="s-txt">※ 러셀 부천은 10회차부터 진행</p>
                    <% End If %>  
                </div>    
                <% End If %>
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list05.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>월간 학습지 <br>(월간 장영진)</strong></p>
                        <p class="c-day">9월 1주차 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>수학 장영진 선생님의 자작 문항으로 <br>
                                    매월 집체 모의고사 진행</li>
                                <li>수험생활에 필요한 <br>
                                    다양한 수학&middot;입시 관련 정보 제공</li>
                            </ul>
                        </div>
                    </div>
                </div> 
                <% If sCampusCode = "INTRO" Then '인트로 %>  
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list06.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>학원 실전 모의고사</strong></p>
                        <p class="c-day">학원 자체적으로 개별 시행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>전국 단위 집체 모의고사 외 <br>
                                     강도 있는 수능 대비 실전 훈련</li>
                                <li>강사 모의고사 또는 학원 자체 모의고사 <br>
                                    제작을 통해 실전 모의고사 진행</li>
                            </ul>
                        </div>
                    </div>
                </div>     
                <% End If %>  
                <% If sCampusCode = "CD0247" Then '강남 %>  
                <div>
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_list07.jpg" alt="" />
                    <div>
                        <p class="c-tit"><strong>매점 보카 <br>(영어 유진T)</strong></p>
                        <p class="c-day">매주 주 1회 진행</p>
                        <div class="c-txt-box">
                            <ul>
                                <li>러셀 강남 재원생만을 위한 <br>
                                    영어 듣기&단어 프로그램
                                </li>
                                <li>유진T 자체 제작 자료 제공</li>
                            </ul>
                        </div>
                    </div>
                </div> 
                <% End If %>  
                <% If sCampusCode <> "INTRO" and sCampusCode <> "CD0249" Then '인트로/영통 제외 %>  
                <!-- mega 빈칸-->
                <div class="blank">
                    <img src="<%=Application("img_path_russel")%>/intro/2024/final/contents_mega.png" alt="" />
                </div>
                <!--// mega -->
                <% End If %>  
            </div>

            <!-- 모의고사 스케쥴 -->
            <!--#include virtual="/intro/2024/final/schedule.asp" -->
            <!-- //모의고사 스케쥴 -->
            <% If sCampusCode = "INTRO" Then '인트로 %>    
            <div class="b-review type02">
                <dl>
                    <dt>
                        <p class="uni-logo"><img src="<%=Application("img_path_russel")%>/intro/2024/final/logo_seoul_gray.png" alt="서울대" /></p>
                        2024학년도 <br>
                        <strong>
                            서울대학교 <br>
                            인문계열 합격
                        </strong><br>
                        <span>러셀 영통 민서연</span>
                    </dt>
                    <dd>                              
                        <strong>QUEL 모의고사, 메대프 모의고사와 같은 양질의 실전 모의고사를 현장감 있는 환경에서 <br>
                            풀어볼 수 있었던 점이 좋았습니다.</strong>
                        혼자 시간만 맞춰 풀어서는 절대 연습할 수 없는 것이 현장감이기에, <br>
                        <strong>매번 실전처럼 임하여 다양한 돌발 상황을 연습했습니다.</strong>
                    </dd>
                </dl>
            </div>
            <% End If %>
        </div>
    </div>
    <!-- //cont04 -->
    <!-- cont05 -->
    <% If sCampusCode <> "CD0340" and  sCampusCode <> "CD0344" Then '코어광주/코어전주 제외%>     
    <div class="cont05">
        <div class="inner">
            <h3>
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2024/final/txt_num05.png" alt="04" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2024/final/cont_stit05.png" alt="수능까지 강도 있는 실전 훈련을 위한 수능 실전 모의 훈련장" />
            </h3>
            <div class="content-box">
                <div class="training-container">
                    <div class="training-box">
                        <% If sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0349" or sCampusCode = "CD0346" Then '인트로/강남/부천/평촌/센텀/울산/코어청주 %>   
                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/final/training_img01.jpg" alt="" /></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/training_img01.jpg" alt="" /></div>
                        <% End If %>
                        <div class="info-detail">
                            <dl>
                                <dt>재원생들의 수능 실전 능력 향상</dt>
                                <dd>
                                    <strong>감독관 배치, OMR 마킹, 타종등 현장감 있는 고사장</strong>을 만들고 <br>
                                    학원 자체 모의고사 제공 또는 자신의 풀 모의고사 지참하여<br>
                                    모의고사 훈련 진행
                                </dd>
                                <% If sCampusCode = "CD0249"  Then '영통 %>   
                                <dd>
                                    6월/9월 모의평가 대비 사전 훈련장 진행 및 <br>
                                    <strong>9월 모의평가 이후 수능까지 정규 훈련장 운영</strong>
                                </dd> 
                                <% Else %>
                                <dd>
                                    6월/9월 모의평가 대비 사전 훈련장 진행 및 <br>
                                    <strong>9월 모의평가 이후 수능까지 정규 훈련장으로 주 1회 이상 운영</strong>
                                </dd> 
                                <dd>
                                    N수생 뿐만 아니라 <strong>고3 재학생을 위해 주말 훈련장 운영</strong>
                                </dd>    
                                <% End If %>                                 
                            </dl> 
                            <% If sCampusCode = "INTRO" Then '인트로 %>       
                            <p class="l-txt">※ 해당 프로그램은 학원 운영 상황에 따라 운영 또는 미운영 될 수 있으므로, <br>
                                학원별 페이지에서 확인하시기 바랍니다.
                            </p>
                            <% End If %>
                        </div>
                    </div>
                </div>      
                <% If sCampusCode = "INTRO" Then '인트로 %>       
                <div class="b-review type03">
                    <dl>
                        <dt>
                            <p class="uni-logo"><img src="<%=Application("img_path_russel")%>/intro/2024/final/logo_korea_gray.png" alt="" /></p>
                            2024학년도 <br>
                            <strong>
                                고려대학교 <br>
                                식품자원경제학과 합격
                            </strong><br>
                            <span>러셀 목동 설정연</span>
                        </dt>
                        <dd>                              
                            <strong>파이널 기간에 진행된 수능 실전 모의 훈련장이 큰 도움</strong>이 되었습니다. <br>
                            실제 수능 시험장과 비슷한 환경에서 실전 모의고사를 풀어 보며 <strong>모의고사 시간 운용 방법을 <br>
                            계획</strong>할 수 있었고, <strong>시험장에서 생길 수 있는 다양한 변수에 대비</strong>할 수 있었습니다.
                        </dd>
                    </dl>
                </div>
                <% End If %>
            </div>
        </div>
    </div>
    <% End If %>
    <!-- //cont05 -->
    <!-- 하단 띠배너 -->
    <div class="bottom-bar">
        <p>수능까지 <strong class="dday"></strong>, <%=txtCampus%> 파이널 정규반에서</p>
        <% If sCampusCode = "CD0257" Then '중계 %>     
        <p class="mt15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/final/bottom_tit.png" alt="목표하는 2025학년도 대학 합격 성공을 이를 수 있습니다." /></p>
        <% Else %>
        <p class="mt15"><img src="<%=Application("img_path_russel")%>/intro/2024/final/bottom_tit.png" alt="목표하는 2025학년도 메디컬&최상위권 대입성공을 이를 수 있습니다." /></p>
        <% End If %>
    </div>
    <!-- //하단 띠배너 -->
</div>


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
<!-- popup -->