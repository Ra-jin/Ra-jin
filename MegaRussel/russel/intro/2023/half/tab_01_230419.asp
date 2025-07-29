
<div class="cont js-cont">
    <!-- cont01 -->
    <div class="cont01">
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont01_tit.png" alt="최상위권이 집결하는 러셀, 러셀에서 빠르게 시작한 선배들은 대입 성공의 목표를 이루었습니다" /></p>
            <% If sCampusCode = "CD0001" Then '대치 %>
            <p class="mt100"><img src="<%=Application("img_path_russel")%>/russel/2023/half/cont01_stit01.png" alt="2023학년도 대치 최상위권 대입 합격 현황" /></p>
            <div class="count bc">
                <div class="result-box bc">
                    <ul class="exam-result">
                        <li>
                            <p>
                                2018 & 2020<br>수능 만점자 배출<sup>1)</sup>
                            </p>

                        </li>
                        <li>
                            <p>
                                2022 서울대 의예과 7명 포함,<br>의치한수약&서연고 367명 합격<sup>2)</sup>
                            </p>

                        </li>
                        <li>
                            <p>
                                2021 수능 전국 수석<br>[백분위] 배출<sup>3)</sup>
                            </p>
                        </li>
                    </ul>
                    <div class="r-txt mt50">
                        <span>ⓘ 데이터 산출 기준</span>
                        <div class="data-view">
                            1) 2020~2018 수능 실채점 기준<br>
                            2) 러셀 대치 바른공부 자습전용관 재원생 2021.02.10 기준<br>
                            3) 2021 수능 국어/수학/탐구2 자연계 백분위합 400점 (영어, 한국사 1등급)
                        </div>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <p class="mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont01_stit01.png" alt="2023학년도 러셀 최상위권 대입 합격 현황" /></p>
            <div class="count jg">
                <div class="result-box jg">
                    <ul class="exam-result">
                        <li>
                            <img src="<%=Application("img_path_russel")%>/russel_jg/2023/half/count_txt.png" alt="서울대 의예과 배출" />
                        </li>
                        <li>
                            <p>
                                서울대
                            </p>
                            <div class="counter" data-count="14">0</div>
                            <p class="myeong">명</p>
                        </li>
                    </ul>
                    <ul class="exam-result">
                        <li>
                            <p>
                                의치한수약
                            </p>
                            <div class="counter" data-count="40">0</div>
                            <p class="myeong">명</p>
                        </li>
                        <li>
                            <p>
                                서연고
                            </p>
                            <div class="counter" data-count="61">0</div>
                            <p class="myeong">명</p>
                        </li>
                        <li>
                            <p>
                                서성한이
                            </p>
                            <div class="counter count04" data-count="63">0</div>
                            <p class="myeong">명</p>
                        </li>
                    </ul>
                    <div class="r-txt mt20">
                        * 2023학년도 러셀중계 바른공부자습전용관 재원생 기준<br>
                        *중복대학 합격자수 포함<br>
                        * 최종 업데이트 : 2023. 03. 15 기준
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <p class="mt100"><img src="<%=Application("img_path_russel")%>/core_dj/2023/half/cont01_stit01.png" alt="2023학년도 러셀CORE대전 최상위권 대입 합격 현황" /></p>
            <div class="count dj">
                <div class="result-box dj">
                    <div>
                        <div class="exam-result">
                            <ul>
                                <li>
                                    <p>
                                        <span>2023학년도</span><br>
                                        의예과
                                    </p>
                                    <div class="counter" data-count="42">0</div>
                                    <p class="myeong">명</p>
                                </li>
                                <li>
                                    <p>
                                        의학계열<br>
                                        <span>(의/치/한/약/수)</span>
                                    </p>
                                    <div class="counter" data-count="74">0</div>
                                    <p class="myeong">명</p>
                                </li>
                                <li>
                                    <p>
                                        최상위권 대학<br>
                                        <span>(의치한약수&SKY포카)</span>
                                    </p>
                                    <div class="counter count04" data-count="113">0</div>
                                    <p class="myeong">명</p>
                                </li>
                            </ul>
                        </div>
                        <div class="r-txt mt20">
                            * 2023학년도 러셀 학원 재원생만의 대입 결과 (단과 수강생 제외/복수대학 합격 포함)<br>
                            * 최종 업데이트 : 2023-02-23 기준
                        </div>
                    </div>
                </div>
            </div>
            <% Else %>
            <p class="mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont01_stit01.png" alt="2023학년도 러셀 최상위권 대입 합격 현황" /></p>
            <div class="count">
                <div class="result-box">
                    <ul class="exam-result">
                        <li>
                            <p>
                                서울대<br>의예과
                            </p>
                            <div class="counter" data-count="12">0</div>
                            <p class="myeong">명</p>
                        </li>
                        <li>
                            <p>
                                메이저 의대<br>
                                <span>(서/연/가/성/울/고)</span>
                            </p>
                            <div class="counter" data-count="68">0</div>
                            <p class="myeong">명</p>
                        </li>
                        <li>
                            <p>
                                최상위권 대학<br>
                                의치한수약 SKY포카
                            </p>
                            <div class="counter count03" data-count="1"></div>
                            <div class="counter count04" data-count="707">0</div>
                            <p class="myeong">명</p>
                        </li>
                    </ul>
                    <div class="r-txt mt20">
                        * 2023학년도 러셀 학원 재원생만의 대입 결과 (단과 수강생 제외/복수대학 합격 포함)<br>
                        * 최종 업데이트 : 2023. 03. 15 기준
                    </div>
                </div>
            </div>
            <% End If %>
            <p class="mt100"><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont01_stit02.png" alt="러셀 반수반 선배들의 압도적인 성적 상승!" /></p>
            <div class="graph-wrap">
                <div class="graph-list">
                    <div class="graph01">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/graph01_tit.png" alt="성적상승률" /></p>
                        <div>
                            <p class="txt"><img src="<%=Application("img_path_russel")%>/intro/2023/half/rise_01.png" alt="" /></p>
                        </div>
                    </div>
                    <div class="graph02">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/graph02_tit.png" alt="10명 중 9명 성적 상승" /></p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <p class="txt pt108"><img src="<%=Application("img_path_russel")%>/intro/2023/half/rise_02.png" alt="" /></p>
                            <p class="gray-dn"><img src="<%=Application("img_path_russel")%>/intro/2023/half/doughnut_gray.png" alt="회색 도넛" /></p>
                        </div>
                    </div>
                    <div class="graph03">
                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/graph03_tit.png" alt="백분위 상승 점수" /></p>
                        <div>
                            <p class="txt pr40 pt4"><img src="<%=Application("img_path_russel")%>/intro/2023/half/rise_03.png" alt="" /></p>
                            <div class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2023/half/graph03_arrow.png" alt="" /></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="r-txt mt20 mr0">
                * 최상위권 기준 : 2022 수능 국수탐(2) 4과목 모두 1등급을 받은 학생들의 전년 수능대비 성적 상승 인원 비율 /  국수탐(2) 백분위 합 기준<br>
                ** 바른공부 자습전용관 2022 반수반 재원생 중 2021/2022 수능 성적 확인이 가능한  분석 결과 / 국수탐(2) 백분위 합 기준<br>
                *** 바른공부 자습전용관 2022 반수반 재원생 중 자연계열 학생의 2021/2022 수능 성적 분석 결과
            </div>


        </div>
    </div>
    <!--// cont01 -->

    <!-- cont02 -->
    <div class="cont02">
        <div class="inner02">
            <p><img src="<%=Application("img_path_russel")%>/intro/2023/half/cont02_tit.png" alt="러셀 반수반에서 최상위권 대입에 성공한 선배들의 스토리" /></p>
        </div>

        <!-- 선배들의 스토리 -->
        <div class="card-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide double">
                    <p>
                        <% If sCampusCode  = "CD0244" OR sCampusCode  = "INTRO" Then '인트로/분당 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_01_bd.jpg" alt="러셀분당 이현승" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_01.jpg" alt="러셀 이현승" />
                        <% End If %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                        <!-- <span class="cover-play" onclick="viewPlay('26049367')"></span> -->
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0245" OR sCampusCode  = "INTRO" Then '인트로/목동 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_02_md.jpg" alt="러셀목동 류재용" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_02.jpg" alt="러셀 류재용" />
                        <% End If %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0340" OR sCampusCode  = "INTRO" Then '인트로/코어광주 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_03_gj.jpg" alt="러셀광주 송다현">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_03.jpg" alt="러셀 송다현">
                        <% End if %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0341" OR sCampusCode  = "INTRO" Then '인트로/코어대전 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_04_dj.jpg" alt="러셀대전 박보근">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_04.jpg" alt="러셀 박보근">
                        <% End if %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_05_gs.jpg" alt="러셀기숙 최재원" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_05.jpg" alt="러셀 최재원" />
                        <% End If %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0001" OR sCampusCode  = "INTRO" Then '인트로/대치 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_06_dc.jpg" alt="러셀대치 정재훈" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_06.jpg" alt="러셀 정재훈" />
                        <% End If %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0341" OR sCampusCode  = "INTRO" Then '인트로/코어대전 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_07_dj.jpg" alt="러셀대전 노유찬">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_07.jpg" alt="러셀 노유찬">
                        <% End if %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0248" OR sCampusCode  = "INTRO" Then '인트로/평촌 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_08_pc.jpg" alt="러셀평촌 박찬미">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_08.jpg" alt="러셀 박찬미">
                        <% End if %>
                        <!-- <span class="cover-play" onclick="viewPlay('26063210')"></span> -->
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0257" OR sCampusCode  = "INTRO" Then '인트로/중계 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_09_jg.jpg" alt="러셀중계 민지우">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_09.jpg" alt="러셀 민지우">
                        <% End if %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0246" OR sCampusCode  = "INTRO" Then '인트로/센텀 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_10_ct.jpg" alt="러셀센텀 손가은" />
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_10.jpg" alt="러셀 손가은" />
                        <% End If %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0340" OR sCampusCode  = "INTRO" Then '인트로/코어광주 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_11_gj.jpg" alt="러셀광주 조민성">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_11.jpg" alt="러셀 조민성">
                        <% End if %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                
                <div class="swiper-slide">
                    <p>
                        <% If sCampusCode  = "CD0341" OR sCampusCode  = "INTRO" Then '인트로/코어대전 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_12_dj.jpg" alt="러셀대전 박지현">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/intro/2023/half/card_12.jpg" alt="러셀 박지현">
                        <% End if %>
                        <span class="cover-play" onclick="javascript:alert('추후 오픈 예정입니다.');"></span>
                    </p>
                </div>
                
            </div>
            <div class="page-wrap">
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <!--//선배들의 스토리-->

        <!--명문대 슬라이드-->
        <div class="roll-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="name-tag">고려대학교(안암) 의과대학</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 강남 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>297점</span></p>
                                <p>2022학년도 285점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>80%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">고려대학교(안암) 의과대학</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea.png" alt="고려대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 강남 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>295점</span></p>
                                <p>2022학년도 282.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>71%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag" style="padding: 15px 0">서울대학교<br>치의학학석사통합과정</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀CORE 대전 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>293.5점</span></p>
                                <p>2022학년도 275점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>74%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">한양대학교(서울) 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy.png" alt="한양대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 중계 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>297.5점</span></p>
                                <p>2022학년도 272.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>91%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">중앙대학교(서울) 의학부</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau.jpg" alt="중앙대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 목동 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>296.5점</span></p>
                                <p>2022학년도 271.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>88%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">순천향대학교 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang.png" alt="순천향대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 목동 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>298.5점</span></p>
                                <p>2022학년도 278점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>93%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">단국대학교(천안) 의예과</div>
                    <div class="cont-tag">
                        <img class="dg" src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dankook.png" alt="단국대 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 강남 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>295.5점</span></p>
                                <p>2022학년도 289점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>60%<br>상승</p>
                            </div>
                        </div>
                    </div> 
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">경상국립대 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ksk.png" alt="경상국립대 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 강남 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>293.5점</span></p>
                                <p>2022학년도 289점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>68%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">부산대학교 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_pusan.png" alt="부산대 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 기숙 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>296.5점</span></p>
                                <p>2022학년도 285.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>76%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">부산대학교 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_pusan.png" alt="부산대 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 목동 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>295점</span></p>
                                <p>2022학년도 276.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>79%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">전남대학교(광주) 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chonnam.png" alt="전남대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 기숙 블루반 OOO</p>
                        <% Else %>
                        <p>러셀 블루반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>295.5점</span></p>
                                <p>2022학년도 276점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>81%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">조선대학교 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="조선대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀CORE 광주 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>294점</span></p>
                                <p>2022학년도 266.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>82%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">충남대학교 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cnu.jpg" alt="충남대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 기숙 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>295.5점</span></p>
                                <p>2022학년도 293점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>36%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">건양대학교(대전) 의학과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ky.jpg" alt="건양대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 분당 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>296점</span></p>
                                <p>2022학년도 284.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>74%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">건양대학교(대전) 의학과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ky.jpg" alt="건양대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 대치 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>295점</span></p>
                                <p>2022학년도 279점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>76%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">고신대학교 의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ks.jpg" alt="고신대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 목동 서의치반 OOO</p>
                        <% Else %>
                        <p>러셀 서의치반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>294점</span></p>
                                <p>2022학년도 256점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>86%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">동아대학교 의예화 </div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_da.jpg" alt="동아대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 기숙 연고대반 OOO</p>
                        <% Else %>
                        <p>러셀 연고대반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>293.5점</span></p>
                                <p>2022학년도 252점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>87%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">원광대학교 한의예과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_wonkwang.png" alt="원광대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 평촌 서의치반 OOO</p>
                        <% Else %>
                        <p>러셀 서의치반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>295점</span></p>
                                <p>2022학년도 249.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>90%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">서울대학교 약학계열</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 대치 HS반 OOO</p>
                        <% Else %>
                        <p>러셀 HS반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>296점</span></p>
                                <p>2022학년도 285점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>73%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">성균관대학교 약학과</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk.png" alt="성균관대 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 강남 서의치반 OOO</p>
                        <% Else %>
                        <p>러셀 서의치반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>294.5점</span></p>
                                <p>2022학년도 270.5점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>81%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="name-tag">서울대학교 소비자학전공</div>
                    <div class="cont-tag">
                        <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu.png" alt="서울대학교 로고" />
                        <% If sCampusCode  = "INTRO" Then '인트로 %>
                        <p>러셀 부천 서의치반 OOO</p>
                        <% Else %>
                        <p>러셀 서의치반 재원생 OOO</p>
                        <% End If %>
                        <div class="core">
                            <div class="left-con">
                                <p>2023학년도 <span>293.5점</span></p>
                                <p>2022학년도 276점</p>
                            </div>
                            <div class="right-con">
                                <img src="<%=Application("img_path_russel")%>/intro/2023/half/arrow_up.png" alt="" />
                                <p>73%<br>상승</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--//명문대 슬라이드-->

        <div class="inner02 r-txt mt20">
            * 바른공부 자습전용관 2023 반수반 재원생 중 2022/2023 수능 성적(국수탐(2)) 확인이 가능한 재원생의 성적 비교
        </div>
    </div>
    <!--// cont02 -->
</div>