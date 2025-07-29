<div class="cont03 js-cont-wrap js-cont">
    <div class="inner">
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tit.jpg" alt="러셀 재원생들이 목표 대학에 합격하는 이유! 러셀만의 수능에 최적화된 시스템이었습니다." /></h3>
        <div class="sys-wrap">
            <ul class="sys-img">
                <% If campus_code = "CD0257" Then '중계 %>
                <li class="on">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img01_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img01.png" class="on" alt="" />
                </li>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img02_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img02.png" class="on" alt="" />
                </li>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img03_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img03.png" class="on" alt="" />
                </li>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img04_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img04.png" class="on" alt="" />
                </li>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img05.png" class="on" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_sys_img05_on.png" class="off" alt="" />
                </li>
                <% Else %>
                <li class="on">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img01_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img01.png" class="on" alt="" />
                </li>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img02_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img02.png" class="on" alt="" />
                </li>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img03_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img03.png" class="on" alt="" />
                </li>
                <% If campus_code = "CD0341" Then '코어대전 %>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2024/regular/cont03_sys_img04_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/core_dj/2024/regular/cont03_sys_img04.png" class="on" alt="" />
                </li>
                <% Else %>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img04_on.png" class="off" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img04.png" class="on" alt="" />
                </li>
                <% End If %>
                <li>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img05.png" class="on" alt="" />
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_img05_on.png" class="off" alt="" />
                </li>
                <% End If %>
            </ul>
            <p class="sys-bg"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_sys_bg.png" alt="" /></p>
        </div>
        <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 일경우 %>
        <div style="position:relative;">
            <img src="<%=Application("img_path_russel")%>/m_russel/core_gj/2024/regular/cont03_stit.png" alt="01 면학분위기로 소문난 바른공부 자습 전용관" />
            <a href="/info/schoolBus.asp" title="" style="position:absolute;right:0%;top:9.47%;width:27%;height:48%;z-index:2;"></a>
        </div>
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_stit.png" alt="01 면학분위기로 소문난 바른공부 자습 전용관" /></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_stit.png" alt="01 면학분위기로 소문난 바른공부 자습 전용관" /></p>
        <% End If %>
        <div class="contbox">
            <div class="studyHall-slide-wrap">
                <% If isCore = "1" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="studyHall-navi core">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">충분한<br>자습시간</div>
                        <div class="swiper-slide">개방형<br>구조</div>
                        <div class="swiper-slide">자체 식당<br>운영</div>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인<br>면학분위기</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">충분한<br>자습시간 확보</div>
                        <div class="swiper-slide">개방형<br>구조</div>
                    </div>
                </div>
                <% End if %>

                <% If isCore = "1" OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="swiper-container studyHall-slide core">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab01_img.png" alt="" /></p>
                        </div>
                        <div class="swiper-slide">
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab02_img.png" alt="" /></p>
                        </div>
                        <div class="swiper-slide">
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab03_img.png" alt="" /></p>
                            <span class="bt-tt js-mask"></span>
                        </div>
                        <div class="swiper-slide">
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab04_img.png" alt="" /></p>
                            <% If campus_code = "CD0349" Then '울산 %>
                            <p class="r-txt">* 해당 이미지는 러셀CORE 창원학원입니다.</p>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab05_img.png" alt="" /></p>
                        </div>
                    </div>
                </div>
                <% Else %>
                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <!-- 집단적인 면학분위기 -->
                            <% If campus_code = "INTRO" OR campus_code = "CD0001" Then '인트로/대치 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_tab01_img.png" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab01_img.png" alt="" /></p>
                            <% End If %>

                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="s-review">
                                <p class="mt15 mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_mark.png" alt="" /></p>
                                <p>
                                    면학분위기가 좋아서 많은 도움을 받았다고 생각합니다. <strong>개방형 구조라 집중이 안 될 때 주위의 친구들을 보면서 긍정적인 자극</strong>을 받았고 <strong>시간표가 정해져 있어 공부시간을 확보하고 규칙적인 생활</strong>을 할 수 있었습니다. 또 <strong>전용 와이파이로 인해 인강 외 사이트는 차단되어 공부에만 집중할 수 있는 환경</strong>이 장점이라고 생각합니다.
                                </p>
                                <dl class="pr10">
                                    <dt>2024학년도 <strong>경희대학교 한의예과 합격</strong></dt>
                                    <dd>러셀 분당 김민정</dd>
                                </dl>
                            </div>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <!-- 학습동선 최소화 -->
                            <% If campus_code = "INTRO" OR campus_code = "CD0249" Then '인트로/영통 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_tab02_img.png" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab02_img.png" alt="" /></p>
                            <% End If %>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <p class="r-txt mt10">* 학원별 시설 및 운영 방법은 상이합니다.</p>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <p class="r-txt">※ 강의실은 운영 상황에 따라 별관(다른 건물)으로 이동할 수도 있습니다.</p>
                            <% End If %>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="s-review">
                                <p class="mt15 mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_mark.png" alt="" /></p>
                                <p>
                                    면학분위기가 좋아서 많은 도움을 받았다고 생각합니다. <strong>개방형 구조라 집중이 안 될 때 주위의 친구들을 보면서 긍정적인 자극</strong>을 받았고 <strong>시간표가 정해져 있어 공부시간을 확보하고 규칙적인 생활</strong>을 할 수 있었습니다. 또 <strong>전용 와이파이로 인해 인강 외 사이트는 차단되어 공부에만 집중할 수 있는 환경</strong>이 장점이라고 생각합니다.
                                </p>
                                <dl class="pr10">
                                    <dt>2024학년도 <strong>경희대학교 한의예과 합격</strong></dt>
                                    <dd>러셀 분당 김민정</dd>
                                </dl>
                            </div>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <!-- 충분한 자습시간 -->
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab03_img.png" alt="" /></p>
                            <span class="bt-tt js-mask"></span>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="s-review">
                                <p class="mt15 mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_mark.png" alt="" /></p>
                                <p>
                                    면학분위기가 좋아서 많은 도움을 받았다고 생각합니다. <strong>개방형 구조라 집중이 안 될 때 주위의 친구들을 보면서 긍정적인 자극</strong>을 받았고 <strong>시간표가 정해져 있어 공부시간을 확보하고 규칙적인 생활</strong>을 할 수 있었습니다. 또 <strong>전용 와이파이로 인해 인강 외 사이트는 차단되어 공부에만 집중할 수 있는 환경</strong>이 장점이라고 생각합니다.
                                </p>
                                <dl class="pr10">
                                    <dt>2024학년도 <strong>경희대학교 한의예과 합격</strong></dt>
                                    <dd>러셀 분당 김민정</dd>
                                </dl>
                            </div>
                            <% End If %>
                        </div>
                        <div class="swiper-slide">
                            <!-- 개방형 구조 -->
                            <% If campus_code = "INTRO" OR campus_code = "CD0246" OR campus_code = "CD0249" OR campus_code = "CD0248" Then '인트로/센텀/영통/평촌 %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont03_tab04_img.png" alt="" /></p>
                            <% Else %>
                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont03_tab04_img.png" alt="" /></p>
                            <% End If %>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="s-review">
                                <p class="mt15 mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_mark.png" alt="" /></p>
                                <p>
                                    면학분위기가 좋아서 많은 도움을 받았다고 생각합니다. <strong>개방형 구조라 집중이 안 될 때 주위의 친구들을 보면서 긍정적인 자극</strong>을 받았고 <strong>시간표가 정해져 있어 공부시간을 확보하고 규칙적인 생활</strong>을 할 수 있었습니다. 또 <strong>전용 와이파이로 인해 인강 외 사이트는 차단되어 공부에만 집중할 수 있는 환경</strong>이 장점이라고 생각합니다.
                                </p>
                                <dl class="pr10">
                                    <dt>2024학년도 <strong>경희대학교 한의예과 합격</strong></dt>
                                    <dd>러셀 분당 김민정</dd>
                                </dl>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>
                <% End If %>
            </div>
            <!-- 바자관 시간표 -->
            <!-- #include virtual = "/intro/2024/regular/baja_time_table.asp" -->
            <!-- //바자관 시간표 -->
        </div>
    </div>
