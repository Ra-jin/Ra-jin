<!-- cont03 -->
<div class="cont03 js-cont-wrap <%=campusName%>">
    <h2>
        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_tit.jpg" alt="더 높은 목표 달성을 위한 또 한번의 도전 러셀에서 더 빠르게 시작해야 하는 이유는 분명합니다." />
        <% If isCore or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
        <a class="banner-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/ico_bus.png" alt="" /></a>
        <% end if %>
    </h2>
    <div class="inner">
        <div class="cont-box">
            <div class="studyHall-slide-wrap">
                <% If isCore or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="studyHall-navi core">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">충분한 <br> 자습시간</div>
                        <div class="swiper-slide">개방형 <br> 구조</div>
                        <div class="swiper-slide">자체 식당 <br> 운영</div>
                    </div>
                </div>
                <% else %>
                <div class="studyHall-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 <br> 면학분위기</div>
                        <div class="swiper-slide">학습 동선 <br> 최소화</div>
                        <div class="swiper-slide">충분한 <br>자습시간 <br>확보</div>
                        <div class="swiper-slide">개방형 <br> 구조</div>
                    </div>
                </div>
                <% end if %>

                <% If isCore or campus_code = "CD0342" or campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="swiper-container studyHall-slide core">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide01.jpg" alt="" /></div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt><strong>러셀 바자관의 장점은 면학분위기</strong>입니다. <br> 최상위권 학생들과 함께 공부하며 다른 학생들의 노력과 열정을 느낄 수 있으며, 이를 통해 저 역시도 열심히 공부를 할 수 있었기 때문입니다.</dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 가톨릭대학교(성의) 의예과 합격</strong> <br>러셀 분당 유주영</dt>
                                        <dd><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_yjy.png" alt="유주영" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide02.jpg" alt="" /></div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt><strong>단과 수업과 자습을 한 건물 내에서 해결할 수 있어서 좋았습니다.</strong> 이동하느라 허비되는 시간을 최소한으로 줄일 수 있었고, 여름이나 겨울에 바깥 날씨가 좋지 않아도 쾌적한 실내에서만 이동하며 컨디션을 유지할 수 있었던 것 같습니다. </dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 서울대학교 간호학과 합격</strong> <br>러셀 영통 이민지</dt>
                                        <dd><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_lmj.png" alt="이민지" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <div class="swiper-slide">
                            <div>
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide03.jpg" alt="" />
                                <span class="bt-tt js-mask">바른공부 자습전용관 표준시간표</span>
                            </div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt><strong>수능 시간표에 맞춰서 생활할 수 있게 지도해주는 것이 가장 좋았습니다.</strong> 덕분에 아침에 일찍 일어나는 습관을 기를 수 있었고 충분한 공부시간을 확보할 수 있었습니다. 면학분위기도 좋아서 확보된 시간 대부분을 온전히 공부에만 쓸 수 있었습니다.</dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 서울대학교 의예과 합격</strong> <br>러셀 강남 이윤서</dt>
                                        <dd><img style="width: calc(130vw / 5.9);" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_lys.png" alt="이윤서" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide04.jpg" alt="" /></div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt>바자관만큼 공부하기 좋은 환경이 없었던 것 같습니다.  넓은 책상과 책장 등이 앉은 자리에서 다 관리할 수 있도록 되어 있었고, 벽면이 통유리로 되어 있어 뻥 뚫린 느낌을 받았습니다. <strong>개방형 구조로 되어 있어 열정적으로 공부하는 주위 친구들에게 많은 동기 부여를 받았습니다.</strong> </dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 서울대학교  인문계열 합격</strong> <br>   최상위권 남학생 의대전문관 김동욱</dt>
                                        <dd><img style="width: calc(150vw / 5.9);" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_kdw.png" alt="김동욱" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide05.jpg" alt="" /></div>
                        </div>
                    </div>
                </div>
                <% else %>
                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide01.jpg" alt="" /></div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt><strong>러셀 바자관의 장점은 면학분위기</strong>입니다. <br> 최상위권 학생들과 함께 공부하며 다른 학생들의 노력과 열정을 느낄 수 있으며, 이를 통해 저 역시도 열심히 공부를 할 수 있었기 때문입니다.</dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 가톨릭대학교(성의) 의예과 합격</strong> <br>러셀 분당 유주영</dt>
                                        <dd><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_yjy.png" alt="유주영" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide02.jpg" alt="" /></div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt><strong>단과 수업과 자습을 한 건물 내에서 해결할 수 있어서 좋았습니다.</strong> 이동하느라 허비되는 시간을 최소한으로 줄일 수 있었고, 여름이나 겨울에 바깥 날씨가 좋지 않아도 쾌적한 실내에서만 이동하며 컨디션을 유지할 수 있었던 것 같습니다. </dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 서울대학교 간호학과 합격</strong> <br>러셀 영통 이민지</dt>
                                        <dd><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_lmj.png" alt="이민지" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <div class="swiper-slide">
                            <div>
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide03.jpg" alt="" />
                                <span class="bt-tt js-mask">바른공부 자습전용관 표준시간표</span>
                            </div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt><strong>수능 시간표에 맞춰서 생활할 수 있게 지도해주는 것이 가장 좋았습니다.</strong> 덕분에 아침에 일찍 일어나는 습관을 기를 수 있었고 충분한 공부시간을 확보할 수 있었습니다. 면학분위기도 좋아서 확보된 시간 대부분을 온전히 공부에만 쓸 수 있었습니다.</dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 서울대학교 의예과 합격</strong> <br>러셀 강남 이윤서</dt>
                                        <dd><img style="width: calc(130vw / 5.9);" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_lys.png" alt="이윤서" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont03_slide04.jpg" alt="" /></div>
                            <% If campus_code = "INTRO" Then '인트로 %>
                            <div class="b-review">
                                <div class="line">
                                    <dl>
                                        <dt>바자관만큼 공부하기 좋은 환경이 없었던 것 같습니다.  넓은 책상과 책장 등이 앉은 자리에서 다 관리할 수 있도록 되어 있었고, 벽면이 통유리로 되어 있어 뻥 뚫린 느낌을 받았습니다. <strong>개방형 구조로 되어 있어 열정적으로 공부하는 주위 친구들에게 많은 동기 부여를 받았습니다.</strong> </dt>
                                    </dl>
                                    <dl>
                                        <dt><strong>2023 서울대학교  인문계열 합격</strong> <br>   최상위권 남학생 의대전문관 김동욱</dt>
                                        <dd><img style="width: calc(150vw / 5.9);" src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont03_stu_kdw.png" alt="김동욱" /></dd>
                                    </dl>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>
                <% end if %>
            </div>
            <!-- 바자관 시간표 -->
            <!-- #include virtual = "/intro/2024/first/baja_time_table.asp" -->
            <!-- //바자관 시간표 -->
        </div>
    </div>
