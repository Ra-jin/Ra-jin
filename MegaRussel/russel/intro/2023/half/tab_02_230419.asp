
<div class="cont js-cont">
    <!-- nav -->
    <div class="nav-wrap">
        <div class="nav-in">
            <ul>
                <li class="on">
                    <a href="javascript:void(0);" class="btn-nav"><span>바른공부<br>자습전용관</span></a>
                </li>

                <li>
                    <a href="javascript:void(0);" class="btn-nav"><span>담임선생님<br>관리</span></a>
                </li>

                <li>
                    <a href="javascript:void(0);" class="btn-nav"><span>수준별<br>맞춤 단과</span></a>
                </li>

                <li>
                    <a href="javascript:void(0);" class="btn-nav"><span>프리미엄<br>콘텐츠</span></a>
                </li>

            </ul>
        </div>
    </div>
    <!-- //nav -->

    <!-- cont03 -->
    <div class="cont03 js-box" id="nav-cont">
        <div class="inner03">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont03_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
            <div class="tab-box js-menu-con">
                <!-- 바자관 탭 슬라이드 -->
                <div class="baja-slide-wrap">
                    <div class="circle-badge">
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <a href="/russel/study_hall/default.asp">
                        <% Else %>
                        <a href="/<%=campusName%>/info/study_hall/study_hall.asp">
                        <% End If %>
                            <strong>바른공부<br>자습전용관</strong>
                            <span>자세히 보기</span>
                        </a>
                    </div>
                    <div class="baja-slide-navi">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <span>학습 동선 최소화</span>
                            </div>
                            <div class="swiper-slide">
                                <span>집단적인 면학분위기</span>
                            </div>
                            <div class="swiper-slide">
                                <span>최대 자습 시간 확보</span>
                            </div>
                            <div class="swiper-slide">
                                <span>개방형 구조</span>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-container baja-slide">
                        <div class="swiper-wrapper">
                            <!-- Tab01 학습 동선 최소화 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/half/tab01_img.jpg" alt="" /></div>

                                <% If sCampusCode = "CD0245" Then '목동 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/stu_img01.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                대학교를 다니면서 <strong>수능 공부까지 병행할 수 있다는 점</strong>이 좋았습니다.<br>
                                                학교 가는 시간에 맞게 러셀 목동학원으로 등원해서 공부할 수 있어서 학점 관리와 <strong>공부하는 시간까지<br></nt>충분히 확보할 수 있었습니다.</strong>
                                            </p>
                                            <p><strong>고려대학교 의과대학</strong> 러셀 목동 황준</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/stu_img01.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                반수하면서 어떻게 공부를 해야할 지 고민이 많았는데, 학원의 전문적인 선생님들이<br> 짜주시는 커리큘럼을 믿고 의지할 수 있어서 매우 만족스러웠습니다.<br>
                                                특히, 현역 때 독서실에서 자습하다가 학원을 가야할 때 왕복 거리가 길어서 부담스러웠는데,<br>
                                                <strong>러셀 단과는 바자관과 같은 건물에 위치하여 시간 관리하기에 좋았습니다.</strong>
                                            </p>
                                            <p style="margin-right: -50px;"><strong>연세대학교 전자전기공학과 합격</strong> 러셀 분당 하승진</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_pc/2023/half/stu_img01.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>바른공부 자습전용관과 러셀 단과 강의실이 한 건물에 있어 이동 시간을 단축<br>
                                                할 수 있었고, 단과 조교분께 질문하러 가는 것도 편리</strong>했습니다. 저는 국어 강의를 수<br>
                                                강하며 주 1회 이감 모의고사를 통한 실전 훈련을 했고, 문학 선지 판단에 대한 명확한<br>
                                                기준을 잡을 수 있었습니다.
                                            </p>
                                            <p style="margin-right: -50px;"><strong>연세대학교 경영학과</strong> 러셀 평촌 이재현</p>
                                        </div>
                                    </div>
                                </div>
                                <% Else %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/stu_img01.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                대학교를 다니면서 반수를 했었고, 제가 정말 공부하고 싶었던 분야라서 1학기 학점도 잘 챙기고 싶은 <br> 욕심이 컸습니다.
                                                그래서 학교 공부를 병행하며 수능 공부를 3월부터 해야겠다고 마음먹었습니다.<br>
                                                <strong>두 공부를 병행하려면 효율적인 시간 관리가 필요</strong>하다고 생각했고, <strong>이동하는 시간을 최소화할 수 있는<br> 러셀을 선택</strong>했습니다.
                                            </p>

                                            <% If sCampusCode  = "CD0001" or sCampusCode  = "CD0250" or sCampusCode  = "CD0249" or sCampusCode  = "CD0257" or sCampusCode  = "CD0246" or sCampusCode  = "CD0342" or isCore = 1 Then '대치/부천/영통/중계/센텀/대구/코어  %>
                                            <p><strong>서울대학교 종교학과</strong> 러셀 김연수</p>
                                            <% Else %>
                                            <p><strong>서울대학교 종교학과</strong> 러셀 강남 김연수</p>
                                            <% End If %>
                                        </div>
                                    </div>
                                </div>
                                <% End If %>
                            </div>
                            <!-- //Tab01 학습 동선 최소화 -->

                            <!-- Tab02 집단적 면학 분위기 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/half/tab02_img.jpg" alt="" /></div>

                                <% If sCampusCode = "CD0245" Then '목동 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/stu_img02.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>“공부하다가 집중이 되지 않을 때 <strong>주위를 둘러보면 항상 열심히 공부하는 최상위권 친구들을<br>볼 수 있어서 마음을 다잡고 공부에 전념</strong>할 수 있었습니다. 또한 외부 상황과 관계 없이<br> <strong>학습에만 집중할 수 있는 확실한 학습 공간</strong>이 러셀 바른공부 자습전용관이었습니다. <br>덕분에 외부와 차단된 환경에서 공부 흐름이 끊기지 않고 공부에만 집중할 수 있었습니다.</p>
                                            <p><strong> 연세대학교 경제학부</strong> 러셀 목동 김태완</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/stu_img02.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                자습관이 오픈형 구조로 되어 있어서 공부하던 중 혹시 다른 생각이 들어도<br>
                                                <strong>주변에 공부하는 모습들을 보며 다시 공부에 집중할 수 있어서</strong> 큰 도움이 되었습니다.<br>
                                                또한, 수능 막바지까지 한 번쯤 흐트러질 수 있는 <strong>면학분위기를 철저하게 관리</strong>해 주셨습니다.
                                            </p>
                                            <p style="margin-right: -50px;"><strong>연세대학교 전자전기공학과 합격</strong> 러셀 분당 박세진</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_jg/2023/half/stu_img02.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>개방형 구조</strong>라서 주변 사람들이 다 공부하는 모습을 보면 저도 <strong>자극을 받아서 같이 열심히 공부</strong>할 수<br>
                                                있었고, 서로 배려해주는 분위기속에서 소음이 발생하지 않았기에 <strong>공부에 오로지 집중할 수 있었습니다.</strong><br>
                                                바자관 내부에 공기 정화 시스템이 철저하게 되어있어서, <strong>공부에 방해되는 요소는 존재하지 않았습니다.</strong>
                                            </p>
                                            <p><strong>고려대학교 식품자원경제학과</strong> 러셀 중계 이재혁</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_pc/2023/half/stu_img02.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>저는 러셀 바른공부 자습전용관의 개방형 구조가 가장 마음에 들었습니다.</strong><br>
                                                주변 학생들이 열심히 공부하는 모습을 보면 경쟁심이 생겨 저절로 집중이 됐던 것 같습니다.<br>
                                                또한 <strong>표준시간표를 설정하고 이에 따라 철저하게 관리를 해주는 덕분에 규칙적인 생활 습관<br>
                                                이 형성되어</strong> 아침에도 졸지 않고 공부를 할 수 있었고, 여러 과목을 밸런스 있게 공부할 수 있게<br>
                                                되었습니다.
                                            </p>
                                            <p><strong>고려대학교 사학과</strong> 러셀 평촌 안현진</p>
                                        </div>
                                    </div>
                                </div>
                                <% Else %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/stu_img02.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                잠이 많고 집중력도 쉽게 해이해지는 편인데 <strong>바른공부 자습전용관의 오픈형 구조</strong> 덕분에 그럴 때마다 <br>
                                                ‘아 지금도 다른 학생들은 열심히 공부하고 있구나’라고 <strong>다시 한 번 자극을 받으면서 저를 채찍질</strong>할 수<br> 있었던 것 같습니다.
                                                또한 우수한 학생들이 함께 모여서 자습관 <strong>담임선생님의 철저한 관리</strong> 속에서<br> 자습이 이루어지기 때문에 공부에 방해받지 않는
                                                <strong>좋은 면학 분위기가 유지</strong>되는 것이 장점이라고<br> 생각합니다.
                                            </p>
                                            <% If sCampusCode  = "CD0250" OR sCampusCode  = "INTRO"  Then '부천/인트로  %>
                                            <p><strong>인하대학교 의예과</strong> 러셀 부천 권민재</p>
                                            <% Else %>
                                            <p><strong>인하대학교 의예과</strong> 러셀 권민재</p>
                                            <% End If %>
                                        </div>
                                    </div>
                                </div>
                                <% End If %>
                            </div>
                            <!-- //Tab02 집단적 면학 분위기 -->

                            <!-- Tab03 최대 자습 시간 확보 -->
                            <div class="schedule-box swiper-slide">
                                <div style="background:#fff">
                                    <% If sCampusCode = "CD0244" Then '분당 %>
                                    <img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/tab03_img.jpg" alt="" />
                                    <% Else %>
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/half/tab03_img.jpg" alt="" />
                                    <% End If %>
                                    <p class="fz22 bold2 mb20">바른공부 자습전용관 표준 시간표 </p>
                                    <!-- schedule -->
                                        <!--#include virtual="/intro/2023/half/schedule.asp" -->
                                    <!-- //schedule -->
                                </div>
                                <% If sCampusCode = "CD0245" Then '목동 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/stu_img03.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>수능형 시간표에 리듬을 맞춰서</strong> 생활하고, 저의 <strong>공부 페이스에 맞게 계획</strong>을 짤 수 있어서<br> 러셀 목동학원을 선택했습니다.
                                            </p>
                                            <p class="mt30" style="margin-right: -50px;"><strong>서울대학교 경제학부 </strong> 러셀 목동 오지인</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/stu_img03.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>수능 시간표에 맞춰서 제 몸이 적응한 덕에 수능 시험장에서 좋은 컨디션을 유지</strong>할 수 있었습니다. <br>
                                                또한, 좋은 환경에서 충분한 자습 시간을 확보하여 더욱 공부에 매진할 수 있었습니다.
                                            </p>
                                            <p class="mt30" style="margin-right: 0px;"><strong>연세대학교 사학과 합격</strong> 러셀 분당 김원우</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_jg/2023/half/stu_img03.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                바자관의 <strong>표준 시간표는 규칙적인 공부 습관을 마련하는데 큰 도움</strong>이 되었습니다.<br>
                                                일정한 공부 시간과 휴식시간을 가질 수 있어 <strong>학업 효율을 더욱 극대화</strong> 할 수 있었습니다.
                                            </p>
                                            <p class="mt30" style="margin-right: 0px;"><strong>고려대학교 경영대학 </strong>러셀 중계 박주연</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_pc/2023/half/stu_img03.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>표준화된 시간표에</strong> 맞추어 생활 루틴을 몸에 익힐 수 있는 것이 정말 만족스러웠습니다.<br>
                                                <strong>또한, 담임선생님이 바자관 바로 앞에 있어 편하게 상담할 수 있었습니다.</strong> 수험생활을 하다 보면 말할 상대도 없고 또 힘들고 고민이 있어도
                                                털어놓을 상대가 없습니다. 새벽같이 일어나서 밤늦게 집에 가면 피곤하기도 하고 생활패턴을 위해 바로 잠을 자야 합니다.
                                                그럴 때, 잠깐 쉬는 시간에 나와 언제든 말을 들어주시고<br> 옆에 계시는 <strong>담임선생님의
                                                존재가 위로가 되고 또 피로도 풀 수 있어서 도움이 되었습니다.</strong>
                                            </p>
                                            <p class="mt10"><strong>고려대학교 컴퓨터학과 </strong>러셀 평촌 김준영</p>
                                        </div>
                                    </div>
                                </div>
                                <% Else %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/stu_img03.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                수능 몇달 전부터 <strong>수능에 맞춘 바른공부 자습전용관 표준 시간표로 수능형 리듬을 맞추고 <br>
                                                규칙적으로 생활</strong>하는데에 큰 도움이 되었으며, 자습 시간 또한 충분하게 활용할 수 있었습니다.
                                            </p>
                                            <% If sCampusCode  = "CD0001" OR sCampusCode  = "INTRO"  Then '대치/인트로  %>
                                            <p class="mt30" style="margin-right: -50px;"><strong>숙명여자대학교 약학과</strong> 러셀 대치 김채희</p>
                                            <% Else %>
                                            <p class="mt30" style="margin-right: -50px;"><strong>숙명여자대학교 약학과</strong> 러셀 김채희</p>
                                            <% End If %>
                                        </div>
                                    </div>
                                </div>
                                <% End If %>
                            </div>
                            <!-- //Tab03 최대 자습 시간 확보 -->

                            <!-- Tab04 개방형 구조 -->
                            <div class="swiper-slide">
                                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/half/tab04_img.jpg" alt="" /></div>

                                <% If sCampusCode = "CD0245" Then '목동 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/stu_img04.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                탁 트인 공간에서 주변 학생들의 공부하는 모습을 볼 때마다<br>
                                                경쟁심을 느낄 수 있었고, <strong>매시간 느슨해지지 않고 공부에 집중할 수 있었습니다.<br>학습에만 집중할 수 있는 확실한 공부 환경</strong>이 조성되어서 공부에 전념할 수 있었습니다.
                                            </p>
                                            <p style="margin-right: 0;"><strong>연세대학교 노어노문학과</strong> 러셀 목동 신주현</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_jg/2023/half/stu_img04.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>바자관이 넓게 개방</strong>되어있어서 많은 학생들이 다같이 공부하도록 공간의 구조가 짜여있었습니다.<br>
                                                주변에 의식할 사람이나 관리해주는 분이 없으면 헤이해지기 쉬운데, 러셀은 <strong>담임선생님의 감독과<br>
                                                다같이 공부하는 분위기</strong> 덕분에 <strong>공부에 더욱 집중</strong>할 수 있었습니다.
                                            </p>
                                            <p style="margin-right: 0;"><strong>고려대학교 건축사회환경공학부</strong> 러셀 중계 경성준</p>
                                        </div>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/russel_pc/2023/half/stu_img04.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                바자관은 학생의 공부 환경에 최대한의 노력을 기울입니다. 저는 <strong>공부 공간의 공기에 좀 예민<br>
                                                한 편인데, 공기청정기와 공기정화식물이 곳곳에 자리 잡고 있어 걱정없이 집중할 수 있었습<br>
                                                니다.</strong> 또한, <strong>책상의 크기와 책꽂이가 상당히 크기 때문에</strong> 제가 신경 쓸 것은 오직 제 공부뿐이<br>
                                                었다는 점에서 만족스러웠습니다.
                                            </p>
                                            <p style="margin-right: 0;"><strong>연세대학교 의예과</strong> 러셀 평촌 김한결</p>
                                        </div>
                                    </div>
                                </div>
                                <% Else %>
                                <div class="st-review">
                                    <div class="left-con">
                                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/stu_img04.jpg" alt="" />
                                    </div>
                                    <div class="right-con">
                                        <div>
                                            <p>
                                                <strong>개방형 구조</strong>가 가장 좋았습니다. <strong>층고가 높고 개방된 학습 환경에서 쾌적하게 공부</strong>를 할 수 있었고, <br>
                                                답답함 없이 긴 시간 집중할 수 있었습니다. 또한 <strong>칸막이 없이 양옆이 탁트여 있어 주변에서 열심히<br>
                                                공부하는 학생들을 보며 집중이 잘 안될 때 긍정적인 자극</strong>을 받을 수 있었습니다. 그리고 모의고사를<br>
                                                펼쳐놔도 공간이 남을 만큼 책상이 커서 좋았습니다.
                                            </p>
                                            <% If sCampusCode  = "CD0246" OR sCampusCode  = "INTRO"  Then '센텀/인트로  %>
                                            <p style="margin-right: 0;"><strong>인제대학교 의예과</strong> 러셀 센텀 최준영</p>
                                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                            <p style="margin-right: 0;"><strong>인제대학교 의예과 합격</strong> 러셀 최준영</p>
                                            <% Else %>
                                            <p style="margin-right: 0;"><strong>인제대학교 의예과</strong> 러셀 최준영</p>
                                            <% End If %>
                                        </div>
                                    </div>
                                </div>
                                <% End If%>
                            </div>
                            <!-- //Tab04 개방형 구조 -->
                        </div>
                    </div>
                </div>
                <!-- //바자관 탭 슬라이드 -->
            </div>
        </div>
    </div>
    <!--// cont03 -->

    <!-- cont04 -->
    <div class="cont04 js-box">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont04_tit.png" alt="최상위권 전문 입시 담임선생님의 철저한 관리" /></p>
            <!-- 입시관리 슬라이드 탭 -->
            <div class="manage-slide-wrap">
                <div class="manage-slide-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <span>입시관리</span>
                        </div>
                        <div class="swiper-slide">
                            <span>학습관리</span>
                        </div>
                        <div class="swiper-slide">
                            <span>생활관리</span>
                        </div>
                    </div>
                </div>
                <div class="swiper-container manage-slide">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/half/manage_tab01_img.jpg" alt="" /></div>
                            <% If sCampusCode = "CD0245" Then '목동 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/manage_stu_img01.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            담임선생님께서 <strong>학생이 진심으로 가고 싶은 학교, 학과가 무엇인지</strong> 잘 공감을 해주고 <strong>철저한 분석 끝에<br>정말로 가능성 있는 방향을 제시해주셔서</strong> 모든 학군에서 아쉬움 없이 지원할 수 있었습니다.
                                        </p>
                                        <p style="margin-right: 0;"><strong>연세대학교 컴퓨터과학과</strong> 러셀 목동 조우석</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_jg/2023/half/manage_stu_img01.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            평가원이나 메가x대성 모의고사를 본 뒤에 <strong>항상 상담을</strong> 해주셔서 <strong>현재 저의 객관적인 위치와 취약점을 알 수<br>
                                            있었고,</strong> 원서 접수시간에도 <strong>계속 신경써주시면서 어느 학교에 적합할지 구체적으로 상담</strong>해주셨습니다.<br>
                                            특히, 수험생활 전반에 있어서 <strong>학생들에게 관심을 많이 가지고</strong> 계셨기 때문에 제가 힘들어 할때나 조금<br>
                                            풀리는 모습을 보일때면 저를 <strong>북돋아주시거나 응원해주셔서 힘을 낼 수 있었습니다.</strong>
                                        </p>
                                        <p><strong>중앙대학교 경영학부</strong> 러셀 중계 김승연</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/manage_stu_img01.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            담임선생님께서 성적 상담을 할 때 제가 개선해야 할 약점을 꼼꼼히 분석해주셨고,<br>
                                            언제나 저를 긍정적으로 바라봐주셨기 때문에 정신적으로 큰 힘을 얻을 수 있었습니다.<br>
                                            또한, <strong>수시 입시 상담 시기에 원서를 접수하는 당일까지도 계속 신경써주시면서 <br>
                                            유리한 학교, 학과, 전형을 찾아주셨습니다.</strong> <br>
                                            덕분에 <strong>유리한 전형을 잘 선택하여 원하는 학과에 합격할 수 있었던 것 같습니다.</strong>
                                        </p>
                                        <p style="margin-right: -50px;"><strong>이화여자대학교 정치외교학과 합격</strong> 러셀 분당 변유진</p>
                                    </div>
                                </div>
                            </div>
                            <% Else %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/half/manage_stu_img01.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            <strong>바자관 앞에 선생님 자리가 있어서</strong> 궁금한 점이 있을 때 바로 질문할 수 있었습니다. 상담도 모의고사 <br>
                                            후에 신속히 진행되어 공부 계획을 더 체계적으로 수행할 수 있었습니다. <strong>수시 상담 또한 많은 자료를 <br>
                                            바탕으로 최선을 다해 주셨고, 정시 상담도 끈질기게 질문해도 성실하게 답변</strong>해 주셔서 정말 <br>
                                            감사했습니다.
                                        </p>
                                        <% If sCampusCode  = "CD0248" OR sCampusCode  = "INTRO"  Then '평촌/인트로  %>
                                        <p style="margin-right: 0;"><strong>연세대학교 의예과</strong> 러셀 평촌 김한결</p>
                                        <% Else %>
                                        <p style="margin-right: 0;"><strong>연세대학교 의예과</strong> 러셀 김한결</p>
                                        <% End If %>
                                    </div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 학습관리 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/half/manage_tab02_img.jpg" alt="" /></div>

                            <% If sCampusCode = "CD0245" Then '목동 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/manage_stu_img02.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>저는 멘탈이 많이 약했던 편이라 <strong>담임선생님과 자주 상담하면서 길고 힘든 수험생활을<br>버틸 수 있었습니다.</strong> 담임선생님께서는 제가 힘들어할 때마다 따뜻한 격려를, 때로는 따끔한 한마디를<br>해주시면서 제 버팀목이 되어 주셨습니다. 특히 가장 약했던 <strong>국어 과목 같은 경우에는 공부하는 방법을<br>알려주셔서 성적을 올리는 데 큰 도움이 되었습니다.</strong>
                                        </p>
                                        <p style="margin-right: 0;"><strong>을지대학교 의예과</strong> 러셀 목동 정혜윤</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_jg/2023/half/manage_stu_img02.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            중요한 모의고사 응시 후, 정기상담 진행할때 <strong>앞으로의 공부 방향에 대해 같이 고민</strong>해주셨습니다.<br>
                                            수험시간동안 성적 고민을 말할 곳이 없는 학생들에게 언제나 열려있어서 좋았습니다.<br>
                                            또한 <strong>휴대폰 관리나 학습 분위기 형성에 있어 철저</strong>하신점이 공부에 도움이 많이 되었습니다.
                                        </p>
                                        <p style="margin-right: 0;"><strong>경희대학교 한의예과</strong> 러셀 중계 박채연</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_pc/2023/half/manage_stu_img02.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            담임선생님께서는 학생들이 공부하느라 잘 신경 쓰지 못하는 여러 <strong>입시 관련 정보들을 상담 시간<br>
                                            에 잘 알려주시고,</strong> 가끔 이렇게 공부하는 게 맞나 하는 생각이 들 때도 <strong>옆에서 확신을 주셔서 정말 좋았습<br>
                                            니다.</strong> 또 저는 긍정적인 성격이라 그럴 일은 없었지만 스트레스를 많이 받거나 <strong>고민이 있다면 상담 신청<br>
                                            을</strong> 해도 된다고 해주셔서 그 점도 정말 좋았던 것 같습니다.
                                        </p>
                                        <p><strong>영남대학교 의예과</strong> 러셀 평촌 정재호</p>
                                    </div>
                                </div>
                            </div>
                            <% Else %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/half/manage_stu_img02.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            <strong>주기적인 학습상황 점검을 해 주셔서 슬럼프를 방지하는데 큰 도움</strong>을 주셨고, 모르는 국어 문제에 대한 <br>
                                            질답을 해 주셨습니다. <strong>모의고사가 끝나면 피드백 자료들을 주셨고, 프리뷰와 리뷰를 통해 시험에 대한 <br>
                                            준비와 어떤 형태로 접근해야 하는지를 설명</strong>해 주셨습니다.
                                        </p>
                                        <% If sCampusCode  = "CD0249" OR sCampusCode  = "INTRO"  Then '영통/인트로  %>
                                        <p style="margin-right: 0;"><strong>서울대학교 자유전공학부</strong> 러셀 영통 이상혁</p>
                                        <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                        <p style="margin-right: 0;"><strong>서울대학교 자유전공학부 합격</strong> 러셀  이상혁</p>
                                        <% Else %>
                                        <p style="margin-right: 0;"><strong>서울대학교 자유전공학부</strong> 러셀  이상혁</p>
                                        <% End If %>
                                    </div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- 생활관리 -->
                        <div class="swiper-slide">
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2023/half/manage_tab03_img.jpg" alt="" /></div>

                            <% If sCampusCode = "CD0245" Then '목동 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_mokdong/2023/half/manage_stu_img03.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            사회생활이나 부모님과의 갈등, 연애 등 <strong>다양한 고민거리에 대해 담임선생님과 상담하고 함께 해결책을<br>모색해나가면서</strong> 수험생의 입장에서 문제 상황을 어떻게 현명하게 해결할 수 있을지 답을 얻고 공부에도<br>집중할 수 있었던 거 같습니다.
                                        </p>
                                        <p style="margin-right: 0;"><strong>서울대학교 인문계열</strong> 러셀 목동 우정민</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/manage_stu_img03.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            담임선생님께서 <strong>단순히 원서, 성적 뿐 아니라 상담도 자주 해주시고,</strong> 고민이 있을 때 언제든지<br>가서 말씀드리면
                                            최대한 해결해주시려고 하셨습니다.<br>또한 <strong>공부를 하다보면 자존감이 떨어지는 경우도 많은데 이때 담임선생님의 격려와 응원으로<br>수험생활을 잘 버틸 수</strong> 있었던 것 같습니다.
                                        </p>
                                        <p style="margin-right: 0;"><strong>성균관대학교 사회과학계열 합격</strong> 러셀 분당 박혜원</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_jg/2023/half/manage_stu_img03.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            담임선생님께서 <strong>정기적으로 상담을 진행</strong>해주셔서 좋았습니다.<br>
                                            수험생활을 하다보면 여러가지 고민이 있었는데, 그때마다 담임선생님께 학업에 대한 제 고민을<br>
                                            말씀드렸고, <strong>적절한 해결책을 제시</strong>해주셨습니다.<br>
                                            <strong>선생님께서는 저를 포함한 학생들의 멘토 역할</strong>을 해주셨습니다.
                                        </p>
                                        <p style="margin-right: 0;"><strong>한양대학교 간호학과</strong> 러셀 중계 이채영</p>
                                    </div>
                                </div>
                            </div>
                            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/russel_pc/2023/half/manage_stu_img03.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            저는 2년간 바자관을 다녀서 담임선생님과 내적으로 매우 친밀한 상태였습니다.<br>
                                            1년간의 수험생활 중 힘들 때나 모의고사 성적이 잘 나오지 않아 속상할 때, 수능을 앞두고 두려울 때마다<br>
                                            <strong>담임선생님 자리에 찾아가서 얼굴 한 번이라도 보며 상담을 하고 나면, 이상하게도 힘이 났던 것 같습니다.</strong><br>
                                            부모님 만큼이나 진심으로 나를 위해주는 사람이 있다는 것, 그 자체가 제 수험생활의 큰 힘이 되었던 것 같습니다.
                                        </p>
                                        <p><strong>전남대학교 수의예과</strong> 러셀 평촌 이성혁</p>
                                    </div>
                                </div>
                            </div>
                            <% Else %>
                            <div class="st-review">
                                <div class="left-con">
                                    <img src="<%=Application("img_path_russel")%>/intro/2023/half/manage_stu_img03.jpg" alt="" />
                                </div>
                                <div class="right-con">
                                    <div>
                                        <p>
                                            <strong>공부를 할 때 불안하거나 상담받고 싶은 점이 있을 때 언제든지 담임선생님께 편하게 찾아가 여쭤보고 <br>
                                            상담받을 수 있는 것이 굉장히 좋았습니다.</strong> 수험생은 아무리 공부가 잘된다 하더라도 늘 불안하고 <br>
                                            심리적으로 많이 흔들릴 시기입니다. 그러한 부분을 이해해 주고 조언해주며 <strong>다시 공부를 이어 나갈 <br>
                                            에너지를 불어넣어주는 역할</strong>을 담임선생님께서 해주셨다고 생각합니다.
                                        </p>
                                        <% If sCampusCode  = "CD0001" OR sCampusCode  = "INTRO"  Then '대치/인트로  %>
                                        <p style="margin-right: 0;"><strong>경희대학교 의예과</strong> 러셀 대치 김태원</p>
                                        <% Else %>
                                        <p style="margin-right: 0;"><strong>경희대학교 의예과</strong> 러셀  김태원</p>
                                        <% End If %>
                                    </div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                    </div>
                </div>
            </div>
            <!-- //입시관리 슬라이드 탭 -->
        </div>
    </div>
    <!--// cont04 -->

    <!-- cont05 -->
    <div class="cont05 js-box js-menu-con">
        <div class="inner05">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont05_tit.png" alt="메가스터디 온오프 넘버1 강사진의 최상위권 수준별 맞춤 단과" /></p>
            <!-- 선생님 롤링 슬라이드 -->
            <!--#include virtual="/intro/2023/half/teacher_slide.asp" -->
            <!-- //선생님 롤링 슬라이드 -->

            <div class="inner04">
                <ul class="subject-list">
                    <% If sCampusCode <> "CD0244" and sCampusCode <> "CD0250" and sCampusCode <> "CD0257" and sCampusCode <> "CD0248" and sCampusCode <> "CD0249" and sCampusCode <> "CD0342" and sCampusCode <> "CD0340" and sCampusCode <> "CD0341" and sCampusCode <> "CD0344" Then '분당/부천/중계/평촌/영통/대구/코어광주/코어대전/코어전주 제외 %>
                    <li>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/danka_tit01.png" alt="반수특강" /></p>
                        <ul>
                            <li>취약 파트 집중 보완을 위한 고효율 단기 특강</li>
                            <li>부족한 학습시간 보완 및 학습 효과 극대화</li>
                        </ul>
                        <a href="<%=halfSpecialUrl%>">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/cont05_link.png" alt="바로가기" />
                        </a>
                    </li>
                    <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                    <li>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/danka_tit01.png" alt="반수특강" /></p>
                        <ul>
                            <li>취약 파트 집중 보완을 위한 고효율 단기 특강</li>
                            <li>부족한 학습시간 보완 및 학습 효과 극대화</li>
                        </ul>
                        <a href="javascript:void(0)" onclick="alert('마감되었습니다.')">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/cont05_link.png" alt="바로가기" />
                        </a>
                    </li>
                    <% End If %>

                    <% If isCore = 0 Then '코어 제외 %>
                    <li>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/danka_tit02.png" alt="AM단과" /></p>
                        <ul>
                            <li>관리력이 강력한 선생님의 N수생 전용 단과</li>
                            <li>나에게 필요한 과목/진도를 선택 수강하여 <br>
                                취약점 집중 보완, 실력 향상</li>
                        </ul>
                        <a href="<%=amUrl%>">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/cont05_link.png" alt="바로가기" />
                        </a>
                    </li>
                    <% End If %>

                    <li>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/danka_tit03.png" alt="정규특강 단과" /></p>
                        <ul>
                            <% If isCore = 1 Then '코어 일경우 %>
                            <li>메가스터디 온&middot;오프 No.1 강사진의 <br>생생한 현장 Live 강의</li>
                            <li>과목별/수준별/진도별 나에게 필요한 <br>수업만 선택&수강</li>
                            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                            <li>강남&middot;대치&middot;기숙 출강 강사진 및 메가스터디 <br>인강 강사진의 현강 강의</li>
                            <li>메가스터디 온&middot;오프 No.1 강사진의 <br>생생한 대치동 Live 강의와 콘텐츠</li>
                            <% Else %>
                            <li>메가스터디 온&middot;오프 강사진의 <br>생동감 있는 현장 강의</li>
                            <li>과목별/수준별/진도별 나에게 필요한 <br>수업만 선택&수강</li>
                            <% End If %>
                        </ul>
                        <a href="<%=specialUrl%>">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/cont05_link.png" alt="바로가기" />
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <!--// cont05 -->


    <!--cont06-->
    <div class="cont06 js-box js-menu-con">
        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont06_tit.png" alt="실전에 최적화된 프리미엄 콘텐츠" /></p>
        <div class="inner02 mt100">
            <% If sCampusCode  = "INTRO" Then '인트로 %>
            <div class="section sec1" style="height:500px;">
                <ul>
                    <li>
                        <p class="sec1_img intro"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img01.png" alt="퀄 모의고사" /></p>
                    </li>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt01.png" alt="바로가기" />
                            <a class="cover-goto goto1" href="/event/2021/quel/index.asp"></a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="section sec2" style="height:500px;">
                <ul>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt02.png" alt="바로가기" />
                            <a class="cover-goto goto2" href="/intro/2022/premium/index.asp"></a>
                        </p>
                    </li>
                    <li>
                        <p class="sec2_img intro mt40"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img02.png" alt="메가대성 더 프리미엄 모의고사" /></p>
                    </li>
                </ul>
            </div>
            <div class="section sec3" style="height:500px;">
                <ul>
                    <li>
                        <p class="sec3_img intro mt40"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img03.png" alt="러셀코어 위클리 모의고사" /></p>
                    </li>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt03.png" alt="바로가기" />
                            <a class="cover-goto goto3" href="/intro/2022/weekly/index.asp"></a>
                        </p>

                    </li>
                </ul>
            </div>
            <div class="section sec4" style="height:500px;">
                <ul>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt04.png" alt="바로가기" />
                            <a class="cover-goto goto4" href="/intro/info/monthly/index.asp"></a>
                        </p>
                    </li>
                    <li>
                        <p class="sec4_img intro mt20"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img04.png" alt="월간 학습지 장영진" /></p>

                    </li>
                </ul>
            </div>
            <% Else %>
            <div class="section sec1" style="height:500px;">
                <ul>
                    <li>
                        <p class="sec1_img russel"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img01.png" alt="퀄 모의고사" /></p>
                    </li>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt01.png" alt="바로가기" />
                            <a class="cover-goto goto1" href="/event/2021/quel/index.asp"></a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="section sec2" style="height:500px;">
                <ul>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt02.png" alt="바로가기" />
                            <a class="cover-goto goto2" href="/intro/2022/premium/index.asp"></a>
                        </p>
                    </li>
                    <li>
                        <p class="sec2_img russel mt40"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img02.png" alt="메가대성 더 프리미엄 모의고사" /></p>
                    </li>
                </ul>
            </div>
            <% If sCampusCode  <> "CD0250" And sCampusCode  <> "CD0342" And isCore = 0 Then '부천/대구/코어 제외%>
            <div class="section sec3" style="height:500px;">
                <ul>
                    <li>
                        <p class="sec3_img russel mt20"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img04.png" alt="월간 학습지 장영진" /></p>

                    </li>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt04.png" alt="바로가기" />
                            <a class="cover-goto goto3" href="/intro/info/monthly/index.asp" style="top:64px;left:381px"></a>
                        </p>
                    </li>
                </ul>
            </div>
            <% End If %>
            <% If sCampusCode  = "CD0250" Then '부천 %>
            <div class="section sec3" style="height:500px;">
                <ul>
                    <li>
                        <p class="sec3_img russel">
                            <img src="<%=Application("img_path_russel")%>/russel_bc/2023/half/book_txt03.png" alt="바로가기" />
                        </p>
                    </li>
                    <li>
                        <p class="goto-wrap mt100"><img src="<%=Application("img_path_russel")%>/russel_bc/2023/half/book_img03.png" alt="러셀 부천 국/수/영 주간지" /></p>
                    </li>
                </ul>
            </div>
            <div class="section sec4" style="height:500px;">
                <ul>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt04.png" alt="바로가기" />
                            <a class="cover-goto goto4" href="/intro/info/monthly/index.asp" style="top:64px;left:381px"></a>
                        </p>
                    </li>
                    <li>
                        <p class="sec4_img russel mt20"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img04.png" alt="월간 학습지 장영진" /></p>
                    </li>
                </ul>
            </div>
            <% End If %>

            <% If isCore = 1 Then '코어 %>
            <div class="section sec3" style="height:500px;">
                <ul>
                    <li>
                        <p class="sec3_img russel"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img03_core.png" alt="러셀CORE Weekly 모의고사" /></p>
                    </li>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt03_core.png" alt="바로가기" />
                            <a class="cover-goto goto3" href="/intro/2022/weekly/index.asp" style="top:121px;left:386px"></a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="section sec4" style="height:500px;">
                <ul>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt04.png" alt="바로가기" />
                            <a class="cover-goto goto4" href="/intro/info/monthly/index.asp" style="top:64px;left:381px"></a>
                        </p>
                    </li>
                    <li>
                        <p class="sec4_img russel mt20"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img04.png" alt="월간 학습지 장영진" /></p>
                    </li>
                </ul>
            </div>
            <% ElseIf sCampusCode  = "CD0342" Then '대구 %>
            <div class="section sec3" style="height:500px;">
                <ul>
                    <li>
                        <p class="sec3_img russel mt30"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img03_dg.png" alt="러셀CORE Weekly 모의고사" /></p>
                    </li>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt03_dg.png" alt="바로가기" />
                            <a class="cover-goto goto3" href="/intro/2022/weekly/index.asp" style="top:121px;left:386px"></a>
                        </p>
                    </li>
                </ul>
            </div>
            <div class="section sec4" style="height:500px;">
                <ul>
                    <li>
                        <p class="goto-wrap mt100">
                            <img src="<%=Application("img_path_russel")%>/intro/2023/half/book_txt04.png" alt="바로가기" />
                            <a class="cover-goto goto4" href="/intro/info/monthly/index.asp" style="top:64px;left:381px"></a>
                        </p>
                    </li>
                    <li>
                        <p class="sec4_img russel mt20"><img src="<%=Application("img_path_russel")%>/intro/2023/half/book_img04.png" alt="월간 학습지 장영진" /></p>
                    </li>
                </ul>
            </div>
            <% End If %>

            <% End If %>



        </div>
    </div>
    <!--//cont06-->

    <!--cont07-->
    <div class="cont07 nav-end <%=campusName%>">
        <div>
            <% If sCampusCode = "CD0244" Then '분당 %>
            <p class="tit07"><img src="<%=Application("img_path_russel")%>/russel_bundang/2023/half/cont07_tit.png" alt="집체 모의고사 시행" /></p>
            <% Else %>
            <p class="tit07"><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont07_tit.png" alt="집체 모의고사 시행" /></p>
            <% End If %>
            <% If sCampusCode  = "INTRO" Then '인트로 %>
            <p>* 각 학원에서 제공되는 콘텐츠는 상이할 수 있습니다.</p>
            <% End If %>
        </div>
    </div>
    <!--//cont07-->