</div>

<div class="cont04 js-cont">
    <div class="inner">
        <% If campus_code = "CD0257" Then '중계 %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont04_tit.jpg" alt="" /></h3>
        <% Else %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont04_tit.jpg" alt="" /></h3>
        <% End If %>

        <!-- 강사진 슬라이드 -->
        <!-- #include virtual = "/intro/2024/regular/teacher_slide.asp" -->
        <!-- //강사진 슬라이드 -->

        <div class="rbox">
            <p>기초부터 실전까지<br>
                빈틈없는 커리큘럼으로 수능 실력 향상<br>
                <strong>정규&middot;특강 단과</strong></p>
            <ul class="list-check">
                <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 일경우 %>
                <li>메가스터디 온&middot;오프 수능 전문 강사진의<br> 
                    몰입감 높은 현장강의와 대치동 LIVE 강의</li>
                <li>평일 저녁&주말, 과목별/수준별/진도별 맞춤 강좌 개설 및 
                    내게 필요한 수업 전략적으로 선택</li>
                <li>수업 전후 선생님의 학습관리 진행으로 1:1 맞춤 완전학습</li>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <li>메가스터디 온&middot;오프 수능 전문 강사진의<br> 
                    몰입감 높은 현장강의</li>
                <li>평일 저녁&주말, 과목별/수준별/진도별 맞춤 강좌 개설 및 
                    내게 필요한 수업 전략적으로 선택</li>
                <li>수업 전후 선생님의 학습관리 진행</li>
                <% Else %>
                <li>메가스터디 온&middot;오프 수능 전문 강사진의<br> 
                    몰입감 높은 현장강의</li>
                <li>평일 저녁&주말, 과목별/수준별/진도별 맞춤 강좌 개설 및  
                    내게 필요한 수업 전략적으로 선택</li>
                <li>수업 전후 선생님의 학습관리 진행으로 1:1 맞춤 완전학습</li>
                <% End If %>
            </ul>
            <a href="<%=regular_url%>">바로가기</a>
        </div>

        <div class="rbox mt30">
            <% If campus_code = "CD0246" Then '센텀 %>
            <p>오직 N수생을 위한<br>매일 오전/오후 단과<br>
            <strong>AM단과</strong></p>
            <ul class="list-check">
                <li>매일 오전/오후 체계적인 과목 편성</li>
                <li>관리력이 우수한 선생님의  N수생 전용 집중 관리형 수업</li>
                <li>나에게 필요한 과목/진도를 선택 수강하여 취약점 집중 보완</li>
            </ul>
            <% Else %>
            <p>오직 N수생을 위한<br>평일 오전/오후 단과<br>
            <strong><%=danka_txt%></strong></p>
            <ul class="list-check">
                <li>평일 오전/오후 체계적인 과목 편성</li>
                <li>관리력이 우수한 선생님의  N수생 전용 집중 관리형 수업</li>
                <li>나에게 필요한 과목/진도를 선택 수강하여 취약점 집중 보완</li>
            </ul>
            <% End If %>
            <a href="<%=danka_url%>">바로가기</a>
        </div>
    </div>