</div>
<!-- //cont03 -->


<!--cont04-->
<div class="cont04 <%=campusName%>">
    <% If campus_code = "CD0257" Then '중계 %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont04_tit.jpg" alt="메가스터디 온오프 수능 전문 강사진의 수준별 맞춤 단과" /></p>
    <% Else %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont04_tit.jpg" alt="메가스터디 온오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과" /></p>
    <% End If %>

    <!-- 선생님 롤링 슬라이드 -->
    <!--#include virtual="/intro/2024/first/teacher_slide.asp" -->
    <!-- //선생님 롤링 슬라이드 -->

    <ul class="danka-list">
        <li>
            <p>과목별/수준별/진도별<br>
                <strong>전략적인 수업 선택</strong>
            </p>
        </li>
        
        <li>
            <p>내게 필요한 수업 선택으로<br>
                <strong>충분한 자습시간 확보</strong>
            </p>
        </li>
        <% If isCore Then '코어 %>
        <li>
            <p>
                몰입도 높은 LIVE 강의와<br>
                <strong>대치동 현강 콘텐츠/수업 관리</strong>
            </p>
        </li>
        <% else %>
        <li>
            <p>
                메가스터디 온&middot;오프 강사진의<br>
                <strong>몰입감 높은 현장강의</strong>
            </p>
        </li>
        <% end if %>
        <li>
            <p><strong>강의 전후 학습관리,<br>
                실전 대비 콘텐츠</strong>
            </p>
        </li>
    </ul>
    <% If campus_code = "CD0250" Then '부천 %>
    <a style="margin: 25px 4% 0;" class="btn-black" href="<%=special_url%>"><%=special_txt%></a>
    <% End If %>
    <a class="btn-black" href="<%=regular_url%>"><%=regular_txt%></a>
    <% If campus_code = "CD0247" Then '강남 %>
    <a class="btn-black" style="margin-bottom:75px" href="<%=special_url%>"><%=special_txt%></a>
    <% End If %>