</div>

<script src="/common/js/gsap.min.js"></script>
<script src="/common/js/ScrollTrigger.min.js"></script>
<script src="/common/js/TextPlugin.min.js"></script>
<script>

    //학원일 경우
if($('.sec1_img').hasClass('russel')){
    gsap.to('.sec1_img.russel', {
    scrollTrigger: {
      trigger: ".cont06", // 객체기준범위
      start: "top 1500px", // 시작점
      end: "bottom 1500px", // 끝점
      scrub: true, // 모션바운스
       //markers: true, // 개발가이드선
      pin: false,
    },
    x:-5,
    ease: 'none',
    duration:.1,
    opacity:1
  });

    gsap.to('.sec2_img.russel', {
    scrollTrigger: {
        trigger: ".cont06", // 객체기준범위
        start: "top 600px", // 시작점
        end: "bottom 1200px", // 끝점
        scrub: true, // 모션바운스
        // markers: true, // 개발가이드선
        pin: false,
    },
    x:5,
    ease: 'none',
    duration:.1,
    opacity:1,
    });

    gsap.to('.sec3_img.russel', {
    scrollTrigger: {
        trigger: ".cont06", // 객체기준범위
        start: "top 300px", // 시작점
        end: "bottom 900px", // 끝점
        scrub: true, // 모션바운스
        // markers: true, // 개발가이드선
        pin: false,
    },
    x:-5,
    ease: "none",
    duration:.1,
    opacity:1,
    });
}

    //인트로일 경우
