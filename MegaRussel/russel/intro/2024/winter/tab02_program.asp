<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <div class="inner">
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont04_tit.png" alt="러셀 윈터스쿨, 왜 최상위권이 먼저 선택할까요? 겨울방학 동안 올바른 학습 습관 형성은 물론 최상위권 실력 향상을 위한 모든 것이 준비되어 있기 때문입니다." /></p>
            <p class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont04_top.jpg" alt="" /></p>
            <% If sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0249" OR sCampusCode = "CD0247" OR sCampusCode = "CD0257" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0244" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" Then '코어대전/코어원주/영통/강남/중계/코어전주/코어창원/코어청주/분당/대구/울산/코어광주 %>
            <div class="max-box"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont04_img.jpg" alt="" /></div>
            <% Else %>
            <div class="max-box"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont04_img.jpg" alt="" /></div>
            <% End If %>
        </div>
    </div>
    <div class="cont05">
        <div class="inner">
            <div class="tit_num"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont05_num.png" alt="01" /></div>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont05_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관" /></p>
            <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/대구/울산 %>
            <a class="ico-bus" href="/info/schoolBus.asp" target="_blank"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/quick_bus.png" alt="스쿨버스" /></a>
            <% End If %>
            <!-- 바자관 슬라이드 -->
            <div class="studyHall-slide-wrap">
                <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/대구/울산 %>
                <div class="studyHall-navi core">
                <% Else %>
                <div class="studyHall-navi">
                <% End If %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">최적화된 학습환경</div>
                        <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/대구/울산 %>
                        <div class="swiper-slide">자체 식당 운영</div>
                        <% End If %>
                    </div>
                </div>

                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0250" OR sCampusCode = "CD0246" OR sCampusCode = "CD0244" Then '인트로/대치/부천/센텀/분당 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/sh_slide01.jpg" alt="" /></div>
                            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                            <div class="swiper-container tab-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/sh_slide01.jpg" alt="" /></div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/sh_slide01.jpg" alt="" /></div>
                                    </div>
                                </div>
                            </div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/sh_slide01.jpg" alt="" /></div>
                            <% End If %>
                            <div class="info-detail">
                                <dl>
                                    <% If sCampusCode = "CD0257" Then '중계 %>
                                    <dt>
                                        학생들이 모여 경쟁하는<br>
                                        <strong>집단적인 면학분위기</strong>
                                    </dt>
                                    <dd>
                                        재원생들의 학구열을 직접 체감할 수 있는<br>
                                        개방형 구조로 학습동기 부여 및 긴장감 유지하여<br>
                                        강력한 면학분위기를 형성합니다.
                                    </dd>
                                    <% Else %>
                                    <dt>
                                        최상위권이 모여 경쟁하는<br>
                                        <strong>집단적인 면학분위기</strong>
                                    </dt>
                                    <dd>
                                        최상위권 재원생들의 학구열을 직접 체감할 수 있는<br>
                                        개방형 구조로 학습동기 부여 및 긴장감 유지하여<br>
                                        강력한 면학분위기를 형성합니다.
                                    </dd>
                                    <% End If %>
                                </dl>
                                <% If sCampusCode = "CD0001" Then '대치 %>
                                <div class="ps-review">
                                    <p>
                                        바자관의 장점은 공부에 집중할 수 있는 분위기입니다. 담임선생님의 주도적인 관리와 공부에만 집중할 수 있는 학원 시스템 덕분에 공부에 방해되는 요소들로부터 자유로울 수 있었습니다. 

                                    </p>
                                    <div>
                                        <strong>2024 한림대 의예과 합격</strong> 러셀 대치 강민제
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                                <div class="ps-review">
                                    <p>
                                        바른공부 자습전용관의 장점은 집단적인 면학분위기와 표준 시간표입니다. 힘들 때면 나 혼자가 아니라 우리 모두가 노력하고 있다는 사실을 상기하며 공부에 열중할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 연세대 원주의과대학 합격</strong> 러셀 목동 윤서환
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                <div class="ps-review">
                                    <p>자습시간 중 늘어질 때면 조교나 선생님들께서 다시 자습에 돌입할 수 있도록 관리해 주셨고, 바자관 내 친목 행위를 일절 금지하여 공부만 할 수 있는 좋은 분위기가 형성될 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 연세대(미래) 의예과 합격</strong> 러셀 부천 박정우
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                                <div class="ps-review">
                                    <p>바자관의 <strong>개방적 구조 덕분</strong>에 주변에 공부를 열심히 하고 있는 친구들을 볼 수 있어서 <strong>긍정적인 경쟁심을 형성</strong>할 수 있다는 부분도 장점이라고 생각합니다. 

                                    </p>
                                    <div>
                                        <strong>2024 연세대 간호학과 합격</strong> 러셀 영통 황영훈
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                <div class="ps-review">
                                    <p>절제력이 부족한 저에겐 좋은 면학분위기가 형성되어 있고, 체계적인 관리를 해주는 러셀 대전이 최고의 학습 환경이었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 충남대 의예과 합격</strong> 러셀 대전 조한별
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                <div class="ps-review">
                                    <p>절제력이 부족한 저에겐 좋은 면학분위기가 형성되어 있고, 체계적인 관리를 해주는 러셀 대전이 최고의 학습 환경이었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 충남대 의예과 합격</strong> 러셀 대전 조한별
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                <div class="ps-review">
                                    <p>하루 종일 공부하다 보면 힘들 때가 있는데, 개방형 구조의 바른공부 자습전용관의 면학분위기 덕분에 열심히 하는 다른 친구들을 보며 마음을 다잡을 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 연세대(미래) 의예과 합격</strong> 러셀CORE 원주 이지우
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0247" Then '강남 %>
                                <div class="ps-review">
                                    <p>묵묵히 공부하던 앞자리 친구가 승반해서 다른 반으로 옮겨가는 것을 보고 부끄럽기도 하고 느껴지는 바가 참 많았습니다.

                                    </p>
                                    <div>
                                        <strong>2024 연세대 심리학과 합격</strong> 러셀 강남 류지웅
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <div class="ps-review">
                                    <p>바른공부 자습전용관 면학분위기가 매우 좋았고, 모든 전자기기를 반납하고 진행되는 공부는 압도적인 집중력을 발휘하게 했습니다.
                                    </p>
                                    <div>
                                        <strong>2024 고려대 식품자연경제학과 합격</strong> 러셀 평촌 정우진
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <div class="ps-review">
                                    <p>개방형 구조와 통유리 창으로 트여있어 피곤하거나 공부하기 싫을 때, 주변 열심히 공부하는 학생들을 보며 다시 공부에 집중할 수 있었습니다. 

                                    </p>
                                    <div>
                                        <strong>2024 성균관대 사회과학계열 합격</strong> 러셀 중계 이우진
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                                <div class="ps-review">
                                    <p>개방형 구조로 되어 있어 주변 학생들에게 자극을 받을 수 있어서 공부에 집중을 좀 더 할 수 있었으며 집단적인 면학분위기가 형성이 되어 있어 방해 요소들이 적어서 좋았습니다.
                                    </p>
                                    <div>
                                        <strong>2024 부산대 의예과 합격</strong> 러셀 센텀 이호준
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                                <div class="ps-review">
                                    <p>저는 강한 규제가 없던 학교 야자시간과 자습시간에 공부 집중을 잘 하지 못하는 편이었습니다. 집단적인 면학분위기가
                                        반드시 필요한 친구들에게 러셀을 적극 추천합니다.
                                        
                                    </p>
                                    <div>
                                        <strong>2024 전남대 의예과 합격</strong> 러셀CORE 전주 이재국
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                <div class="ps-review">
                                    <p>자습관이 개방형 구조로 되어있기 때문에 엄격한 면학분위기가 조성되어 학습에 더욱 집중할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 울산대 의예과 합격</strong> 러셀CORE 창원 송연후
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
                                <div class="ps-review">
                                    <p>피곤하고 집중이 잘 안될 때 고개를 들어보면 주변의 공부 분위기를 바로 확인할 수 있어서 다시 한번 마음을 잡고 공부할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 덕성여대 약학과 합격</strong> 러셀CORE 청주 박예은
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                <div class="ps-review">
                                    <p>다른 친구들이 공부를 열심히 하는 모습을 보고 자극을 받으며 친구들보다 더 오래 집중하고 공부할 수 있도록 노력하고 스스로를 계속 다그치면서 공부를 할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 고려대 바이오의공학부 합격</strong> 러셀 분당 양OO
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                <div class="ps-review">
                                    <p>공부하기에 적합한 시간 분배, 담임선생님들의 면학분위기 조성 및 학생들을 격려하시는 모습 등 러셀의 윈터스쿨은 학생이 성적 향상을 위해 갖춰야 할 모든 환경이 갖춰져 있습니다.

                                    </p>
                                    <div>
                                        <strong>2024 경북대 치의예과 합격</strong> 러셀 대구 서지훈
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                                <div class="ps-review">
                                    <p>바자관이 통유리로 되어 있어서 주변 친구들이 공부하는 모습을 보고 자극을 받아, 잠이 오거나 딴짓을 하고 싶을 때에도 정신이 번쩍 들어 다시 집중할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                <div class="ps-review">
                                    <p>바자관은 개방형 구조로 되어 있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 서울대 인문계열 합격</strong> 러셀CORE 광주 김효원
                                    </div>
                                </div>
                                <% Else %>
                                <div class="ps-review">
                                    <p>
                                        바른공부 자습전용관의 장점은 좋은 면학분위기입니다.<br>
                                        바자관은 개방형 구조로 되어있어 주변 친구들이 집중하여 공부하고 있는 모습을 볼 수 있어 동기부여가 되었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 서울대 국어교육과 합격</strong> 러셀 대치 송해눈
                                    </div>
                                </div>
                                <% End If %>
                            </div>
                        </div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <% If sCampusCode = "INTRO" Then '인트로 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/sh_slide02.jpg" alt="" /></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/sh_slide02.jpg" alt="" /></div>
                                <% If sCampusCode = "CD0247" Then '강남 %>
                                <p class="l-txt">※ 강의실은 운영 상황에 따라 별관 (다른 건물)으로 이동할 수도 있습니다.
                                </p>
                                <% End If %>
                            <% End If %>
                            <div class="info-detail">
                                <dl>
                                    <dt>
                                        이동에 낭비하는 시간없도록<br>
                                        <strong>학습 동선 최소화</strong>
                                    </dt>
                                    <dd>
                                        한 건물 내에서 강의실-바자관-<%=food_txt%>을<br>
                                        한 번에 해결하여 효율적으로 시간을 관리할 수 있으며,<br>
                                        수업 및 자습시간에 높은 집중력을 발휘할 수 있습니다.

                                    </dd>
                                </dl>
                                <% If sCampusCode = "CD0001" Then '대치 %>
                                <div class="ps-review">
                                    <p>
                                        바자관과 강의실이 한 건물에 있어 단과 수업이 끝나면 바로 자습을 할 수 있어 시간을 아낄 수 있었습니다.  특히 수업 사이의 붕 뜨는 시간을 버리지 않고, 바자관에 있는 것이 마음의 안정을 주었던 것 같습니다.

                                    </p>
                                    <div>
                                        <strong>2024 서울대 지구환경과학부 합격</strong> 러셀 대치 강동현
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                                <div class="ps-review">
                                    <p>
                                        바자관과 강의실이 가까워서 학습 동선을 최소화할 수 있었던 점이 좋았습니다. 시간낭비 없이 효율적으로 현강을 들을 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 서울대 첨단융합학부 합격</strong> 러셀 목동 채준영
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                <div class="ps-review">
                                    <p>가장 큰 장점은 학습 동선의 최소화라고 생각합니다. 이동 시간을 최소화하여 낭비되는 시간과 에너지를 줄이고, 공부에 최대의 시간과 에너지를 투자할 수 있다는 점은 매우 큰 메리트라고 생각합니다.

                                    </p>
                                    <div>
                                        <strong>2024 고려대 사회학과 합격</strong> 러셀 부천 노은수
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                                <div class="ps-review">
                                    <p><strong>학원 안에서 모든 것을 해결</strong>할 수 있다는 것이 가장 좋았습니다. <strong>학습 동선이 최소화</strong>됨으로써 버리는 시간 없이 <strong>공부에만 집중</strong>할 수 있었습니다. 

                                    </p>
                                    <div>
                                        <strong>2024 영남대 약학과 합격</strong> 러셀 영통 김지수
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                <div class="ps-review">
                                    <p>러셀 대전은 강의실, 급식실, 바자관 등이 모두 한 건물 안에 있어 공부의 흐름이 끊기지 않아서 좋았고, 충분한 휴식을 취하고 다음 일과를 진행할 수 있어 효율적이었습니다.

                                    </p>
                                    <div>
                                        <strong>2023 연세대학교(미래) 의예과  합격</strong> 러셀 대전 이승섭
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                <div class="ps-review">
                                    <p>강의실, 바자관, 식당이 모두 한 건물에 위치해 있어서 동선을 최소화할 수 있었고, 낭비되는 시간 없이 공부에만 집중할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 강원대 수의예과 합격</strong> 러셀CORE 원주 윤지혜
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0247" Then '강남 %>
                                <div class="ps-review">
                                    <p>단과 수업 시간 전후로 예, 복습을 하기 위한 이동시간의 소모가 없어 공부의 흐름을 계속 이어갈 수 있었습니다. 

                                    </p>
                                    <div>
                                        <strong>2024 동의대 한의예과 합격</strong> 러셀 강남 김세주
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <div class="ps-review">
                                    <p>한 건물에 강의실, 바자관, 급식실이 모두 있어 동선이 최소화된다는 점이 좋았습니다. 버려지는 시간 없이 효율적으로 시간을 활용할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 고려대 경영학과 합격</strong> 러셀 평촌 김선주
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <div class="ps-review">
                                    <p>바자관 내에서 급식을 바로 먹을 수 있다 보니, 동선을 최소화할 수 있어서 시간 낭비 없이 공부할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 연세대(미래) 의예과 합격</strong> 러셀 중계 홍수현
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                                <div class="ps-review">
                                    <p>단과와 자습, 급식이 한 건물에서 다 해결할 수 있어서 불필요한 시간들을 줄일 수 있어서 학습 순공시간을 충분히 확보할 수 있어서 좋았습니다.

                                    </p>
                                    <div>
                                        <strong>2024 부산대 의예과 합격</strong> 러셀 센텀 허윤행
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                                <div class="ps-review">
                                    <p>자습과 단과 수업을 한 공간에서 진행하고,<br>
                                        급식실까지의 거리도 가깝기 때문에<br>
                                        이동시간이 줄게 되어 많은 학습시간을 확보할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 연세대 의예과 합격</strong> 러셀CORE 전주 김경환
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                <div class="ps-review">
                                    <p>러셀CORE 창원은 한 건물 내에서<br>
                                        자습과 단과 수업 수강을 동시에 할 수 있기 때문에<br>불필요한 시간 낭비 없이 효율적으로 공부할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 서강대 전자공학과 합격</strong> 러셀CORE 창원 이윤성
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
                                <div class="ps-review">
                                    <p>바자관과 강의실, 식당이 바로 위아래층으로 되어 있어 이동에 효율적이었습니다. 덕분에 시간 낭비 없이 오직 공부에만 집중할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 서울대 경영학과  합격</strong> 러셀CORE 청주 김하진
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                <div class="ps-review">
                                    <p>바자관 건물과 강의실 및 식당이 가까운 거리에 있어 필요한 모든 것들을 해결하고 이동에 낭비되는 시간을 줄여 공부에 집중할 수 있도록 도움을 받을 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 고려대 전자전기공학부 합격</strong> 러셀 분당 양OO
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                <div class="ps-review">
                                    <p>바자관, 강의실, 급식실이 모두 한 건물에 있어 학습 동선을 최소화할 수 있었고, 자체 식당 급식 덕분에 밖으로 밥을 먹으러 나갈 필요가 없어서 공부에 집중하기 좋았습니다.

                                    </p>
                                    <div>
                                        <strong>2024 경북대 의예과 합격</strong> 러셀 대구 손관우
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                                <div class="ps-review">
                                    <p>독서실 다닐 때에는 밥 고민 때문에 스트레스를 많이 받았는데 7층에서 급식을 먹을 수 있어서 너무 좋았습니다. 다른 고민할 필요 없이 공부에만 집중할 수 있게 해줬습니다.

                                    </p>
                                    <div>
                                        <strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                <div class="ps-review">
                                    <p>이동에 낭비하는 시간이 없도록 도움을 주었습니다.
                                        바른공부 자습전용관과 가까운 거리에 강의실이
                                        있다는 점은 확실한 장점으로 다가왔습니다.
                                        
                                    </p>
                                    <div>
                                        <strong>2024 동국대 한의예과 합격</strong> 러셀CORE 광주 권태완
                                    </div>
                                </div>
                                <% Else %>
                                <div class="ps-review">
                                    <p>
                                        한 건물에 자습관, 식당, 강의실을 같이 배치함으로써 동선을 최소화, 체력과 학습 분위기 유지 측면에서 큰 이점을 얻을 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 부산대 의예과 합격 
                                        </strong> 러셀CORE 창원 장호준
                                    </div>
                                </div>
                                <% End If %>
                            </div>
                        </div>
                        <!-- 최적화된 학습환경 -->
                        <div class="swiper-slide">
                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0250" OR sCampusCode = "CD0249" OR sCampusCode = "CD0247" OR sCampusCode = "CD0246" OR sCampusCode = "CD0248" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '인트로/대치/부천/영통/강남/센텀/평촌/코어청주/대구/코어광주 %>
                            <div style="position:relative">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/winter/sh_slide03.jpg" alt="" />
                                <a href="javascript:void(0)" class="bt-tt js-mask" style="position:absolute;bottom:0;right:0;width:80px;height:80px;"></a>
                            </div>
                            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                            <div class="swiper-container tab-slide02">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div style="position:relative">
                                            <img src="<%=Application("img_path_russel")%>/intro/2024/winter/sh_slide03.jpg" alt="" />
                                            <a href="javascript:void(0)" class="bt-tt js-mask" style="position:absolute;bottom:0;right:0;width:80px;height:80px;"></a>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div style="position:relative">
                                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/sh_slide03.jpg" alt="" />
                                            <a href="javascript:void(0)" class="bt-tt03 js-mask" style="position:absolute;bottom:0;right:0;width:80px;height:80px;"></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% Else %>
                            <div style="position:relative">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/sh_slide03.jpg" alt="" />
                                <a href="javascript:void(0)" class="bt-tt js-mask" style="position:absolute;bottom:0;right:0;width:80px;height:80px;"></a>
                            </div>
                            <% End If %>
                            <div class="info-detail">
                                <dl>
                                    <dt>
                                        학습에만 전념할 수 있도록<br>
                                        <strong>학습에 최적화된 환경</strong>
                                    </dt>
                                    <dd>
                                        학습 효율성을 높이기 위해 설계된 시설과 환경에서 온전히 학습에만 집중할 수 있습니다. 개방형 구조와 벽면 통유리로 되어 있어 건강한 긴장감과 개방감을 느낄 수 있습니다.
                                    </dd>
                                </dl>
                                <% If sCampusCode = "CD0001" Then '대치 %>
                                <div class="ps-review">
                                    <p>
                                        언제나 주변에서 공부하는 학생들을 볼 수 있어 저도 자극을 받았고, 주변에서도 제 나태한 행동을 볼 수 있다 생각하니 부끄러운 모습을 보이지 않기 위해서라도 더 집중하게 되었습니다. 

                                    </p>
                                    <div>
                                        <strong>2024 고려대 경영학과 합격</strong> 러셀 대치 이예원
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                                <div class="ps-review">
                                    <p>개방형 구조의 긍정적인 경쟁심 자극이 좋았고, 표준 시간표 덕분에 체계적으로 공부할 수 있었습니다. 또한 스탠딩 책상이 구비되어 있어 졸릴 때 도움을 많이 받을 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 전남대 약학과 합격</strong> 러셀 목동 유성우
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                                <div class="ps-review">
                                    <p>바른공부 자습전용관의 개방형 구조를 통해 집단적인 면학분위기를 유지할 수 있었고, 같은 공간에서 공부하는 친구들을 보며 자극을 받을 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 연세대 정치외교학과 합격</strong> 러셀 부천 김승태
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                                <div class="ps-review">
                                    <p>바자관의 가장 큰 장점은 <strong>개방형 구조</strong>입니다. 열심히 공부하는 주변 학생들을 보며  의지를 다잡을 수 있었고, <strong>탁 트인 공간에서 공부하여 답답함 없이 오래 앉아 공부가 가능</strong>했습니다.

                                    </p>
                                    <div>
                                        <strong>2024 고려대 산업경영공학과 합격</strong> 러셀 영통 김어진
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
                                <div class="ps-review">
                                    <p>너무나도 넓은 책상 덕에 책이나 시험지를 넘길 때 불편함이 없어 좋았고, 심지어 여러 권의 책을 동시에 펼 수 있을 정도로 넓어서 사용하기 편했습니다.

                                    </p>
                                    <div>
                                        <strong>2024 아주대 의학과  합격</strong> 러셀 대전 김지환
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                <div class="ps-review">
                                    <p>성적대가 비슷한 친구들과 한 공간에서 학습하는 것이 좋았고, 집중력이 흐트러질 때마다 공부에 열중하고 있는 주변 친구들을 보며 자극을 받아 다시 공부에 집중할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 연세대 건축공학과 합격</strong> 러셀CORE 원주 심태엽
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0247" Then '강남 %>
                                <div class="ps-review">
                                    <p>개방형 구조로 인해 다른 친구들을 보며 다시 한번 더 공부에 집중할 수 있었습니다. 또한, 넓은 책상과 개인 책장은 공부하기에 더욱 편리한 환경을 제공했습니다.

                                    </p>
                                    <div>
                                        <strong>2024 서울대 인문계열 합격</strong> 러셀 강남 김은태
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                                <div class="ps-review">
                                    <p>스마트 기기에 대한 통제력이 약한 편이었는데 인강 사이트 외 접속이 차단되는 바자관 와이파이 덕분에 공부에 대한 집중력을 높일 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 연세대 언더우드학부 합격</strong> 러셀 평촌 박채운
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <div class="ps-review">
                                    <p>바자관이 개방형 구조라 자리 앞/옆이 다 보이는데,
                                        공부에 집중이 안 될 때 주변에 열심히 공부하는 친구들을 보면서 다시 공부에 집중할 수 있었습니다. 
                                        
                                    </p>
                                    <div>
                                        <strong>2024 서울대 간호학과 합격</strong> 러셀 중계 구도경
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                                <div class="ps-review">
                                    <p>공부에 몰두할 수 있는 환경이 조성되어 있어 좋았습니다. 책상마다 개인 콘센트가 있어 편리하였으며 서랍장이 있어 많은 책들을 두고 공부할 수 있어서 좋았습니다.

                                    </p>
                                    <div>
                                        <strong>2024 동아대 의예과 합격</strong> 러셀 센텀 박재현
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                                <div class="ps-review">
                                    <p>공부하는 데 있어서 시설적인 면에서 불편함이 전혀 없을 정도로 바자관 환경 구성이 잘 되어있습니다.
                                    </p>
                                    <div>
                                        <strong>2024 고려대 의예과 합격</strong> 러셀CORE 전주 서진원
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                <div class="ps-review">
                                    <p>방학동안 규칙적으로 생활하며 최대한의 공부시간을 확보할 수 있었습니다. 의지가 약해질 때에는 옆에서 공부하는 친구들을 보며 마음을 다잡을 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 경성대 약학과 합격</strong> 러셀CORE 창원 김진헌
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
                                <div class="ps-review">
                                    <p>좌석 간 넓은 간격, 통유리 개방형 구조의 적당한 긴장감, 졸리거나 집중력이 흐려질 때는 스탠딩 책상 등 바자관은 공부 하나에 모든 초점이 맞춰져 있는 공간이었습니다. 

                                    </p>
                                    <div>
                                        <strong>2024 덕성여대 약학과  합격</strong> 러셀CORE 청주 조현지
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                                <div class="ps-review">
                                    <p>공기의 질이 좋고 개인의 물품을 보관할 수 있는 책꽂이가 책상 옆에 있어 공부하기에 편리합니다. 책상이 넓기 때문에 모의고사를 풀 때에도 공간을 넉넉히 쓸 수 있습니다.

                                    </p>
                                    <div>
                                        <strong>2024 서울대 정치외교학과 합격</strong> 러셀 분당 원OO
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                <div class="ps-review">
                                    <p>러셀 바자관은 공기정화식물, 숯, 대형 공기청정기와 가습기가 설치되어 있고, 탁 트인 유리창을 통해 자연 햇빛을 받으며 쾌적하고 건강하게 공부할 수 있었습니다. 

                                    </p>
                                    <div>
                                        <strong>2024 서울대 의예과 합격</strong> 러셀 대구 김민겸
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                                <div class="ps-review">
                                    <p>제가 써본 책상과 의자 중에 가장 편하고 좋았습니다. 공부하면서 한 번도 불편하다고 생각해 본 적이 없었습니다. 깨끗하게 청소도 매일 해주셔서 더 좋았습니다.

                                    </p>
                                    <div>
                                        <strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                <div class="ps-review">
                                    <p>공부 외에 것들은 최대한 신경을 안 쓰게 관리를 해줘서 좋았습니다. 바자관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다.

                                    </p>
                                    <div>
                                        <strong>2024 한양대 의예과 합격</strong> 러셀CORE 광주 엄태옥
                                    </div>
                                </div>
                                <% Else %>
                                <div class="ps-review">
                                    <p>
                                        바자관은 알맞은 온도와 조명, 넓은 개인 책상 및 책장, 오래 앉아 있어도 불편하지 않은 의자 등 중요한 요소들이 잘 갖춰져 있어 편안하게 공부에만 집중할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 이화여대 약학부 약학전공 합격 
                                        </strong> 러셀 분당 전혜원
                                    </div>
                                </div>
                                <% End If %>
                            </div>
                        </div>
                        <% If isCore = 1 OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/대구/울산 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <div style="position:relative">
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/sh_slide04.jpg" alt="" />
                            </div>
                            <div class="info-detail">
                                <dl>
                                    <% If sCampusCode = "CD0346" Then '코어청주 %>
                                    <dt>
                                        균형 잡힌 식단과 이동시간 최소화 <br>
                                        <strong>자체 식당 운영
                                        </strong>
                                    </dt>
                                    <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                    <dt>
                                        <strong>자체 식당 운영
                                        </strong>
                                    </dt>
                                    <% Else %>
                                    <dt>
                                        양질의 급식으로 균형 잡힌 수험생 식단<br>
                                        <strong>자체 식당 운영
                                        </strong>
                                    </dt>
                                    <% End If %>
                                    <% If sCampusCode = "CD0345" Then '코어창원 %>
                                    <dd>
                                        자체 식당 운영으로<br>
                                        균형 잡힌 수험생 식단 유지가 가능합니다.<br>
                                        외부와의 접촉을 최소화하고,<br>
                                        이동시간을 줄여 학습에 몰입할 수 있습니다.
                                    </dd>
                                    <% Else %>
                                    <dd>
                                        자체 식당 운영으로 균형 잡힌 식단을 유지할 수 있으며,<br>
                                        외부와의 접촉을 최소화하고 이동시간을 줄여 학습에<br>몰입할 수 있습니다.
                                    </dd>
                                    <% End If %>
                                </dl>
                                <% If sCampusCode = "CD0341" Then '코어대전 %>
                                <div class="ps-review">
                                    <p>
                                        단과 강의실과 자체 식당이 같은 건물에 있기 때문에 이동 시간이 짧아 편했습니다. 특히 급식이 맛있어서 밥을 먹고 기분 좋은 상태로 다시 공부에 집중할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2023 조선대 치의예과 합격</strong> 러셀 대전 박지현
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                                <div class="ps-review">
                                    <p>식당, 자습관, 강의실이 모두 한 건물에 위치해서 동선을 최소화할 수 있었습니다. 식당에서 점심, 저녁을 먹을 수 있어서 낭비되는 시간 없이 공부에만 집중할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 강원대 수의예과 합격</strong> 러셀CORE 원주 윤지혜
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                                <div class="ps-review">
                                    <p>급식이 정말 맛있습니다.<br>
                                        건강 관리와 더불어 공부를 병행하는 데에도<br>
                                        큰 도움이 되었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 연세대 의예과 합격</strong> 러셀CORE 전주 김경환
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                <div class="ps-review">
                                    <p>러셀CORE 창원은 같은 건물 내에 <br>
                                        자체 식당이 있기 때문에 이동 동선 낭비 없이<br> 
                                        자습, 단과 수업, 급식을 이용할 수 있었습니다.
                                    </p>
                                    <div>
                                        <strong>2024 고려대 경제학부 합격</strong> 러셀CORE 창원 백서윤
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
                                <div class="ps-review">
                                    <p>균형 있게 식사할 수 있어서 체력관리에 도움이 많이 되었고, 이동시간을 최소화할 수 있어서 효율적이었습니다. 덕분에 시간 낭비 없이 오직 공부에만 집중할 수 있었습니다.

                                    </p>
                                    <div>
                                        <strong>2024 서울대 경영학과 합격</strong> 러셀CORE 청주 김하진
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                                <div class="ps-review">
                                    <p>자습 공간인 바자관과 급식실이 한 건물에 있어, 자습을 하다가 급식실로  이동하는 동선이 짧았습니다. 
                                        이를 통해, 이동에 따른 시간을 아낄 수 있었습니다. 
                                        
                                    </p>
                                    <div>
                                        <strong>2024 서울대 의예과 합격</strong> 러셀 대구 김민겸
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                                <div class="ps-review">
                                    <p>급식이 맛있어서 공부할 때 더 힘이 납니다. 특식이 나오는 날도 있어서 밥 기다리는 소소한 수험생활 즐거움이 있습니다.  학원에서 밥까지 해결할 수 있어 시간도 아낄 수 있어 더 좋았습니다.
                                    </p>
                                    <div>
                                        <strong>2024 러셀 울산 윈터스쿨 수강생 후기</strong>
                                    </div>
                                </div>
                                <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                                <div class="ps-review">
                                    <p>자체 식당이 있어 급식과 단과와 자습을 한 건물에서 해결할 수 있었고, 이동시간을 줄여 효율적으로 공부하는 데에  도움이 되었습니다.

                                    </p>
                                    <div>
                                        <strong>2023 연세대 국어국문과 합격</strong> 러셀CORE 광주 김지윤
                                    </div>
                                </div>
                                <% End If %>
                            </div>
                        </div>
                        <% End If %>
                    </div>
                </div>
                <!-- 바자관 시설보기 팝업 -->
                <div class="layer-pop layer">
                    <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/bt_close.png" alt="닫기"></a>
                    <% If sCampusCode = "INTRO" Then '인트로 %>
                    <div class="layer-wrap">
                        <img src="<%=Application("img_path_russel")%>/intro/2024/winter/sh_slide_pop_intro.jpg" alt="" />
                    </div>
                    <% ElseIf sCampusCode = "CD0245" OR sCampusCode = "CD0250" OR sCampusCode = "CD0247" OR sCampusCode = "CD0257" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0244" OR sCampusCode = "CD0349" Then '목동/부천/강남/중계/코어전주/코어창원/분당/울산 %>
                    <div class="layer-wrap">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/sh_slide_pop.jpg" alt="" />
                    </div>
                    <% Else %>
                    <div class="layer-wrap">
                        <img src="<%=Application("img_path_russel")%>/intro/2024/winter/sh_slide_pop.jpg" alt="" />
                    </div>
                    <% End If %>
                </div>
            </div>
            <!--// 바자관 슬라이드 -->
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원별 운영 방법 및 시설은 상이하며, 자세한 내용은 학원별 페이지에서 확인할 수 있습니다.</p>
            <% End If %>
        </div>
    </div>
    <div class="cont06">
        <div class="inner">
            <div class="tit_num"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont06_num.png" alt="02" /></div>
            <% If sCampusCode = "CD0257" Then '중계 %>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont06_tit.png" alt="최상위권 전문 입시 담임선생님의 학생 맞춤 관리 입시, 학습, 생활 모든 것을 체계적으로 관리하여 겨울방학 동안 실력이 상승하는 공부 습관을 만들 수 있습니다." /></p>
            <% Else %>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont06_tit.png" alt="최상위권 전문 입시 담임선생님의 학생 맞춤 관리 입시, 학습, 생활 모든 것을 체계적으로 관리하여 겨울방학 동안 실력이 상승하는 공부 습관을 만들 수 있습니다." /></p>
            <% End If %>
            
            <% If sCampusCode = "CD0249" OR sCampusCode = "CD0342" Then '영통/대구 %>
            <div class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont06_img.jpg" alt="" /></div>
            <% Else %>
            <div class="mt60"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont06_img.jpg" alt="" /></div>
            <% End If %>
            <!-- 이미지 롤링 -->
            <div class="img-rolling swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/rolling01.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/rolling02.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/rolling03.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/rolling04.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/rolling05.jpg" alt="">
                    </div>
                    <div class="swiper-slide">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/rolling06.jpg" alt="">
                    </div>
                </div>
            </div>
            <!-- 이미지 롤링 -->
        </div>
    </div>
    <div class="cont07">
        <div class="tit_num"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont07_num.png" alt="03" /></div>
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont07_tit.png" alt="메가스터디 온오프 전문 강사진의 최상위권 수준별 맞춤 단과" /></p>
        
        <% If sCampusCode <> "CD0250" Then '부천 제외 %>
        <ul class="danka-list">
            <% If sCampusCode = "CD0345" Then '코어창원 %>
            <li>
                메가스터디 온&middot;오프 선생님의<br>
                <strong>몰입감 높은 LIVE/현장 강의</strong>
            </li>
            <% Else %>
            <li>
                수능부터 내신까지<br>
                <strong>메가스터디 검증된 강사진</strong>
            </li>
            <% End If %>
            <li>
                과목별/수준별/진도별<br>
                <strong>전략적인 수업 선택</strong>
            </li>
            <li>
                내게 필요한 수업만 선택<br>
                <strong>충분한 자습시간 확보</strong>
            </li>
            <% If sCampusCode = "CD0345" Then '코어창원 %>
            <li>
                <strong>강의 전후 학습관리와<br>
                    선생님 전용 학습 콘텐츠</strong>
            </li>
            <% Else %>
            <li>
                선생님 전용 학습 콘텐츠,<br>
                <strong>수업 전후 학습관리</strong>
            </li>
            <% End If %>
        </ul>
        <% End If %>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/winter/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <div class="inner">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <p class="r-txt">※ 2024년 수능 강사진 기준이며, 2025년 출강 강사진은 추후 공개 예정입니다.
            </p>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <p class="r-txt">※ 2025년 출강 강사 기준 <br>학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
            <% Else %>
            <p class="r-txt mt0">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% End If %>
            <!-- 단과 특강 -->
            <div class="danka-wrap">
                <div class="danka-btn">
                    <p class="txt">개념부터 실전까지<br>
                        빈틈없는 커리큘럼으로 수능 실력 완성</p>
                    <% If sCampusCode = "CD0257" or sCampusCode = "CD0246" Then '중계/센텀 %>
                    <p class="stit">2월 정규 단과</p>
                    <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                    <p class="stit">고3 2월 정규 단과</p>
                    <% Else %>
                    <p class="stit">2월 정규 단과</p>
                    <% End If %>
                    <a href="<%=regular_url%>">바로가기</a>
                </div>
                <div class="danka-btn">
                    <p class="txt">겨울방학 약점 보완&amp;실력 향상을 위한<br>
                        단기 집중 완성 솔루션</p>
                    <% If sCampusCode = "CD0257" or sCampusCode = "CD0246" Then '중계/센텀 %>
                    <p class="stit">2월 윈터특강 <%=stuYear%></p>
                    <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                    <p class="stit">고1,2 2월 윈터 강좌 <%=stuYear%></p>
                    <% Else %>
                    <p class="stit">2월 윈터특강 <%=stuYear%></p>
                    <% End If %>
                    <a href="<%=winter_url%>">바로가기</a>
                </div>
                <% If sCampusCode = "CD0245" Then '목동 %>
                <div class="danka-btn">
                    <p class="txt">겨울방학 약점 보완&amp;실력 향상을 위한<br>
                        단기 집중 완성 솔루션</p>
                    <p class="stit">1월 <%=winter_txt02%></p>
                    <a href="<%=winter_url02%>">바로가기</a>
                </div>
                <% ElseIf sCampusCode = "CD0244" or sCampusCode = "CD0247" Then '분당/강남 %>
                <div class="danka-btn">
                    <p class="txt">겨울방학 약점 보완&amp;실력 향상을 위한<br>
                        단기 집중 완성 솔루션</p>
                    <p class="stit">2월 <%=winter_txt02%></p>
                    <a href="<%=winter_url02%>">바로가기</a>
                </div>
                <% End If %>
            </div>
            <!-- //단과 특강 -->
        </div>
    </div>
    <div class="cont08">
        <div class="tit_num"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont08_num.png" alt="04" /></div>
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont08_tit.png" alt="올바른 학습 습관 및 탄탄한 실력 형성 러셀 윈터스쿨 프로그램" /></p>
        <div class="inner">
            <div class="tab-wrap">
                <div class="tab-btn">
                    <a href="javascript:void(0)" class="on"><%=tab01_txt%></a>
                    <a href="javascript:void(0)">학습 습관 형성</a>
                    <% If sCampusCode <> "CD0340" Then '코어광주 제외 %>
                    <a href="javascript:void(0)">재원생 전용 특강</a>
                    <% End If %>
                    <% If sCampusCode <> "CD0250" Then '부천 제외 %>
                    <a href="javascript:void(0)"><%=tab04_txt%></a>
                    <% End If %>
                </div>
                <!-- 충분한 자습시간 -->
                <div class="tab-cont tab01 on">
                    <p><%=tab01_txt%> 확보 <a href="javascript:void(0)" class="bt-tt02 js-mask">표준 시간표 보기</a></p>
                    <ul>
                        <li>수능 시험에 기준한 바자관 표준 시간표로 공부하여  수능 학습 리듬을 체화
                        </li>
                        <li>매일 규칙적인 시간표로 생활하여 방학 기간에도 학습 결손 없이 일정하게 학습 패턴을 유지
                        </li>
                        <% If sCampusCode = "CD0340" Then '코어광주 %>
                        <li>개인 학습 상황에 맞춘 스케줄 운영 및 정규자습, 심야자습으로 충분한 자습시간 확보
                        </li>
                        <% Else %>
                        <li>개인 학습 상황에 맞춘 스케줄 운영 및 의무자습, 심야자습으로 충분한 자습시간 확보
                        </li>
                        <% End If %>
                    </ul>
                    <!-- 재원생의 하루 일과 -->
                    <!-- #include virtual = "/intro/2024/winter/routine.asp" -->
                    <!-- //재원생의 하루 일과 -->
                    
                    <!-- 바자관 시간표 -->
                    <!-- #include virtual = "/intro/2024/winter/baja_time_table.asp" -->
                    <!-- //바자관 시간표 -->

                </div>
                <!-- 학습 습관 형성 -->
                <div class="tab-cont tab02">
                    <ul class="cont-list">
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con01.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <% If sCampusCode = "CD0346" Then '코어청주 %>
                                <p>매일 영단어 1000</p>
                                <% Else %>
                                <p>매일 1교시 영단어 1000</p>
                                <% End If %>
                                <ul>
                                    <li>겨울방학 동안 영단어 1000개<br>
                                    암기 목표
                                    </li>
                                    <li>매일 50개의 영단어 암기 후<br>
                                    테스트 진행
                                    </li>
                                    <li>최근 출제 반영한 핵심 단어 수록 
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con02.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>매일 영어듣기 
                                </p>
                                <ul>
                                    <li>겨울방학 동안<br>
                                    영어 듣기 실력 향상 목표
                                    </li>
                                    <li>매일 일정한 시간에 바자관 재원생과<br> 함께 영어듣기 기출 테스트 시행
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="pt40">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con03.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>매일 국어 필수어휘
                                </p>
                                <ul>
                                    <li>수능 국어 지문 독해에 필요한<br>
                                    어휘력 향상 목표 
                                    </li>
                                    <li>수능 국어 기초 및 필수 어휘,<br>
                                    고전 시가 필수 어휘,<br>
                                     고전 소설 빈출 어휘로 구성
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="pt40">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con04.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>러셀 학습 플래너
                                </p>
                                <ul>
                                    <li>학습 목표 수립 및 자기주도학습 훈련
                                    </li>
                                    <li>매일 목표 학습량과 실제 학습량<br>
                                    비교 후 담임선생님의 피드백을 통해<br>
                                        학습 계획 점검
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li class="pt40" style="border-right:none;">
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/con05.jpg" alt="" /></div>
                            <div class="cont-detail">
                                <p>일일수학 30제
                                </p>
                                <ul>
                                    <li>겨울방학 수학 실력 향상 목표
                                    </li>
                                    <li>매일 일정한 양의 수학 문제풀이로<br>
                                    습관 형성
                                    </li>
                                    <li>나만의 점검표 작성하여 주/월별<br>
                                    학습 현황 파악
                                    </li>
                                </ul>
                            </div>
                        </li>
                        <li></li>
                    </ul>
                    <p class="r-txt">* 해당 콘텐츠는 러셀 윈터스쿨 재원생 대상으로 ‘전액지원’되는 콘텐츠입니다.
                    </p>
                </div>
                <% If sCampusCode <> "CD0340" Then '코어광주 제외 %>
                <!-- 재원생 전용 특강 -->
                <div class="tab-cont tab03">
                    <ul class="cont-list">
                        <li>
                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0341" OR sCampusCode = "CD0346" OR sCampusCode = "CD0349" Then '인트로/코어대전/코어청주/울산 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture01.jpg" alt="" /></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/lecture01.jpg" alt="" /></div>
                            <% End If %>
                            <div class="cont-detail">
                                <p>담임선생님의 입시 특강
                                </p>
                                <% If sCampusCode = "CD0247" Then '강남 %>
                                <ul>
                                    <li>각 학년에 맞춰 입시 개요 및 수시/정시 전형별<br>
                                    정보와 시기별 학습 방법에 대해 안내
                                    </li>
                                    <li>메디컬/최상위권 대학 등 목표 대학별<br>입시 로드맵 제시</li>
                                </ul>
                                <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                                <ul>
                                    <li>각 학년에 맞춰 입시 개요 및<br>수시/정시 전형별 정보와<br>시기별 학습 방법에 대해 안내
                                    </li>
                                    <li>메디컬/SKY 등<br>목표 대학별 입시 로드맵 제시</li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>각 학년에 맞춰 입시 개요 및<br>수시/정시 전형별 정보와<br>시기별 학습 방법에 대해 안내
                                    </li>
                                    <li>메디컬/최상위권 대학 등<br>목표 대학별 입시 로드맵 제시</li>
                                </ul>
                                <% End If %>
                            </div>
                        </li>
                        <li>
                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0341" OR sCampusCode = "CD0244" OR sCampusCode = "CD0349"  Then '인트로/코어대전/분당/울산 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture02.jpg" alt="" /></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/lecture02.jpg" alt="" /></div>
                            <% End If %>
                            <% If sCampusCode = "CD0346" Then '코어청주 %>
                            <div class="cont-detail">
                                <p>합격생 선배와의 만남
                                </p>
                                <ul>
                                    <li>최상위권 대학에 진학한 선배들이<br>성공적인 수험생활 노하우와<br>학습방법에 대해 전수</li>
                                </ul>
                            </div>
                            <% Else %>
                            <div class="cont-detail">
                                <p>과목별 학습법 특강
                                </p>
                                <% If sCampusCode = "CD0247" Then '강남 %>
                                <ul>
                                    <li>과목별 선생님이 수능 및 내신 출제 방향,<br>
                                    과목별 학습법과 학습 전략 등<br>새학년을 앞두고 꼭 알아야 하는<br>학습 정보 안내
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>과목별 선생님이 수능 및 내신 출제<br>방향, 과목별 학습법과 학습 전략 등<br>새학년을 앞두고 꼭 알아야 하는<br>학습 정보 안내
                                    </li>
                                </ul>
                                <% End If %>
                            </div>
                            <% End If %>
                        </li>
                        <li class="pt40">
                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0341" OR sCampusCode = "CD0346" OR sCampusCode = "CD0349" Then '인트로/대치/코어대전/코어청주/울산 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture03.jpg" alt="" /></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/lecture03.jpg" alt="" /></div>
                            <% End If %>
                            <div class="cont-detail">
                                <p>수험생 맞춤 특강

                                </p>
                                <% If sCampusCode = "CD0247" Then '강남 %>
                                <ul>
                                    <li>학습 플래너, 수학 일일30제, 총평노트 등<br>
                                    효과적인 활용법과 우수 사례 안내</li>
                                    <li>건강한 멘탈 관리를 위한 심리특강 진행
                                    </li>
                                </ul>
                                <% Else %>
                                <ul>
                                    <li>학습 플래너, 수학 일일30제,<br>총평노트 등 효과적인 활용법과<br>우수 사례 안내</li>
                                    <li>건강한 멘탈 관리를 위한<br>심리특강 진행
                                    </li>
                                </ul>
                                <% End If %>
                            </div>
                        </li>
                        <% If sCampusCode <> "CD0247" Then '강남 제외 %>
                        <li class="pt40">
                            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0250" OR sCampusCode = "CD0341" OR sCampusCode = "CD0345" OR sCampusCode = "CD0349" Then '인트로/부천/코어대전/코어창원/울산 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/lecture04.jpg" alt="" /></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/lecture04.jpg" alt="" /></div>
                            <% End If %>
                            <% If sCampusCode = "CD0346" Then '코어청주 %>
                            <div class="cont-detail">
                                <p>오직 재원생만을 위한<br>
                                입시설명회
                                </p>
                                <ul>
                                    <li>방대한 정보 속에서<br>
                                    꼭 필요한 내용만 엄선,<br>
                                    오직 윈터스쿨 재원생 대상으로만<br>
                                    진행하는 입시설명회 진행 </li>
                                </ul>
                            </div>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <div class="cont-detail">
                                <p>합격생 선배와의 만남
                                </p>
                                <ul>
                                    <li>목표 대학에 합격한 선배들이<br>성공적인 수험생활 노하우와<br>학습방법에 대해 전수</li>
                                </ul>
                            </div>
                            <% Else %>
                            <div class="cont-detail">
                                <p>합격생 선배와의 만남
                                </p>
                                <ul>
                                    <li>최상위권 대학에 진학한 선배들이<br>성공적인 수험생활 노하우와<br>학습방법에 대해 전수</li>
                                </ul>
                            </div>
                            <% End If %>
                        </li>
                        <% End If %>
                    </ul>
                </div>
                <% End If %>
                <% If sCampusCode <> "CD0250" Then '부천 제외 %>
                <!-- 포트폴리오 -->
                <div class="tab-cont tab04">
                    <div class="cont-pf">
                        <div class="slide-box">
                            <div class="swiper-container pf-slide">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0248" Then '인트로/평촌 %>
                                        <img src="<%=Application("img_path_russel")%>/intro/2024/winter/tab_img04_1.jpg" alt="" />
                                        <% Else %>
                                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/tab_img04_1.jpg" alt="" />
                                        <% End If %>
                                    </div>
                                <% If sCampusCode <> "CD0343" and sCampusCode <> "CD0245" and sCampusCode <> "CD0247" and sCampusCode <> "CD0345" and sCampusCode <> "CD0244" Then '코어원주/목동/강남/코어창원/분당 제외 %>
                                    <div class="swiper-slide">
                                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR sCampusCode = "CD0250" OR sCampusCode = "CD0341" OR sCampusCode = "CD0248" OR sCampusCode = "CD0246" Then '인트로/대치/목동/부천/코어대전/평촌/센텀 %>
                                        <img src="<%=Application("img_path_russel")%>/intro/2024/winter/tab_img04_2.jpg" alt="" />
                                        <% Else %>
                                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/tab_img04_2.jpg" alt="" />
                                        <% End If %>
                                    </div>
                                    <div class="swiper-slide">
                                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR sCampusCode = "CD0250" OR sCampusCode = "CD0341" OR sCampusCode = "CD0248" OR sCampusCode = "CD0246" Then '인트로/대치/목동/부천/코어대전/평촌/센텀 %>
                                        <img src="<%=Application("img_path_russel")%>/intro/2024/winter/tab_img04_3.jpg" alt="" />
                                        <% Else %>
                                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/tab_img04_3.jpg" alt="" />
                                        <% End If %>
                                    </div>
                                <% End If %>
                                </div>
                                <div class="swiper-pagination type01"></div>
                            </div>
                        </div>
                        <div class="cont-detail">
                            <p>윈터스쿨 <%=tab04_txt%>
                            </p>
                            <ul>
                                <% If sCampusCode = "CD0247" Then '강남 %>
                                <li>윈터스쿨을 마무리하며,<br>
                                그동안 진행한 영단어/영어듣기 성적,<br>
                                실전모의고사 성적, 태도 점수,<br>
                                담임선생님 코멘트를 기록하여 학부모님께 전달
                                </li>
                                <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                                <li>윈터스쿨 기간의 학습 성취도와<br>
                                최신 입시 정보를 확인할 수 있도록<br>
                                입시 담임선생님이 직접 제작한 종합 안내문
                                </li>
                                <li>출결 및 자습 현황, 영단어TEST 성적,<br>
                                실전모의고사 성적, 태도 점수, 담임 상담 내용을<br>
                                자세히 기록하여 겨울방학 학습 현황 확인</li>
                                <% Else %>
                                <li>윈터스쿨 기간의 학습 성취도와<br>
                                최신 입시 정보를 확인할 수 있도록<br>
                                입시 담임선생님이 직접 제작한 종합 안내문
                                </li>
                                <li>출결 및 자습 현황, 영단어/영어듣기 성적,<br>
                                실전모의고사 성적, 태도 점수, 담임 상담 내용을<br>
                                자세히 기록하여 겨울방학 학습 현황 확인</li>
                                <% End If %>
                            </ul>
                        </div>
                    </div>
                </div>
                <% End If %>
            </div>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원별 프로그램은 상이하며, 자세한 내용은 학원별 페이지에서 확인할 수 있습니다. 
            </p>
            <% End If %>
        </div>
    </div>
    <div class="cont09">
        <div class="tit_num"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_num.png" alt="05" /></div>
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_tit.png" alt="겨울방학 최종 마무리 윈터스쿨 실전모의고사" /></p>
        <div class="inner">
            <div class="w-tab-wrap">
                <div class="w-tab-btn">
                    <a href="javascript:void(0)" class="on">윈터스쿨 실전모의고사</a>
                    <a href="javascript:void(0)">수학 아이젠</a>
                </div>
                <div class="w-tab-con on">
                    <p>
                        겨울방학 최종 마무리<br>
                        <strong>윈터스쿨 실전모의고사</strong>
                    </p>
                    <div class="winter-dscr">
                        <div class="winter-slide swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_slide01.jpg" alt="" />
                                </div>
                                <div class="swiper-slide">
                                    <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0245" OR sCampusCode = "CD0250" OR sCampusCode = "CD0341" OR sCampusCode = "CD0247" OR sCampusCode = "CD0248" OR sCampusCode = "CD0257" OR sCampusCode = "CD0246" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0244" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0340" Then '인트로/대치/목동/부천/코어대전/강남/평촌/중계/센텀/코어전주/코어창원/코어청주/분당/대구/울산/코어광주 %>
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_slide02.jpg" alt="" />
                                    <% Else %>
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont09_slide02.jpg" alt="" />
                                    <% End If %>
                                </div>
                            <% If sCampusCode <> "CD0349" Then '울산 제외 %>
                                <div class="swiper-slide">
                                    <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0246" Then '인트로/대치/영통/코어대전/센텀 %>
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_slide03.jpg" alt="" />
                                    <% Else %>
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont09_slide03.jpg" alt="" />
                                    <% End If %>
                                </div>
                                <div class="swiper-slide">
                                    <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0341" OR sCampusCode = "CD0246" OR sCampusCode = "CD0244" OR sCampusCode = "CD0340" Then '인트로/대치/코어대전/센텀/분당/코어광주 %>
                                    <img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_slide04.jpg" alt="" />
                                    <% Else %>
                                    <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/cont09_slide04.jpg" alt="" />
                                    <% End If %>
                                </div>
                                
                            <% End If %>
                            </div>
                            <div class="swiper-pagination type02"></div>
                        </div>
                        <ul class="dscr-list">
                            <li>엄선한 전문 집단의 문항 개발 및 검토 </li>
                            <li>전국 러셀&amp;메가스터디 학원 재원생과 경쟁해 볼 수 있는 기회</li>
                            <li>집체 모의고사 응시로 수능 실전 경험</li>
                            <li>겨울방학 기간 과목별 학습 성과 확인, 현재 위치 점검</li>
                            <li>3월 학평과 동일한 범위로 출제되어 학평 대비 가능(국어/수학/영어)</li>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <li>개인별 성적표를 토대로 향후 학습 계획 등 1:1 상담 진행</li>
                            <% Else %>
                            <li>개인별 성적표를 토대로 향후 학습 계획 등 1:1 상담</li>
                            <% End If %>
                        </ul>
                    </div>
                    <p class="r-txt mt0">* 유료로 시행되는 학습 콘텐츠로 학원별로 시행 일정이  상이합니다.
                    </p>
                </div>
                <div class="w-tab-con">
                    <p>
                        집중 관리형 학습 콘텐츠<br>
                        <strong>수학 아이젠</strong>
                    </p>
                    <div class="winter-dscr">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/cont09_img.jpg" alt="" /></div>
                        <ul class="dscr-list">
                            <li>
                                <span>아이젠·아이젠 블랙 2종의 구성으로</span><br>
                                나의 학습 상황에 맞춰 선택하여 수준별 학습 가능<br>
                                <span class="mt10">
                                    &middot; 아이젠 : 기본기와 핵심 개념학습<br>
                                    &middot;  아이젠 블랙 : 최상위권 대상 고난도 하드 트레이닝</span>
                            </li>
                            <li>매일 12제로 겨울방학 6주간 총 432제 제공</li>
                            <li><span>담임선생님의</span> 철저한 과제 관리 및 학습 상담 진행</li>
                            <li><span>학습 점검을 위해</span> 매주 확인 테스트 및 성적표 제공</li>
                        </ul>
                    </div>
                    <p class="r-txt">* 유료로 시행되는 학습 콘텐츠로 학원별로 진행 여부 및 진행 방식이 상이합니다.
                    </p>
                </div>
            </div>
        </div>
    </div>
    <div class="bottom-bar">
        <% If sCampusCode = "CD0257" Then '중계 %>
        <p>
            학생들이 선택하는 <%=txtCampus%> 윈터스쿨에서 시작하면<br>
            <strong>결과는 목표 대학 합격 성공입니다.</strong>
        </p>
        <% Else %>
        <p>
            최상위권이 집결하는 <%=txtCampus%> 윈터스쿨에서 시작하면<br>
            <strong>결과는 최상위권 대입성공입니다.</strong>
        </p>
        <% End If %>
    </div>
</div>