</div>
<!--//cont04-->


<!--cont05-->
<div class="cont05">
    <% If campus_code = "CD0257" Then '중계 %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont05_tit.jpg" alt="입시 전문 담임선생님의 체계적인 관리" /></p>
    <% Else %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont05_tit.jpg" alt="최상위권 전문 입시 담임선생님의 체계적인 관리" /></p>
    <% End If %>

    <div class="manage-slide-wrap">
        <div class="manage-slide-navi">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    입시관리
                </div>
                <div class="swiper-slide">
                    학습관리
                </div>
                <div class="swiper-slide">
                    생활관리
                </div>
            </div>
        </div>
        <div class="swiper-container manage-slide">
            <div class="swiper-wrapper">
                <!-- 입시관리 -->
                <div class="swiper-slide">
                    <div class="trans-img">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/manage_tab01_slide01.jpg" alt="">
                    </div>
                    <% If campus_code = "CD0244" Then '분당 %>
                    <ul>
                        <li>
                            <p>1:1 개인 맞춤 상담</p>
                            <ul>
                                <li>목표 대학 설정 및 지원 전략 반영</li>
                                <li>체계적이고 전문적인 개인 맞춤 상담 진행</li>
                                <li>실제 사례를 통한 최적화된 학습 계획 수립</li>
                            </ul>
                        </li>
                        <li>
                            <p>학습·입시전략 설명회 및 특강</p>
                            <ul>
                                <li>메가스터디 전문 입시 자료집 등</li>
                                <li>최신 수험 정보와 다양한 사례 전달</li>
                                <li>학생/학부모 대상 설명회&특강 진행</li>
                            </ul>
                        </li>
                        <li>
                            <p>최적의 입시전략 제시</p>
                            <ul>
                                <li>학생별 성적 데이터를 체계적으로 관리</li>
                                <li>
                                    재원생 결과를 기반으로 개인 목표에 맞춘
                                    입시(수시/정시) 로드맵 설계
                                </li>
                            </ul>
                        </li>
                    </ul>
                    <% else %>
                    <ul>
                        <li>
                            <p>최적의 입시전략 제시</p>
                            <ul>
                                <li>수능 성적부터 모의고사까지 성적 데이터를 체계적으로 관리</li>
                                <li>재원생 결과를 기반으로 개인 목표에 맞춘 입시(수시/정시) 방향 제시</li>
                            </ul>
                        </li>
                        <li>
                            <p>개인 맞춤 1:1 상담
                            </p>
                            <ul>
                                <li>성적 포트폴리오와 실제 사례를 기반으로한 체계적, 전문적 상담
                                </li>
                                <li>목표 학교/학과에 필요한 요소와 점수 확보에 최적화된 학습 계획 수립</li>
                            </ul>
                        </li>
                        <li>
                            <p>입시 설명회 및 공개특강
                            </p>
                            <ul>
                                <% If campus_code = "CD0257" Then '중계 %>
                                <li>목표 대학 합격한 선배와의 간담회, 입시/학습 특강 진행
                                </li>
                                <% Else %>
                                <li>최상위권  대학 합격 선배와의 간담회, 입시/학습 특강 진행
                                </li>
                                <% End If %>
                                <li>최신 수험 정보와 다양한 입시 콘텐츠 제공</li>
                            </ul>
                        </li>
                    </ul>
                    <% end if %>
                    <% If campus_code = "INTRO" Then '인트로 %>
                    <div class="b-review">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont05_stu_ksi.png" alt="강세인" /></div>
                        <dl>
                            <dt>혼자 알아보기엔 너무 방대하고 막막한 <strong>입시 정보를 바자관 바로 앞 일대일 상담 공간을 통해 담임선생님께 편하게 여쭤볼 수 있어서 좋았습니다.</strong> 불편한 점은 없는지, 고민은 없는지 항상 친절하게 먼저 물어봐 주셔서 수험생활 동안 심적으로 의지할 수 있었습니다.
                            </dt>
                            <dd><strong>2023 연세대학교 생활디자인학과 합격 <br> </strong> 러셀 대치 강세인</dd>
                        </dl>
                    </div>
                    <% end if %>
                </div>
                <!-- 학습관리 -->
                <div class="swiper-slide">
                    <div class="trans-img">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/manage_tab02_slide01.jpg" alt="">
                    </div>
                    <ul>
                        <li>
                            <p>올바른 학습 루틴  형성
                            </p>
                            <ul>
                                <li>수험생 상황에 맞춰 적합한 학습방법 설계</li>
                                <li>담임선생님의 학습 플래너 점검을 통한 학습 스케줄링 능력 향상
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p>균형있는 학습 습관 형성
                            </p>
                            <ul>
                                <li>러셀 학습 콘텐츠를 활용한 학습법 제시
                                </li>
                                <li>지금까지의 학습법 점검과 개선으로 
                                    균형적인 공부 습관 형성
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p>개별 학습 상담
                            </p>
                            <ul>
                                <li>학습 상태 분석으로 과목별 학습량 조절 및 약점 보완법 제시
                                </li>
                                <li>멘탈 케어 및 학습전략과 노하우 전수</li>
                            </ul>
                        </li>
                    </ul>
                    <% If campus_code = "INTRO" Then '인트로 %>
                    <div class="b-review">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont05_stu_jyk.png" alt="정유경" /></div>
                        <dl>
                            <dt>
                                <strong>담임선생님께서 멘토 역할을 정말 잘 해 주셨습니다.</strong> <br>
                                모의고사에서 원하는 성적을 얻지 못할 때마다 포기하지 않도록 용기를 북돋아 주셨고, <strong>공부 계획을 어떻게 개선해 나가야 하는지도 구체적으로 알려주셨습니다.</strong>
                            </dt>
                            <dd><strong>2023 전남대학교 의예과 합격 <br> </strong> 러셀CORE 광주 정유경</dd>
                        </dl>
                    </div>
                    <% end if %>
                </div>
                <!-- 생활관리 -->
                <div class="swiper-slide">
                    <div class="trans-img">
                        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/manage_tab03_slide01.jpg" alt="">
                    </div>
                    <ul>
                        <li>
                            <% If campus_code = "CD0244" Then '분당 %>
                            <p>엄격한 출결 및 개인 스케줄 관리</p>
                            <% else %>
                            <p>엄격한 출결 관리</p>
                            <% end if %>
                            <ul>
                                <li>매 교시 엄격한 출결 관리 및 상시 모니터링</li>
                                <li>지각, 무단 외출, 무단 결석 등 면학분위기 저해 요소 관리</li>
                                <li>전자 출결 관리 시스템으로 등/하원 문자 발송</li>
                            </ul>
                        </li>
                        <li>
                            <p>1:1 상담을 통한 정신적 멘토링</p>
                            <ul>
                                <li>수능까지 안정적인 수험생활이
                                    가능하도록 동반자 역할 수행
                                </li>
                                <li>학습 고충 및 슬럼프를 극복할 수 있도록 
                                    지속적인 상담으로 학습동기 부여
                                </li>
                            </ul>
                        </li>
                        <li>
                            <p>강력한 태도 점수 제도 운영</p>
                            <ul>
                                <li>엄격한 기준의 태도 점수 제도 운영</li>
                                <li>핸드폰 수거, 자습시간 중 자리 이동 제한 등 불필요한 요소 차단 및 관리</li>
                            </ul>
                        </li>
                    </ul>
                    <% If campus_code = "INTRO" Then '인트로 %>
                    <div class="b-review">
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont05_stu_ajh.png" alt="안정후" /></div>
                        <dl>
                        <dt>
                            <strong>담임선생님께서 바자관 바로 앞에 상주</strong>해 있어 급한 일이나 
                            질문이 생겼을 때 언제든지 여쭤보기 편했습니다. 
                            또, 수험생활을 하며 정신적으로 힘들 때 <strong>선생님과 
                                상담을 하면서 정신을 다잡을 수 있어서 큰 슬럼프 없이 
                                수험생활을 잘 보낼 수 있었습니다.</strong>
                        </dt>
                        <dd><strong>2023 서울대학교 경제학과 합격 <br> </strong> 러셀 센텀 안정후</dd>
                        </dl>
                    </div>
                    <% end if %>
                </div>
            </div>
        </div>
    </div>