</div>

<div class="cont05 js-cont">
    <div class="inner">
        <% If campus_code = "CD0257" Then '중계 %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tit.jpg" alt="" /></h3>
        <% Else %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tit.jpg" alt="" /></h3>
        <% End If %>
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
                                    <% If campus_code = "INTRO" OR campus_code = "CD0247" OR campus_code = "CD0248" OR campus_code = "CD0246" OR campus_code = "CD0257" OR campus_code = "CD0342" OR campus_code = "CD0341" OR campus_code = "CD0345" Then '인트로/강남/평촌/센텀/중계/대구/코어대전/코어창원 %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab01_img01.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab01_img01.jpg" alt="" /></div>
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
                                    <% If campus_code = "INTRO" OR campus_code = "CD0245" Then '인트로/목동 %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab01_img02.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab01_img02.jpg" alt="" /></div>
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
                                    <% If campus_code = "INTRO" OR campus_code = "CD0247" Then '인트로/강남 %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab01_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab01_img03.jpg" alt="" /></div>
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
                        <% If campus_code = "INTRO" Then '인트로 %>
                        <div class="revbox">
                            <p class="r-txt mb15">* 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/img_mark.png" alt="" /></div>
                            <div class="s-review">
                                <p>
                                    <strong>바자관 바로 앞에 담임선생님이 계셔서 궁금한 점이 생기면 편하게 상담</strong>을 신청할 수 있었습니다. <strong>매달 시험을 본 후 진행하는 성적 상담에서는 저에게 맞는 학습 방향을 설계해 주셔서 남은 기간 동안 어떻게 공부해야 할지 큰 도움</strong>을 받았습니다. 또한 ‘수능을 잘 볼 수 있을까’라는 <strong>불안감이 들 때마다 잘하고 있으니 걱정 말라고 격려해 주셔서 수험기간 중 의지</strong>가 많이 되었습니다.
                                </p>
                                <dl>
                                    <dt>2024학년도 <strong>경희대학교 치의예과 합격</strong></dt>
                                    <dd>러셀 분당 윤현진</dd>
                                </dl>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                </div>
                <!-- 학습관리 -->
                <div class="swiper-slide">
                    <div class="s-wrap">
                        <p class="tit"><strong>재원생의 학습목표와 수준에 맞춰<br>수능까지 성취도 있는 학습</strong>을 위한<br>체계적인 학습관리를 진행합니다.</p>
                        <div class="s-slide swiper-container type02">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab02_img01.jpg" alt="" /></div>
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
                                    <% If campus_code = "INTRO" OR campus_code = "CD0247" OR campus_code = "CD0249" Then '인트로/강남/영통 %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab02_img02.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab02_img02.jpg" alt="" /></div>
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
                                    <% If campus_code = "INTRO" OR campus_code = "CD0247" Then '인트로/강남 %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab02_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab02_img03.jpg" alt="" /></div>
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
                        <% If campus_code = "INTRO" Then '인트로 %>
                        <div class="revbox">
                            <p class="r-txt mb15">* 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/img_mark.png" alt="" /></div>
                            <div class="s-review">
                                <p>
                                    <strong>바자관 바로 앞에 담임선생님이 계셔서 궁금한 점이 생기면 편하게 상담</strong>을 신청할 수 있었습니다. <strong>매달 시험을 본 후 진행하는 성적 상담에서는 저에게 맞는 학습 방향을 설계해 주셔서 남은 기간 동안 어떻게 공부해야 할지 큰 도움</strong>을 받았습니다. 또한 ‘수능을 잘 볼 수 있을까’라는 <strong>불안감이 들 때마다 잘하고 있으니 걱정 말라고 격려해 주셔서 수험기간 중 의지</strong>가 많이 되었습니다.
                                </p>
                                <dl>
                                    <dt>2024학년도 <strong>경희대학교 치의예과 합격</strong></dt>
                                    <dd>러셀 분당 윤현진</dd>
                                </dl>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                </div>
                <!-- 생활관리 -->
                <div class="swiper-slide">
                    <div class="s-wrap">
                        <p class="tit"><strong>오직 학습에만 집중하고<br>집단적인 면학분위기 형성</strong>을 위한<br>엄격한 생활관리를 진행합니다.</p>
                        <div class="s-slide swiper-container type03">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <% If campus_code = "INTRO" OR campus_code = "CD0247" Then '인트로/강남 %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab03_img01.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab03_img01.jpg" alt="" /></div>
                                    <% End If %>
                                    
                                    <% If campus_code = "CD0244" Then '분당' %>
                                    <p>엄격한 출결 및 개인 스케줄 관리</p>
                                    <% Else %>
                                    <p>엄격한 출결 관리</p>
                                    <% End If %>
                                    <ul class="list-check">
                                        <% If campus_code = "CD0250" Then '부천 %>
                                        <li><strong>매 교시 2회 이상 엄격한 출결 관리 및<br>
                                            바자관 상시 모니터링</strong></li>
                                        <% Else %>
                                        <li><strong>매 교시 엄격한 출결 관리 및<br>
                                            바자관 상시 모니터링</strong></li>
                                        <% End If %>
                                        <li>지각, 무단 외출, 무단 결석 등<br>
                                            <strong>면학분위기 저해 요소 엄격하게 관리</strong></li>
                                        <li><strong>전자 출결 관리 시스템</strong>으로<br>
                                            등/하원 시 부모님께 문자 발송</li>
                                    </ul>
                                </div>
                                <div class="swiper-slide">
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab03_img02.jpg" alt="" /></div>
                                    <% If campus_code = "CD0250" Then '부천 %>
                                    <p>엄격한 교육 점수 제도 운영</p>
                                    <ul class="list-check">
                                        <li>휴대폰 소지, 수면, 자습시간 중 이동 등<br>
                                            <strong>면학분위기 저해 요소를 엄격하게 관리 및<br>
                                            교육 점수 운영</strong></li>
                                        <li>교육 점수 제도를 통해 일정 점수 초과 시<br>
                                            상담/강제 퇴원 조치</li>
                                    </ul>
                                    <% Else %>
                                    <p>엄격한 태도 점수 제도 운영</p>
                                    <ul class="list-check">
                                        <li>휴대폰 소지, 수면, 자습시간 중 이동 등<br>
                                            <strong>면학분위기 저해 요소를 엄격하게 관리 및<br>
                                            태도 점수 운영</strong></li>
                                        <li>태도 점수 제도를 통해 일정 점수 초과 시<br>
                                            상담/강제 퇴원 조치</li>
                                    </ul>
                                    <% End If %>
                                </div>
                                <div class="swiper-slide">
                                    <% If campus_code = "INTRO" OR campus_code = "CD0247" OR campus_code = "CD0001" Then '인트로/강남/대치 %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont05_tab03_img03.jpg" alt="" /></div>
                                    <% Else %>
                                    <div class="mb10"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont05_tab03_img03.jpg" alt="" /></div>
                                    <% End If %>
                                    <p>정신적 멘토링</p>
                                    <ul class="list-check">
                                        <li>학생중심 사고를 기반하여 학생에 대한<br>
                                            존중, 배려 등으로 <strong>동반자 역할</strong></li>
                                        <% If campus_code = "CD0244" Then '분당 %>
                                        <li>학습 고충 및 슬럼프 등으로 가장 필요할 때<br> 
                                            가장 가까운 곳에 있기 위해 <strong>바자관 앞 상주</strong></li>
                                        <% Else %>
                                        <li>학습 고충 및 슬럼프 등으로 가장 필요할 때<br>
                                            가장 가까운 곳에 있기 위해<br>
                                            <strong>바자관 앞 또는 바자관 내 상주</strong></li>
                                        <% End If %>
                                    </ul>
                                </div>
                            </div>
                            <div class="swiper-pagination p-type03"></div>
                        </div>
                        <% If campus_code = "INTRO" Then '인트로 %>
                        <div class="revbox">
                            <p class="r-txt mb15">* 학원별 관리 프로그램 내용은 상이할 수 있습니다.</p>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/img_mark.png" alt="" /></div>
                            <div class="s-review">
                                <p>
                                    <strong>바자관 바로 앞에 담임선생님이 계셔서 궁금한 점이 생기면 편하게 상담</strong>을 신청할 수 있었습니다. <strong>매달 시험을 본 후 진행하는 성적 상담에서는 저에게 맞는 학습 방향을 설계해 주셔서 남은 기간 동안 어떻게 공부해야 할지 큰 도움</strong>을 받았습니다. 또한 ‘수능을 잘 볼 수 있을까’라는 <strong>불안감이 들 때마다 잘하고 있으니 걱정 말라고 격려해 주셔서 수험기간 중 의지</strong>가 많이 되었습니다.
                                </p>
                                <dl>
                                    <dt>2024학년도 <strong>경희대학교 치의예과 합격</strong></dt>
                                    <dd>러셀 분당 윤현진</dd>
                                </dl>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="cont06 js-cont">
    <div class="inner">
        <% If campus_code = "CD0341" Then '코어대전 %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_tit.jpg" alt="" /></h3>
        <% Else %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_tit.jpg" alt="" /></h3>
        <% End If %>
        <div class="rbox">
            <% If campus_code = "CD0247" or campus_code = "CD0343" Then '강남/코어원주 %>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_list.jpg" alt="" /></div>
            <% Else %>
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_list.jpg" alt="" /></div>
            <% End If %>
            <div class="graph-wrap">
                <% If campus_code = "CD0247" Then '강남 %>
                <img src="<%=Application("img_path_russel")%>/m_russel/russel_gn/2024/regular/cont06_img01.png" alt="" />
                <p class="arr-bottom"><img src="<%=Application("img_path_russel")%>/m_russel/russel_gn/2024/regular/img_arr_top.png" alt="" /></p>
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/russel_gn/2024/regular/img_arr_bottom.png" alt="" /></p>
                <% ElseIf campus_code = "CD0245" OR campus_code = "CD0249" OR campus_code = "CD0349" OR campus_code = "CD0341" OR campus_code = "CD0343" OR campus_code = "CD0344" OR campus_code = "CD0345" Then '목동/영통/울산/코어대전/코어원주/코어전주/코어창원 %>
                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_img01.png" alt="" />
                <p class="arr-bottom"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arr_bottom.png" alt="" /></p> 
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arr_top.png" alt="" /></p>
                <% Else %>
                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_img01.png" alt="" />
                <p class="arr-bottom"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arr_bottom.png" alt="" /></p>
                <p class="arr-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_arr_top.png" alt="" /></p>
                <% End If %>
            </div>
            
            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="r-txt">※ 반편성 및 장학혜택은 학원별 홈페이지에서 확인 바랍니다.</p>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <p class="r-txt">※ 반편성 및 장학혜택은 추후 공지예정입니다.</p>
            <% End If %>

            <% If campus_code <> "CD0257" Then '중계 제외 %>
            <div class="grade-swiper swiper-container">
                <% If campus_code = "CD0001" OR campus_code = "CD0244" OR campus_code = "CD0342" OR campus_code = "CD0349" OR campus_code = "CD0341" OR campus_code = "CD0344" OR campus_code = "CD0345" OR campus_code = "CD0346" Then '대치/분당/대구/울산/코어대전/코어전주/코어창원/코어청주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_slide01.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_slide02.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_slide03.png" alt="" /></div>
                </div>
                <% ElseIf campus_code = "INTRO" Then '인트로 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_slide01_intro.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_slide02_intro.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_slide03_intro.png" alt="" /></div>
                </div>
                <% ElseIf campus_code = "CD0245" or campus_code = "CD0343" Then '목동/코어원주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide01.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide02.png" alt="" /></div>
                </div>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide01.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide02.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide03.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide04.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide05.png" alt="" /></div>
                </div>
                <% Else %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide01.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide02.png" alt="" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont06_slide03.png" alt="" /></div>
                </div>
                <% End If %>
                <div class="swiper-pagination"></div>
            </div>
            <% End If %>

            <% If campus_code <> "CD0341" Then '대전 %>
            <p class="ico"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_plus.png" alt="" /></p>
            <p class="mt15"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont06_img02.png" alt="" /></p>
            <% End If %>
        </div>
    </div>
