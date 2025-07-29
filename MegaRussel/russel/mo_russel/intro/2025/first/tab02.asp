<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont03 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont03_tit.jpg" alt=""></p>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont03_txt.jpg" alt=""></p>
        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" Then '코어/대구/울산/대전 %>
        <a class="i-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_bus.png" alt=""></a>
        <% End If %>
        <div class="inner">
            <div class="studyHall-wrap">
                <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0341" Then '코어/대구/울산/평촌/대전 %>
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">충분한 자습시간</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">최적화된<br>학습환경</div>
                        <div class="swiper-slide">자체<br>식당 운영</div>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">충분한<br>자습시간</div>
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
                            <p class="tit">고득점 학생들이 모여 경쟁하는<br>
                                <strong>집단적인 면학분위기</strong></p>
                            <% Else %>
                            <p class="tit">최상위권이 모여 경쟁하는<br>
                                <strong>집단적인 면학분위기</strong></p>
                            <% End If %>

                            <ul class="list-dot">
                                <% If campus_code = "CD0257" Then '중계 %>
                                <li>고득점 학생들의 학구열을 직접 체감할 수 있는 
                                    <strong>개방형 구조</strong>로 <strong>지속적인 학습동기를<br>
                                        부여하며 긴장감을 유지</strong>하게 합니다.</li>
                                <% Else %>
                                <li>최상위권의 학구열을 직접 체감할 수 있는<br>
                                    <strong>개방형 구조</strong>로 <strong>지속적인 학습동기를<br>
                                    부여하며 긴장감을 유지</strong>하게 합니다.</li>
                                <% End If %>
                                <li><strong>입시 담임선생님의 관리</strong>하에 자율과 통제의<br>
                                    균형적인 운영으로 <strong>강력한 면학분위기를<br>
                                    형성</strong>합니다.</li>
                            </ul>
                            <% If campus_code = "INTRO" or campus_code = "CD0001" or campus_code = "CD0247" or campus_code = "CD0244" or campus_code = "CD0246" Then '인트로/대치/강남/분당/센텀 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/studyHall_img01.jpg" alt=""></p>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="tab-slide swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/studyHall_img01.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img01_2.jpg" alt=""></div>
                                </div>
                                <div class="swiper-pagination style01"></div>
                            </div>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img01.jpg" alt=""></p>
                            <% End If %>
                        </div>
                        <!-- 충분한 자습시간 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0244" Then '분당 %>
                            <p class="tit">실제 수능 시간표와 동일한<br>
                                <strong>표준 시간표 운영</strong></p>
                            <% Else %>
                            <p class="tit">실제 수능 시간표와 동일한<br>
                                <strong>표준 시간표 운영</strong></p>
                            <% End If %>
                            <ul class="list-dot">
                                <li><strong>수능 시험 기준의 표준 시간표로 생활</strong>하여<br>
                                    학습&middot;생활 리듬이 <br>
                                    수능에 최적화되도록 합니다.</li>
                                <li>개인의 학습 상황에 맞는 스케줄 운영과<br>
                                    충분한 의무자습으로 <strong>매일 최대 자습시간을<br>
                                    확보</strong>하게 합니다.</li>
                                    
                            </ul>
                            <p class="img">
                                <% If campus_code = "CD0247" or campus_code = "CD0245" or campus_code = "CD0250" or campus_code = "CD0257" or campus_code = "CD0349" or campus_code = "CD0343" Then '강남/목동/부천/중계/울산/코어원주 %>
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img02.jpg" alt="">
                                <% Else %>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/studyHall_img02.jpg" alt="">
                                <% End If %>
                                <a href="javascript:void(0)" class="schedule_link">표준 시간표 보기</a>
                            </p>
                        </div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0244" Then '분당 %>
                            <p class="tit">이동에 낭비하는 시간이 없도록<br>
                                <strong>학습 동선 최소화</strong></p>
                            <% Else %>
                            <p class="tit">이동에 낭비하는 시간 없도록<br>
                                <strong>학습 동선 최소화</strong></p>
                            <% End If %>
                            <ul class="list-dot">
                                <li><%=baja_txt%>을<br>
                                    한 번에 해결하여 <strong>이동에 낭비하는 시간을<br> 
                                    최소화</strong>합니다.</li>
                                <li>학습 동선을 최소화하여 <strong>효율적인<br>
                                    시간 활용</strong>이 가능하며 <strong>수업 및 자습시간에<br>
                                    높은 집중력을 발휘</strong>할 수 있습니다.</li>
                                   
                            </ul>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/studyHall_img03.jpg" alt=""></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img03.jpg" alt=""></p>
                            <% If campus_code = "CD0247" Then '강남 %>
                            <p class="r-txt">※ 강의실은 운영 상황에 따라 별관(다른 건물)으로<br>이동할 수도 있습니다.</p>
                            <% End If %>
                            <% End If %>
                        </div>
                        <!-- 최적화된 학습환경 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0244" Then '분당 %>
                            <p class="tit">학습에만 전념할 수 있도록<br>
                                <strong>최적화된 환경</strong></p>
                            <% Else %>
                            <p class="tit">학습에만 전념할 수 있도록<br>
                                <strong>학습에 최적화된 환경</strong></p>
                            <% End If %>
                            <ul class="list-dot">
                                <li><strong>학습 효율성을 높이기 위해 설계된 시설과<br>
                                    환경</strong>에서 온전히 학습에만<br>
                                    집중할 수 있습니다.</li>
                                <li>바자관은 <strong>개방형 구조와 벽면이 통유리</strong>로<br>
                                    되어 있어 건강한 긴장감과 개방감을<br>
                                    느낄 수 있습니다.</li>
                            </ul>
                            <% If campus_code = "INTRO" or campus_code = "CD0001" or campus_code = "CD0248" or campus_code = "CD0249" or campus_code = "CD0246" or campus_code = "CD0340" or campus_code = "CD0343" or campus_code = "CD0346" or campus_code = "CD0344" or campus_code = "CD0342" Then '인트로/대치/평촌/영통/센텀/코어광주/코어원주/코어청주/코어전주/대구 %>
                            <p class="img" style="width:calc(600vw/7.2)">
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/studyHall_img04.jpg" alt="">
                                <% If campus_code = "INTRO" Then '인트로 %>
                                <span>* 학원별로 시설은 상이할 수 있습니다.</span>
                                <% End If %>
                            </p>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="tab-slide02 swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/studyHall_img04.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img04_2.jpg" alt=""></div>
                                </div>
                                <div class="swiper-pagination style02"></div>
                            </div>
                            <% Else %>
                            <p class="img" style="width:calc(600vw/7.2)"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img04.jpg" alt=""></p>
                            <% End If %>
                        </div>
                        <% If isCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0341" Then '코어/대구/울산/평촌/대전 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <p class="tit">양질의 급식이 제공되는<br>
                                <strong>자체 식당 운영</strong></p>
                            <% If campus_code = "CD0248" Then '평촌 %>
                            <ul class="list-dot">
                                <li><strong>학원에 등원 후 학원 내에서 식사부터<br>
                                    학습까지 해결</strong>할 수 있도록<br>
                                    자체 식당을 운영합니다.</li>
                                <li>수험생활을 하는 학생들을 위해 <strong>영양소를<br>
                                    고려한 반찬으로 구성하여 중식과 석식을<br>
                                    제공</strong>합니다.</li>
                                <li><strong>상주 영양사와 조리실장이 직접 조리 후<br>
                                    현장 배식</strong>을 진행합니다.</li>
                            </ul>
                            <% Else %>
                            <ul class="list-dot">
                                <li>자체 식단 운영으로 <br>
                                    <strong>균형 잡힌 식단을 유지</strong>합니다.</li>
                                <li>맛과 영양을 고려한 건강하고 든든한 한 끼를<br>
                                    재원생의 <strong>가장 가까운 곳에서 안전하게<br>
                                    준비</strong>합니다.</li>
                                <li>외부와의 접촉 최소화 및 <strong>이동시간을 줄여<br>
                                    학습에 몰입</strong>할 수 있습니다.</li>
                            </ul>
                            <% End If %>

                            <p class="img" style="width:calc(600vw/7.2)"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/studyHall_img05.jpg" alt=""></p>
                        </div>
                        <% End If %>
                    </div>
                </div>

                <!-- 바자관 표준 시간표 -->
                <!-- #include virtual = "/intro/2025/first/baja_time_table.asp" -->
                <!-- //바자관 표준 시간표 -->
            </div>
            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원별 운영 방법 및 시설은 상이하며,<br>
                자세한 내용은 학원별 페이지에서 확인할 수 있습니다.</p>
            <% End If %>
        </div>
    </div>
    <div class="cont04 js-cont <%=campusName%>">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont04_tit.jpg" alt=""></p>
        <div class="inner">
            <% If campus_code = "CD0340" Then '코어광주 %>
            <ul class="danka-info core">
                <li class="mb10">메가스터디 <br>온&middot;오프 강사진의<br>
                    <strong>몰입감 높은 현장강의/<br>대치동 LIVE 강의</strong></li>
                <li class="mb10 ml10">과목별/수준별/진도별<br>
                    <strong>꼭 필요한 수업만 선택</strong></li>
                <li>수능 고득점을 위한<br>
                    <strong>기본기 완성 및 취약점 보완</strong></li>
                <li class="ml10">수업 전후 <strong>철저한 관리와<br>
                    선생님 전용 학습 콘텐츠</strong></li>
            </ul>
            <% Else %>
            <ul class="danka-info">
                <li class="mb10">수능까지 탄탄한 커리큘럼<br><strong>메가스터디 전문 강사진</strong></li>
                <li class="mb10 ml10">과목별/수준별/진도별<br>
                    <strong>꼭 필요한 수업만 선택</strong></li>
                <% If campus_code = "CD0343" Then '코어원주 %>
                <li>내게 필요한 수업만 선택<br>
                    <strong>충분한 자습시간 확보</strong></li>
                <li class="ml10">선생님 전용 학습 콘텐츠,<br>
                    <strong>수업 전후 학습관리</strong></li>
                <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                <li>수능 고득점을 위한<br>
                    <strong>기본기 완성 및 취약점 보완</strong></li>
                <li class="ml10">수업 전후 <strong>철저한 관리와</strong><br>
                    수강생 전용 <strong>수업 콘텐츠</strong></li>
                <% Else %>
                <li>수능 고득점을 위한<br>
                    <strong>기본기 완성 및 취약점 보완</strong></li>
                <li class="ml10">수업 전후 <strong>철저한 관리와</strong><br>
                    현강생 전용 <strong>수업 콘텐츠</strong></li>
                <% End If %>
            </ul>
            <% End If %>

            <!-- 선생님 롤링 슬라이드 -->
            <!--#include virtual="/intro/2025/first/teacher_slide.asp" -->
            <!-- //선생님 롤링 슬라이드 -->

            <% If campus_code = "CD0247" Then '강남 %>
            <a class="first-btn bk mt40" href="<%=regular_url02%>"><span>경쟁자보다 빠른 시작</span> <%=regular_txt02%></a>
            <a class="first-btn bk mt10" href="<%=regular_url%>"><span>단계별 연간 커리큘럼</span> <%=regular_txt%></a>
            <% Else %>
            <a class="first-btn bk mt40" href="<%=regular_url%>"><%=regular_txt%></a>
            <% End If %>
        </div>
    </div>
    <div class="cont05 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont05_tit.jpg" alt="입시 전문 입시 담임선생님의 체계적인 관리"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont05_tit.jpg" alt="최상위권 전문 입시 담임선생님의 체계적인 관리"></p>
        <% End If %>
        <div class="inner">
            <!-- 관리 탭슬라이드 -->
            <div class="manage-wrap">
                <div class="manage-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">입시관리</div>
                        <div class="swiper-slide">학습관리</div>
                        <div class="swiper-slide">생활관리</div>
                    </div>
                </div>
                <div class="manage-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="tit">목표 대학 합격을 위한 개인 맞춤<br>
                                <strong>입시관리</strong></p>
                            <ul class="list-dot">
                                <li>입시 결과 및 수능 성적을 기반으로<br>
                                    체계적인 1:1 상담</li>
                                <li>재원생 입시 결과를 활용하여 개인 목표에<br>
                                    맞춘 시기별 입시(수시/정시) 방향 제시</li>
                                <li class="mb0">입시특강, 전형별 설명회 등<br>
                                    최신 입시 정보 제공</li>
                            </ul>
                            <% If campus_code = "INTRO" or campus_code = "CD0245" or campus_code = "CD0246" Then '인트로/목동/센텀 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/manage_slide_img01.jpg" alt="입시관리"></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/manage_slide_img01.jpg" alt="입시관리"></p>
                            <% End If%>
                        </div>
                        <div class="swiper-slide">
                            <p class="tit">체계적인 분석을 통한 전략 수립<br>
                                <strong>학습관리</strong></p>
                            <ul class="list-dot">
                                <li>성적 데이터와 학습 현황 기반으로<br>
                                    과목별 보완점과 학습 방향 1:1 상담</li>
                                <li>목표 성적 맞춤 시기별 학습 전략 제시</li>
                                <li class="mb0">과목별 학습법 특강 및 설명회 제공으로<br>
                                    시기별 맞춤 학습 전략 제안</li>
                            </ul>
                            <% If campus_code = "INTRO" or campus_code = "CD0246" Then '인트로/센텀 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/manage_slide_img02.jpg" alt="학습관리"></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/manage_slide_img02.jpg" alt="학습관리"></p>
                            <% End If%>
                        </div>
                        <div class="swiper-slide">
                            <p class="tit">학습에만 전념할 수 있도록<br>
                                <strong>생활관리</strong></p>
                            <ul class="list-dot">
                                <li>면학분위기가 유지될 수 있도록<br>
                                    강력한 관리 및 태도 점수 운영</li>
                                <li>학습 플래너 점검 및 피드백으로<br>
                                    학습 습관 및 방법 개선</li>
                                <li class="mb0">학습 고충 및 슬럼프를 극복할 수 있도록<br>
                                    지속적인 상담으로 학습동기 부여</li>
                            </ul>
                            <% If campus_code = "INTRO" or campus_code = "CD0001" or campus_code = "CD0246" or campus_code = "CD0341" Then '인트로/대치/센텀/코어대전 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/manage_slide_img03.jpg" alt="생활관리"></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/manage_slide_img03.jpg" alt="생활관리"></p>
                            <% End If%>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //관리 탭슬라이드 -->
        </div>
    </div>
    <% If campus_code = "CD0245" Then '목동 %>
    <div class="cont06-1 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/math_program_img.jpg" alt="수능까지 이어지는 시기별 맞춤 학습 콘텐츠"></p>
    </div>
    <% ElseIf campus_code = "CD0244" Then '분당 %>
    <div class="cont06-1 js-cont <%=campusName%>">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_tit.jpg" alt=""></p>
        <div class="con-wrap">
            <div class="con-slide type01 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_01.jpg" alt="">
                        <p class="tit">러셀 학습 플래너</p>
                        <ul class="list-dot">
                            <li>학습 목표 수립 및 자기 주도 훈련</li>
                            <li>시간별/과목별 목표 학습량과 실제 학습량 <br>
                                비교 후 담임선생님의 피드백을 통해<br>
                                학습 계획 점검</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_02.jpg" alt="">
                        <p class="tit">국어&영어 어휘 암기 테스트</p>
                        <ul class="list-dot">
                            <li>국어 및 영어 어휘 암기</li>
                            <li>어휘 암기 후 테스트 진행</li>
                            <li>최근 경향 반영한 핵심 단어 수록</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_03.jpg" alt="">
                        <p class="tit">영어 듣기 (주 1회)</p>
                        <ul class="list-dot">
                            <li>영어 듣기 실력 향상 목표</li>
                            <li>영어 듣기 기출 테스트 진행</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_04.jpg" alt="">
                        <p class="tit">일일 수학 30제</p>
                        <ul class="list-dot">
                            <li>일정한 양의 수학 문제 풀이로 습관 형성</li>
                            <li>지속적인 훈련으로 실수 방지</li>
                            <li>나만의 점검표를 작성하여 <br>
                                주/월별 학습 현황 파악</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_05.jpg" alt="">
                        <p class="tit">중위권을 위한 수학 아이젠</p>
                        <ul class="list-dot">
                            <li>수학 과목에 대한 기본을 공부하는 개념을 <br>
                                잡는 과정</li>
                            <li>매주 개념 관련 문제들을 풀고 튜터와의 <br>
                                피드백 진행</li>
                        </ul>
                    </div>
                </div>
                <div class="swiper-pagination style03"></div>
            </div>
        </div>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_txt.jpg" alt=""></p>
        <div class="con-wrap">
            <div class="con-slide type02 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_06.jpg" alt="">
                        <p class="tit">플래너 작성 및 활용법</p>
                        <ul class="list-dot">
                            <li>플래너 작성이 익숙하지 않은 학생들에게 <br>
                                올바른 플래너 작성을 위한 특강</li>
                            <li>작성 기본 사항, 과목별 학습 균형 유지, <br>
                                우수 작성 사례 등을 확인</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_07.jpg" alt="">
                        <p class="tit">모의고사 피드백</p>
                        <ul class="list-dot">
                            <li>러셀 분당 선배들의 구체적인 사례를 통해<br>
                                올바른 오답노트 작성 방법 확인</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_08.jpg" alt="">
                        <p class="tit">다양한 입시 설명회</p>
                        <ul class="list-dot">
                            <li>입시 기초, 주요 대학 (자연계/인문계),<br>
                                논술, 메디컬 수시 대비 등</li>
                            <li>입시 개요 및 수시/정시전형별<br>
                                정보와 시기별 전략에 대해 안내</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_09.jpg" alt="">
                        <p class="tit">학생부 작성 원리</p>
                        <ul class="list-dot">
                            <li>주요 대학 학종 및 평가 방법 변화 확인</li>
                            <li>메가스터디 입시 전문가가 전하는<br>
                                학종 전형 합격 전략</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_10.jpg" alt="">
                        <p class="tit">최상위권 대학 합격 선배와의 만남</p>
                        <ul class="list-dot">
                            <li>최상위권 대학에 진학한 선배들이<br>
                                성공적인 수험생활 노하우와<br>
                                학습 방법 대해 전수</li>
                        </ul>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont06_slide_11.jpg" alt="">
                        <p class="tit">국수영 학습법 특강</p>
                        <ul class="list-dot">
                            <li>과목별 선생님이 직접 수능 및 내신 출제<br>
                                방향, 과목별 학습법과 학습 전략 등<br>
                                꼭 알아야 하는 학습법 전수</li>
                        </ul>
                    </div>
                </div>
                <div class="swiper-pagination style04"></div>
            </div>
        </div>
    </div>
    <% End If %>
    <div class="cont06 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont06_tit.png" alt="수능까지 이어지는 시기별 맞춤 학습 콘텐츠"></p>
        <div class="inner">
            <div class="program-wrap">
                <!-- program-navi -->
                <div class="program-navi swiper-container <%=campusName%>">
                    <% If campus_code = "CD0244" Then '분당 %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집체 모의고사<br>시리즈</div>
                        <div class="swiper-slide">OMEGA<br>시리즈</div>
                        <div class="swiper-slide">수학 전용<br>실전 콘텐츠</div>
                    </div>
                    <% Else %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide mb10">집체 모의고사 시리즈</div>
                        <div class="swiper-slide mr0 mb10">OMEGA 시리즈</div>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <div class="swiper-slide mr0">학습계획 콘텐츠</div>
                    </div>
                    <% End If %>
                </div>
                <!-- program-navi -->

                <!-- program-slide -->
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">전국 수험생 중 나의 위치를<br>
                                    가장 정확하게 확인<br>
                                    <strong>전국 집체 모의고사 시리즈</strong></p>
                                <div class="pro-slide pro01 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>전국 대단위 실전 모의고사</strong><br>
                                                메가스터디 전국 집체 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro01_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>완벽한 실전 연습과 실전 대비를 위한<br>
                                                    수능 시뮬레이션</li>
                                                <li>6월 모의평가와 9월 모의평가 출제 경향을<br>
                                                    반영한 집체 모의고사</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>메가X대성 더 프리미엄 모의고사</strong><br>
                                                전국 단위 전 과목 실전 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro01_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                                                <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
                                            </ul>
                                            <a class="pr-btn" href="/intro/2022/premium/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro01"></div>
                                </div>
                                <p class="r-txt">* 해당 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라<br>
                                    사용여부 등이 변경 및 조정될 수 있습니다.</p>
                            </div>
                        </div>
                        
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">처음부터 끝까지 가장 완벽한 수능 플랜<br>
                                    <strong>O<span>ptimum</span> MEGA 실전 모의고사 시리즈</strong></p>
                                <div class="pro-slide pro02 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>OMEGA</strong><br>
                                                수능 실전 대비 전 과목 FULL 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>전과목 FULL 모의고사 구성하여<br>
                                                    내 위치 파악과 실전 연습</li>
                                                <li>실제 수능과 유사한 난이도로 엄선된 문항 구성</li>
                                                <li>평가원의 트렌드에 맞는 출제 가능한 신유형 등<br>
                                                    참신한 문항 구성</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>OMEGA LINK</strong><br>
                                                <span>* OMEGA 모의고사와 세트로 구성</span></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>OMEGA 실전 모의고사 복습 및<br>
                                                    연계 학습에 최적화</li>
                                                <li>과목별 하프 문항 or 주제별 6~8지선다<br>
                                                    & 다중답안 형태로 구성</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>수학/사탐/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA BLACK</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img03.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>상위권을 가르는 변수 문제가 포함된 모의고사</li>
                                                <li>1등급을 넘어 만점 획득을 위한<br>
                                                    고난도 문항 완전 정복</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>수학/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA BLUE</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img04.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>쉬운 문제가 아닌 상수 문제가 포함된 모의고사<br>
                                                    <span>(실전 문항 수에서 고난도 문항 제외)</span></li>
                                                <li>반드시 맞춰야 하는 상수 문제를<br>
                                                    틀리지 않기 위한 연습</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>국/수/영/사탐/과탐Ⅰ&middot;Ⅱ</label>
                                            <p class="tit"><strong>OMEGA WEEKLY</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro02_img05.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매주 과목별 학습 상태 체크 및 실력<br>
                                                    향상시켜주는 3~6월까지 주간 미니 모의고사</li>
                                                <li>국수영 주간지와 탐구 과목별 월간지로 구성</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro02"></div>
                                </div>
                                <p class="r-txt">* 해당 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라<br>
                                    사용여부 등이 변경 및 조정될 수 있습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">수능 수학 실력 향상을 위한<br>
                                    <strong>수학 전용 실전 콘텐츠</strong></p>
                                <div class="pro-slide pro03 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>수Ⅰ/수Ⅱ/미적분</label>
                                            <p class="tit"><strong>수학 아이젠</strong></p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro03_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 꾸준한 수학으로 실력이 향상되는 N제</li>
                                                <li>[아이젠 블랙] 최상위권 전용<br>
                                                    고난도 하드트레이닝</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>수학 공통+선택</label>
                                            <p class="tit"><strong>알파 모의고사</strong></p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro03_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>수능 기출 변형 수학 모의고사</li>
                                                <li>기출의 반복 및 완벽 연습을 통해<br>
                                                    실전 응용력 향상</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro03"></div>
                                </div>
                                <p class="r-txt">* 수학 아이젠 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및<br>
                                    사정에 따라 사용여부 등이 변경 및 조정될 수 있습니다.<br>
                                    * 알파 모의고사 콘텐츠는 재원생 대상으로 ‘전액지원’되는 콘텐츠입니다.</p>
                            </div>
                        </div>
                        <% If campus_code <> "CD0244" Then '분당 제외 %>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">규칙적인 학습 습관 형성을 위한<br>
                                    <strong>학습계획 콘텐츠</strong></p>
                                <div class="pro-slide pro04 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 학습 플래너</strong><br>
                                                학습 목표 수립 및 자기주도학습 훈련</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro04_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 시간별/과목별 목표 학습량과<br>
                                                    실제 학습량 비교 후 담임선생님의<br>
                                                    피드백을 통해 학습 상황 점검</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>일일수학 30제</strong><br>
                                                매일 일정한 양의 수학 문제풀이</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro04_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 일정한 양의 수학 문제풀이로<br>
                                                    올바른 문제풀이 습관 형성</li>
                                                <li>지속적인 훈련으로 실수 방지 및 습관 개선</li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 총평노트</strong><br>
                                                시험 성적 누적 관리 및 자기 평가</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/pro04_img03.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>시험 목표 성적과 실제 성적 기록,<br>
                                                    성적 변화 확인으로 향후 목표 설정 및 보완</li>
                                                <li>실수, 오답 등 자기 평가를 통해 취약점 개선</li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro04"></div>
                                </div>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                </div>
                <!-- //program-slide -->
            </div>
        </div>
    </div>

    <div class="cont07">
        <div class="inner">
            <% If campus_code = "CD0257" Then '중계 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont07_tit.jpg" alt="재학생 맞춤 실전 콘텐츠 과목별 시행 일정"></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont07_tit.jpg" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정"></p>
            <% End If %>
            <a href="javascript:void(0);" class="program_link" alt=""><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/cont07_img.jpg" alt=""></a>
            
            <div class="layer-tt02">
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width:240%">
                        <colgroup>
                            <col style="width:83px">
                            <col style="width:9%">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th class="sticky3">과목</th>
                                <th>총 회차</th>
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
                                <th class="bg-sky">전국 대단위<br>실전 모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>2회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky">메가X대성<br>더 프리미엄<br>모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>6회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA<br>LINK</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="3">OMEGA<br>BLACK</th>
                                <td class="sticky3">수학</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr> 
                                <th class="bg-sky" rowspan="2">OMEGA<br>BLUE</th>
                                <td class="sticky3">수학</td>
                                <td>10회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>3회</td>
                                <td>3회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>10회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>3회</td>
                                <td>3회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky" rowspan="6">OMEGA<br>WEEKLY</th>
                                <td class="sticky3">국어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <th class="bg-sky">알파 모의고사</th>
                                <td class="sticky3">수학</td>
                                <td>7회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
                <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
            </div>
            
        </div>
    </div>
    <% If campus_code = "CD0257" Then '중계 %>
    <div class="bt_banner">
        재도전을 결심했다면<br>
        지금이 바로 앞서나갈 수 있는 기회!<br>
        <strong>러셀 중계에서 목표 성적과<br>
            대학 합격을 위한 성공을 선점하세요!</strong>
    </div>
    <% Else %>
    <div class="bt_banner">
        재도전을 결심했다면<br>
        지금이 바로 앞서나갈 수 있는 기회!<br>
        <strong>러셀 재수생 우선선발반에서<br>
        최상위권 대입성공을 선점하세요.</strong>
    </div>
    <% End If %>
</div>