<div class="cont js-cont <%=campusName%>">
    <!-- cont03 -->
    <div class="cont03">
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont03_tit.png" alt="더 높은 목표 달성을 위한 또 한번의 도전 러셀에서 더 빠르게 시작해야 하는 이유는 분명합니다." /></h2>
            <!-- 수능에최적화된 시스템 -->
            <div class="system">
                <p class="bg"></p>
                <p class="sys-tit">수능에 최적화된<br> <strong>시스템</strong></p>
                <ul class="sys-img">
                    <li class="on">
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_01_off.png" class="off" alt="01 바른공부 자습전용관" />
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_01_on.png" class="active" alt="01 바른공부 자습전용관" />
                    </li>
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_02_off.png" class="off" alt="02 메가스터디 온오프 수능전문 강사진의 최상위권 수준별 맞춤단과" />
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_02_on.png" class="active" alt="02 메가스터디 온오프 수능전문 강사진의 최상위권 수준별 맞춤단과" />
                    </li>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_03_off.png" class="off" alt="03 최상위권 전문 입시 담임선생님의 체계적인 관리" />
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_03_on.png" class="active" alt="03 최상위권 전문 입시 담임선생님의 체계적인 관리" />
                    </li>
                    <% Else %>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_02_off.png" class="off" alt="02 메가스터디 온오프 수능전문 강사진의 최상위권 수준별 맞춤단과" />
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_02_on.png" class="active" alt="02 메가스터디 온오프 수능전문 강사진의 최상위권 수준별 맞춤단과" />
                    </li>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_03_off.png" class="off" alt="03 최상위권 전문 입시 담임선생님의 체계적인 관리" />
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_03_on.png" class="active" alt="03 최상위권 전문 입시 담임선생님의 체계적인 관리" />
                    </li>
                    <% end if %>
                    <li>
                        <% If sCampusCode = "CD0341" Then '코어대전 %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_04_off.png" class="off" alt="04 학습 의욕을 높여주는 승반 강반 장학제도" />
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_04_on.png" class="active" alt="04 학습 의욕을 높여주는 승반 강반 장학제도" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_04_off.png" class="off" alt="04 학습 의욕을 높여주는 승반 강반 장학제도" />
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_04_on.png" class="active" alt="04 학습 의욕을 높여주는 승반 강반 장학제도" />
                        <% end if %>
                    </li>
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_05_off.png" class="off" alt="05 최상위권 대학에 합격한 선배들이 학습한 실전학습 콘텐츠" />
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/circle_05_on.png" class="active" alt="05 최상위권 대학에 합격한 선배들이 학습한 실전학습 콘텐츠" />
                    </li>
                    <% Else %>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_05_off.png" class="off" alt="05 최상위권 대학에 합격한 선배들이 학습한 실전학습 콘텐츠" />
                        <img src="<%=Application("img_path_russel")%>/intro/2024/regular/circle_05_on.png" class="active" alt="05 최상위권 대학에 합격한 선배들이 학습한 실전학습 콘텐츠" />
                    </li>
                    <% end if %>
                </ul>
            </div>

            <div class="cont-box">
                <% If isCore OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
                <a class="banner-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_bus.png" alt="" /></a>
                <% end if %>
                <div class="title">
                    <img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont03_stit01.png" alt="" />
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <p class="txt">전국 학생들이 바자관에 모여 <br>경쟁하는 긍정적인 학습환경이 만들어져 있습니다.</p>
                    <% Else %>
                    <p class="txt">전국 최상위권 학생들이 바자관에 모여 <br>경쟁하는 긍정적인 학습환경이 만들어져 있습니다.</p>
                    <% end if %>
                </div>
                <div class="studyHall-slide-wrap">
                    <div class="studyHall-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">집단적인 면학분위기</div>
                            <div class="swiper-slide">학습 동선 최소화</div>
                            <div class="swiper-slide">충분한 자습시간 확보</div>
                            <div class="swiper-slide">개방형 구조</div>
                            <% If isCore OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
                            <div class="swiper-slide">자체 식당 운영</div>
                            <% end if %>
                        </div>
                    </div>
                    <div class="swiper-container studyHall-slide mt20">
                        <div class="swiper-wrapper">
                            <!-- 집단적인 면학분위기 -->
                            <div class="swiper-slide">
                                <% If  sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0250" or sCampusCode = "CD0247" or sCampusCode = "CD0244" or sCampusCode = "CD0246" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/부천/강남/분당/센텀/코어광주/코어대전/코어원주/코어전주/코어청주/코어창원 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont03_slide01.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont03_slide01.jpg" alt="" /></div>
                                <% end if %>
                            </div>
                            <!-- //집단적인 면학분위기 -->
                            <!-- 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <%  If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0250" or sCampusCode = "CD0247"  or sCampusCode = "CD0244" or sCampusCode = "CD0246" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343"  or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/부천/강남/분당/센텀/코어광주/코어대전/코어원주/코어전주/코어청주/코어창원 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont03_slide02.jpg" alt="" /></div>
                                <% Else %>
                                <div>
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont03_slide02.jpg" alt="" />
                                    <div class="r-stxt plr80">* 학원별 시설 및 운영 방법은 상이합니다. </div>
                                </div>
                                <% end if %>
                            </div>
                            <!-- //학습 동선 최소화 -->
                            <!-- 충분한 자습시간 확보 -->
                            <% If sCampusCode = "INTRO" Then '인트로 %>
                            <div class="swiper-slide">
                            <% Else %>
                            <div class="swiper-slide pb70">
                            <% End If %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont03_slide03.jpg" alt="" /></div>
                                <!-- schedule -->
                                <!--#include virtual="/intro/2024/regular/schedule.asp" -->
                                <!-- //schedule -->
                            </div>
                            <!-- //충분한 자습시간 확보 -->
                            <!-- 개방형 구조 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" Then '인트로 %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont03_slide04.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont03_slide04.jpg" alt="" /></div>
                                <% end if %>
                            </div>
                            <!-- //개방형 구조 -->
                            <% If isCore OR sCampusCode = "CD0349" or sCampusCode = "CD0342"  Then '코어/울산/대구 %>
                            <!-- 자체 식당 운영 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont03_slide05.jpg" alt="" /></div>
                            </div>
                            <!-- 자체 식당 운영 -->
                            <% end if %>
                        </div>
                    </div>
                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <div class="b-review">
                        <dl>
                            <dt>
                                2024학년도 <br>
                                <strong>
                                    경희대학교 <br>
                                    한의예과 합격
                                </strong><br>
                                <span>러셀 분당 김민정</span>
                            </dt>
                            <dd>
                                <span class="top-line"></span>
                                면학분위기가 좋아서 많은 도움을 받았다고 생각합니다. <strong>개방형 구조라 집중이 안 될 때 주위의 친구들을 보면서 긍정적인 자극</strong>을 받았고 <strong>시간표가 정해져 있어 공부시간을 확보하고 규칙적인 생활</strong>을 할 수 있었습니다. 또 <strong>전용 와이파이로 인해 인강 외 사이트는 차단되어 공부에만 집중할 수 있는 환경</strong>이 장점이라고 생각합니다.
                                <span class="bot-line"></span>
                            </dd>
                        </dl>
                    </div>
                    <% end if %>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont03 -->
    <!-- cont04 -->
    <div class="cont04">
        <h2 class="mb40" data-aos="flip-up">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont04_stit01.png" alt="메가스터디 온오프 수능 전문 강사진의 수준별 맞춤 단과" />
            <% Else %>
            <img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont04_stit01.png" alt="메가스터디 온오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과" />
            <% end if %>
        </h2>
        <p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont04_stit02.png" alt="나에게 꼭 필요한 과목별/수준별/진도별 수업 선택으로" /></p>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/regular/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <div class="inner mt30">

            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">※ 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% ElseIf sCampusCode = "CD0341"  Then '코어대전 %>
            <p class="r-txt">* 출강 강사진은 학원 운영에 따라 변경될 수 있습니다.</p>
            <% ElseIf sCampusCode = "CD0257"  Then '중계 %>
            <p class="r-txt">*  2024년 출강 강사진 기준</p>
            <% Else %>
            <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% end if %>

            <div class="danka-link">
                <div>
                    <p class="d-stit">기초부터 실전까지 <br> 빈틈없는 커리큘럼으로 수능 실력 향상</p>
                    <p class="d-tit">정규&middot;특강 단과</p>
                    <ul>                      
                        <li>
                            메가스터디 온&middot;오프 수능 전문 강사진의 몰입감 <% If sCampusCode <> "CD0344" and sCampusCode <> "CD0343" and sCampusCode <> "CD0346" and sCampusCode <> "CD0345" Then '전주/원주/청주/창원 제외 %><br> <% end if %>
                            높은 현장강의<% If sCampusCode = "CD0342" or sCampusCode = "CD0349" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343"  or sCampusCode = "CD0344"  or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/울산/코어광주/코어대전/코어원주/코어전주/코어청주/코어창원 %>와 대치동 LIVE 강의 <% end if %>
                        </li>                       
                        <li>
                            평일 저녁&주말, 과목별/수준별/진도별 맞춤 <br>
                            강좌 개설 및 내게 필요한 수업 전략적으로 선택
                        </li>
                        <% If sCampusCode = "CD0244" Then '분당 %>
                        <li>
                            수업 전후 선생님의 학습관리 진행
                        </li>
                        <% Else %>
                        <li>
                            수업 전후 선생님의 학습관리 진행으로 <% If sCampusCode <> "CD0344" and sCampusCode <> "CD0343" and sCampusCode <> "CD0346"  and sCampusCode <> "CD0345" Then '전주/원주/청주/창원 제외 %><br><% end if %>
                            1:1 맞춤 완전학습
                        </li>
                        <% end if %>
                    </ul>
                    <div class="link-box">
                        <a href="<%=regular_url%>">바로가기</a>
                    </div>
                </div>
                <div>
                    <p class="d-stit">오직 N수생을 위한 <br> 
                        <% If sCampusCode = "CD0246" Then '센텀 %>
                        매일
                        <% Else %>  
                        평일
                        <% end if %>    
                        오전/오후 단과
                    </p>
                    <p class="d-tit">
                        AM단과  
                    </p>
                    <ul>
                        <li>
                            <% If sCampusCode = "CD0246" Then '센텀 %>
                            매일
                            <% Else %>
                            평일
                            <% end if %>                            
                            오전/오후 체계적인 과목 편성
                        </li>
                        <li>관리력이 우수한 선생님의 N수생 전용 <br> 집중 관리형 수업</li>
                        <li>나에게 필요한 과목/진도를 선택 수강하여 <br> 취약점 집중 보완</li>
                    </ul>
                    <div class="link-box">
                        <a href="<%=am_url%>">바로가기</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //cont04 -->
    <!-- cont05 -->
    <div class="cont05">
        <div class="inner">
            <% If sCampusCode = "CD0257"  Then '중계 %>
            <h2 data-aos="flip-up" class="mb40"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_stit01.png" alt="전문 입시 담임선생님의 체계적인 관리" /></h2>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_stit02.png" alt="담임으로서의 역량과 입시 전문가로서의 전문성으로 목표대학 합격을 위해 입시,학습, 학습생활 관리를 진행합니다." /></p>
            <% Else %>
            <h2 data-aos="flip-up" class="mb40"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_stit01.png" alt="최상위권 전문 입시 담임선생님의 체계적인 관리" /></h2>
            <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_stit02.png" alt="최상위권 대입 성공을 위해 입시 학습생활 관리를 진행합니다." /></p>
            <% end if %>   
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
                                    <% If sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0340" or sCampusCode = "CD0244" or sCampusCode = "CD0250" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0346" Then '영통/대치/목동/울산/코어광주/분당/부천/코어원주/코어전주/코어청주 %>
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
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0246" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/울산/평촌/강남/부천/분당/센텀/코어광주/코어대전/코어원주/코어전주/코어청주/코어창원 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide01_img02.jpg" alt="" /></div>
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
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0340" or sCampusCode = "CD0341"  or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/센텀/부천/분당/코어광주/코어대전/코어원주/코어전주/코어청주/코어원주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide01_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide01_img03.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <p>입시 특강 및 간담회 진행</p>
                                        <ul>
                                            <li>
                                                <% If sCampusCode = "CD0257" Then '중계 %>
                                                목표 대학 합격한 선배와의
                                                <% Else %>
                                                최상위권 합격선배와의
                                                <% End If %> <strong>간담회, 수시 전형별 <br> 입시 설명회, 수시/정시 지원전략 설명회</strong> 등 진행
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
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0246" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/강남/부천/분당/센텀/코어광주/코어대전/코어원주/코어전주/코어청주/코어원주 %>
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
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0340" or sCampusCode = "CD0341"  or sCampusCode = "CD0343"  or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/센텀/부천/분당/코어광주/코어대전/코어원주/코어전주/코어청주/코어원주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide02_img02.jpg" alt="" /></div>
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
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343"  or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/센텀/부천/분당/코어광주/코어대전/코어원주/코어전주/코어청주/코어원주 %>
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
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0340" or sCampusCode = "CD0341"  or sCampusCode = "CD0343"  or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/센텀/부천/분당/코어광주/코어대전/코어원주/코어전주/코어청주/코어원주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide03_img01.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide03_img01.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <% If sCampusCode = "CD0244"  Then '분당 %>
                                        <p>엄격한 출결 및 개인 스케줄 관리</p>
                                        <% Else %>
                                        <p>엄격한 출결 관리</p>
                                        <% End If %>
                                        <ul>
                                            <% If sCampusCode = "CD0250"  Then '부천 %>
                                            <li><strong>매 교시 2회 이상 엄격한 출결 관리 및 바자관 <br>상시  모니터링</strong></li>
                                            <% Else %>
                                            <li><strong>매 교시 엄격한 출결 관리 및 바자관 상시 <br> 모니터링</strong></li>
                                            <% End If %>
                                            <li>지각, 무단 외출, 무단 결석 등 <strong>면학분위기 저해 <br>요소 엄격하게 관리</strong></li>
                                            <li><strong>전자 출결 관리 시스템</strong>으로 등/하원 시 부모님께 문자 발송</li>
                                        </ul>
                                    </div>
                                </li>
                                <li>
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0247" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0246" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343"  or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/대치/목동/울산/평촌/강남/부천/분당/센텀/코어광주/코어대전/코어원주/코어전주/코어청주/코어원주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide03_img02.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide03_img02.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <div class="txt-list">
                                        <% If sCampusCode = "CD0250"  Then '부천 %>
                                        <p>엄격한 교육 점수 제도 운영</p>
                                        <ul>
                                            <li>휴대폰 소지, 수면, 자습시간 중 이동 등 <strong>면학분<br>위기 저해 요소를 엄격하게 관리 및 교육 점수<br> 운영</strong></li>
                                            <li>교육 점수 제도를 통해 일정 점수 초과 시 상담/강제 퇴원 조치</li>
                                        </ul>
                                        <% Else %>
                                        <p>엄격한 태도 점수 제도 운영</p>
                                        <ul>
                                            <li>휴대폰 소지, 수면, 자습시간 중 이동 등 <strong>면학분<br>위기 저해 요소를 엄격하게 관리 및 태도 점수<br> 운영</strong></li>
                                            <li>태도 점수 제도를 통해 일정 점수 초과 시 상담/강제 퇴원 조치</li>
                                        </ul>
                                        <% End If %>
                                    </div>
                                </li>
                                <li>
                                    <% If sCampusCode = "CD0342" or sCampusCode = "CD0257" or sCampusCode = "CD0249" or sCampusCode = "CD0245" or  sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0340" or sCampusCode = "CD0341" or sCampusCode = "CD0343"  or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0345" Then '대구/중계/영통/목동/울산/평촌/센텀/부천/분당/코어광주/코어대전/코어원주/코어전주/코어청주/코어원주 %>
                                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont05_slide03_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont05_slide03_img03.jpg" alt="" /></div>
                                    <% End If %>                                   
                                    <div class="txt-list">
                                        <p>정신적 멘토링</p>
                                        <ul>
                                            <li>학생중심 사고를 기반하여 학생에 대한 존중, 배려 등으로 <strong>동반자 역할</strong></li>
                                            <li>학습 고충 및 슬럼프 등으로 가장 필요할 때 가장 가까운 곳에 있기 위해 
                                                <% If sCampusCode = "CD0244"  Then '분당 %>
                                                <strong>바자관 앞 상주</strong>
                                                <% Else %>
                                                <strong>바자관 앞 또는 바자관 내<br> 상주</strong>
                                                <% End If %>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <!-- //생활관리 -->
                    </div>
                </div>
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="comment02">* 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>                           
                <div class="b-review">
                    <dl>
                        <dt>
                            2024학년도 <br>
                            <strong>
                                경희대학교 <br>
                                치의예과 합격
                            </strong><br>
                            <span>러셀 분당 윤현진</span>
                        </dt>
                        <dd>
                            <span class="top-line"></span>
                            <strong>바자관 바로 앞에 담임선생님이 계셔서 궁금한 점이 생기면 편하게 상담</strong>을 신청할 수 있었습니다. <strong>매달 시험을 본 후 진행하는 성적 상담에서는 저에게 맞는 학습 방향을 설계해 주셔서 남은 기간 동안 어떻게 공부해야 할지 큰 도움</strong>을 받았습니다. 또한 ‘수능을 잘 볼 수 있을까’라는 <strong>불안감이 들 때마다 잘하고 있으니 걱정 말라고 격려해 주셔서 수험기간 중 의지</strong>가 많이 되었습니다.
                            <span class="bot-line"></span>
                        </dd>
                    </dl>
                </div>
                <% End If %>
            </div>
        </div>
    </div>
    <!-- //cont05 -->
    <!-- cont06 -->
    <div class="cont06">
        <div class="inner">
            <h2 data-aos="flip-up" class="mb40">
                <% If sCampusCode = "CD0341" Then '코어대전 %>
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont06_stit01.png" alt="학습 의욕을 높여주는 승반 강반 장학제도" />
                <% Else %>
                <img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont06_stit01.png" alt="학습 의욕을 높여주는 승반 강반 장학제도" />
                <% end if %>
            </h2>
            <div class="level-wrap mt70">
                <div class="d-flex">
                    <h3 class="mr50 mt10"><strong>승반&middot;강반 제도</strong><br>
                        <ul class="list-03">
                            <% If sCampusCode = "CD0247" Then '강남 %>
                            <li>모의고사, 평가원 성적과 학습 태도 점수를 바탕으로 <strong>연 3회 승반&middot;강반 평가 진행</strong></li>
                            <li><strong>3~4월, 5~6월, 7~8월 합산</strong>하여 평가 <br>(2023년 기준)</li>
                            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                            <li>모의고사, 평가원 성적과 학습 태도 점수를 바탕으<br>로 엄격하게 <strong>수준별 반편성 실시 및 연 6회 수준<br>별 승반&middot;강반 운영</strong></li>
                            <% Else %>
                            <li>모의고사, 평가원 성적과 학습 태도 점수를 바탕으<br>로 엄격하게 <strong>수준별 반편성 실시 및 연 2~3회 수준<br>별 승반&middot;강반 운영</strong></li>
                            <% End If %>       
                            <li>바자관 재원생들간의 <strong>선의의 경쟁, 학구열에 대한 <br>보상</strong>, 반대로 학습상태에 대한 경각심을 심어주며<br> <strong>재원생들의 명확한 목표 지향점 제공</strong></li>
                            <li>학습 동기 부여로 집단적인 면학분위기와 긍정적<br>인 긴장감 조성, 지속적인 학습 태도 및 성적 향상<br> 관리 가능</li>
                        </ul>
                    </h3>
                    <div class="box">
                        <% If sCampusCode = "CD0247" or sCampusCode = "CD0343" Then '강남/코어원주 %>
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont06_level01.jpg" alt="강반, 승반" /></p>                        
                        <span class="arrow08"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow08.png" alt="" /></span>
                        <span class="arrow07"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow07.png" alt="" /></span>
                        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont06_level01.jpg" alt="강반, 승반" /></p>   
                        <span class="arrow05"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow05.png" alt="" /></span>
                        <span class="arrow06"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow06.png" alt="" /></span>
                        <% Else %>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont06_level01.jpg" alt="강반, 승반" /></p>                        
                        <span class="arrow05"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow05.png" alt="" /></span>
                        <span class="arrow06"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_arrow06.png" alt="" /></span>
                        <% End If %>   
                        <% If sCampusCode <> "CD0341"  and sCampusCode <> "CD0249"  Then '대전/영통제외 %>                         
                            <% If sCampusCode <> "CD0344" and sCampusCode <> "CD0345" Then '전주/창원제외 %> 
                            <span class="balloon01">
                                <% If sCampusCode  = "CD0349"  Then '울산 %> 
                                <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_balloon02.png" alt="" />
                                <% Else %>
                                <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_balloon.png" alt="" />
                                <% End If %> 
                            </span>
                            <% End If %>   
                        <span class="balloon02">
                            <% If sCampusCode  = "CD0349"  Then '울산 %> 
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_balloon03.png" alt="" />
                            <% Else %>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_balloon.png" alt="" />
                            <% End If %> 
                        </span>
                            <% If sCampusCode  = "CD0343"  Then '코어원주 %> 
                            <span class="balloon03"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_balloon.png" alt="" /></span>
                            <% End If %>                             
                        <% End If %>   
                    </div>
                </div>
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="comment02 mt20 pr0">※ 반편성 및 장학혜택은 학원별 홈페이지에서 확인 바랍니다.</p>
                <p class="mt50"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont06_level02.jpg" alt="승반" /></p>
                <% Else %>
                    <% If sCampusCode = "CD0244" Then '분당 %>
                    <p class="comment02 mt20 pr0">※ 반편성 및 장학혜택은 추후 공지예정입니다.</p>
                    <% End If %>
                    <% If sCampusCode <> "CD0257" Then '중계 제외 %>
                    <p class="mt50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont06_level02.jpg" alt="승반" /></p>
                    <% end if %>
                <% End If %>
                <% If sCampusCode <> "CD0341" Then '코어대전 제외 %>
                <p class="mt20 tac"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_plus.png" alt="플러스" /></p>
                <p class="mt20"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont06_scholarship.jpg" alt="장학제도" /></p>
                <% end if %>
            </div>
        </div>
    </div>
    <!-- //cont06 -->
    <!-- cont07 -->
    <div class="cont07">
        <div class="inner">
            <h2 data-aos="flip-up" class="mb40">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont07_stit01.png" alt="목표대학에 합격한 선배들이 학습한 실전 학습콘텐츠" />
                <% Else %>
                <img src="<%=Application("img_path_russel")%>/intro/2024/regular/cont07_stit01.png" alt="최상위권 목표대학에 합격한 선배들이 학습한 실전 학습콘텐츠" />
                <% end if %>
            </h2>
            <!-- contents-list -->
            
            <div class="contents-list mt70">
                <% If sCampusCode = "CD0257" or sCampusCode = "CD0001" or sCampusCode = "CD0247" or sCampusCode = "CD0246" or sCampusCode = "CD0244" or sCampusCode = "CD0249" Then '중계/대치/강남/센텀/분당/영통 %>
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
                        <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성 <br> 더 프리미엄 모의고사</strong></p>
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
                <% ElseIf sCampusCode = "CD0248"  Then '평촌 %>
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
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list09.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">수능과 동일한 실전 훈련<strong>E-QUEL<br>모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="javascript:void(0)" class="coming">8월 Coming Soon</a>
                            <ul>
                                <li>전 과목 구성으로 수능과 동일하게 실전 훈련</li>
                                <li>러셀 및 메가스터디학원 집체 응시로 객관적인<br> 위치 점검</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="type02 mr0">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list10.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">유닛(UNIT) 형태의 미니 모의고사
                            <strong>QUEL : UNIT<br>주간 테스트</strong></p>
                        <div class="c-txt-box">
                            <a href="/event/2024/quel_unit/index.asp">자세히 보기</a>
                            <ul>
                                <li>국/영/수 유닛(UNIT) 형태의 주차별<br> 미니모의고사로 16회 제공</li>
                                <li>수험생 스스로 학습 상황 체크하여<br> 효율적으로 약점 보완</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div style="margin-right: 18px;">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list02.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성 <br> 더 프리미엄 모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                            <ul>
                                <li>과목별 전문 출제진 구성 및 다회차 <br>검토 과정</li>
                                <li>전과목 모두 구성 및 정확한 객관적인<br> 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="core-weekly mr0">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list03.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀CORE<br>Weekly 모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="https://russel.megastudy.net/intro/2022/weekly/index.asp">자세히 보기</a>
                            <ul>
                                <li>과목별 인강 강사님 직접 출제</li>
                                <li>매주 수능 실전 연습</li>
                                <li>해설지 제공</li>
                                <li>시험 분석 및 전략 수립</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div style="margin-right: 18px;">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list11.jpg" alt=""></p>
                    <div>
                        <p class="c-tit"><strong>6PACK<br> 모의고사</strong></p>
                        <div class="c-txt-box">                            
                            <ul>
                                <li>100% 자작 문항 모의고사<br> + 상세한 해설</li>
                                <li>최신 트렌드를 반영한 주간 학습 점검</li>
                                <li>개인 분석 및 해설강의</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="mr0">
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
                <% ElseIf sCampusCode = "CD0245"  Then '목동 %>
                <div class="type03">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list01.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">최신 출제 경향 맞춤 실전 수능<strong>QUEL 모의고사</strong></p>
                        <div class="c-txt-box">
                            <a style="margin-left:-15px;" href="/event/2021/quel/index.asp">자세히 보기</a>
                        </div>
                    </div>
                    <ul style="padding-left:160px">
                        <li>메가스터디 통합 전 영역 실전 수능 대비 모의고사</li>
                        <li>최신 출제 경향에 맞춘 강도 있는 실전 훈련</li>
                    </ul>
                </div>
                <div class="type03">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list02.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성 더 프리미엄 모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                        </div>
                    </div>
                    <ul>
                        <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                        <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
                    </ul>
                </div>
                <div class="type03">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list04.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">러셀 수학 월간지<strong>월간 학습지 (월간 장영진)</strong></p>
                        <div class="c-txt-box">
                            <a href="/intro/info/monthly/index.asp">자세히 보기</a>
                        </div>
                    </div>
                    <ul style="padding-left:80px">
                        <li>수학 장영진 선생님의 자작 문항으로 매월 집체 모의고사 진행</li>
                        <li>수험생활에 필요한 다양한 수학&middot;입시 관련 정보 제공</li>
                    </ul>
                </div>
                <div class="type03">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list11.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">수학 주간 구독 N제<strong>장영진 식스팩 (6PACK)</strong></p>
                        <div class="c-txt-box">
                            <a href="https://russelmd.megastudy.net/russel/info/notice/notice_view.asp?Code=30147&sGubun=&sGCode=CD0023&keyfield=&keyword=&curPage=1">자세히 보기</a>
                        </div>
                    </div>
                    <ul style="padding-left:100px;">
                        <li>5일간의 학습 후 테스트가 진행되는 매주/매일 학습 점검 시즌제 학습지</li>
                        <li>2025 수능의 새로운 변별력 주제 적극 반영</li>
                        <li>단원 평균 분석, 성적 추이 누적 분석</li>
                    </ul>
                </div>
                <% ElseIf isCore = 1 Then '코어 일경우 %>
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
                        <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성 <br> 더 프리미엄 모의고사</strong></p>
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
                        <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성 <br> 더 프리미엄 모의고사</strong></p>
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
                <% ElseIf sCampusCode = "INTRO"  Then '인트로 %>
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
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list09.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">수능과 동일한 실전 훈련<strong>E-QUEL<br>모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="javascript:void(0)" class="coming">8월 Coming Soon</a>
                            <ul>
                                <li>전 과목 구성으로 수능과 동일하게 실전 훈련</li>
                                <li>러셀 및 메가스터디학원 집체 응시로 객관적인 위치 점검</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="type02 mr0">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list10.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">유닛(UNIT) 형태의 미니 모의고사
                            <strong>QUEL : UNIT<br>주간 테스트</strong></p>
                        <div class="c-txt-box">
                            <a href="/event/2024/quel_unit/index.asp">자세히 보기</a>
                            <ul>
                                <li>국/영/수 유닛(UNIT) 형태의 주차별 미니모의고사로 16회 제공</li>
                                <li>수험생 스스로 학습 상황 체크하여 효율적으로 약점 보완</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="type02">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list02.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성 <br> 더 프리미엄 모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                            <ul>
                                <li>과목별 전문 출제진 구성 및 다회차 검토 과정</li>
                                <li>전과목 모두 구성 및 정확한 객관적인 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="core-weekly type02">
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
                
                <% ElseIf sCampusCode = "CD0250"  Then '부천 %>
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
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list09.jpg" alt=""></p>                  
                    <div>
                        <p class="c-tit">수능과 동일한 실전 훈련<strong>E-QUEL<br>모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="javascript:void(0)" class="coming">8월 Coming Soon</a>
                            <ul>
                                <li>전 과목 구성으로 수능과 동일하게 실전 훈련</li>
                                <li>러셀 및 메가스터디학원 집체 응시로 객관적인 위치 점검</li>
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
                
                <div class="core-weekly" style="margin-right:18px;">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list03.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀CORE<br>Weekly 모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="https://russel.megastudy.net/intro/2022/weekly/index.asp" target="_blank">자세히 보기</a>
                            <ul>
                                <li>러셀CORE 선생님들이 직접 출제한<br>모의고사 콘텐츠 제공</li>
                                <li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상 및 긴장감 유지</li>
                            </ul>
                            <p class="gray mt10">※ 러셀 부천은 10회차부터 진행</p>
                        </div>
                    </div>
                </div>
                <div class="mr0">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list11.jpg" alt=""></p>
                    <div>
                        <p class="c-tit">2024 장영진T
                            <strong>식스팩(6PACK)</strong></p>
                        <div class="c-txt-box">
                            <ul>
                                <li>식스팩 1회당 6일 완성 학습 콘텐츠로 구성 [5일간 자기 학습+1일 주간 테스트(학습 점검)]</li>
                                <li>자습관 재원생 및 단과 수강생 대상 관리형 학습 콘텐츠(수Ⅰ/수Ⅱ)</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <% Else %>
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
                        <p class="c-tit">전략에 실전을 THE하다<strong>메가X대성 <br> 더 프리미엄 모의고사</strong></p>
                        <div class="c-txt-box">
                            <a href="/intro/2022/premium/index.asp">자세히 보기</a>
                            <ul>
                                <li>과목별 전문 출제진 구성 및 다회차 <br>검토 과정</li>
                                <li>전과목 모두 구성 및 정확한 객관적인<br> 위치 확인</li>
                            </ul>
                        </div>
                    </div>
                </div>
                    <% If sCampusCode <> "CD0250"  Then '부천제외 %>
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
                    <% End If %>
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
                <% If sCampusCode = "CD0244"  Then '분당 %>
                <div class="three-box">
                    <div>
                        <p class="title">러셀 분당 재원생 전용 주간지</p>
                        <p class="tac" style="height:252px;display:flex;align-items:center;justify-content:center;"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/contents-list08.jpg" alt=""></p>
                        <div class="c-txt-box">
                            <ul>
                                <li>6평 대비 국어&middot;수학 주간 모의고사<br>
                                (역대 QUEL모의고사 모음)
                                </li>
                                <li>10주 동안 매주 풀 모의고사 시행으로<br>
                                실전 감각 유지 훈련</li>
                            </ul>
                        </div>
                    </div>
                </div>
                <% Else %>
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
                <% End If %>
            </div>
            <!-- //contents-list -->
            <% If sCampusCode = "INTRO"  Then '인트로 %>
            <p class="comment03">* 학습 플래너/일일수학 30제/총평 노트는 러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠이며, 학원별로 제공되는 콘텐츠는 상이할 수 있습니다.</p>
            <% Else %>
            <p class="comment03">* 학습 플래너/일일수학 30제/총평 노트는 러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.</p>
            <% End If %>

            <!-- mock-schedule -->
            <div class="mock-schedule <%=campusName%>">
                
                <p>실전 대비 훈련을 위해 <span>정기적으로 집체 모의고사를 진행</span>합니다.</p>
                <div class="pic-wrap">
                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/regular/mock_schedule_intro.png" alt="" /></p>
                    <% Else %>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/mock_schedule_intro.png" alt="" /></p>
                    <% End If %>
                </div>

                <% If sCampusCode = "CD0342"  Then '대구 %>
                <p class="mt70">러셀 대구 실전 콘텐츠 <span>[과목별 연간 시행 일정]</span></p>
                <% Else %>
                <p class="mt70">러셀 실전 콘텐츠 <span>연간 시행 일정</span></p>
                <% End If %> 

                <% If sCampusCode = "CD0257" or sCampusCode = "CD0001" or sCampusCode = "CD0247" or sCampusCode = "CD0246" or sCampusCode = "CD0244" or sCampusCode = "CD0245" or sCampusCode = "CD0249" Then '중계/대치/강남/센텀/분당/목동/영통 %>
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
                                <th colspan="2">메가X대성 더 프리미엄<br>모의고사</th>
                                <td></td>
                                <td class="bg-03">3/22(금)</td>
                                <td class="bg-03">4/16(화)</td>
                                <td class="bg-03">5/21(화)</td>
                                <td></td>
                                <td class="bg-03">7/5(금)</td>
                                <td></td>
                                <% If sCampusCode = "CD0001" or sCampusCode ="CD0245" or sCampusCode = "CD0244" Then '대치/목동/분당 %>
                                <td class="bg-03">9/27(금)</td>
                                <% Else %>
                                <td></td>
                                <% End If %>
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
                            <% If sCampusCode = "CD0245" Then '목동 %>
                            <tr>
                                <th colspan="2">장영진 식스팩<br>
                                    (6PACK)</th>
                                <td></td>
                                <td class="bg-04">시즌1</td>
                                <td class="bg-04">시즌1</td>
                                <td class="bg-04">시즌2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                            <% End If %>
                        </tbody>
                    </table>
                </div>
                <% ElseIf sCampusCode = "CD0250" Then '부천 %>
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
                            <tr>
                                <th rowspan="2">QUEL</th>
                                <td>QUEL <br> 모의고사</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="bg-01">1회</td>
                                <td></td>
                                <td></td>
                                <td class="bg-01">2회</td>
                                <td class="bg-01">3회</td>
                                <td class="bg-01">4~5회</td>
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
                                <td class="bg-02">8/22(목)</td>
                                <td></td>
                                <td></td>
                                <td class="bg-02">11/1(금)</td>
                            </tr>
                            <tr>
                                <th colspan="2">메가X대성 더 프리미엄<br>모의고사</th>
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
                            <tr>
                                <th colspan="2">러셀CORE <br>Weekly 모의고사</th>
                                <td></td>
                                <td></td>
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
                                <th colspan="2">장영진 식스팩 (6PACK)</th>
                                <td></td>
                                <td class="bg-06">시즌1</td>
                                <td class="bg-06">시즌1</td>
                                <td class="bg-06">시즌2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
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
                                <th colspan="2">메가X대성 <br> 더 프리미엄 모의고사</th>
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
                                <th colspan="2">러셀CORE <br>Weekly 모의고사</th>
                                <td></td>
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
                                <th colspan="2">6PACK 모의고사</th>
                                <td></td>
                                <td class="bg-06">시즌1</td>
                                <td class="bg-06">시즌1</td>
                                <td class="bg-06">시즌2</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
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
                            <tr>
                                <th colspan="2">평가원 모의고사</th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="bg-01">6평</td>
                                <td></td>
                                <td></td>
                                <td class="bg-01">9평</td>
                                <td></td>
                                <td></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
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
                                <th rowspan="3">QUEL</th>
                                <td>QUEL <br> 모의고사</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="bg-02">1회 </td>
                                <td></td>
                                <td></td>
                                <td class="bg-02">2회</td>
                                <td class="bg-02">3회</td>
                                <td class="bg-02">4~5회</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td>E-QUEL <br>모의고사</td>
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
                                <th colspan="2">메가X대성 더 프리미엄<br>모의고사</th>
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
                <% ElseIf sCampusCode = "CD0340" or sCampusCode = "CD0344"  or sCampusCode = "CD0346" or sCampusCode = "CD0345" or sCampusCode = "CD0343" Then '코어광주/코어전주/코어청주/코어창원/코어원주 %>
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
                                <th colspan="2">메가X대성 더 프리미엄<br>모의고사</th>
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
                <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
                <div class="study-slide-wrap">
                    <div class="swiper-container study-navi">
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
                    <div class="swiper-container study-slide">
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
                <% ElseIf sCampusCode = "INTRO" or sCampusCode = "CD0349" Then '인트로/울산 %>
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
                                <th colspan="2">메가X대성 <br> 더 프리미엄 모의고사</th>
                                <td></td>
                                <td class="bg-03">3/22(금)</td>
                                <td class="bg-03">4/16(화)</td>
                                <td class="bg-03">5/21(화)</td>
                                <td></td>
                                <td class="bg-03">7/5(금)</td>
                                <td></td>
                                <% If sCampusCode = "CD0349" Then '울산 %>
                                <td class="bg-03">9/27(금)</td>
                                <% Else %>
                                <td></td>
                                <% End If %>
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
                                <th>메가X대성 <br> 더 프리미엄 모의고사</th>
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
                <% If sCampusCode = "INTRO"  Then '인트로 %>
                <p class="comment03 mt10 mb20">* 상기 일정은 평가원 시행 계획 및 학원별 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
                <div class="b-review">
                    <dl>
                        <dt>
                            2024학년도 <br>
                            <strong>
                                고려대학교 <br>
                                의예과 합격
                            </strong><br>
                            <span>CORE 전주 서진원</span>
                        </dt>
                        <dd>
                            <span class="top-line"></span>
                            러셀에선 <strong>QUEL 모의고사와 위클리 모의고사, 메대프 모의고사 등의 러셀만의 장점을 활용하여 학습에 실질적인 도움</strong>을 많이 받았습니다. 또한 <strong>러셀 총평노트도 반복되는 모의고사 속에서 단점 및 실수 보완과 성적 향상을 체감하게 해준 좋은 프로그램</strong>이라고 생각합니다. 모의고사 전날 총평노트를 복습하고, 모의고사 후 공부 계획에 총평노트의 내용을 반영하며 공부했기 때문에 이러한 효과를 볼 수 있었다 생각합니다.
                            <span class="bot-line"></span>
                        </dd>
                    </dl>
                </div>
                <% Else %>
                <p class="comment03 mt10 mb20">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
                <% End If %>
            </div>
            <!-- //mock-schedule -->
        </div>
    </div>
     <!-- //cont07 -->
    <div class="bottom-bar">
        <% If sCampusCode = "CD0249" Then '영통 %>
        <p><span><%=txtCampus%> 재수 정규반</span>에서<br><%=bt_txt%></p>
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <p><span><%=txtCampus%> 파이널 N수 정규반</span>에서<br><%=bt_txt%></p>
        <% Else %>
        <p><span><%=txtCampus%> N수 정규반</span>에서<br><%=bt_txt%></p>
        <% End If %>
    </div>
</div>