</div>

<div class="cont07 js-cont">
    <div class="inner">
        <% If campus_code = "CD0257" Then '중계 %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont07_tit.jpg" alt="" /></h3>
        <% Else %>
        <h3 data-aos="flip-up" class="aos-init aos-animate"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_tit.jpg" alt="" /></h3>
        <% End If %>
    <% If campus_code <> "INTRO" and campus_code <> "CD0248" Then '인트로/평촌 제외 %>
        <div class="contbox">
            <% If isCore = 1 Then '코어 일경우 %>
            <div class="program-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0247" OR campus_code = "CD0001" OR campus_code = "CD0244" OR campus_code = "CD0249" OR campus_code = "CD0257" OR campus_code = "CD0248" OR campus_code = "CD0246" Then '강남/대치/분당/영통/중계/평촌/센텀 %>
            <div class="program-slide-navi type02 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0245" Then '목동 %>
            <div class="program-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                    <div class="swiper-slide">장영진 식스팩<br>(6PACK)</div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <div class="program-slide-navi type03 swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                    <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                    <div class="swiper-slide">장영진T<br>식스팩(6PACK)</div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <div class="program-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% Else %>
            <div class="program-slide-navi swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">QUEL<br>모의고사</div>
                    <div class="swiper-slide">메가X대성<br>더 프리미엄<br> 모의고사</div>
                    <div class="swiper-slide">러셀CORE<br>Weekly 모의고사</div>
                    <div class="swiper-slide">월간 학습지<br>(월간 장영진)</div>
                </div>
            </div>
            <% End If %>
            
            <div class="program-slide swiper-container">
                <div class="swiper-wrapper">
                    <% If isCore = 1 Then '코어 일경우 %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img03.png" alt="" />
                        <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:8%;top:12.47%;width:28.6%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img01.png" alt="" />
                        <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:10%;top:9.47%;width:26.6%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img02_1.png" alt="" />
                        <a href="/intro/2022/premium/index.asp" title="" style="position:absolute;right:8.4%;top:15.4%;width:27.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img04.png" alt="" />
                        <a href="/intro/info/2022/monthly/index.asp" title="" style="position:absolute;right:9.4%;top:14.47%;width:26.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <% ElseIf campus_code = "CD0349" Then '울산 %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img03.png" alt="" />
                        <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:8%;top:12.47%;width:28.6%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img02_1.png" alt="" />
                        <a href="/intro/2022/premium/index.asp" title="" style="position:absolute;right:8.4%;top:15.4%;width:27.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img01.png" alt="" />
                        <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:10%;top:9.47%;width:26.6%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img04.png" alt="" />
                        <a href="/intro/info/2022/monthly/index.asp" title="" style="position:absolute;right:9.4%;top:14.47%;width:26.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <% Else %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img01.png" alt="" />
                        <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:8%;top:9.47%;width:26.6%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img02_1.png" alt="" />
                        <a href="/intro/2022/premium/index.asp" title="" style="position:absolute;right:8.4%;top:15.4%;width:27.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <% If campus_code <> "CD0247" AND campus_code <> "CD0001" AND campus_code <> "CD0245" AND campus_code <> "CD0250" AND campus_code <> "CD0244" AND campus_code <> "CD0249" AND campus_code <> "CD0257" AND campus_code <> "CD0248" AND campus_code <> "CD0246" Then '강남/대치/목동/부천/분당/영통/중계/평촌/센텀 제외 %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img03.png" alt="" />
                        <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:8%;top:15.47%;width:27.6%;height:6.39%;z-index:2;"></a>
                    </div>
                    <% End If %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_img04.png" alt="" />
                        <a href="/intro/info/2022/monthly/index.asp" title="" style="position:absolute;right:9.4%;top:15.47%;width:26.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <% If campus_code = "CD0250" Then '부천 %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont07_img03.png" alt="" />
                        <a href="https://mrussel.megastudy.net/intro/2022/weekly/index.asp" title="" style="position:absolute;right:8%;top:15.47%;width:27.6%;height:6.39%;z-index:2;" target="_blank"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img12.png" alt="" />
                    </div>
                    <% End If %>
                    <% If campus_code = "CD0245" Then '목동 %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/russel_md/2024/regular/cont01_img.png" alt="" />
                        <a href="https://mrusselmd.megastudy.net/board/notice_view.asp?code=30147" title="" style="position:absolute;right:8%;top:15.47%;width:27.6%;height:6.39%;z-index:2;"></a>
                    </div>
                    <% End If %>

                    <% End If %>
                </div>
            </div>
        </div>
    <% End If %>

        <div class="contbox mt15">
            <div class="js-program swiper-container">
                <div class="swiper-wrapper">
                <% If campus_code = "INTRO" or campus_code = "CD0248" Then '인트로/평촌 %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img05.png" alt="QUEL 모의고사" />
                        <a href="/event/2021/quel/default.asp" title="" style="position:absolute;right:11%;top:11.47%;width:26.6%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img06.png" alt="E-QUEL 모의고사" />
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img07.png" alt="QUEL:UNIT 주간 테스트" />
                        <a href="/event/2024/quel_unit/index.asp" title="" style="position:absolute;right:10.4%;top:16.47%;width:26.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img08.png" alt="메가X대성 더 프리미엄 모의고사" />
                        <a href="/intro/2022/premium/index.asp" title="" style="position:absolute;right:10.4%;top:16.4%;width:27.9%;height:8.39%;z-index:2;"></a>
                    </div>
                    <% If campus_code ="CD0248" Then '평촌 %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img09_2.png" alt="러셀CORE Weekly 모의고사" />
                        <a href="https://mrussel.megastudy.net/intro/2022/weekly/index.asp" title="" style="position:absolute;right:10%;top:17.47%;width:27.6%;height:6.39%;z-index:2;"></a>
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img11.png" alt="식스팩 모의고사" />
                        <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:10%;top:17.47%;width:27.6%;height:6.39%;z-index:2;"></a>
                    </div>
                    <% Else %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img09.png" alt="러셀CORE Weekly 모의고사" />
                        <a href="/intro/2022/weekly/index.asp" title="" style="position:absolute;right:10%;top:16.47%;width:27.6%;height:6.39%;z-index:2;"></a>
                    </div>
                    <% End If %>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img10.png" alt="월간 학습지" />
                        <a href="/intro/info/2022/monthly/index.asp" title="" style="position:absolute;right:10.4%;top:16.47%;width:26.9%;height:8.39%;z-index:2;"></a>
                    </div>
                <% End If %>

                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img01.png" alt="러셀 학습플래너" /></div>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img02.png" alt="일일수학 30제" /></div>
                    <% If campus_code ="CD0244" Then '분당 %>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img04.png" alt="러셀 분당 재원생 전용 주간지" /></div>
                    <% Else %>
                    <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide01_img03.png" alt="러셀 총평노트" /></div>
                    <% End If %>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <% If campus_code ="CD0340" Then '코어광주 %>
        <p class="r-txt ">* 학습 플래너/일일수학 30제/총평 노트는 러셀 재원생 대상으로<br> 
            ‘전액 지원’되는 콘텐츠이며, 학원별로 제공되는 콘텐츠는 상이할 수 있습니다.</p>
        <% Else %>
        <p class="r-txt">* 학습 플래너/일일수학 30제/총평 노트는<br> 
            러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.</p>
        <% End If %>

        <p class="stit01"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_stit01.jpg" alt="실전 대비 훈련을 위해 정기적으로 집체 모의고사를 진행합니다." /></p>
        <div class="js-study swiper-container">
            <div class="swiper-wrapper">
                <% If campus_code = "INTRO" OR campus_code = "CD0247" OR campus_code = "CD0349" OR campus_code = "CD0341" OR campus_code = "CD0344" OR campus_code = "CD0346" Then '인트로/강남/울산/코어대전/코어전주/코어청주 %>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide02_img01.png" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_slide02_img02.png" alt="" /></div>
                <% Else %>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont07_slide02_img01.png" alt="" /></div>
                <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont07_slide02_img02.png" alt="" /></div>
                <% End If %>
            </div>
            <div class="swiper-pagination"></div>
        </div>
        <% If campus_code = "CD0342" Then '대구 %>
        <p class="stit02"><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2024/regular/cont07_stit02.jpg" alt="러셀 실전 콘텐츠 연간 시행 일정" /></p>
        <% Else %>
        <p class="stit02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/cont07_stit02.jpg" alt="러셀 실전 콘텐츠 연간 시행 일정" /></p>
        <% End If %>
        <div style="position: relative;">
            <% If campus_code = "INTRO" OR campus_code = "CD0349" Then '인트로/울산 %>
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
                        <th colspan="3">QUEL</th>
                        <th rowspan="2">메대프<br> 모의고사</th>
                        <th rowspan="2">러셀 <br> CORE<br>Weekly<br>모의고사</th>
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
                        <td class="ico-y">7/5(금)</td>
                        <td class="ico-g">17~18회차</td>
                        <td class="ico-yg">7월호</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">8월</th>
                        <td class="ico-b">2회</td>
                        <td class="ico-bb">8/22(목)</td>
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
                        <% If campus_code = "CD0349" Then '울산 %>
                        <td class="ico-y">9/27(금)</td>
                        <% Else %>
                        <td></td>
                        <% End if %>
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
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
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
                        <th rowspan="2">러셀<br>CORE<br>Weekly<br>모의고사</th>
                        <th colspan="3">QUEL</th>
                        <th rowspan="2">메대프<br> 모의고사</th>
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
                        <td class="ico-g">1~7회차</td>
                        <td></td>
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
                        <td class="ico-bbb">1~4회차</td>
                        <td class="ico-y">3/22(금)</td>
                        <td class="ico-yg">3월호</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">4월</th>
                        <td class="ico-g">10~11회차</td>
                        <td></td>
                        <td></td>
                        <td class="ico-bbb">5~8회차</td>
                        <td class="ico-y">4/16(화)</td>
                        <td class="ico-yg">4월호</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">5월</th>
                        <td class="ico-g">12~13회차</td>
                        <td class="ico-b">1회</td>
                        <td></td>
                        <td class="ico-bbb">9~12회차</td>
                        <td class="ico-y">5/21(화)</td>
                        <td class="ico-yg">5월호</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">6월</th>
                        <td class="ico-g">14~16회차</td>
                        <td></td>
                        <td></td>
                        <td class="ico-bbb">13~16회차</td>
                        <td></td>
                        <td class="ico-yg">6월호 </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">7월</th>
                        <td class="ico-g">17~18회차</td>
                        <td></td>
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
                        <td></td>
                        <td class="ico-yg">8월호 </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">9월</th>
                        <td class="ico-g">20~21회차</td>
                        <td class="ico-b">3회</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="ico-yg">9월호</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">10월</th>
                        <td class="ico-g">22회차</td>
                        <td class="ico-b">4~5회</td>
                        <td></td>
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
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <% ElseIf campus_code = "CD0340" or campus_code = "CD0344" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0343" Then '광주/전주/창원/청주/원주 %>
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
                        <th>QUEL <br> 모의고사</th>
                        <th style="border-right: 1px solid #d9d9d9;">E-QUEL <br> 모의고사</th>
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
                        <td class="ico-yg">3월호 </td>
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
            <% ElseIf campus_code = "CD0245" Then '목동 %>
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
                        <th colspan="2">QUEL</th>
                        <th rowspan="2">메대프<br> 모의고사</th>
                        <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        <th rowspan="2">장영진<br>식스팩<br>(6PACK)</th>
                    </tr>
                    <tr>
                        <th>QUEL <br> 모의고사</th>
                        <th style="border-right: 1px solid #d9d9d9;">E-QUEL <br> 모의고사</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">2월</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">3월</th>
                        <td></td>
                        <td></td>
                        <td class="ico-y">3/22(금)</td>
                        <td class="ico-yg">3월호 </td>
                        <td class="ico-g">시즌1</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">4월</th>
                        <td></td>
                        <td></td>
                        <td class="ico-y">4/16(화) </td>
                        <td class="ico-yg">4월호</td>
                        <td class="ico-g">시즌1</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">5월</th>
                        <td class="ico-b">1회</td>
                        <td></td>
                        <td class="ico-y">5/21(화)</td>
                        <td class="ico-yg">5월호</td>
                        <td class="ico-g">시즌2</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">6월</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="ico-yg">6월호</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">7월</th>
                        <td></td>
                        <td></td>
                        <td class="ico-y">7/5(금)</td>
                        <td class="ico-yg">7월호</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">8월</th>
                        <td class="ico-b">2회</td>
                        <td class="ico-bb">8/22(목)</td>
                        <td></td>
                        <td class="ico-yg">8월호</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">9월</th>
                        <td class="ico-b">3회</td>
                        <td></td>
                        <td class="ico-y">9/27(금)</td>
                        <td class="ico-yg">9월호 </td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">10월</th>
                        <td class="ico-b">4~5회</td>
                        <td></td>
                        <td class="ico-y">10/22(화)</td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">11월</th>
                        <td></td>
                        <td class="ico-bb">11/1(금)</td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <div class="tbl-scroll-x">
                <table class="tbl-type01 tbl-center">
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                        <col style="width: 10%;">
                    </colgroup>
    
                    <thead>
                        <tr>
                            <th rowspan="2">구분</th>
                            <th colspan="3">QUEL</th>
                            <th rowspan="2">메대프<br> 모의고사</th>
                            <th rowspan="2">러셀<br>CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">6PACK<br>모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                            <th rowspan="2">평가원 <br>모의고사</th>
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
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">3월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-bbb">1~4회차</td>
                            <td class="ico-y">3/22(금)</td>
                            <td class="ico-g">8~9회차</td>
                            <td class="ico-pp">시즌1</td>
                            <td class="ico-yg">3월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-bbb">5~8회차</td>
                            <td class="ico-y">4/16(화)</td>
                            <td class="ico-g">10~11회차</td>
                            <td class="ico-pp">시즌1</td>
                            <td class="ico-yg">4월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td class="ico-b">1회 </td>
                            <td></td>
                            <td class="ico-bbb">9~12회차</td>
                            <td class="ico-y">5/21(화)</td>
                            <td class="ico-g">12~13회차</td>
                            <td class="ico-pp">시즌2</td>
                            <td class="ico-yg">5월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-bbb">13~16회차</td>
                            <td></td>
                            <td class="ico-g">14~16회차</td>
                            <td></td>
                            <td class="ico-yg">6월호</td>
                            <td class="ico-p">6평</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">7/5(금)</td>
                            <td class="ico-g">17~18회차</td>
                            <td></td>
                            <td class="ico-yg">7월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td class="ico-b">2회</td>
                            <td class="ico-bb">8/22(목)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-g">19회차</td>
                            <td></td>
                            <td class="ico-yg">8월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-b">3회</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-g">20~21회차</td>
                            <td></td>
                            <td class="ico-yg">9월호</td>
                            <td class="ico-p">9평</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td class="ico-b">4~5회</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">10/22(화)</td>
                            <td class="ico-g">22회차</td>
                            <td></td>
                            <td></td>
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
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
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
                        <th rowspan="2">러셀CORE<br>
                        Weekly<br>
                        모의고사</th>
                        <th rowspan="2">장영진<br>
                        식스팩<br>
                        (6PACK)</th>
                    </tr>
                    <tr>
                        <th>QUEL <br> 모의고사</th>
                        <th style="border-right: 1px solid #d9d9d9;">E-QUEL <br> 모의고사</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th class="bg-sky">2월</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">3월</th>
                        <td></td>
                        <td></td>
                        <td class="ico-y">3/22(금)</td>
                        <td class="ico-yg">3월호</td>
                        <td></td>
                        <td class="ico-pp">시즌1 </td>
                    </tr>
                    <tr>
                        <th class="bg-sky">4월</th>
                        <td></td>
                        <td></td>
                        <td class="ico-y">4/16(화)</td>
                        <td class="ico-yg">4월호</td>
                        <td class="ico-g">10~11회차</td>
                        <td class="ico-pp">시즌1</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">5월</th>
                        <td class="ico-b">1회</td>
                        <td></td>
                        <td class="ico-y">5/21(화)</td>
                        <td class="ico-yg">5월호</td>
                        <td class="ico-g">12~13회차</td>
                        <td class="ico-pp">시즌2</td>
                    </tr>
                    <tr>
                        <th class="bg-sky">6월</th>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td class="ico-yg">6월호 </td>
                        <td class="ico-g">14~16회차</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">7월</th>
                        <td></td>
                        <td></td>
                        <td class="ico-y">7/5(금)</td>
                        <td class="ico-yg">7월호 </td>
                        <td class="ico-g">17~18회차</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">8월</th>
                        <td class="ico-b">2회 </td>
                        <td class="ico-bb">8/22(목) </td>
                        <td></td>
                        <td class="ico-yg">8월호 </td>
                        <td class="ico-g">19회차</td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">9월</th>
                        <td class="ico-b">3회</td>
                        <td></td>
                        <td></td>
                        <td class="ico-yg">9월호 </td>
                        <td class="ico-g">20~21회차 </td>
                        <td></td>
                    </tr>
                    <tr>
                        <th class="bg-sky">10월</th>
                        <td class="ico-b">4~5회 </td>
                        <td></td>
                        <td class="ico-y">10/22(화)</td>
                        <td></td>
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
            <% Else %>
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
                        <th>QUEL <br> 모의고사</th>
                        <th style="border-right: 1px solid #d9d9d9;">E-QUEL <br> 모의고사</th>
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
                        <td class="ico-y">3/22(금)</td>
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
                        <td class="ico-yg">6월호 </td>
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
                        <% If campus_code = "CD0001" or campus_code = "CD0245" or campus_code = "CD0244" Then '대치,목동,분당 %>
                        <td class="ico-y">9/27(금)</td>
                        <% Else %>
                        <td></td>
                        <% End If %>
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
            <% End If %>
        </div>
        <% If campus_code = "INTRO" Then '인트로 %>
        <p class="r-txt mt15">* 상기 일정은 평가원 시행 계획 및<br>학원별 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <p class="r-txt mt15">*상기 일정은 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
        <% Else %>
        <p class="r-txt mt15">* 상기 일정은 평가원 시행 계획 및<br>학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
        <% End If %>
        
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="rbox">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/img_mark.png" alt="" /></div>
            <div class="s-review">
                <p>러셀에선 <strong>QUEL 모의고사와 위클리 모의고사, 메대프 모의고사 등의 러셀만의 장점을 활용하여 학습에 실질적인 도움</strong>을 많이 받았습니다. 또한 <strong>러셀 총평노트도 반복되는 모의고사 속에서 단점 및 실수 보완과 성적 향상을 체감하게 해준 좋은 프로그램</strong>이라고 생각합니다. 모의고사 전날 총평노트를 복습하고, 모의고사 후 공부 계획에 총평노트의 내용을 반영하며 공부했기 때문에 이러한 효과를 볼 수 있었다 생각합니다.</p>
                <dl>
                    <dt>2024학년도 <strong>고려대학교 의예과 합격</strong></dt>
                    <dd>CORE 전주 서진원</dd>
                </dl>
            </div>
        </div>
        <% End If %>
    </div>
</div>

<div class="bt-banner">
    <% If campus_code = "CD0249" Then '영통 %>
    <p><strong><%=txtCampus%> 재수 정규반</strong>에서<br><%=bt_txt%></p>
    <% ElseIf campus_code = "CD0245" Then '목동 %>
    <p><strong><%=txtCampus%> 파이널 N수 정규반</strong>에서<br><%=bt_txt%></p>
    <% Else %>
    <p><strong><%=txtCampus%> N수 정규반</strong>에서<br><%=bt_txt%></p>
    <% End If %>
</div>