if($('.sec1_img').hasClass('intro')){
    gsap.to('.sec1_img.intro', {
        scrollTrigger: {
          trigger: ".cont06", // 객체기준범위
          start: "top 2000px", // 시작점
          end: "bottom 2000px", // 끝점
          scrub: true, // 모션바운스
        //   markers: true, // 개발가이드선
          pin: false,
        },
        x:-5,
        ease: 'none',
        duration:.1,
        opacity:1
    });

    gsap.to('.sec2_img.intro', {
        scrollTrigger: {
            trigger: ".cont06", // 객체기준범위
            start: "top 1700px", // 시작점
            end: "bottom 1700px", // 끝점
            scrub: true, // 모션바운스
            // markers: true, // 개발가이드선
            pin: false,
        },
        x:5,
        ease: 'none',
        duration:.1,
        opacity:1,
    });

    gsap.to('.sec3_img.intro', {
        scrollTrigger: {
            trigger: ".cont06", // 객체기준범위
            start: "top 1300px", // 시작점
            end: "bottom 1300px", // 끝점
            scrub: true, // 모션바운스
            // markers: true, // 개발가이드선
            pin: false,
        },
        x:-5,
        ease: "none",
        duration:.1,
        opacity:1,
    });

}


    //sec4가 있을 경우(현재 인트로만 있음)에만 실행
    if($(".section p").hasClass('sec4_img')) {

        gsap.to('.sec4_img', {
            scrollTrigger: {
                trigger: ".cont06", // 객체기준범위
                start: "top 800px", // 시작점
                end: "bottom 800px", // 끝점
                scrub: true, // 모션바운스
                // markers: true, // 개발가이드선
                pin: false,
            },
            x:5,
            ease: "none",
            duration:.1,
            opacity:1,
            });

    }


</script>