</div>
<!--//cont05-->


<!--cont06-->
<div class="cont06">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont06_tit.jpg" alt="러셀 재원생 전용 학습 콘텐츠" /></p>
    <div class="inner <%=campusName%>">
        <div class="swiper-container program-slide">
            <ul class="swiper-wrapper">
                <% If campus_code = "INTRO" or campus_code = "CD0342" or campus_code = "CD0349" Then '인트로/대구/울산' %>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents01.png" alt="러셀 실전 모의고사"></li>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents02.png" alt="러셀CORE Weekly 모의고사"></li>
                <% ElseIf isCore = 1 Then '코어 전체' %>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents02.png" alt="러셀CORE Weekly 모의고사"></li>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents01.png" alt="러셀 실전 모의고사"></li>
                <% else %>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents01.png" alt="러셀 실전 모의고사"></li>
                <% end if %>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents03.png" alt="월간 학습지(월간 장영진)"></li>
                <% If campus_code = "CD0244" Then '분당' %>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bd/2024/first/contents08.png" alt="러셀 분당 재원생 전용 주간지"></li>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/russel_bd/2024/first/contents04.png" alt="매일 영단어&영어듣기"></li>
                <% else %>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents04.png" alt="매일 영단어&영어듣기"></li>
                <% end if %>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents05.png" alt="러셀 학습 플래너"></li>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents06.png" alt="일일수학 30제"></li>
                <li class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/contents07.png" alt="러셀 총평노트"></li>
            </ul>
            <div class="swiper-pagination type01"></div>
        </div>
        <% If campus_code = "INTRO" Then '인트로 %>
        <div class="b-review">
            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/cont06_stu_cey.png" alt="최은영" /></div>
            <dl>
                <dt><strong>주기적으로 모의고사를 볼 수 있다는 점이 좋았습니다.</strong> 학원 내 성적도 나와 승부욕도 생기면서 지속적인 동기부여가 되었습니다. <strong>모의고사 이후에는 총평노트로 시간 운영과 시험 루틴을 점검</strong>할 수 있는 점과 무료 해설특강도 과목별로 개설되는 점이 실력 향상에 큰 도움이 되었습니다.
                </dt>
                <dd><strong>2023 서울대학교 인문계열 합격 </strong> <br> 러셀 목동 최은영</dd>
            </dl>
        </div>
        <p class="r-txt">* 해당 콘텐츠는 러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠이며, <br> 학원별로 제공되는 콘텐츠는 상이할 수 있습니다.
        </p>
        <% Else %>
        <p class="r-txt">* 해당 콘텐츠는 러셀 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.
        </p>
        <% end if %>
    </div>
</div>
<!--//cont06-->

<% If campus_code = "CD0257" OR campus_code = "CD0248" Then '중계/평촌 %>
<p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/bottom_bar.jpg" alt="재도전을 결심했다면 지금이 바로 도약의 기회! 러셀 재수생 우선선발반에서 목표 대학 합격 성공을
쟁취할 수 있습니다." /></p>
<% Else %>
<p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first/bottom_bar.jpg" alt="재도전을 결심했다면 지금이 바로 도약의 기회! 러셀 재수생 우선선발반에서 최상위권 대입성공을 쟁취할 수 있습니다." /></p>
<% End If %>

