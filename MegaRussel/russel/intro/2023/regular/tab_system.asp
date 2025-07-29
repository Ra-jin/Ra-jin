
<div class="cont js-cont">
    <!-- nav -->
    <div class="nav-wrap">
        <a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/side01_off.png" alt="바른공부 자습전용관" /></a>
        <a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/side02_off.png" alt="최상위권 수준별 맞춤 단과" /></a>
        <a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/side03_off.png" alt="입시 담임선생님의 철저한 1:1 관리" /></a>
        <a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/side04_off.png" alt="승강반/장학 제도" /></a>
        <a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/side05_off.png" alt="프리미엄 실전 콘텐츠" /></a>
    </div>
    <!-- //nav -->
    <!-- cont03 -->
    <div class="cont03">
        <div class="inner03">
            <% If sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0346" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" Then '코어대전/코어원주/코어전주/코어청주/코어광주/코어창원 %>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont03_tit.png" alt="러셀CORE에는 최상위권 N수 성공을 위한 수능에 최적화된 시스템이 있습니다." /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont03_tit.png" alt="러셀에는 최상위권 N수 성공을 위한 수능에 최적화된 시스템이 있습니다." /></p>
            <% end if %>
            <div class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont03_img.png" alt="" /></div>
            <div class="tab-box js-menu-con">
                <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont03_stit.png" alt="" /></p>
                <!-- 바자관 탭 슬라이드 -->
                <div class="baja-slide-wrap">
                    <div class="baja-slide-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont03_tab01.png" alt="집단적인 면학분위기" />
                            </div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont03_tab02.png" alt="학습 동선 최소화" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont03_tab03.png" alt="바자관 표준 시간표" /></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont03_tab04.png" alt="개방형 구조" /></div>
                        </div>
                    </div>
                    <div class="swiper-container baja-slide">
                        <div class="swiper-wrapper">
                            <!-- Tab01 면학분위기 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0249" OR sCampusCode = "CD0244" OR sCampusCode = "CD0246" OR sCampusCode = "CD0250" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" OR sCampusCode = "CD0342" Then '영통/분당/센텀/부천/중계/평촌/코어광주/코어창원/대구 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/tab01_img.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/tab01_img.jpg" alt="" /></div>
                                <% end if %>
                            </div>
                            <!-- Tab02 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "CD0001" OR sCampusCode = "CD0246" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0346" OR sCampusCode = "CD0245" OR sCampusCode = "CD0342" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0247" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" Then '대치/센텀/코어대전/코어원주/코어전주/코어청주/목동/대구/부천/분당/강남/중계/평촌/코어광주/코어창원  %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/tab02_img.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/tab02_img.jpg" alt="" /></div>
                                <% end if %>
                            </div>
                            <!-- Tab03 바자관 표준 시간표 -->
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <div class="schedule-box bd swiper-slide">
                                <div class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/tab03_img.jpg" alt="" /></div>
                                <!-- schedule -->
                                    <!--#include virtual="/intro/2023/regular/schedule.asp" -->
                                <!-- //schedule -->
                                <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/tab03_img02.jpg" alt="" /></div>
                            </div>
                            <% Else %>
                            <div class="schedule-box swiper-slide">
                                <div class="mb30"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/tab03_img.jpg" alt="" /></div>
                                <!-- schedule -->
                                    <!--#include virtual="/intro/2023/regular/schedule.asp" -->
                                <!-- //schedule -->
                            </div>
                            <% end if %>
                            <!-- Tab04 개방형 구조 -->
                            <div class="swiper-slide">
                                <% If sCampusCode = "INTRO" Then '인트로 %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/tab04_img.jpg" alt="" /></div>

                                <% ElseIf sCampusCode = "CD0245" OR  sCampusCode = "CD0249" OR sCampusCode = "CD0246" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0248" OR sCampusCode = "CD0245" OR sCampusCode = "CD0345" Then '목동/영통/센텀/코어원주/코어전주/코어청주/대구/강남/부천/분당/평촌/코어창원 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/tab04_img.jpg" alt="" /></div>

                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/tab04_img02.jpg" alt="" /></div>
                                <% end if %>
                            </div>
                        </div>
                    </div>
                </div>
                <% If sCampusCode = "CD0245" Then '목동 %>
                <div class="st-review">
                    <div>
                        <dl>
                            <dt>
                                <strong>연세대학교 경제학부</strong><br>
                                러셀 목동 김태완
                            </dt>
                            <dd>재원 기간 : 2021년 2월~수능까지</dd>
                        </dl>
                        <p>
                            <span>2021학년도 249.5점 →</span><br>
                            <strong>2022학년도 284.5점</strong>
                        </p>
                        <div style="right:0"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/st_ktw.png" alt="" /></div>
                    </div>
                    <p>
                        “공부하다가 집중이 되지 않을 때 <strong>주위를 둘러보면 항상 열심히 공부하는 최상위권 친구들을 볼 수 있어서 마음을 다잡고 공부에 전념</strong>할 수 있었습니다. 또한 외부 상황과 관계 없이 <strong>학습에만 집중할 수 있는 확실한 학습 공간이 러셀 바른공부 자습전용관</strong>이었습니다. 덕분에 외부와 차단된 환경에서 공부 흐름이 끊기지 않고 공부에만 집중할 수 있었습니다.”
                    </p>
                </div>
                <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                <div class="st-review bc">
                    <div>
                        <dl>
                            <dt>
                                <strong>성균관대 글로벌경영학과</strong><br>
                                러셀 부천 이예린
                            </dt>
                            <dd>재원 기간 : 2021년 3월~수능까지</dd>
                        </dl>
                        <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_lyr.png" alt="" /></div>
                    </div>
                    <p>
                        “<strong>가장 좋았던 점으로는 수능과 같은 시간표대로 움직인다</strong>는 것이었습니다.
                        저는 평소 잠이 많아 이른 시간에 일어나는 것조차 힘들었는데 8시 등원을
                        위해 일찍 자고 일찍 일어나는 수면 습관을 유지할 수 있었습니다.
                        또한 좋아하는 과목을 먼저 하고 하기 싫은 과목을 뒤로 미루며 공부를 하던
                        습관을 버리고 시험 <strong>시간표에 맞춰 그 시간대에 그 과목을 공부하며 과목 간의 균형과 리듬을 맞출 수 있어 좋았습니다.</strong>”
                    </p>
                </div>
                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                <div class="st-review">
                    <div>
                        <dl>
                            <dt>
                                <strong>고려대학교 사학과</strong><br>
                                러셀 평촌 안현진
                            </dt>
                            <dd>재원 기간 : 2021년 3월~수능까지</dd>
                        </dl>
                        <p>
                            <span>2021학년도 249점 →</span><br>
                            <strong>2022학년도 273.5점</strong>
                        </p>
                        <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/st_ahj.png" alt="" /></div>
                    </div>
                    <p>
                        “저는 러셀 바른공부 자습전용관의 <strong>개방형 구조가 가장 마음에 들었습니다. 주변 학생들이 열심히 공부하는 모습</strong>을 보면 경쟁심이 생겨 저절로 집중이 됐던 것 같습니다. 또한 <strong>표준시간표를 설정하고 이에 따라 철저하게 관리를 해주는 덕분에 규칙적인 생활 습관이 형성</strong>되어 아침에도 졸지 않고 공부를 할 수 있었고, 여러 과목을 밸런스 있게 공부할 수 있게 되었습니다.”
                    </p>
                </div>
                <% ElseIf sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0246" or sCampusCode = "CD0342" or isCore = 1 Then '인트로/강남/대치/영통/중계/센텀/대구/코어 %>
                <div class="st-review list-2023">
                    <div>
                        <dl>
                            <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="" /></dt>
                            <dd>
                                <strong>2023 서울대학교<br>컴퓨터공학부 합격</strong>
                                <% If sCampusCode = "INTRO" Then '인트로 %>
                                <p>
                                    러셀 분당 김세현
                                </p>
                                <% Else %>
                                <p>
                                    러셀 김세현
                                </p>
                                <% end if %>
                            </dd>
                        </dl>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_ksh.png" alt="" /></div>
                    </div>
                    <p>
                        “<strong>바자관은 넓어서 공부하기에 답답한 느낌이 들지 않았고, 책상도 책과 필기구를<br>
                        여럿 올려놓기에도 충분히 넓어서 좋았습니다.</strong> 책장이 바로 옆에 있어 책을 꺼내고 넣기에<br>
                        편리했습니다. 잠이 올 때 서서 공부할 수 있는 스탠딩 책상이 있는 것도 좋았습니다.<br>
                        <strong>시간표가 수능 시간표와 비슷하게 짜여 있어서 오랜 시간 집중을 요구하는 수능 리듬을<br>
                        유지</strong>하기에 좋았습니다.”
                    </p>
                </div>
                <% Else %>
                <div class="st-review">
                    <div>
                        <dl>
                            <dt>
                                <strong>부산대학교 의예과</strong><br>
                                러셀 이상민
                            </dt>
                            <dd>재원 기간 : 2021년 2월~수능까지</dd>
                        </dl>
                        <p>
                            <span>2021학년도 276점 →</span><br>
                            <strong>2022학년도 292점</strong>
                        </p>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_lsm.png" alt="" /></div>
                    </div>
                    <p>
                        “<strong>바자관이 개방형으로 되어 있어서 주변 학생들이 공부하는 모습</strong>을 볼 수 있었습니다. 혼자 공부할 때와는 다르게 <strong>자극을 많이 받을 수 있었고, 제가 다른 학우들에게 자극을 줄 수도 있다는 생각</strong>이 들어 더 열심히 했던 것 같습니다. 시설도 잘 갖춰져 있어 <strong>2월부터 11월까지 장기간 동안 편안한 환경에서 공부</strong>를 잘 할 수 있었고, 휴대폰 압수와 학원 전용 와이파이를 사용하여 <strong>외부와 차단된 환경에서 더욱 집중</strong>할 수 있었습니다.”
                    </p>
                </div>
                <% End If %>
            </div>
        </div>
    </div>
    <!--// cont03 -->
    <!-- cont04 -->
    <div class="cont04 js-menu-con">
        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_tit.png" alt="" /></p>
        <p class="mt50"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_img.jpg" alt="" /></p>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2023/regular/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->

	    <% If sCampusCode = "CD0342" Then '대구 %>
        <div class="inner04">
            <div class="schedule-box">
                <img src="<%=Application("img_path_russel")%>/russel_dg/2023/regular/cont04_img.jpg" alt=""/>
                <a href="<%=amUrl%>" class="link-btn02" target="_blank">AM단과 시간표 바로가기</a>
                <a href="<%=quickUrl%>" class="link-btn03" target="_blank">정규&middot;특강 단과 시간표 바로가기</a>
            </div>
        </div>
	    <% Else %>
        <div class="inner02">
            <ul class="subject-list">
                <% If sCampusCode <> "CD0340" and sCampusCode <> "CD0341" and sCampusCode <> "CD0343" and sCampusCode <> "CD0344" and sCampusCode <> "CD0345" and sCampusCode <> "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 제외 %>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_stit.jpg" alt="오직 N수생을 위한 평일 오전/오후 단과 AM단과" /></p>
                    <ul>
                        <% If sCampusCode = "CD0246" Then '센텀 %>
                        <li>월-토 오전/오후 체계적인 과목 편성</li>
                        <% Else %>
                        <li>평일 오전/오후 체계적인 과목 편성</li>
                        <% End If %>
                        <li>관리력이 강력한 선생님의  N수생 전용 단과</li>
                        <li>나에게 필요한 과목/진도를 선택 수강하여<br>취약점 집중 보완</li>
                    </ul>
                    <% If sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0245" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0246" Then '인트로/강남/대치/목동/부천/분당/영통/중계/평촌/센텀일 경우 %>
                    <a href="<%=amUrl%>">
                    <% Else %>
                    <a href="javascript:void(0);" onclick="alert('추후 오픈 예정입니다.')">
                    <% End If %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_link.png" alt="바로가기" />
                    </a>
                </li>
                <% End If %>
                <% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
                <li class="list-only">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_stit02_3.jpg" alt="기초부터 실전까지 빈틈없는 커리큘럼으로 수능 실력 향상 정규 단과" /></p>
                        <a href="<%=quickUrl%>">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_link.png" alt="바로가기" />
                        </a>
                    </div>
                    <ul>
                        <li>메가스터디 온,오프 No.1 강사진의 생생한 현장 Live 강의</li>
                        <li>평일 저녁&주말 과목별/수준별/진도별<br>맞춤 강좌 개설 및 내게 필요한 수업 선택</li>
                        <li>강의 전후 학습관리 진행으로<br>1:1 맞춤 완전학습</li>
                    </ul>
                </li>
                <% Else %>
                <li>
                    <% If sCampusCode = "CD0244" Then '분당 %>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_stit02_bd.jpg" alt="기초부터 실전까지 빈틈없는 커리큘럼으로 수능 실력 향상 정규특강 단과" /></p>
                    <% Else %>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_stit02.jpg" alt="기초부터 실전까지 빈틈없는 커리큘럼으로 수능 실력 향상 정규 단과" /></p>
                    <% end if %>
                    <ul>
                        <li>메가스터디 온&middot;오프 No.1 강사진의<br>생생한 현장 강의</li>
                        <li>평일 저녁&주말 과목별/수준별/진도별<br>맞춤 강좌 개설 및 내게 필요한 수업 선택</li>
                        <li>강의 전후 학습관리 진행으로<br>1:1 맞춤 완전학습</li>
                    </ul>
                    <a href="<%=quickUrl%>">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_link.png" alt="바로가기" />
                    </a>
                </li>
                <% end if %>
                <% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" Then '인트로/강남 %>
                <li>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_stit03.jpg" alt="취약 파트 집중 보완을 위한 고효율 단기 특강" /></p>
                    <ul>
                        <li>필요한 단원을 집중 학습하는 스마트한<br>강좌 수강</li>
                        <li>부족한 학습시간 보완 및 학습 효과 극대화</li>
                        <li>공휴일, 연휴 기간 특강 개설을 통한<br>학습 공백 최소화</li>
                    </ul>
                    <a href="<%=quickUrl2%>">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont04_link.png" alt="바로가기" />
                    </a>
                </li>
                <% end if %>
            </ul>
        </div>
	    <% end if %>
    </div>
    <!--// cont04 -->
    <!-- cont05 -->
    <div class="cont05 js-menu-con">
        <div class="inner02">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_tit.png" alt="최상위권 역임 입시 담임선생님의 철저한 1:1 관리" /></p>
            <!-- 입시관리 슬라이드 탭 -->
            <div class="manage-slide-wrap">
                <div class="manage-slide-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_tab01.png" alt="입시관리" />
                        </div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_tab02.png" alt="학습관리" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_tab03.png" alt="생활관리" /></div>
                    </div>
                </div>
                <% If sCampusCode = "CD0244" Then '분당 %>
                <div class="swiper-container manage-slide bd">
                <% Else %>
                <div class="swiper-container manage-slide">
                <% end if %>
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide">
                            <ul class="txt-box">
                                <li>
                                    <p>입시 전략 제시</p>
                                    <ul>
                                        <li>입학 전 성적부터 학생들의 성적 데이터를 체계적으로 누적 관리</li>
                                        <% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
                                        <li>누적된 러셀CORE 재원생 학습 및 입시결과 데이터 기반으로 개인 목표에 맞춘 입시(수시/정시) 방향 제시
                                        </li>
                                        <% Else %>
                                        <li>누적된 러셀 재원생 학습 및 입시결과 데이터 기반으로 개인 목표에 맞춘 입시(수시/정시) 방향 제시
                                        </li>
                                        <% end if %>
                                    </ul>
                                </li>
                                <li>
                                    <p>1:1 입시상담</p>
                                    <ul>
                                        <li>개별 성적 포트폴리오 기반의 체계적, 전문적 개인 맞춤 상담 진행</li>
                                        <li>목표하는 학교/학과에 필요한 요소 및 점수, 유사한 여러 사례들을 통해<br>구체적이고 최적화된 학습계획 수립
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <p>입시 특강 및 간담회 진행
                                    </p>
                                    <ul>
                                        <li>최상위권 합격선배와의 간담회, 입시/학습전략 특강 등 진행</li>
                                        <li>다양하고 풍부한 최신 입시 콘텐츠 제공
                                        </li>
                                    </ul>
                                </li>
                            </ul>
                            <div>
                                <% If sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR sCampusCode = "CD0249" OR sCampusCode = "CD0246" OR sCampusCode = "CD0341" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" OR sCampusCode = "CD0342" Then '대치/목동/영통/센텀/코어대전/강남/부천/중계/평촌/코어광주/코어창원/대구 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont05_img01.jpg" alt="" /></div>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont05_img02.jpg" alt="" /></div>

                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_img01.jpg" alt="" /></div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_img02.jpg" alt="" /></div>
                                <% end if %>
                            </div>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <div class="st-review">
                                <div>
                                    <dl>
                                        <dt>
                                            <strong>연세대학교 융합과학공학부(ISE)</strong><br>
                                            러셀 분당 박OO
                                        </dt>
                                        <dd>재원 기간 : 2022년 2월~수능까지</dd>
                                    </dl>
                                    <p>
                                        <span>2022학년도 244점 →</span><br>
                                        <strong>2023학년도 262점</strong>
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/st_img.png" alt="" /></div>
                                </div>
                                <p>

                                    “담임선생님께서 1년 동안 저의 <strong>수험생활 조언가 역할을 해주셔서 항상 누군가의 든든한 지원을 받는다는 생각</strong>이 들었습니다. 특히 <strong>수시 지원할 때에도 저의 생기부를 꼼꼼히 분석해주고 저에게 맞는 학교와 과를 추천</strong>해주셔서 많은 도움을 받았습니다. 그리고 바자관 바로 옆에 계셔서 평소에도 언제든 담임선생님과 상담을 할 수 있어서 정말 좋았습니다.”
                                </p>
                            </div>
                            <% end if %>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide">
                            <ul class="txt-box">
                                <% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주/대구 %>
                                <li>
                                    <p>모의고사<br>
                                        ALL CARE 시스템
                                    </p>
                                    <ul>
                                        <li>담임선생님을 통한 학습전략 수립, 학습관리와 학습전략 수정<br>
                                            - <span class="black">Curri-navi</span> : 학생 개인에게 최적화된 강좌/커리큘럼을 설계하고 시기별로 달성도 파악 및 피드백 진행<br>
                                            - <span class="black">Curri-combi</span> : 성적 향상에 도움이 될 수 있는 자사·타사 인강/현강 추천 관리<br>
                                            - <span class="black">Curri-test</span> : Daily Test, Weekly Test, Monthly Test를 통한 개념 숙지 test 진행
                                        </li>
                                    </ul>
                                </li>
                                <% end if %>
                                <li>
                                    <p>올바른<br>
                                        학습습관 형성
                                    </p>
                                    <ul>
                                        <% If sCampusCode = "CD0250" Then '부천 %>
                                        <li>국,수,영 주간지/영단어&amp;영어듣기 : 정해진 요일에 국,수,영 주간지 문제풀이 및 영어단어 암기,<br>영어듣기 연습으로 실력 향상할 수 있는 습관</li>
                                        <% end if %>
                                        <li>러셀 플래너 : 매일 학습 스케줄 관리로 학습 루틴 및 습관 점검</li>
                                        <li>일일수학30제 : 매일 수학 문제풀이 훈련으로 올바른 문제풀이 습관 형성
                                        </li>
                                        <li>총평노트 : 모의고사 시행 전후 셀프 피드백 누적 DB 바탕의 실전 수능 대비</li>
                                    </ul>
                                </li>
                                <li>
                                    <p>1:1 학습상담</p>
                                    <ul>
                                        <li>1:1 학습 상담을 통해 개인별 학습 계획 및 전 과목 상태와 성취도 점검</li>
                                        <li>학습에서의 부족한 점을 어떻게 개선해 나가야 할지 구체적으로 조언 및 해결책 마련
                                        </li>
                                        <li>매일 균형있는 학습 습관 루틴을 점검하여 보다 효율적인 자습 시간 관리</li>
                                        <li>개별 학습 고민 상담을 통한 멘탈 케어 및 구체적인 학습 전략과 노하우 전수</li>
                                    </ul>
                                </li>
                            </ul>
                            <div>
                                <% If sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0246" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" OR sCampusCode = "CD0340" Then '대치/영통/센텀/강남/부천/분당/중계/평촌/코어광주 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont05_img03.jpg" alt="" /></div>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont05_img04.jpg" alt="" /></div>

                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_img03.jpg" alt="" /></div>

                                <% If sCampusCode = "CD0341" Then '코어대전 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont05_img04.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_img04.jpg" alt="" /></div>
                                <% end if %>
                                <% end if %>
                            </div>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <div class="st-review">
                                <div>
                                    <dl>
                                        <dt>
                                            <strong>연세대학교 전기전자공학부</strong><br>
                                            러셀 분당 유OO
                                        </dt>
                                        <dd>재원 기간 : 2022년 3월~수능까지</dd>
                                    </dl>
                                    <p>
                                        <span>2022학년도 238.5점 →</span><br>
                                        <strong>2023학년도 289.5점</strong>
                                    </p>
                                    <div style="right:0"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/st_img02.png" alt="" /></div>
                                </div>
                                <p>
                                    “담임선생님께서 <strong>단순히 모의고사를 풀고 끝내는 것이 아니라 남들과 다른 나만의 특이한 취약점을 알려주셨기 때문에 이를 인식하는 것만으로도 공부 전략을 어느 정도 조정</strong>할 수 있었습니다.
                                    또한 <strong>공부 관련해서 크고 작은 고민들을 함께 논의</strong>하였고, 대학을 지원할 때도 기존의 많은 학생들의 합불 결과와 같은 데이터를 토대로 하여 가장 안전하고도 원하는 대학을 갈 수 있는 지원 전략을 짤 수 있었습니다.”
                                </p>
                            </div>
                            <% end if %>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide">
                            <ul class="txt-box">
                                <% If sCampusCode = "CD0250" Then '부천 %>
                                <li>
                                    <p>출결 관리 및 교육 점수
                                    </p>
                                    <ul>
                                        <li>실제 수능 시간표에 맞춘 바자관 표준시간표 운영 및 생활관리</li>
                                        <li>매교시 2회 이상 철저한 출결 관리 및 바자관 상시 모니터링
                                        </li>
                                        <li>지각, 무단 외출, 무단 결석, 핸드폰 등 면학분위기 저해 요소 엄격 관리 및 태도 점수 운영</li>
                                    </ul>
                                </li>
                                <% Else %>
                                <li>
                                    <p>출결 관리 및 태도 점수
                                    </p>
                                    <ul>
                                        <li>실제 수능 시간표에 맞춘 바자관 표준시간표 운영 및 생활관리</li>
                                        <li>1일 8회 이상 매교시 철저한 출결 관리 및 바자관 상시 모니터링
                                        </li>
                                        <li>지각, 무단 외출, 무단 결석, 핸드폰 등 면학분위기 저해 요소 엄격 관리 및 태도 점수 운영</li>
                                    </ul>
                                </li>
                                <% end if %>
                                <li>
                                    <p>정신적 멘토링</p>
                                    <ul>
                                        <li>학생중심 사고를 기반하여 학생에 대한 존중, 배려 등으로 동반자 역할</li>
                                        <li>바자관 내 또는 가장 가까운 곳에 담임선생님 상주
                                        </li>
                                        <li>학습 고충 및 슬럼프를 긍정적으로 극복할 수 있도록 1:1 정신적 멘토링 진행</li>
                                        <li>1:1 상담을 통해 목표 상기 등 지속적인 학습동기 부여</li>
                                    </ul>
                                </li>
                            </ul>
                            <div>
                                <% If sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR sCampusCode = "CD0249" OR sCampusCode = "CD0246" OR sCampusCode = "CD0341" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0257" OR sCampusCode = "CD0340" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" Then '대치/목동/영통/센텀/코어대전/강남/부천/분당/중계/코어광주/평촌/대구 %>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont05_img05.jpg" alt="" /></div>
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont05_img06.jpg" alt="" /></div>
                                <% Else %>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_img05.jpg" alt="" /></div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont05_img06.jpg" alt="" /></div>
                                <% end if %>
                            </div>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <div class="st-review">
                                <div>
                                    <dl>
                                        <dt>
                                            <strong>중앙대학교 의학부 </strong><br>
                                            러셀 분당 김OO
                                        </dt>
                                        <dd>재원 기간 : 2022년 3월~수능까지</dd>
                                    </dl>
                                    <p>
                                        <span>2022학년도 286점 →</span><br>
                                        <strong>2023학년도 296점</strong>
                                    </p>
                                    <div style="right:0"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/st_img03.png" alt="" /></div>
                                </div>
                                <p>
                                    “담임선생님께서 <strong>힘든 수험생활의 동반자로서 학습의 방향성을 정해주셨고,</strong> 어느 때든 <strong>상담을 하며 심리적 안정을 취할 수 있어 좋았습니다.</strong> 또한 담임선생님이 바자관 바로 앞에 계셔서, 쉬는 시간 및 식사 시간 언제든 상담을 신청할 수 있어 수험생활을 불안하지 않고 안정감 있게 이어나갈 수 있었습니다.”
                                </p>
                            </div>
                            <% end if %>
                        </div>
                    </div>
                </div>
            </div>
            <% If sCampusCode = "CD0245" Then '목동 %>
            <div class="st-review">
                <div>
                    <dl>
                        <dt>
                            <strong>순천향대학교 의예과</strong><br>
                            러셀 목동 정혜윤
                        </dt>
                        <dd>재원 기간 : 2021년 1월~수능까지</dd>
                    </dl>
                    <p>
                        <span>2021학년도 283.5점 →</span><br>
                        <strong>2022학년도 295.5점</strong>
                    </p>
                    <div style="right:0"><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/st_jhy.png" alt="" /></div>
                </div>
                <p>
                    “담임 선생님의 입시 관리와 학습 관리도 좋았지만 <strong>멘탈이 많이 약했던 저에게는 담임 선생님과 주기적으로 진행한 상담이 길고 힘든 수험 생활의 버팀목이 되었던 거 같습니다.</strong> 제가 힘들어할 때마다 담임선생님의 따뜻한 격려와 따끔한 한마디가 도움이 되었습니다.”
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="st-review bc">
                <div>
                    <dl>
                        <dt>
                            <strong>인제대학교 약학과</strong><br>
                            러셀 부천 이다영
                        </dt>
                        <dd>재원 기간 : 2021년 3월~수능까지</dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_ldy.png" alt="" /></div>
                </div>
                <p>
                    “수험생활을 하다 보면 지치고 힘들 때가 많은데, 그럴 때 찾아가서 <strong>상담을 하면 항상 따뜻하게 격려해 주셔서 멘탈 관리에 큰 도움</strong>이 되었습니다. 또한 <strong>수능 이후 원서 지원과 그 이후에도 학생들을 위해 최선을 다해 도움</strong>을 주고자 하시는 모습에 항상 감사함을 느꼈습니다. 담임선생님들께서 편하게 다가갈 수 있게 해주셨기 때문에 가능했던 일이라고 생각합니다. 수능 전 날 마지막 하원시에도 격려해 주시며 배웅을 해주시는 모습에 큰 감동을 느꼈습니다.”
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="st-review">
                <div>
                    <dl>
                        <dt>
                            <strong>고려대학교 산업경영공학부</strong><br>
                            러셀 평촌 김태영
                        </dt>
                        <dd>재원 기간 : 2021년 1월~수능까지</dd>
                    </dl>
                    <p>
                        <span>2021학년도 261.5점 →</span><br>
                        <strong>2022학년도 278.5점</strong>
                    </p>
                    <div style="right:0"><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/st_kty.png" alt="" /></div>
                </div>
                <p>
                    “언매 VS 화작 등 <strong>학습적인 고민에서부터 수험 생활 멘탈 관리 등 정서적인 고민까지</strong> 선생님과 이야기하며 많이 의지하고 도움받을 수 있었어요. 그리고 수시를 넣으면서 <strong>자소서 첨삭과 면접 준비까지 폭넓게 신경 써주셨고,</strong> 정시 원서를 정할 때도 제 상황과 점수대에 맞는 대학을 소위 말하는 <strong>스나이핑으로 정확하고 현명하게 추천</strong>해 주셔서 수시와 정시 모두 좋은 결과를 낼 수 있었어요.”
                </p>
            </div>
            <% ElseIf sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0246" or sCampusCode = "CD0342" or isCore = 1 Then '인트로/강남/대치/영통/중계/센텀/대구/코어 %>
            <div class="st-review list-2023">
                <div style="padding: 38px 50px;">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/regular/logo_korea.png" alt="" /></dt>
                        <dd>
                            <strong>2023 고려대학교(안암)<br>가정교육학과 합격</strong>
                            <% If sCampusCode = "INTRO" Then '인트로 %>
                            <p>
                                러셀 강남 김다인
                            </p>
                            <% Else %>
                            <p>
                                러셀 김다인
                            </p>
                            <% end if %>
                        </dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_kdi.png" alt="" /></div>
                </div>
                <p>
                    “<strong>저에겐 여러 질문을 드릴 수 있는 담임선생님이 계신 것이 아주 안심이었습니다.</strong><br> 
                    어떤 단과를 들어야 하는지, 어떤 과목에 힘을 더 쏟아야 하는지, 수시 원서를 어떻게 쓰고<br>
                    어떤 방향으로 공부를 해야 하는지 등 <strong>수험생활 중 쉽게 결정할 수 없던 여러 문제들을<br>
                    함께 진지하게 고민해 주시고 조언</strong>해 주셔서 심적인 스트레스가 덜했습니다. 진심으로 응원하며
                    챙겨 주시는 모습을 보고 <strong>함께 좋은 결과를 향해 달린다는 생각이 들었습니다.</strong>”
                </p>
            </div>
            <% Else %>
            <div class="st-review">
                <div>
                    <dl>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <dt>
                            <strong>고려대학교 보건정책관리학부</strong><br>
                            러셀 중계 이신성
                        </dt>
                        <% Else %>
                        <dt>
                            <strong>고려대학교 보건정책관리학부</strong><br>
                            러셀 이신성
                        </dt>
                        <% end if %>
                        <dd>재원 기간 : 2021년 2월~수능까지</dd>
                    </dl>
                    <p>
                        <span>2021학년도 210.5점 →</span><br>
                        <strong>2022학년도 284.5점</strong>
                    </p>
                    <div style="right:0"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_lss.png" alt="" /></div>
                </div>
                <p>
                    “밀착 관리, 입시상담 모두 좋았지만 가장 좋았던 것은 <strong>고등학교 담임 선생님과의 관계와<br>비슷한 학생과의 가까운 관계</strong>였습니다. 저에게 가끔 가벼운 장난도 치시고 농담도 하셨는데<br>그런 농담과 장난이 저의 피곤하기만 하던 마음에게 잠시나마 쉴 수 있는 틈을 주었고<br>그런 쉴 수 있는 틈이 <strong>재수생활을 잘 버텨내는 데에 도움이 되었습니다.</strong>”
                </p>
            </div>
            <% end if %>
        </div>
    </div>
    <!--// cont05 -->
    <!-- cont06 -->
    <div class="cont06 js-menu-con">
        <div class="inner02">
            <% If sCampusCode = "CD0341" OR sCampusCode = "CD0340" Then '코어대전/코어광주 %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont06_tit_2.png" alt="학습 의욕을 높여주는 승반,강반 제도" /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont06_tit.png" alt="학습 의욕을 높여주는 승반,강반/장학 제도" /></p>
            <% end if %>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont06_img.png" alt="" /></div>
            <% ElseIf sCampusCode = "CD0245" OR  sCampusCode = "CD0249" OR sCampusCode = "CD0246" OR sCampusCode = "CD0341" OR sCampusCode = "CD0344" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" OR sCampusCode = "CD0340" Then '목동/영통/센텀/코어대전/코어전주/강남/부천/분당/중계/평촌/코어광주 %>
            <div class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont06_img.png" alt="" /></div>
            <% Else %>
            <div class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont06_img_02.png" alt="" /></div>
            <% end if %>
            <p class="tit">재원 중 <strong>승반을 통해 비약적인 성적 상승</strong>과<br><strong>최상위권 대학 진학 목표 달성</strong></p>

            <% If sCampusCode = "CD0245" Then '목동 %>
            <div class="rise-list md">
                <div>
                    <div class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/st_jwk.jpg" alt="" /></div>
                            <dl>
                                <dt>서울대학교 전기정보공학부</dt>
                                <dd>러셀 목동 정원기</dd>
                            </dl>
                            <p>재원 기간:2021년 3월~수능까지</p>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/cont06_graph01.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2022학년도 296.5점</strong><br>
                                    <span>2021학년도 274점</span>
                                </p>
                                <div><strong>86.5%</strong>상승</div>
                            </div>
                        </div>
                    </div>
                    <p>
                        “승강반 제도는 처지기 쉬운 재수 초반에도 <strong>러셀의 장학 혜택 상승, 유지를</strong> 목표로 밀도 있는 공부를 할 수 있도록 해주었습니다. 낮은 반으로 떨어지지 않고 <strong>최상위권 반으로 승반하기 위한 학구열과 학습 긴장감을 가질 수 있게</strong> 해주어 더욱 집중하여 공부할 수 있었습니다.”
                    </p>
                </div>
                <ul>
                    <li class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/st_kym02.jpg" alt="" /></div>
                            <dl>
                                <dt>고려대학교 일어일문학과</dt>
                                <dd>러셀 목동 김유민</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/cont06_graph02.png" alt="" /></div>
                            <div class="arrow04"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow06.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2022학년도 287점</strong><br>
                                    <span>2021학년도 261.5점</span>
                                </p>
                                <div><strong>66.2%</strong>상승</div>
                            </div>
                        </div>
                    </li>
                    <li class="graph mt20">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/st_kkk.jpg" alt="" /></div>
                            <dl>
                                <dt>고려대학교 보건환경융합과학부</dt>
                                <dd>러셀 목동 김가경</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/regular/cont06_graph03.png" alt="" /></div>
                            <div class="arrow04"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow06.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2022학년도 284점</strong><br>
                                    <span>2021학년도 254.5점</span>
                                </p>
                                <div><strong>64.8%</strong>상승</div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <p class="r-txt mt20">※ 러셀 목동 바른공부 자습전용관 2022학년도  N수 정규반 재원생 중 2021/2022 수능 성적(국수탐(2)) 확인이 가능한  재원생의 성적 비교
            </p>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="rise-list bc">
                <ul>
                    <li class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_kom.png" alt="" /></div>
                            <dl>
                                <dt>고려대학교 컴퓨터학과
                                </dt>
                                <dd>러셀 부천 김O민</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont06_graph01.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p class="box-b">2021학년도<br>349점</p>
                                <p class="box-a">2022학년도<br>361점</p>
                            </div>
                        </div>
                    </li>
                    <li class="graph mt20">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_img.png" alt="" /></div>
                            <dl>
                                <dt>연세대학교 철학과
                                </dt>
                                <dd>러셀 부천 박OO</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont06_graph03.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p class="box-b">2021학년도<br>360점</p>
                                <p class="box-a">2022학년도<br>377점</p>
                            </div>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_koo.png" alt="" /></div>
                            <dl>
                                <dt>고려대학교 환경생태공학부
                                </dt>
                                <dd>러셀 부천 김OO</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont06_graph02.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p class="box-b">2021학년도<br>343점</p>
                                <p class="box-a">2022학년도<br>359점</p>
                            </div>
                        </div>
                    </li>
                    <li class="graph mt20">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_k0002.png" alt="" /></div>
                            <dl>
                                <dt>연세대학교 행정학과
                                </dt>
                                <dd>러셀 부천 김OO</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont06_graph03.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p class="box-b">2021학년도<br>324점</p>
                                <p class="box-a">2022학년도<br>359점</p>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <p class="r-txt mt20 black">※ 러셀 부천 바른공부 자습전용관 2022학년도 N수 정규반 재원생 중 2021/2022 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교
            </p>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="rise-list bd">
                <div>
                    <div class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/st_img04.png" alt="" /></div>
                            <dl>
                                <dt>고려대학교 자유전공학부(자연)</dt>
                                <dd>러셀 분당 류OO</dd>
                            </dl>
                            <p>재원 기간:2022년 3월~수능까지</p>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/cont06_graph01.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/ico_arrow.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2023학년도 288.5점</strong><br>
                                    <span>2022학년도 264점</span>
                                </p>
                                <div><strong>68.1%</strong>상승</div>
                            </div>
                        </div>
                    </div>
                    <p>
                        “<strong>승강반 제도는 메대프 모의고사, 평가원 모의고사를 기반으로 진행되었기 때문에, 단기간의 목표를 설정하기에 좋았습니다.</strong> 이를 통해 지치기 쉬운 <strong>긴 수험생활 동안 주기적으로 동기부여를 받을 수</strong> 있었던 점이 만족스러웠습니다.”
                    </p>
                </div>
                <ul>
                    <li class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/st_img05.png" alt="" /></div>
                            <dl>
                                <dt>연세대학교 전자전기공학부</dt>
                                <dd>러셀 분당 유OO</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/cont06_graph02.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/ico_arrow.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2023학년도 289.5점</strong><br>
                                    <span>2022학년도 238.5점</span>
                                </p>
                                <div><strong>82.9%</strong>상승</div>
                            </div>
                        </div>
                    </li>
                    <li class="graph mt20">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/st_img06.png" alt="" /></div>
                            <dl>
                                <dt>연세대학교 경제학부</dt>
                                <dd>러셀 분당 이OO</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/cont06_graph03.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/ico_arrow.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2023학년도 288점</strong><br>
                                    <span>2022학년도 285점 </span>
                                </p>
                                <div><strong>20%</strong>상승</div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <p class="r-txt mt20 black">※ 러셀 분당 바른공부 자습전용관 2023학년도 정규반 [N수] 재원생 중 2022/2023 수능 성적(국수탐(2)) 확인이 가능한  재원생의 성적 비교
            </p>
            <% ElseIf sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0342" or isCore = 1 Then '인트로/강남/대치/영통/중계/평촌/센텀/대구/코어 %>
            <div class="rise-list list-2023">
                <div>
                    <div class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_ssw.jpg" alt="" /></div>
                            <div>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea02.png" alt="" /></p>
                                <div>
                                    <strong>2023 고려대학교(안암)<br>기계공학부 합격</strong>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p>러셀 강남 송승원</p>
                                    <% Else %>
                                    <p>러셀 송승원</p>
                                    <% end if %>
                                </div>
                            </div>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_gn/2023/regular/cont06_graph01.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2023학년도 288.5점</strong><br>
                                    <span>2022학년도 260.5점</span>
                                </p>
                                <div><strong>70.9%</strong>상승</div>
                            </div>
                        </div>
                    </div>
                    <p>
                        “<strong>저는 승강반 제도 덕분에 많은 도움을 받았습니다.</strong><br>
                        장학혜택을 주는 반으로 올라가기 위해 더욱 열심히 공부하고 노력하여<br>
                        모의고사에서 높은 점수를 받을 수 있었고, 그렇게 <strong>승반을 통해 받은 장학금을<br>
                        다시 공부에 투자해 성적 상승의 선순환</strong>을 만들어낼 수 있었습니다.”
                    </p>
                </div>
                <div>
                    <div class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_jjh.jpg" alt="" /></div>
                            <div>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yn02.png" alt="" /></p>
                                <div>
                                    <strong>2023 영남대학교<br>의예과 합격</strong>
                                    <% If sCampusCode = "INTRO" Then '인트로 %>
                                    <p>러셀 센텀 장종호</p>
                                    <% Else %>
                                    <p>러셀 장종호</p>
                                    <% end if %>
                                </div>
                            </div>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_gn/2023/regular/cont06_graph02.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2023학년도 295점</strong><br>
                                    <span>2022학년도 280점</span>
                                </p>
                                <div><strong>75.0%</strong>상승</div>
                            </div>
                        </div>
                    </div>
                    <p>
                        “<strong>승강반제도가 훌륭한 동기부여가 되었습니다.</strong><br>
                        저도 승반을 한 번 했는데 승반을 했을 때 지금까지 노력해왔던 것에 대한<br>
                        보상이 주어진 것 같아 기분이 좋았습니다.”
                    </p>
                </div>
            </div>
            <% Else %>
            <div class="rise-list">
                <div>
                    <div class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_kyj.jpg" alt="" /></div>
                            <dl>
                                <dt>연세대학교 치의예과</dt>
                                <dd>러셀 김연준</dd>
                            </dl>
                            <p>재원 기간:2021년 2월~수능까지</p>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont06_graph01.png" alt="" /></div>
                            <div class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow03.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2022학년도 296점</strong><br>
                                    <span>2021학년도 278.5점</span>
                                </p>
                                <div><strong>81.4%</strong>상승</div>
                            </div>
                        </div>
                    </div>
                    <p>
                        “<strong>승강반 제도를 통해 더 높은 반으로 갈 수 있는 동기 부여</strong>를 학생들에게<br>
                        주는 점도 매우 좋았습니다. 실제로 저는 서의치반으로 러셀에 들어왔지만,<br>
                        6월 모평에서 생각보다 아쉬운 성적을 받아 승반하지 못하여 9평 땐<br>
                        <strong>무조건 승반하겠다는 의지</strong>를 가질 수 있었고, 실제로 9월 모평에서 우수한<br>
                        성적을 받아 HS-1반으로 승반할 수 있었습니다.”
                    </p>
                </div>
                <ul>
                    <% If sCampusCode = "CD0248" Then '평촌 %>
                    <li class="graph pc">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/st_kom.png" alt="" /></div>
                            <dl>
                                <dt>성균관대학교<br>글로벌바이오메디컬공학과</dt>
                                <dd>러셀 평촌 한혜지</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/cont06_graph02.png" alt="" /></div>
                            <div class="arrow02"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow04.png" alt="" /></div>
                            <div class="arrow03"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow05.png" alt="" /></div>
                            <div class="arrow04"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow05.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2022학년도 280점</strong><br>
                                    <span>2021학년도 229.5점</span>
                                </p>
                                <div><strong>50.5점</strong>상승</div>
                            </div>
                        </div>
                    </li>
                    <% Else %>
                    <li class="graph">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_img01.jpg" alt="" /></div>
                            <dl>
                                <dt>연세대학교 경제학부</dt>
                                <dd>러셀 OOO</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont06_graph02.png" alt="" /></div>
                            <div class="arrow02"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow04.png" alt="" /></div>
                            <div class="arrow03"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow05.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2022학년도 283점</strong><br>
                                    <span>2021학년도 191점</span>
                                </p>
                                <div><strong>84.4%</strong>상승</div>
                            </div>
                        </div>
                    </li>
                    <% end if %>
                    <li class="graph mt20">
                        <div class="stu-info">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_img02.jpg" alt="" /></div>
                            <dl>
                                <dt>원광대학교 치의예과</dt>
                                <dd>러셀 OOO</dd>
                            </dl>
                        </div>
                        <div class="rise-con">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont06_graph03.png" alt="" /></div>
                            <div class="arrow02"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow04.png" alt="" /></div>
                            <div class="arrow03"><img src="<%=Application("img_path_russel")%>/intro/2023/regular/ico_arrow05.png" alt="" /></div>
                            <div class="rise-txt">
                                <p>
                                    <strong>2022학년도 293점</strong><br>
                                    <span>2021학년도 241.5점</span>
                                </p>
                                <div><strong>88.0%</strong>상승</div>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
            <% end if %>
            <% If sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR  sCampusCode = "CD0341" OR  sCampusCode = "CD0343" OR  sCampusCode = "CD0344" OR  sCampusCode = "CD0247" OR  sCampusCode = "CD0257" OR sCampusCode = "CD0340" OR sCampusCode = "CD0342" OR sCampusCode = "CD0248" OR sCampusCode = "CD0345" Then '대치/영통/코어대전/코어원주/코어전주/강남/중계/코어광주/대구/평촌/코어창원 %>
            <p class="r-txt mt20 black">※ 바른공부 자습전용관 2022학년도  N수 정규반 재원생 중 2021/2022 수능 성적(국수탐(2)) 확인이 가능한  재원생의 성적 비교
            </p>
            <% end if %>
        </div>
    </div>
    <!--// cont06 -->
    <!-- cont07 -->
    <div class="cont07 js-menu-con">
        <div class="inner02">
            <% If sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR  sCampusCode = "CD0249" OR sCampusCode = "CD0246" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR  sCampusCode = "CD0257" OR  sCampusCode = "CD0248" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" Then '대치/영통/목동/센텀/코어대전/코어원주/코어전주/코어청주/대구/강남/부천/분당/중계/평촌/코어광주/코어창원 %>
            <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont07_tit.png" alt="최상위권 대학에 합격한 선배들이 학습한 러셀 실전 콘텐츠" /></p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_tit.png" alt="최상위권 대학에 합격한 선배들이 학습한 러셀 실전 콘텐츠" /></p>
            <% end if %>
            <ul class="r-one-list">
				<% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list03.png" alt="러셀코어 위클리모의고사" /></div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list01.png" alt="퀄 모의고사" /></div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list02.png" alt="메가X대성 더 프리미엄 모의고사" /></div>
                </li>
				<% Else %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list01.png" alt="퀄 모의고사" /></div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list02.png" alt="메가X대성 더 프리미엄 모의고사" /></div>
                </li>
                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list03.png" alt="러셀코어 위클리모의고사" /></div>
                    </li>
                    <% end if %>
                    <% If sCampusCode = "CD0342" Then '대구 %>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/russel_dg/2023/regular/cont07_list03.png" alt="러셀 위클리모의고사" /></div>
                    </li>
                    <% end if %>
                    <% If sCampusCode = "CD0250" Then '부천 %>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont07_list03.png" alt="러셀 부천 국어/수학/영어 주간지" /></div>
                    </li>
                    <% end if %>
				<% end if %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list04.png" alt="월간 학습지" /></div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_list05.png" alt="강사 콘텐츠" /></div>
                </li>
            </ul>
            <ul class="r-con-list">
				<% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
                <li class="core-badge">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img03.png" alt="러셀CORE 위클리 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit03.png" alt="" usemap="#r_cont03" />
                            <map name="r_cont03">
                                <area shape="rect" coords="450,32,574,60" href="/intro/2022/weekly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>검증된 출제진</strong>
                                <span>러셀학원/메가스터디인강<br>
                                    선생님들이 직접 출제
                                </span>
                            </li>
                            <li>
                                <strong>우수 문항 구성</strong>
                                <span>단원별 필수 문항과<br>
                                    기출 변형+킬러문항으로 구성
                                </span>
                            </li>
                            <li>
                                <strong>1월~수능까지 매주 시행
                                </strong>
                                <span>매주 모의고사를 진행하여<br>문제풀이에 대한 감각 유지
                                </span>
                            </li>
                            <li>
                                <strong>실전 같은 긴장감 유지
                                </strong>
                                <span>매주 같은 시간에<br>
                                    전국 CORE 학원 재원생 대상<br>
                                    모의고사 동시 진행</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img.png" alt="퀄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit01.png" alt="" usemap="#r_cont" />
                            <map name="r_cont">
                                <area shape="rect" coords="251,32,375,59" href="/event/2021/quel/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>최신 경향 반영</strong>
                                <span>개편 교육과정 반영<br>
                                    평가원 최신 경향 반영
                                </span>
                            </li>
                            <li>
                                <strong>평가원 형식/내용 복제</strong>
                                <span>평가원 출제 원칙 반영<br>
                                    수능과 동일한 구성
                                </span>
                            </li>
                            <li>
                                <strong>검증된 집필진
                                </strong>
                                <span>과목별 전문 출제진 개발<br>
                                    메가스터디 강사진 검토
                                </span>
                            </li>
                            <li>
                                <strong>메가스터디 온/오프<br>
                                    선생님 해설강의
                                </strong>
                            </li>
                            <li>
                                <strong>국수영탐ⅠⅡ구성</strong>
                                <span>최상위권 수험생을<br>
                                    위한 과탐Ⅱ 시행
                                </span>
                            </li>
                            <li>
                                <strong>강도 있는 실전 훈련</strong>
                                <span>실전 수능보다<br>
                                    다소 높은 난이도로 구성
                                </span>
                            </li>
                            <li>
                                <strong>최상위권과의 경쟁
                                </strong>
                                <span>러셀학원과 메가스터디학원<br>
                                    재원생 모두 응시
                                </span>
                            </li>
                            <li>
                                <strong>시험 분석 및 전략 수립</strong>
                                <span>온라인 풀서비스 제공<br>
                                    성적표 및 해설지 제공
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img02.png" alt="메가X대성 더 프리미엄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit02.png" alt="" usemap="#r_cont02" />
                            <map name="r_cont02">
                                <area shape="rect" coords="464,32,586,59" href="/intro/2022/premium/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>더 완벽하게!
                                </strong>
                                <span>평가원/교육청 모의고사<br>
                                    출제 경험이 있는 집필진
                                </span>
                            </li>
                            <li>
                                <strong>더 정확하게!
                                </strong>
                                <span>전국 최다 인원 응시로<br>
                                    정확한 객관적인 위치 확인
                                </span>
                            </li>
                            <li>
                                <strong>더 풍부하게!
                                </strong>
                                <span>국어/수학, 영어, 한국사,<br>
                                    탐구영역까지 전 과목 구성
                                </span>
                            </li>
                            <li>
                                <strong>더 충분하게!
                                </strong>
                                <span>
                                    연간 총 7회 구성으로<br>
                                실전 훈련 및 감각 유지
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img04.png" alt="월간 학습지(월간 장영진)" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit04.png" alt="" usemap="#r_cont04" />
                            <map name="r_cont04">
                                <area shape="rect" coords="363,32,486,59" href="/intro/info/monthly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>100% 자작 문항<br>모의고사+상세한 해설</strong>
                                <span>
                                    월별 학습목표에 맞춘<br>
                                    장영진 선생님의<br>
                                    100% 자작 문항
                                </span>
                            </li>
                            <li>
                                <strong>장영진&연구소의 수학칼럼<br>
                                    러셀 입시담임팀의 입시 칼럼</strong>
                                <span>수험생활에 도움되는<br>
                                    다양한 정보 제공
                                </span>
                            </li>
                            <li>
                                <strong>최상위권 합격 선배 메시지
                                </strong>
                                <span>학습법, 인터뷰, 경험과<br>
                                    노하우가 담긴 상담 수록
                                </span>
                            </li>
                            <li>
                                <strong>매월 집체 모의고사
                                </strong>
                                <span>모의고사 진행 후<br>
                                    월별 누적 개인 성적표 제공<br>
                                    입시 담임선생님과 상담
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
				<% Else %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img.png" alt="퀄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit01.png" alt="" usemap="#r_cont" />
                            <map name="r_cont">
                                <area shape="rect" coords="251,32,375,59" href="/event/2021/quel/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>최신 경향 반영</strong>
                                <span>개편 교육과정 반영<br>
                                    평가원 최신 경향 반영
                                </span>
                            </li>
                            <li>
                                <strong>평가원 형식/내용 복제</strong>
                                <span>평가원 출제 원칙 반영<br>
                                    수능과 동일한 구성
                                </span>
                            </li>
                            <li>
                                <strong>검증된 집필진
                                </strong>
                                <span>과목별 전문 출제진 개발<br>
                                    메가스터디 강사진 검토
                                </span>
                            </li>
                            <li>
                                <strong>메가스터디 온/오프<br>
                                    선생님 해설강의
                                </strong>
                            </li>
                            <li>
                                <strong>국수영탐ⅠⅡ구성</strong>
                                <span>최상위권 수험생을<br>
                                    위한 과탐Ⅱ 시행
                                </span>
                            </li>
                            <li>
                                <strong>강도 있는 실전 훈련</strong>
                                <span>실전 수능보다<br>
                                    다소 높은 난이도로 구성
                                </span>
                            </li>
                            <li>
                                <strong>최상위권과의 경쟁
                                </strong>
                                <span>러셀학원과 메가스터디학원<br>
                                    재원생 모두 응시
                                </span>
                            </li>
                            <li>
                                <strong>시험 분석 및 전략 수립</strong>
                                <span>온라인 풀서비스 제공<br>
                                    성적표 및 해설지 제공
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img02.png" alt="메가X대성 더 프리미엄 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit02.png" alt="" usemap="#r_cont02" />
                            <map name="r_cont02">
                                <area shape="rect" coords="464,32,586,59" href="/intro/2022/premium/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>더 완벽하게!
                                </strong>
                                <span>평가원/교육청 모의고사<br>
                                    출제 경험이 있는 집필진
                                </span>
                            </li>
                            <li>
                                <strong>더 정확하게!
                                </strong>
                                <span>전국 최다 인원 응시로<br>
                                    정확한 객관적인 위치 확인
                                </span>
                            </li>
                            <li>
                                <strong>더 풍부하게!
                                </strong>
                                <span>국어/수학, 영어, 한국사,<br>
                                    탐구영역까지 전 과목 구성
                                </span>
                            </li>
                            <li>
                                <strong>더 충분하게!
                                </strong>
                                <span>
                                    연간 총 7회 구성으로<br>
                                실전 훈련 및 감각 유지
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <li class="core-badge">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img03.png" alt="러셀CORE 위클리 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit03.png" alt="" usemap="#r_cont03" />
                            <map name="r_cont03">
                                <area shape="rect" coords="450,32,574,60" href="/intro/2022/weekly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>검증된 출제진</strong>
                                <span>러셀학원/메가스터디인강<br>
                                    선생님들이 직접 출제
                                </span>
                            </li>
                            <li>
                                <strong>우수 문항 구성</strong>
                                <span>단원별 필수 문항과<br>
                                    기출 변형+킬러문항으로 구성
                                </span>
                            </li>
                            <li>
                                <strong>1월~수능까지 매주 시행
                                </strong>
                                <span>매주 모의고사를 진행하여<br>문제풀이에 대한 감각 유지
                                </span>
                            </li>
                            <li>
                                <strong>실전 같은 긴장감 유지
                                </strong>
                                <span>매주 같은 시간에<br>
                                    전국 CORE 학원 재원생 대상<br>
                                    모의고사 동시 진행</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <% end if %>
                <% If sCampusCode = "CD0342" Then '대구 %>
                <li class="dg-badge">
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img03.png" alt="러셀 위클리 모의고사" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/russel_dg/2023/regular/cont07_stit03.png" alt="" usemap="#r_cont03" />
                            <map name="r_cont03">
                                <area shape="rect" coords="343,33,467,59" href="/intro/2022/weekly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>검증된 출제진</strong>
                                <span>러셀학원/메가스터디인강<br>선생님들이 직접 출제</span>
                            </li>
                            <li>
                                <strong>우수 문항 구성</strong>
                                <span>단원별 필수 문항과<br>기출 변형+킬러문항으로 구성</span>
                            </li>
                            <li>
                                <strong>1월~수능까지 매주 시행
                                </strong>
                                <span>매주 모의고사를 진행하여<br>문제풀이에 대한 감각 유지</span>
                            </li>
                            <li>
                                <strong>실전 같은 긴장감 유지
                                </strong>
                                <span>매주 같은 시간에<br>대구&amp;전국 CORE 학원 재원생<br>대상 모의고사 동시 진행</span>
                            </li>
                        </ul>
                    </div>
                </li>
                <% end if %>
                <% If sCampusCode = "CD0250" Then '부천 %>
                <li class="bc-badge">
                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont07_img03.png" alt="러셀 부천 국/수/영 주간지" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/cont07_stit03.png" alt="" />
                        </p>
                        <ul>
                            <li>
                                <strong>러셀부천 과목별<br>대표 선생님이 직접 출제</strong>
                                <span>최신 출제 경향과 시기별 학습패턴을<br>반영한 고퀄리티 문항
                                </span>
                            </li>
                            <li>
                                <strong>누적학습과 확인학습을 동시에</strong>
                                <span>약점 보완 가능하도록 설계
                                </span>
                            </li>
                            <li>
                                <strong>매일 정해진 시간 응시로<br>공부 습관 형성
                                </strong>
                            </li>
                        </ul>
                    </div>
                </li>
                <% end if %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_img04.png" alt="월간 학습지(월간 장영진)" /></div>
                    <div>
                        <p>
                            <img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont07_stit04.png" alt="" usemap="#r_cont04" />
                            <map name="r_cont04">
                                <area shape="rect" coords="363,32,486,59" href="/intro/info/monthly/index.asp" target="_top" onfocus="this.blur()">
                            </map>
                        </p>
                        <ul>
                            <li>
                                <strong>100% 자작 문항<br>모의고사+상세한 해설</strong>
                                <span>
                                    월별 학습목표에 맞춘<br>
                                    장영진 선생님의<br>
                                    100% 자작 문항
                                </span>
                            </li>
                            <li>
                                <strong>장영진&연구소의 수학칼럼<br>
                                    러셀 입시담임팀의 입시 칼럼</strong>
                                <span>수험생활에 도움되는<br>
                                    다양한 정보 제공
                                </span>
                            </li>
                            <li>
                                <strong>최상위권 합격 선배 메시지
                                </strong>
                                <span>학습법, 인터뷰, 경험과<br>
                                    노하우가 담긴 상담 수록
                                </span>
                            </li>
                            <li>
                                <strong>매월 집체 모의고사
                                </strong>
                                <span>모의고사 진행 후<br>
                                    월별 누적 개인 성적표 제공<br>
                                    입시 담임선생님과 상담
                                </span>
                            </li>
                        </ul>
                    </div>
                </li>
				<% end if %>
            </ul>
        </div>
    </div>
    <!--// cont07 -->
    <!-- cont08 -->
    <div class="cont08">
        <div class="inner02">
            <p class="tit mt0"><strong>집체 모의고사 시행</strong>을 통한 빈틈 없는 실전 대비 훈련</p>
            <ul class="training-pics">
                <% If sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR  sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0244" OR sCampusCode = "CD0257" OR sCampusCode = "CD0248" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" OR sCampusCode = "CD0342" Then '대치/목동/영통/코어대전/분당/중계/평촌/코어광주/코어창원/대구 %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont08_img.jpg" alt="" /></div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/regular/cont08_img02.jpg" alt="" /></div>
                </li>
                <% Else %>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont08_img.jpg" alt="" /></div>
                </li>
                <li>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/cont08_img02.jpg" alt="" /></div>
                </li>
                <% end if %>
            </ul>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="tit nav-end">러셀 프리미엄 실전 콘텐츠 <strong>연간 시행 일정</strong></p>
            <% Else %>
            <p class="tit nav-end"><%=txtCampus%> 실전 콘텐츠 <strong>연간 시행 일정</strong></p>
            <% end if %>
            <% If sCampusCode = "CD0340" OR sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어광주/코어대전/코어원주/코어전주/코어창원/코어청주 %>
            <div class="tbl-box">
                <table class="tbl-03">
                    <colgroup>
                        <col width="20%">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
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
                            <th class="bg-gray">러셀CORE<br>
                                Weekly 모의고사
                            </th>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">QUEL 모의고사</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">메가X대성<br>
                                더 프리미엄 모의고사
                            </th>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">월간 학습지<br>
                                (월간 장영진)
                            </th>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% Else %>
            <div class="tbl-box">
                <table class="tbl-03">
                    <colgroup>
                        <col width="20%">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
                        <col width="*">
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
                            <th class="bg-gray">QUEL 모의고사</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-gray">메가X대성<br>
                                더 프리미엄 모의고사
                            </th>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                        </tr>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <tr>
                            <th class="bg-gray">러셀CORE<br>
                                Weekly 모의고사
                            </th>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                        </tr>
                        <% end if %>
                        <% If sCampusCode = "CD0342" Then '대구 %>
                        <tr>
                            <th class="bg-gray">러셀 Weekly 모의고사
                            </th>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                        </tr>
                        <% end if %>
                        <tr>
                            <th class="bg-gray">월간 학습지<br>
                                (월간 장영진)
                            </th>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td><div class="bar-wrap"><p><span class="p-bar"></span></p></div></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <% end if %>
            <p class="r-txt mt10">※ 상기 일정 및 진행 내용은 학원 및 학사일정에 따라 변경 및 조정될 수 있습니다.
            </p>

            <% If sCampusCode = "CD0250" Then '부천 %>
            <div class="st-review bc">
                <div>
                    <dl>
                        <dt>
                            <strong>서울대학교 경제학부</strong><br>
                            러셀 부천 홍승혁
                        </dt>
                        <dd>재원 기간 : 2021년 2월~수능까지</dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/russel_bc/2023/regular/st_hsh.png" alt="" /></div>
                </div>
                <p>
                    “러셀에서 제공하는 <strong>풍부한 모의고사 콘텐츠가 가장 마음에 들었습니다. 모의고사가 양적으로나 질적으로나 정말 풍부</strong>해서 제가 새로운 문제를 접하며 문제 푸는 양을 늘리거나, 학습 상태를 점검하는 것이 필요하다고 생각했을 때 <strong>러셀의 모의고사를 적절하게 활용할 수 있어서 학습에 큰 도움</strong>이 되었습니다.”
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="st-review">
                <div>
                    <dl>
                        <dt>
                            <strong>숙명여자대학교 약학부</strong><br>
                            러셀 분당 홍OO
                        </dt>
                        <dd>재원 기간 : 2022년 3월~수능까지</dd>
                    </dl>
                    <p>
                        <span>2022학년도 265점 →</span><br>
                        <strong>2023학년도 285.5점</strong>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/regular/st_img02.png" alt="" /></div>
                </div>
                <p>
                    “<strong>매달 메대프를 풀면서 수능을 체험</strong>할 수 있었고, 그 후 <strong>총평노트를 적으면서 나를 돌아보는 시간</strong>이 정말 좋았습니다. 그 후 <strong>여러 지표가 나타난 성적표로 현 상태를 정확히 점검</strong>할 수 있었고,
                    이를 바탕으로 한 <strong>상담은 앞으로의 방향을 설정하는데 크게 도움</strong>이 되었습니다. 또한 파이널에는 실모를 많이 풀었는데, 이때 <strong>월간 장영진이라는 하프 모의고사를 풀고 분석 자료까지 받을 수 있어서 정말 도움이 많이 되었습니다.</strong> 이렇게 다양한 실전 콘텐츠들로 끊임없이 실제와 같이 단련하다 보니 수능 날에는 막힘없이 문제를 풀어나갈 수 있었습니다.”
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="st-review jg">
                <div>
                    <dl>
                        <dt>
                            <strong>고려대학교 행정학과</strong><br>
                            러셀 중계 이은상
                        </dt>
                        <dd>재원 기간 : 2021년 7월~수능까지</dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/russel_jg/2023/regular/st_les.png" alt="" /></div>
                </div>
                <p>
                    “한달에 한 번 치뤄지는 메가/대성 모의고사와 각종 러셀 모의고사가 큰 도움이 되었습니다. 퀄리티 높은 모의고사를 풀면서 <strong>수능에 맞는 실전 감각을 유지</strong>할 수 있었고, 매일 반복되어 <strong>조금은 지루했던 평소 루틴에 새로운 자극</strong>을 받을 수 있었습니다.”
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="st-review">
                <div>
                    <dl>
                        <dt>
                            <strong>고려대학교 사학과</strong><br>
                            러셀 평촌 안현진
                        </dt>
                        <dd>재원 기간 : 2021년 3월~수능까지</dd>
                    </dl>
                    <p>
                        <span>2021학년도 249점 →</span><br>
                        <strong>2022학년도 273.5점</strong>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/russel_pc/2023/regular/st_ahj.png" alt="" /></div>
                </div>
                <p>

                    “저는 <strong>학원에서 실시하는 여러 모의고사 제도가 가장 좋았습니다.</strong> 여러 선생님들의 자체 모의고사, 러셀모의고사 등의 양질의 컨텐츠를 제공받아 만족스럽게 공부를 할 수 있었습니다. 특히 <strong>전국적으로 실시하는 메가X대성 더 프리미엄 모의고사</strong>가 가장 마음에 들었는데요. 전국적으로 시행하는 모의고사이다 보니 날을 정하여 <strong>현장감 있게 시험을 응시할 수 있어 실전 대비에도 도움이 되었으며, 많은 표본 수를 가지고 있어 자신의 객관적인 점수를 알게 해줘서 향후 피드백에 유용하게 활용</strong>할 수 있었던 것 같습니다.”
                </p>
            </div>
            <% ElseIf sCampusCode = "INTRO" or sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0249" or sCampusCode = "CD0257" or sCampusCode = "CD0246" or sCampusCode = "CD0245" or sCampusCode = "CD0342" or isCore = 1 Then '인트로/강남/대치/영통/중계/센텀/목동/대구/코어 %>
            <div class="st-review list-2023">
                <div>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei.png" alt="" /></dt>
                        <dd>
                            <strong>2023 연세대학교(서울)<br>전기전자공학부 합격</strong>
                            <% If sCampusCode = "INTRO" Then '인트로 %>
                            <p>
                                러셀 분당 유정원
                            </p>
                            <% Else %>
                            <p>
                                러셀 유정원
                            </p>
                            <% end if %>
                        </dd>
                    </dl>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_ujw.png" alt="" /></div>
                </div>
                <p>
                    “<strong>퀄 모의고사와 메대프 모두 러셀 재원생 아닌 학생들도 풀고 싶어할 정도로<br>
                    사설 모의고사 중에선 좋은 모의고사</strong>라고 생각합니다.<br>
                    재원생들은 이러한 고퀄리티의 모의고사를 학원에서 편리하게 신청해 풀 수 있어 좋았습니다.<br>
                    또한, 단순히 모의고사를 풀고 끝내는 것이 아니라 <strong>나만의 특이한 취약점을 담임선생님께서<br>
                    알려주셔서 이를 인식하는 것만으로도 공부 전략을 조정</strong>할 수 있었습니다.”
                </p>
            </div>
            <% Else %>
            <div class="st-review">
                <div>
                    <dl>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <dt>
                            <strong>서울대학교 원자핵공학과</strong><br>
                            러셀 강남 정인선
                        </dt>
                        <% Else %>
                        <dt>
                            <strong>서울대학교 원자핵공학과</strong><br>
                            러셀 정인선
                        </dt>
                        <% end if %>
                        <dd>재원 기간 : 2021년 2월~수능까지</dd>
                    </dl>
                    <p>
                        <span>2021학년도 274.5점 →</span><br>
                        <strong>2022학년도 287점</strong>
                    </p>
                    <div><img src="<%=Application("img_path_russel")%>/intro/2023/regular/st_jis.png" alt="" /></div>
                </div>
                <p>
                    “<strong>실전과 비슷한 상황을 연출할 수 있었던 메대프 모의고사</strong>가 정말 좋았습니다. <strong>학원에 모든<br>학생들이 동시에 분위기를 갖추고 치는 시험</strong>이라 몰입감도 높았고, <strong>전국 단위의 위치도<br>파악할 수 있어 공부 중간 점검용</strong>으로 좋았습니다. <strong>QUEL모의고사 또한 정말 매력적인 요소 중<br>하나</strong>였습니다. 과학탐구Ⅱ를 하는 제 입장에서는, 시중에 과학탐구Ⅱ 모의고사가 정말 희귀해,<br>모의고사 하나 하나가 소중한 자료인데, <strong>QUEL모의고사에 과학탐구Ⅱ가 포함되어 있어<br>시간을 재며 풀어볼 수 있어 되게 좋았습니다.</strong>”
                </p>
            </div>
            <% end if %>
        </div>
    </div>
    <!--// cont08 -->
</div>