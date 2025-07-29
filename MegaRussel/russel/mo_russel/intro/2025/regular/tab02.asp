<div class="cont js-cont-wrap <%=campusName%>">

    <div class="cont04 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont04_tit.jpg" alt=""></p>

        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0250" Then '코어/대구/울산/부천 %>
        <a class="i-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_bus.png" alt=""></a>
        <% End If %>

        <div class="inner">
            <div class="studyHall-wrap">
                <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0244" Then '코어/대구/울산/평촌/분당 %>
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">바자관 표준 시간표</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">최적화된<br>학습환경</div>
                        <div class="swiper-slide">자체 식당<br>운영</div>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">바자관<br>표준 시간표</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">최적화된<br>학습환경</div>
                    </div>
                </div>
                <% End If %>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0257" Then '중계 %>
                            <p class="tit">
                                고득점 학생들이 모여 경쟁하는 <br>
                                <strong>집단적인 면학분위기</strong>
                            </p>
                            <% Else %>
                            <p class="tit">
                                최상위권이 모여 경쟁하는 <br>
                                <strong>집단적인 면학분위기</strong>
                            </p>
                            <% End If %>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/studyHall_img01.jpg" alt=""></p>
                            <ul class="list-dot">
                                <% If campus_code = "CD0257" Then '중계 %>
                                <li>
                                    <strong>고득점 학생들의 학구열을 체감할 수 있는 <br>
                                    개방형 구조</strong>로 자연스럽게 학습 동기로 부여
                                </li>
                                <% Else %>
                                <li>
                                    <strong>최상위권의 학구열을 체감할 수 있는 <br>
                                    개방형 구조</strong>로 자연스럽게 학습 동기로 부여
                                </li>
                                <% End If %>
                                <li>
                                    <strong>입시 담임선생님의 관리</strong> 하에 강력한 <br>
                                    면학분위기 형성 및 유지
                                </li>
                            </ul>
                        </div>
                        <!-- 바자관 표준 시간표 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                수능 시간표와 동일한 <br>
                                <strong>바자관 표준 시간표</strong>
                            </p>
                            <p class="schedule_img">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/studyHall_img02.jpg" alt="">
                                <a href="javascript:void(0)" class="schedule_link"></a>
                            </p>
                            <ul class="list-dot">
                                <li>
                                    실제 수능 시간표와 동일한 표준 시간표로 <br>
                                    <strong>학습&middot;생활 리듬이 수능에 최적화</strong>
                                </li>
                                <li>
                                    개인 맞춤 학습 스케쥴 운영과 바자관 <br>
                                    의무자습으로 <strong>매일 최대 자습시간 확보</strong>
                                </li>
                            </ul>
                        </div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                이동에 낭비하는 시간없이 <br>
                                <strong>학습 동선 최소화</strong>
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/studyHall_img03.jpg" alt=""></p>
                            <ul class="list-dot">
                                <li>
                                    <strong><%=food_txt%></strong>할 수 있어 이동에 낭비되는 시간 최소화
                                </li>
                                <li>
                                    <strong>효율적인 시간관리가 가능</strong>하여 수업&middot;자습시간에 높은 집중력 발휘, 학습량 극대화
                                </li>
                            </ul>
                        </div>
                        <!-- 최적화된 학습환경 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                학습에만 집중할 수 있는 <br>
                                <strong>학습에 최적화된 환경</strong>
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/studyHall_img04.jpg" alt=""></p>
                            <ul class="list-dot">
                                <li>
                                    <strong>개방형 구조</strong>로 되어 있어 지속적으로 <br>
                                    긴장감 유지 및 학습동기 부여
                                </li>
                                <li>
                                    <strong>쾌적한 학습공간, 수업과 자습공간 분리 등</strong> <br>
                                    학습 효율성을 높이기 위해 설계된 학습시설
                                </li>
                            </ul>
                        </div>

                        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0244" Then '코어/대구/울산/평촌/분당 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                양질의 급식이 제공되는 <br>
                                <strong>자체 식당 운영</strong>                                
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/studyHall_img05.jpg" alt=""></p>
                            <ul class="list-dot">
                                <li>자체 식당 운영으로 <strong>균형 잡힌 식단 유지</strong></li>
                                <li>맛과 영양을 고려한 건강하고 든든한 한 끼를 <br> 재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong></li>
                                <li>외부와의 접촉과 이동시간 최소화로 <br> <strong>학습에 몰입 가능</strong></li>
                            </ul>
                        </div>
                        <% End If %>
                    </div>
                </div>

                <!-- 바자관 표준 시간표 -->
                <!-- #include virtual = "/intro/2025/regular/baja_time_table.asp" -->
                <!-- //바자관 표준 시간표 -->
            </div>
            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="r-txt">※ 학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
            <% End If %>
            
            <a class="btn-common" href="<%=studyHall_btn_url%>"><%=studyHall_btn%></a>
        </div>

    </div>
    <div class="cont05 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont05_tit.jpg" alt=""></p>
        <div class="danka-list">
            <ul>
                <li>
                    <p>
                        <%=danka_list01%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list02%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list03%>
                    </p>
                </li>
                <li>
                    <p>
                        <%=danka_list04%>
                    </p>
                </li>
            </ul>
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/regular/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->

        <div class="danka-wrap">
            <a class="box" href="<%=regular_url%>">
                <p>
                    <% If campus_code = "CD0257" Then '중계 %>
                    <span>수능 고득점을 만드는 단계별 커리큘럼</span>
                    <% Else %>
                    <span>수능 1등급을 만드는 단계별 커리큘럼</span>
                    <% End If %>
                    <strong>정규&middot;특강 단과</strong>
                </p>
            </a>
            <% If campus_code <> "CD0341" and campus_code <> "CD0343" and campus_code <> "CD0340" Then '코어대전/코어원주/코어광주 제외 %>
            <a class="box" href="<%=am_url%>">
                <div class="badge">
                    N수 <br> 전용
                </div>
                <p>
                    <span>오직 N수생을 위한 평일 오전/오후 단과</span>
                    <strong>AM단과</strong>
                </p>
            </a>
            <% End If %>
        </div>
    </div>
    <div class="cont06 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont06_tit.jpg" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont06_tit.jpg" alt=""></p>
        <% End If %>
        <div class="inner">
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
                            <% If campus_code = "CD0257" Then '중계 %>
                            <p class="tit">
                                치열한 입시에서 <br>
                                목표 대학 합격을 위한 <br>
                                <span>전문적인 입시관리</span>
                            </p>
                            <% Else %>
                            <p class="tit">
                                치열한 입시에서 <br>
                                최상위권 대학 합격을 위한 <br>
                                <span>전문적인 입시관리</span>
                            </p>
                            <% End If %>
                            <div class="s-slide swiper-container type01">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">1:1 맞춤 입시전략 제시</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/s_slide01_img01.jpg" alt=""></p>
                                        <ul class="list-dot">
                                            <li>
                                                수능 성적부터 모의고사까지 재원생의 <br>
                                                <strong>성적 데이터를 체계적으로 누적 관리</strong>
                                            </li>
                                            <li>
                                                누적 관리된 데이터를 기반으로 <strong>개인 목표에 <br>
                                                맞춘 입시(수시/정시)전략 제시</strong>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">1:1 맞춤 입시상담 진행</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/s_slide01_img02.jpg" alt=""></p>
                                        <ul class="list-dot">
                                            <li>
                                                개별 성적 포트폴리오 기반으로 <strong>체계적이고 <br> 전문적인 1:1 맞춤 상담</strong> 진행
                                            </li>
                                            <li>
                                                목표 대학 합격을 위한 <strong>입시 전문가의 <br>
                                                수시/정시 지원 전략 컨설팅</strong> 진행
                                            </li>
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
                            <p class="tit">
                                수능까지 성취도 있는 학습을 위한 <br>
                                <span>체계적인 학습관리</span>
                            </p>
                            <div class="s-slide swiper-container type02">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">1:1 맞춤 학습 상담 및 학습 전략</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/s_slide02_img01.jpg" alt=""></p>
                                        <ul class="list-dot">
                                            <li>
                                                재원생의 <strong>성적 데이터와 학습 현황</strong>을 <br>
                                                바탕으로 <strong>개인 목표에 맞춘 학습 전략 제시</strong>
                                            </li>
                                            <li>
                                                1:1 학습 상담을 통해 <strong>과목별 보완점과 <br>
                                                학습 설계 및 점검</strong>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">학습법 특강 및 설명회 진행</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/s_slide02_img02.jpg" alt=""></p>
                                        <ul class="list-dot">
                                            <li>
                                                올바른 학습 습관 형성을 위한 <strong>러셀 학습 플래너,<br>
                                                러셀 총평노트 등 활용법 특강</strong>
                                                    진행
                                            </li>
                                            <li>
                                                과목별 선생님의 <strong>과목별 학습 전략 특강, <br>
                                                모의고사 분석 및 해설 특강</strong> 등 진행
                                            </li>
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
                            <p class="tit">
                                집단적인 면학분위기 형성을 위한 <br>
                                <span>엄격한 생활관리</span>
                            </p>
                            <div class="s-slide swiper-container type03">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">엄격한 출결 관리 및 태도 점수 제도</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/s_slide03_img01.jpg" alt=""></p>
                                        <ul class="list-dot">
                                            <li>
                                                <strong>매 교시 엄격한 출결 관리</strong>와 전자 출결 관리 <br>
                                                시스템, <strong>바자관 상시 모니터링</strong>
                                            </li>
                                            <li>
                                                면학분위기 저해요소 엄격 관리 및 <strong>태도 점수 <br> 운영으로 최대 강제 퇴원 조치</strong>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">정신적 멘토링</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/s_slide03_img02.jpg" alt=""></p>
                                        <ul class="list-dot">
                                            <li>
                                                학생중심 사고를 기반하여 학생에 대한 <br>
                                                존중, 배려 등 <strong>동반자 역할</strong>
                                            </li>
                                            <li>
                                                <strong>바자관 앞 또는 바자관 내 상주</strong>하여 <br>
                                                가장 가까운 곳에 함께 생활
                                            </li>
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
    <div class="cont07 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont07_tit.jpg" alt=""></p>
        <div class="inner">
            <div class="box">
                <p class="tit">
                    명확한 목표 지향점과 학습 동기 부여하는 <br>
                    <span>승반&middot;강반 제도</span>
                </p>
                <div class="arrow-wrap">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/arrow01_bg.jpg" alt="배경"></p>
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/arrow01_img01.png" alt="보라색 화살표"></p>
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/arrow01_img02.png" alt="검정색 화살표"></p>
                    <% If campus_code = "INTRO" Then '인트로 %>
                    <p class="r-txt">※ 반편성 및 장학혜택은 학원별 홈페이지에서 확인 바랍니다.</p>
                    <% End If %>
                </div>
                <ul class="list-dot">
                    <li>
                        모의고사, 평가원 성적과 태도 점수를 <br>
                        바탕으로 엄격하게 <strong>수준별 반편성 실시 및 <br>
                        연 <%=num%> 수준별 승반&middot;강반 운영</strong>
                    </li>
                    <li>
                        바자관 재원생들간의 <strong>선의의 경쟁, 학구열에 <br>
                        대한 보상</strong>, 반대로 <strong>학습 상태에 대한 경각심</strong>을 <br>
                        심어주며 명확한 목표 지향점 제공
                    </li>
                    <% If campus_code = "CD0244" Then '분당 %>
                    <li>학습동기 부여로 <strong>집단적인 면학분위기와 <br> 긍정적인 긴장감 조성, 지속적인 학습 태도 및 <br> 성적 향상</strong> 관리 가능</li>
                    <% End If %>
                </ul>
                <p class="ico-plus"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_plus.png" alt="플러스"></p>
            </div>
            <div class="box">
                <p class="tit">
                    학구열에 대한 보상과 학습 동기 부여하는 <br>
                    <span>장학 제도</span>
                </p>
                <ul class="list-dot">
                    <li>
                        <strong>바자관 입학 시 입학 성적에 따라 <br>
                        장학혜택 제공</strong>
                    </li>
                    <li>
                        우수한 재원생들이 수능까지 더 좋은 결과를 <br> 낼 수 있도록 적극적으로 지원
                    </li>
                    <li>
                        승반·강반 제도에서 <strong>승반 적용 시 함께 <br>
                        적용</strong>되어 <strong>재원생들의 노력과 성공의 결과를 <br> 
                        응원</strong>하며, 학습 동기와 성취 부여
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>