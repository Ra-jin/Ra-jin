<div class="cont js-cont <%=campusName%>">
    <!-- cont01 -->
    <% If sCampusCode = "INTRO" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0344" OR sCampusCode = "CD0343" OR sCampusCode = "CD0349" Then '인트로/코어창원/코어청주/대구/코어전주/코어원주/울산 %>
    <div class="cont01">
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="graph-wrap">
                <h3>매년 <strong>전국의 최상위권은 러셀로</strong> 모이고 있습니다.<br>
                    <span>* HS반, 서울대&middot;의치대반은 러셀 모집반 중 최상위권반입니다.</span>
                </h3>
                <ul>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_graph01.jpg" alt="HS반 유입률" /></div>
                        <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_arrow01.png" alt="" /></span>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_graph02.jpg" alt="서울대, 의치대반 유입률" /></div>
                        <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_arrow01.png" alt="" /></span>
                    </li>
                </ul>
                <p class="l-list">
                    * 2022년, 2023년 러셀 전체 바자관 9월 N수 재원생의 반명 기준 수강료 완납&분납 수강인원 비교<br>
                    * 반별 입학 기준<br>
                    - HS반 : 수능 국수영 또는 국수탐(1) 4등급 이내, 서울대&middot;의치대반 : 국수영 또는 국수탐(1) 5등급 이내<br>
                    - 학원마다 반별 입학 기준은 상이하며, 각 학원 홈페이지에서 확인하실 수 있습니다.
                </p>
            </div>
            <div class="graph-wrap mt80 d-start">
                <h3>강력한 관리력이 만들어낸 놀라운 결과<br>
                <strong>앞서 경험한 선배들이 증명</strong>합니다.</h3>
                <ul>
                    <li class="doughnut">
                        <p>재수생 우선선발반 재원생<br>
                            <strong><span>10명 중 9명</span> 수능 성적 향상</strong>
                            <span>*HS반, 서의치반, 연고대반 재원생 기준</span>
                        </p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <div class="chart-img"><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_graph03.png" alt="" /></div>
                        </div>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_graph04.jpg" alt="2022 vs 2023 수능 백분위 성적 향상 점수" /></div>
                        <span class="bubble"><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_bubble.png" alt="" /></span>
                        <span class="arrow02"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_arrow02.png" alt="" /></span>
                    </li>
                </ul>
                <p class="r-txt mt30">* 2022년 러셀 전체 학원 재수생 우선선발반 HS반, 서의치대반, 연고대반 재원생 중 2022/2023 수능 성적 비교가 가능한 학생 기준
                </p>
            </div>
        </div>
    </div>
    <% Else %>
    <div class="cont01-1">
        <% If sCampusCode = "CD0247" Then '강남 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
                <div class="info-stxt">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        러셀 강남학원 자습전용관 합격 결과 기준 (18~23학년도, 단과수강생 제외, 복수대학 합격자 포함)
                    </div>
                </div>
                <ul class="list-wrap">
                    <li>
                        <div>
                            <p>최근 5개년 연속<br>
                            <strong>서울대 의예과</strong> 합격</p>
                        </div>
                        <ul class="stu-list">
                            <li>
                                <p>2023학년도 <strong>이윤서 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_lys.jpg" alt="이윤서" /></div>
                            </li>
                            <li>
                                <p>2023학년도 <strong>김OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_w.jpg" alt="김OO" /></div>
                            </li>
                            <li>
                                <p>2022학년도 <strong>서OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_w.jpg" alt="서OO" /></div>
                            </li>
                            <li>
                                <p>2021학년도 <strong>김OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_m.jpg" alt="김OO" /></div>
                            </li>
                            <li>
                                <p>2020학년도 <strong>양지헌 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_yjh.jpg" alt="양지헌" /></div>
                            </li>
                            <li>
                                <p>2019학년도 <strong>이OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_w.jpg" alt="이OO" /></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div>
                            <p>의학계열 누적합격생<br>
                            <strong>548명</strong> 배출</p>
                        </div>
                        <ul class="stu-number">
                            <li>
                                <div><p>의예과 <strong>300명</strong></p></div>
                            </li>
                            <li>
                                <div><p>치의예과 <strong>67명</strong></p></div>
                            </li>
                            <li>
                                <div><p>한의예과 <strong>101명</strong></p></div>
                            </li>
                            <li>
                                <div><p>수의예과 <strong>28명</strong></p></div>
                            </li>
                            <li>
                                <div><p>약학과 <strong>52명</strong></p></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div>
                            <p>최상위권 대학<br>
                               누적 합격 현황</p>
                        </div>
                        <ul class="stu-number">
                            <li>
                                <div><p>의치한수약 <strong>548명</strong></p></div>
                                <p>의예 300명, 치의예 67명,<br>
                                한의예 101명, 수의예 28명, 약학 52명</p>
                            </li>
                            <li>
                                <div><p>서연고 <strong>485명</strong></p></div>
                                <p>서울대 90명, 연세대 205명,<br>
                                    고려대 190명
                                </p>
                            </li>
                            <li>
                                <div><p>서성한이중경외시<br>
                                    + 카이스트<br>
                                     <strong>1,024명</strong></p>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <div class="inner03">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box">
                <div class="badge"><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/ico_badge.png" alt="러셀 2023학년도 최상위권 입시 결과" /></div>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대<br>
                            <strong>7</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            의예과<br>
                            <strong>13</strong><span>명</span>
                        </p>
                        <div>*울산대 의예과 1명 포함</div>
                    </li>
                    <li>
                        <p>
                            치의예과<br>
                            <strong>3</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            한의예과<br>
                            <strong>10</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            수의예과<br>
                            <strong>3</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            약학과<br>
                            <strong>14</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver01">
                    <li>
                        <p>
                            연고대<br>
                            <strong>33</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            KAIST<br>
                            <strong>2</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            POSTECH<br>
                            <strong>1</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서성한이<br>
                            <strong>58</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중경외시<br>
                            <strong>42</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver02">
                    <li>
                        <p>
                            전국교대<br>
                            <strong>9</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            DGIST/UNIST<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            KENTECH<br>
                            <strong>1</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            사관학교<br>
                            <strong>2</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <div class="info-stxt" style="top:689px">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        *2023학년도 러셀 부천 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 정시/수시 합격자 중복 포함,<br>
                        단과 수강생 미포함(2023.02.28 기준))<br>
                        **2022학년도 대비 2023학년도 러셀 부천 의약학계열 및 서연고 합격자 비교 기준
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box no-bg">
                <div class="confetti" style="top:140px"><img src="<%=Application("img_path_russel")%>/intro/2024/first/confetti.png" alt="" /></div>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="" /></p>
                <p class="r-tit mt60">의학계열 <strong>94명</strong>, SKY <strong>35명</strong> 합격</p>
                <ul class="num-list gold03">
                    <li>
                        <p>
                            의예과<br>
                            <strong>48</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            치의예<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            약학과<br>
                            <strong>30</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            한의예<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            수의예<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            SKY<br>
                            <strong>35</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="result-txt">
                    상위 11개 대학 96명 합격, 최종 합격자 190명<br>
                    <span>* 2023학년도 수능응시 262명 기준</span>
                </p>
                <div class="info-stxt" style="top:780px">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        1) 2023학년도 러셀CORE 광주 재원생의 합격 결과 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                        2) 러셀CORE 광주 의치한수약 배출 94명(연의 2명, 고의 3명, 중복 합격자 포함)<br>
                        3) 러셀CORE 광주 재원생  서울대, 연세대, 고려대 최종 합격자 35명 기준(의예과 5명 중복 합격자 포함)<br>
                        (2023. .02. 28 기준)
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0001" Then '대치 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box no-bg">
                <p><img src="<%=Application("img_path_russel")%>/russel/2024/first/cont01-1_stit.png" alt="러셀 대치 최상위권 입시 결과" /></p>
                <ul class="num-list gold04">
                    <li>
                        <p>
                            2018/2020<sup>1)</sup><br>
                            <strong>수능 만점자 배출</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            2021<sup>2)</sup><br>
                            <strong>수능 전국 수석 배출</strong>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold05">
                    <li>
                        <p>
                            2023 대입 서울대 의예과 4명 포함<sup>3)</sup><br>
                            의/치/한/수/약 &amp; 서/연/고<br>
                            <strong>274명 합격</strong>
                        </p>
                    </li>
                </ul>
                <div class="info-stxt" style="top:560px">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        1) 2018, 2020학년도 수능 실성적 기준 <br>
                        2) 2021학년도 수능 실성적 기준 (*표준점수/백분위 합 기준)<br>
                        3) 2023학년도 러셀 대치 재원생의 합격자 기준 (*복수 대학 합격자 및 중복 합격자 포함)
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box bg-type02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 러셀 평촌 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대<br>
                            <strong>15</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold06">
                    <li>
                        <p>
                            의약학계열<br>
                            <strong>59</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver02">
                    <li>
                        <p>
                            연세대<br>
                            <strong>25</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            고려대<br>
                            <strong>30</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver02">
                    <li>
                        <p>
                            서강대<br>
                            <strong>17</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            성균관대<br>
                            <strong>32</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            한양대<br>
                            <strong>18</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver02">
                    <li>
                        <p>
                            중앙대<br>
                            <strong>40</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            한국외대<br>
                            <strong>9</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            경희대<br>
                            <strong>26</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            특성화대<br>
                            <strong>11</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">* 2022년 러셀 평촌 바른공부 자습전용관 재원생 기준</p>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box bg-type02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="결과로 증명하는 러셀 목동 러셀 목동 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            의예과<br>
                            <strong>19</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            치한수<br>
                            <strong>9</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            약학<br>
                            <strong>8</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            카이스트<br>
                            <strong>3</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            서울대<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            연세대<br>
                            <strong>16</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            고려대<br>
                            <strong>15</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            주요대학<br>
                            <strong>296</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">* 2023학년도 의치한수약+서연고 최종 합격자 수 기준 (홈페이지 대입 실적 기준/2023.02.28 기준)
                </p>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box no-bg">
                <div class="confetti"><img src="<%=Application("img_path_russel")%>/intro/2024/first/confetti02.png" alt="" /></div>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="결과로 증명하는 러셀 목동 러셀 목동 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold07">
                    <li>
                        <p>
                            의 &middot; 치 &middot; 한 &middot; 수 &middot; 약<br>
                            <strong>165</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서울대<br>
                            <strong>52</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            SKY<br>
                            <strong>204</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold06">
                    <li>
                        <p>
                            서 &middot; 성 &middot; 한 &middot; 이<br>
                            <strong>155</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중 &middot; 경 &middot; 외 &middot; 시<br>
                            <strong>163</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            교대 &middot; 경대사관 &middot; 특성화대<br>
                            <strong>60</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            주요 15개 대<br>
                            <strong>608</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">* 2020~2023 러셀 영통 바른공부 자습전용관 재원생 기준(2023.03.24 기준)
                </p>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box no-bg">
                <div class="confetti"><img src="<%=Application("img_path_russel")%>/intro/2024/first/confetti.png" alt="" /></div>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="러셀CORE 대전은 결과로 증명합니다! 2023학년도 대입 합격 현황" /></p>
                <div class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_img01.png" alt="" /></div>
                <ul class="num-list gold07">
                    <li>
                        <p>
                            의예과<br>
                            <strong>42</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            치의예<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            약학과<br>
                            <strong>15</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold07">
                    <li>
                        <p>
                            한의예<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            수의예<br>
                            <strong>5</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            SKY<br>
                            <strong>44</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <div class="info-stxt">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2023-02-23 기준ㅣ 2023학년도 대입에 합격한 러셀CORE 대전 재원생의 결과<br>
                        ※ 본 결과는 최종 합격자를 기준으로 집계하였음
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box no-bg">
                <div class="confetti"><img src="<%=Application("img_path_russel")%>/intro/2024/first/confetti02.png" alt="" /></div>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="최상위권의 선택! 러셀 센텀 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold02 mt60">
                    <li>
                        <p>
                            의예과<br>
                            <strong>67</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            치/한/약/수<br>
                            <strong>39</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서연고<br>
                            <strong>38</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서성한이<br>
                            <strong>43</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중경외시<br>
                            <strong>55</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            건동홍숙<br>
                            <strong>17</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            이공계특성화<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            경찰대&middot;사관학교<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            교원&middot;교육대<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            부산대&middot;경북대<br>
                            <strong>75</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <div class="info-stxt" style="top:545px">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        ※ 러셀 센텀학원 바른공부 자습전용관 재원생 23학년도 합격자 기준<br>
                        (단과 수강생 제외, 복수대학 합격자 포함)
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0244" Then '분당 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box no-bg">
                <div class="confetti"><img src="<%=Application("img_path_russel")%>/intro/2024/first/confetti02.png" alt="" /></div>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="최상위권의 선택! 러셀 센텀 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold02 mt60">
                    <li>
                        <p>
                            의예과<br>
                            <strong>57</strong><span>명</span>
                        </p>
                        <div style="bottom:-35px">서울대 의예과<br>
                        1명 포함</div>
                    </li>
                    <li>
                        <p>
                            치의예과<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            한의예과<br>
                            <strong>5</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            수의예과<br>
                            <strong>7</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            약학대<br>
                            <strong>14</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            서울대<br>
                            <strong>20</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            연&middot;고대<br>
                            <strong>84</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서&middot;성&middot;한&middot;이<br>
                            <strong>105</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중&middot;경&middot;외&middot;시<br>
                            <strong>118</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">러셀 분당 바른공부 자습전용관 재원생 기준<br>
                
                    (복수 대학 합격자 및 수시/정시 중복 합격자 포함, 단과 수강생 미포함)
                    
                </p>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <div class="result-box no-bg">
                <div class="confetti"><img src="<%=Application("img_path_russel")%>/intro/2024/first/confetti02.png" alt="" /></div>
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont01-1_stit.png" alt="최상위권의 선택! 러셀 센텀 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold06 mt60">
                    <li>
                        <p>
                            서울대<br>
                            <strong style="font-size:38px">의예과</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            서울대<br>
                            <strong>14</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            의치한수약<br>
                            <strong>40</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            서연고<br>
                            <strong>61</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서성한이<br>
                            <strong>63</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중경외시<br>
                            <strong>40</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">※ 2023학년도 러셀 중계 바른공부자습전용관 재원생 기준<br>
                중복대학 합격자수 포함 (2023년 2월 16일 기준)
                </p>
            </div>
        </div>
        <% end if %>
    </div>
    <% end if %>
    <!-- //cont01 -->
    <!-- cont02 -->
    <div class="cont02">
        <% If sCampusCode = "CD0247" Then '강남 %>
        <div class="inner02 type02">
            <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 강남에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
            <p class="r-txt">※ 백분위 성적 기준 : 국어, 수학, 탐구(2) 평균 점수 합계
            </p>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>서울대  의예과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 강남 이윤서
                                <br>
                                <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>28점</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“3월 학력평가를 준비할 시간이 있어서 좋았습니다.”

                        </p>
                        <p class="txt">제가 재수를 결심한 것은 고3 현역으로서 
                            수능을 본 다음 날이었습니다.<br>
                            2달간은 운동을 열심히 했습니다. 공부하면서 가장 중요한 것은 체력이라고 생각했기 때문이죠. <br>
                            또, 3월 학력평가를 준비할 시간이 있어서 좋았습니다.
                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>한양대 약학과</strong> 합격</p>
                            </dt>
                            <dd>러셀 강남 김상훈
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>63점</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“입시에 훤한 강사 선생님들께서도<br>
                            &nbsp;&nbsp;커리큘럼을 1년 단위로 괜히 짜는 게 아니라고 생각하기<br>&nbsp;&nbsp;때문에 일찍 시작하게 되었습니다.”
                        </p>
                        <p class="txt">수능이라는 시험을 대비함에 있어서 6개월 이하는 짧다고 느껴졌습니다.<br>
                        사람의 재능, 환경 등에 따라 다르겠지만 입시에 훤한 강사 선생님들께서도 커리큘럼을 1년 단위로 괜히 짜는 게 아니라고 생각하기 때문입니다. 

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대<br>
                                사회환경시스템공학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀 강남 이정현
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>37점</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“작년 수능장에서의 기억을 가진 채로 학습계획을 세울 수<br>
                        
                            &nbsp;&nbsp;있어 유리하다고 생각하여 일찍 시작하게 되었습니다.”
                            
                        </p>
                        <p class="txt">모르는 것을 스스로 터득하는 것이 중요하다고 생각하여
                            <strong>자습시간이 충분</strong>한 러셀학원을 선택하였습니다.<br>
                            그리고 부족한 과목에 대한 <strong>수업을 자율적으로 선택</strong>하여 
                            수강할 수 있다는 점도 좋았습니다.
                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대 <br>
                                융합인문사회과학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀 강남 이혜민
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>43.1점</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“선생님들의 커리큘럼의 출발점과 동시에 시작할 수 있어<br>
                        
                            &nbsp;&nbsp;체계적으로 공부할 수 있었습니다.”
                        </p>
                        <p class="txt">입시 실패로 인해 좌절만으로 가득 찬 시간을 보내기보다는 <strong>빨리 할 수 있는 것을 모색하는 것이 필요하다고 느껴 1월에 시작</strong>하였습니다. 대부분의 선생님이 1월부터 첫 커리를 시작하는데, 그 커리의 출발점을 동시에 시작할 수 있어 체계적으로 공부할 수 있었습니다.

                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <div class="inner02 type02">
            <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 부천에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
            <ul class="review-v-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/cont02_stu_yhb.png" alt="양한빈" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/xRROqKKYvB0?si=-kYLDtWgpprMu9MI');"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_play.png" alt="" /></a>
                        </div>
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>경희대 한의예과(인문) </strong> 합격</p>
                            </dt>
                            <dd>러셀 부천 양한빈</dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="tit">“선생님의 조언을 받으며 쾌적한 공간에서 우수한 학생들과 경쟁할 수 있었습니다.”
                        </p>
                        <p class="txt">자소서나 면접 등 준비해야 할 것이 많아 막막했던 저에게 다양한 자료를 제공해 주셨고, 오랜 시간에 걸쳐 피드백을 해주셨습니다.<br>
                        수능직전까지 다양한 불안에 힘들어하는 저를 응원과 격려로 보듬어 주시면서도 더 앞으로 나아갈 수 있는 방향을 제시해 주셔서 감사드립니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/cont02_stu_kyh.png" alt="김연호" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/qAjoPs7S6co?si=zJSNoO77bwo09CIu');"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_play.png" alt="" /></a>
                        </div>
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>부산대 약학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀 부천 김연호
                            </dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="tit">“러셀 부천학원은 최상위 학생의 집합소이며 경쟁자들이 눈에 보이는 환경에서 공부하는 것이 장점입니다.”
                        </p>
                        <p class="txt">바자관이 개방형 구조로 이루어져 있어 다른 학생들의 공부하는 모습을 보며 더욱 열심히 하고자 하는 의욕을 다질 수 있어서 좋았습니다.<br>
                        또한 공부하다 보면 졸릴 때나 집중이 깨질 때가 있기 마련인데  집중을 유지할 수 있게 면학분위기에 힘 써주셔서 도움이 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/russel_bc/2024/first/cont02_stu_kdh.png" alt="김도현" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/4bRycVxxQE0?si=yQTWIsmOPDH3vNbY');"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_play.png" alt="" /></a>
                        </div>
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대 건축공학과</strong> 합격</p>
                            </dt>
                            <dd>러셀 부천 김도현</dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="tit">“사소한 부분이 스트레스가 될 때가 많은데 스트레스 받지 않도록 세심하게 배려해주신 부분이 좋았습니다.”
                            
                        </p>
                        <p class="txt">책상과 의자가 넓고 좋아 모의고사 시험지를 올려놓아도 자리가 부족하지 않은 점이 큰 장점 중 하나입니다.<br>
                        지우개 가루가 엄청 발생하는데 아침만 되면 싹 청소되어 있어서 스트레스 받지 않았습니다.

                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀CORE 광주에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>서울대 자유전공 </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 광주 백장운
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>90%</strong><br>
                            향상</p>
                            <div class="before">259.5점</div>
                            <div class="after">296점</div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“공부 하기 싫을 때도 주변을 보면서<br>
                            &nbsp;&nbsp;동기부여가 되어 좋았습니다.”
                        </p>
                        <p class="txt">바른공부 자습전용관에서 공부를 하면<br>
                        
                            주변에 앉은 학생들이 우수하여, <strong>공부를 하기 싫을 때도 주변을 보면서 동기부여</strong>가 되었고, 시간표가 수능 일정과 동일하게 구성되어
                            자연스럽게 수능 패턴에 맞게 공부할 수 있었습니다.
                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>조선대 의예과 </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 광주 송다현

                                <br>
                                <span>(재원기간:2022년 6월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>82%</strong><br>
                            향상</p>
                            <div class="before">266.5점</div>
                            <div class="after">289점</div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“담임선생님과의 상담을 통해서<br>
                            &nbsp;&nbsp;어떻게 공부방향을  잡아야 할지 결정할 수 있었습니다.”                            
                        </p>
                        <p class="txt">담임선생님의 격려의 말씀이 항상 저에게 위로가 되었고, 언제나 찾아갈 수 있어 좋았습니다. <br>
                            <strong>담임선생님과 상담을 통해서 어떤 공부방법을 해야할 지 결정할 수 있어 좋은 공부 방법을 알려주었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>전북대 의예과  </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 광주 김준표

                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>81%</strong><br>
                            향상</p>
                            <div class="before">271.5점</div>
                            <div class="after">294.5점</div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“실전과 유사한 환경에서 <br>
                            &nbsp;&nbsp;연습을 할 수 있다는 점이 매우 마음에 들었습니다.”
                        </p>
                        <p class="txt">제가 환경에 예민한 편임에도 넓은 책상, 숯, 공기청정기로 
                            불편함을 느끼지 않았고, 언제든지 공부할 수 있는 바자관과 
                            파이널 기간내 실전과 유사한 환경에서 <strong>실전 모의고사 연습을 할 수 있다는 점이 매우 마음에 들었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>전남대 약학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 광주 정성은
                                <br>
                                <span>(재원기간:2022년 7월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="tit">“최상위권 학생들이 공부하는 모습에 자극을 받아<br>
                            &nbsp;&nbsp;집중할 수 있었습니다.”
                        </p>
                        <p class="txt">러셀에서는 <strong>최상위권 학생들이 바로 옆에서 같이 공부하기에 방심하지 않고 공부할 수 있었습니다. </strong><br>수업과 자습시간에 옆에서 집중하고 있는 친구들을 보면서 자극을 받아 더욱 더 집중할 수 있었습니다. 
                            
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0001" Then '대치 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 대치에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>경희대학교 의예과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 대치 서OO</dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh03.png" alt="경희대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“수능 준비의 마지막 순간을 러셀과 함께하며<br>
                        &nbsp;&nbsp;원하는 결과를 얻었습니다.”
                        </p>
                        <p class="txt">재수를 하면서 지구과학을 처음 시작했기 때문에 1월부터 개념공부를 위주로 러셀에서 수능준비를 시작했습니다. 덕분에 개념을 최대한 빨리 끝낼 수 있어 선생님들의 커리큘럼을 잘 따라갈 수 있었습니다.<br>
                        <br>
                            단과와 자습을 한 건물에서 병행할 수 있어 편리하고  시간절약이 많이 되었습니다, 또한 급식은 신청제도라 내가 원하지않는 메뉴가 나오는 날엔 외식이 가능하여 만족스러웠고 고퀄리티의 모의고사를 매달 실시하여 큰 도움이 되었습니다.
                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>성균관대학교 약학과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 대치 오OO</dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_skk03.png" alt="성균관대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“남들과 달리 일찍 시작하여<br>
                        &nbsp;&nbsp;모든 커리큘럼을 바로 따라잡을 수 있었습니다.”                   
                        </p>
                        <p class="txt">저는 다른 N수생들처럼 3월 이후에 공부를 시작했다가는 뒤쳐질 것 같아 일찍 공부를 시작했습니다. 대부분의 수업이 12월 말~1월 초에 개강하는데 일찍 시작하여 선생님들의 모든 커리큘럼을 모두 따라갈 수 있어 좋았습니다.<br>
                        <br>또 지쳐서 공부가 하기 싫을 때엔 바자관의 개방형 구조 덕분에 다른 친구들의 공부하는 모습을 보고 마음을 다시 다잡고 공부를 이어나갈 수 있었습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>서울대학교 식물생산학과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 대치 정OO</dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu03.png" alt="서울대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“인강으로만 보던 많은 일타 강사분들과 입시 전문가이신<br>
                        &nbsp;&nbsp;담임선생님덕분에 학습적으로 많은 도움을 받았습니다.”
                        </p>
                        <p class="txt">매우 조용한 면학분위기가 좋았습니다. 다른 친구들의 이야기를 들어보면 친목을 하는 친구들로 인해 집중이 깨지는 경우가 있다고 들었는데 러셀은 그런 것 없이 공부에만 집중할 수 있는 분위기였습니다.<br>
                            <br>
                            그리고 수험생활을 하면서 실전형태의 모의고사가 많이 필요하다고 느꼈는데 러셀에서 퀄, 메대프 등 실전형태로 시간을 제한하며 풀게하고 그 성적을 기반으로 승강반제도 등에 러셀 시스템은 굉장히 많은 도움이 되었습니다. 
                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>고려대학교 전기전자공학부  </strong> 합격</p>
                            </dt>
                            <dd>러셀 대치 양OO</dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“나에게 러셀이란 이정표이다.”
                        </p>
                        <p class="txt">러셀의 장점은 자습시간입니다.<br>
                            개인적으로 공부는 혼자서 하는 것이 중요하다고 생각하는 편인데, 러셀은 다른 곳보다 시간의 자율성이 높아 자습시간을 늘릴 수 있었습니다.
                            
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 목동에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>고려대 자유전공 </strong> 합격</p>
                            </dt>
                            <dd>러셀 목동 김현준
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“겨울부터 빠르게 시작했기에
                            <br>
                            &nbsp;&nbsp;생활 패턴을 바로잡아서 집중할 수 있었습니다.”
                        </p>
                        <p class="txt">일찍 시작한 만큼 더 많은 공부를 할 수 있었고, 작년에 채우지 못했던
                            개념을 더 많이 확인할 수 있었습니다. 틀어졌던 생활 패턴을 바로잡을 시간이 있어서 크게 틀어지지 않고 수능 때까지 공부에 집중할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대 응용통계학과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 목동 석지훈
                                <br>
                                <span>(재원기간:2022년 7월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“러셀 목동 바른공부 자습전용관은
                            <br>
                            &nbsp;&nbsp;공부에만 집중할 수 있는 최적의 환경입니다.”                        
                        </p>
                        <p class="txt">러셀의 장점은 공부에만 집중할 수 있는 환경을 만들어 준다는 것입니다. 최상위권 학생들과 같이 공부하면서, 저 스스로에게도 동기부여가 된 것 같습니다. 바자관 분위기는 공부에만 집중할 수 있는 환경이어서 동기부여를 받고 열심히 하고자 하는 마음이 들었던 거 같습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>경희대 한의예과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 목동 박상범
                                <br>
                                <span>(재원기간:2022년 7월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kh03.png" alt="경희대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“일찍 시작하니 꾸준히 공부를 할 수 있게
                            <br>
                            &nbsp;&nbsp;해주는 저의 작은 습관들을 들이게 되었습니다.”
                        </p>
                        <p class="txt">일찍 시작하니 급한 마음이 들지 않았고, 꾸준히 공부를 할 수 있게 해주는 저의 작은 습관들을 들이게 되었습니다. 그 덕분에 슬럼프가 왔을 때도 포기하지 않고 꾸준히 목표를 향해 수능 때까지 나아갈 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>고려대 바이오의공학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀 목동 한예원
                                <br>
                                <span>(재원기간:2022년 3월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“수능은 단거리 달리기가 아닌
                            <br>
                            &nbsp;&nbsp;마라톤으로 긴 기간을 꾸준히 하는 게 중요합니다.”
                        </p>
                        <p class="txt">2월 말에 입시 공부를 시작하였는데 일찍 수능 공부를 시작하게 되니 미리 많은 공부를 해놓을 수 있었습니다. 그 덕에 수능 직전 마지막까지도 심리적 부담감을 조금 줄일 수 있었습니다.  긴 기간을 잡고 꾸준히 열심히 하는 것이 대입 성공의 중요 포인트라고 생각합니다.
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 영통에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>이화여대 의예과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 영통 조윤주
                                <br>
                                <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div class="video-link">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_stu_jyj.jpg" alt="조윤주" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34827669');"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“남들보다 조금 일찍 대입을 시작한 덕분에 
                            <br>
                            &nbsp;&nbsp;조급하지 않은 마음으로 공부에 임할 수 있었던 것 같습니다.”
                        </p>
                        <p class="txt">
                            1년 동안 지치지 않고 달리기 위해선 공부하는 하루하루의 일상이 익숙해져야 한다고 생각합니다. 남들보다 <strong>조금 일찍 대입을 시작</strong>한 덕분에 <strong>빠르게 적응하고 조급하지 않은 마음으로 공부에 임할</strong> 수 있었던 것 같습니다.<br>
                            <br>
                            바자관의 좋았던 점은 <strong>철저한 관리와 공부하기 좋은 시설, 수능 시간표에 맞춰진 시간표</strong>입니다. 학생들이 공부에 완전히 집중할 수 있도록 담임선생님들께서 철저하게 관리해 주셔서 불편함 없이 공부에만 집중할 수 있었습니다.  또한 1년 동안 수능 시간표에 맞게 급식을 먹고 쉬는 시간을 가짐으로써 실제 수능장에서 조금 더 편안한 마음으로 임할 수 있었습니다. <br>
                            <br>
                            러셀학원에서 좋았던 시스템은 <strong>총평노트와 담임선생님</strong>입니다.  <br>
                            메대프나 교육청 모의고사, 평가원 모의고사 이후 모의고사 총평노트를 이용해 시험 자체에 대한 피드백을 할 수 있었습니다. <br>
                            <br>
                            <strong>담임선생님은 저의 지치지 않은 노력의 원동력</strong>이십니다. <br>
                            가장 가까운 위치에서 공부하는 모습을 지켜봐 주시고 저의 변동하는 성적에 대해 계속 함께 고민해 주셨기 때문에 저의 수험생활에 대해 제일 잘 아시는 분이십니다. 그런 분이 곁에서 피드백은 물론이고 칭찬과 응원을 아낌없이 쏟아 주셔서 정말 지칠 틈이 없었습니다. 

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>세명대 한의예과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 영통 정인지
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div class="video-link">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_stu_jij.jpg" alt="정인지" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34827583');"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“대입을 일찍 시작하는 게 남들보다 한 발, 또는 두 발 이상을 
                            <br>
                            &nbsp;&nbsp;먼저 갈 수 있는 기회라고 생각했습니다.”
                        </p>
                        <p class="txt">
                            1월부터 3월 전까지 개념 강의를 끝내면 남들이 3월부터 개념 강의를 듣고 있을 때에 <strong>보다 앞서서 기출문제나 N제를 풀고 있을 것</strong>입니다. <br>
                            <strong>대입을 일찍 시작</strong>하는 게 남들보다 한 발, 또는 두 발 이상을 <strong>먼저 갈 수 있는 기회</strong>라고 생각했습니다.<br>
                            <br>
                            바자관의 장점은 선생님들과 조교님들의 면학분위기 조성이라고 생각합니다.  <strong>졸 때마다 깨워 주시고 학습 지도</strong>도 해 주시고 아침에 졸린 아이들을 모아 두고 스트레칭을 시키는 여러 이벤트나 생활관리 강화 기간의 도입으로 <strong>면학분위기가 조성되는 공간</strong>이라는 것이 러셀에 계속 남게 만든 메리트라고 생각합니다.<br>
                            <br>
                            또한,  거의 매달 응시하는 <strong>메대프 시험에서 제 위치를 확인</strong>하면서 내가 강반 당할 수도 있다는 불안감을 가지게 되어 공부를 하게 하는 동기 부여가 되었습니다.<br>
                            <br>
                            담임선생님의 좋았던 점은 <strong>언제나 상담을 받아 주셨으며</strong> 면학분위기 조성을 위해서 집중 관리 기간을 도입하는 등 저같이 본인이 통제가 되지 않는 학생들을 위하여 <strong>적절한 통제</strong>를 걸어주시는 것이 정말 좋았습니다.
                            
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 코어대전에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대(미래) 의예과 </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 대전 이승섭
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“겨울부터 일찍 시작한 만큼 탄탄한 기본기를 
                            <br>
                            &nbsp;&nbsp;다질 수 있어서 좋았습니다.”
                        </p>
                        <p class="txt">더 많은 공부시간 확보를 위해 새해가 되자 마자 러셀CORE 대전에서 공부를 시작했습니다. 1월에 부족했던 개념들을 다시 한 번 다져 놓아 수험생활 동안 개념에 구멍이 생기지 않았고, 원하는 목표를 이룰 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>을지대 의예과  </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 대전 김우찬
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_eulji02.png" alt="을지대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“시간에 쫓기지 않고 공부를 할 수 있어서 좋았습니다.”             
                        </p>
                        <p class="txt">시간적 여유를 갖고 개념부터 다시 쌓고자 재수를 일찍 시작했습니다.<br>
                            재수를 일찍 시작한 만큼 공부 방향이나 계획을 수정하는 데 있어서 시간적 여유가 있었고, 체계적이고 전략적으로 수능 준비를 할 수 있어서 좋았습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>충북대 의예과  </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 대전 김경호
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cb02.png" alt="충북대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“빠르게 시작했기에 성공적으로 수험생활을<br>
                            &nbsp;&nbsp;마무리 할 수 있었습니다.”
                        </p>
                        <p class="txt">모든 과목을 개념부터 다시 공부하기 위해 일찍 재수를 시작했습니다.
                            일찍 시작하니 개념과 기출문제를 여유 있게 끝낼 수 있었고, 새로운 문제 유형을 충분히 접해볼 수 있는 시간을 확보할 수 있었습니다.                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>서울대 전기정보공학부  </strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 대전 노유찬

                                <br>
                                <span>(재원기간:2022년 7월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu03.png" alt="서울대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“최적의 면학분위기 속에서 공부 할 수 있어서 좋았습니다.”
                        </p>
                        <p class="txt">불필요한 수업은 줄이고 자습시간은 극대화 할 수 있어서 좋았습니다. 또한 탁 트인 개방형 구조의 바자관에서 공부하면서 최상위권 학생들에게 동기부여 받을 수 있었고, 최적의 면학분위기를 위해 항상 노력해주시는 담임선생님 덕분에 쾌적하게 공부 할 수 있었습니다.

                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 센텀에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대 의예과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 센텀 김O재
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>97%</strong><br>
                            향상</p>
                            <div class="before">282.5점</div>
                            <div class="after">299.5점</div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“겨울부터 빠르게 개념부터 정리하며
                            <br>&nbsp;&nbsp;최대한 많은 양을 정확하게 공부했습니다.”
                        </p>
                        <p class="txt">주위의 자극을 받아 집중할 수 있는 개방 형구조가 마음에 들었습니다. 컨디션이 안 좋은 날에도 주위에 열심히 집중하는 친구들을 보면서 자극이 되었고, 흐트러지지 않으려 애쓸 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>서울대 경제학과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 센텀 안O후
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>15%</strong><br>
                            향상</p>
                            <div class="before">281점</div>
                            <div class="after">284점</div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“새롭게 미적분을 선택했기 때문에<br>
                            &nbsp;&nbsp;빠르게 남들을 따라잡고 싶어 대입을 일찍 시작했습니다.”             
                        </p>
                        <p class="txt">러셀의 퀄 모의고사와 메대프 모의고사가 다양하고 퀄리티 있는 문제들을 제공해주어 실전 연습에 많은 도움이 되었습니다. 또한 바자관에서 공부를 하다가도 같은 건물에 있는 단과 강의실로 금방 이동하여 공부시간을 조금이라도 더 벌 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>부산대 의예과   </strong> 합격</p>
                            </dt>
                            <dd>러셀 센텀 정O원
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <div class="before" style="width:37px">*검정고시</div>
                            <div class="after">296.5점</div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph03.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“실전 훈련에만 집중할 수 있도록
                            <br>
                            &nbsp;&nbsp;남들보다 먼저 시작했습니다.”
                        </p>
                        <p class="txt">러셀 단과 수업에서 공통으로 시행하는 퀄 모의고사를 진행하며 수능이라는 시험에 대한 갈피를 잡아갈 수 있었으며 못푼 문제를 이후 해설 강의를 통해 이해하면서 큰 효과를 얻은 것 같습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>건양대 의학과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 센텀 하O혜
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>53%</strong><br>
                            향상</p>
                            <div class="before">220점</div>
                            <div class="after">262.5점</div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“대입을 일찍 시작하면서 취약한 과목을
                            <br>
                            &nbsp;&nbsp;집중적으로 대비할 수 있었습니다.”
                        </p>
                        <p class="txt">출결과 성적 관리 뿐만 아니라, 멘토로서 공부를 어떻게 해야하고 입시전략을 어떻게 짜야 할지에 대해 자세히 조언해주시고 학업과 관련해서 고민이 생겼을 때 바자관 바로 앞에 담임선생님께서 계셔서 쉬는 시간에 쉽게 상담을 받고 공부를 할 수 있어서 좋았습니다.

                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0244" Then '분당 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 분당에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>중앙대 의학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀 분당 김O범
                                <br>
                                <span>(재원기간:2022년 3월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div class="video-link">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_stu_kob.jpg" alt="김O범" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/FL_BLfo7BEQ?si=nVTq8LNvMyITmABF');"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“분당에서 가장 높은 성적대의 학생들이 모여 있는 곳이라  
                            <br>
                            &nbsp;&nbsp;선택하게 되었고, 면학분위기가 좋아서 선택하였습니다.”
                        </p>
                        <p class="txt">탁 트인 책상 구조 덕분에 옆 자리 친구가 바로 보이는 점이 좋았습니다.  같은 반 친구가 열심히 공부하는 모습이 보여, 집중력이 흐트러지거나 졸릴 때 옆 자리 친구를 보며 자극을 받을 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대 융합과학공학부  </strong> 합격</p>
                            </dt>
                            <dd>러셀 분당 박O은
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div class="video-link">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_stu_poe.jpg" alt="박O은" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/uZVcUWYXhGY?si=mOfWp21frg4aF1eE');"><img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“한 두 달도 낭비할 수 없다는 생각에 1월에 등록했습니다. <br>
                            &nbsp;&nbsp;그 결과 1~2월에 상대적으로 여유롭게 전 과목의 개념을 <br>
                            &nbsp;&nbsp;다시 한 번 훑을 수 있었습니다.”
                        </p>
                        <p class="txt">담임선생님이 1년 동안 저의 조언가 역할을 해주셔서 재수생으로서 홀로 선 느낌이 아니라 항상 누군가의 든든한 지원을 받는다는 생각이 들었습니다. 바자관 바로 옆에 계셔서 평소에도 언제든 담임선생님과 상담을 할 수 있어서 정말 좋았습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대 영어영문학과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 분당 이O현

                                <br>
                                <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div class="video-link">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_stu_man.jpg" alt="실루엣(남)" /></span>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“러셀은 제가 듣고 싶은 과목만 들어도 되어서
                            <br>
                            &nbsp;&nbsp;참 좋았던 것 같습니다.”
                        </p>
                        <p class="txt">거의 모든 과목의 단과가 개설되어 있고, 같은 과목이라도 자신의 취향과 실력에 맞는 선생님을 본인이 골라서 들을 수 있다는 점이 좋습니다. 자신에게 최적화된 수업 플랜을 직접, 또는 도움을 받아서 짤 수 있다는 점이 좋았습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>한양대 교육학과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 분당 송O익

                                <br>
                                <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div class="video-link">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_stu_man.jpg" alt="실루엣(남)" /></span>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“같은 건물에 바자관과 강의실이 함께 있었기 때문에 
                            <br>
                            &nbsp;&nbsp;시간을 절약할 수 있어서 매우 좋다고 느꼈습니다.”
                        </p>
                        <p class="txt">주변 환경에 예민한 편이지만 불편함을 느끼지 못했습니다. 항상 환기에 신경써주셔서 쾌적한 공기가 마음에 들었고, 특히 시간표가 수능 시간에 맞춰져 있기 때문에 과목별 계획을 세울 때도 시간을 고려해 학습하기 좋았습니다.

                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 중계에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div class="l-year">2022</div>
                                <p><strong>한양대학교 간호학과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 중계 이채영</dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt mt0">공부 공백기간이 길다 보면 다시 책상에 앉았을 때<br>
                        적응하기 힘들었을 텐데, 겨울부터 일찍 시작하여 수험생활에<br>
                            금방 적응할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div class="l-year">2022</div>
                                <p><strong>서강대학교 기계공학과  </strong> 합격</p>
                            </dt>
                            <dd>러셀 중계 김도헌</dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_sk02.png" alt="서강대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt mt0">겨울부터 빠르게 시작하니 마음의 여유가 조금 생겼고, <br>
                        
                            부족한 과목에 시간을 많이 투자하여 학습량에서도<br>
                            
                            더 많은 성과를 낼 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div class="l-year">2022</div>
                                <p><strong>고려대학교<br>
                                보건정책관리학부  </strong> 합격</p>
                            </dt>
                            <dd>러셀 중계 이신성
                            </dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt mt0">계획을 세우고 수험생활을 다시 시작하다 보니<br>
                            많을 것들을 촉박하지 않게 계획에 넣을 수 있었고,<br> 
                            다른 수험생들보다 일찍 시작했다는 생각에 
                            재수 초반에 조바심을 내지 않을 수 있었습니다. 
                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div class="l-year">2022</div>
                                <p class="two-line"><strong>서강대학교 경영학부  </strong> 합격</p>
                            </dt>
                            <dd>러셀 중계 김선아</dd>
                        </dl>
                        <div>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_sk02.png" alt="서강대" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt mt0">수능 이후, 오래 쉬다가 공부를 다시 시작하면<br>
                            습관이 다 무너져 습관 잡기가 정말 힘들 것 같다고 생각했습니다.<br>
                            이 시간들을 잘 활용하면 많은 것을 할 수 있다고 생각하여 <br>
                            일찍 시작하게 되었습니다. 
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% Else %>
            <% If sCampusCode = "CD0248" Then '평촌 %>
        <h2><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/first/cont02_tit.png" alt="러셀 평촌에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <div class="inner02 type02">
            <% Else %>
        <div class="inner02">
            <h3>러셀에서 한발 더 빠르게 시작한 선배들은<br>
            <strong>최상위권 대입성공을 쟁취</strong>하였습니다.</h3>
            <% End If %>
            <ul class="review-list">
                <% If sCampusCode = "CD0248" Then '평촌 %>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>덕성여대 약학과</strong> 합격</p>
                            </dt>
                            <dd>러셀 평촌 신영진<br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>12.7%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“겨울부터 빠르게 시작했기에<br>
                            &nbsp;&nbsp;개념을 잘 다질 수 있었습니다.”
                        </p>
                        <p class="txt">같은 공부를 다시 하는 것이어도 늦게 시작하면 잘 기억하지 못할 것 같아 일찍 시작했습니다. 아무래도 복기를 더 빨리 시작했기 때문에 <strong>개념을 정리하는 시간을 단축</strong>할 수 있었던 것 같습니다.
                        </p>
                    </div>
                </li>
                <% End If %>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대 의예과</strong> 합격</p>
                            </dt>
                            <dd>러셀 센텀 김민재<br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>97%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“겨울부터 빠르게 시작했기에<br>
                            &nbsp;&nbsp;안정감 있는 수험생활을 보낼 수 있었습니다.”
                        </p>
                        <p class="txt">“최대한 많은 양을 정확하게” 공부하는 것이 수험생의 기본 자세라고
                            생각합니다. 입시가 고도화됨에 따라 풀어야 할 자료가 매우 많기 때문에
                            <strong>겨울부터 빠르게 개념을 정리</strong>했고, 이것이 안정감 있는 수험생활을
                            보내는 데 주효했습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>전북대 의예과</strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 광주 김준표<br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>80.7%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“빠르게 시작했던 점이 본격적으로 공부를 할 때 <br>
                            &nbsp;&nbsp;집중력을 유지하게 하는 원동력이 되었습니다.”
                        </p>
                        <p class="txt"><strong>재수를 결심하고 중요한 것은 수능 학습의 감각을 잃지 않는 것</strong>이라 생각하였고, 빠르게 공부에 집중하기 위해 우선선발반을 선택했습니다.  1~2월을 학습 예열의 기간으로 삼았고, 이것이 3월부터 본격적인 공부를 하면서 <strong>집중력을 유지할 수 있는 원동력</strong>이 되어주었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>인제대 의예과</strong> 합격</p>
                            </dt>
                            <dd>최상위권 남학생 의대전문관 박민규
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>55.8%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“남들보다 일찍 시작했기 때문에<br>
                            &nbsp;&nbsp;더 견고한 실력을 만들 수 있었습니다.”
                        </p>
                        <p class="txt">재수를 결심하고 <strong>일찍 준비해  더 견고한 실력을 가지고 싶었습니다.</strong>  빠르게 시작하여 좋았던 점은 재수생활에 적응할 수 있는 기간을 먼저 가짐으로써 1년을 더 안정적으로 보낼 수 있다고 생각합니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>을지대 의예과</strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 대전 김우찬
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>43.2%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“일찍 시작했기 때문에<br>
                            &nbsp;&nbsp;시간에 쫓기지 않고 공부할 수 있었습니다.”
                        </p>
                        <p class="txt"><strong>시간적 여유를 갖고 개념부터 다시 쌓고자 대입을 일찍 시작</strong>하게 되었습니다. 대입을 일찍 시작하니 공부 방향이나 계획을 수정하는 데 있어서 시간에 쫓기지 않을 수 있었던 것 같습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대</strong>(미래) <strong>의예과</strong> 합격</p>
                            </dt>
                            <dd>러셀CORE 대전 이승섭
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>38.5%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“더 많은 공부시간을 확보할 수 있어<br>
                            &nbsp;&nbsp;탄탄한 기본기를 다질 수 있었습니다.”
                        </p>
                        <p class="txt">빠르게 시작하면 할수록 <strong>더 많은 공부시간을 확보</strong>할 수 있다고 생각하여 2022년이 되자마자 새로운 마음으로 시작하였습니다. <strong>1월에 부족했던 개념들을 다시 한번 다져 놓아</strong> 재수생활 동안 개념에 구멍이 생기지 않았고, 일찍 시작한 만큼 탄탄한 기본기를 다질 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>서울대 경제학과</strong> 합격</p>
                            </dt>
                            <dd>러셀 센텀 안정후
                                <br>
                                <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>15.8%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“빠르게 남들을 따라잡고 싶어<br>
                            &nbsp;&nbsp;러셀 우선선발반을 선택하였습니다.”
                        </p>
                        <p class="txt">새롭게 미적분을 선택하여 배우기 시작했기 때문에, <strong>빠르게 남들을 따라잡고 싶어 대입을 일찍 시작</strong>하게 되었습니다.  바자관은 탁 트인 개방형 구조이기 때문에 혼자가 아닌, 함께 공부한다는 느낌이 들고 다른 친구들을 보며 경쟁심이 생겨 더욱 열심히 공부할 수 있습니다. 
                        </p>
                    </div>
                </li>
                <% If sCampusCode <> "CD0248" Then '평촌 제외 %>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p class="two-line"><strong>덕성여대 약학과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 평촌 신영진
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>12.7%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“복기를 더 빨리 시작했기에 <br>
                            &nbsp;&nbsp;부족한 점을 빠르게 정리할 수 있었습니다.”
                        </p>
                        <p class="txt">같은 공부를 다시 하는 것이어도 늦게 시작하면 잘 기억하지 못할 것 같아 일찍 시작했습니다. 아무래도 복기를 더 빨리 시작했기 때문에 <strong>개념을 정리하는 시간을 단축</strong>할 수 있었던 것 같습니다.
                        </p>
                    </div>
                </li>
                <% End If %>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대<br>
                                융합인문사회과학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀 강남 이혜민
                                <br>
                                <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>43.1%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“선생님들의 커리큘럼의 출발점과 동시에 시작할 수 있어<br>
                            &nbsp;&nbsp;체계적으로 공부할 수 있었습니다.”
                        </p>
                        <p class="txt">입시 실패로 인해 좌절만으로 가득 찬 시간을 보내기보다는 <strong>빨리 할 수 있는 것을 모색하는 것이 필요하다고 느껴 1월에 시작</strong>하였습니다. 대부분의 선생님이 1월부터 첫 커리를 시작하는데, 그 커리의 출발점을 동시에 시작할 수 있어 체계적으로 공부할 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023</div>
                                <p><strong>연세대<br>
                                융합과학공학부 </strong> 합격</p>
                            </dt>
                            <dd>러셀 분당 박예은
                                <br>
                                <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>32.1%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph01.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“간절하면 한두 달도 낭비할 수 없다는 생각에 <br>
                            &nbsp;&nbsp;1월부터 공부를 시작하였습니다.”
                        </p>
                        <p class="txt">재수는 3월부터 시작해도 된다는 말도 간간이 들었는데요. 저는 간절하면 한두 달도 낭비할 수 없다는 생각에 러셀에 1월에 등록했습니다.  그 결과 1,2월에 상대적으로 <strong>여유롭게 다시 한번 전 과목의 개념을 꼼꼼하게 훑을 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div class="l-year">2022</div>
                                <p class="two-line"><strong>한양대 의예과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 대치 한준
                                <br>
                                <span>(재원기간:2021년 1월~2021년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>89%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph02.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“남들보다 빨리 공부를 시작했기에<br>
                            &nbsp;&nbsp;더 빨리 안정적인 궤도에 진입할 수 있었습니다.”
                        </p>
                        <p class="txt">남들보다 빨리 공부를 시작했기에 <strong>취약한 과목을 집중적으로 공략</strong>할 수 있었고, 더 빨리 안정적인 궤도로 진입할 수 있었습니다.  바른공부 자습전용관에서 빠르게 공부를 시작한 친구들의 모습이 큰 동기부여가 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div class="l-year">2022</div>
                                <p><strong>경상대 의예과 </strong> 합격</p>
                            </dt>
                            <dd>러셀 센텀 손영우<br>
                                <span>(재원기간:2021년 1월~2021년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>89%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph02.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“수능에 대한 기억이 생생히 남아 있어서 <br>&nbsp;&nbsp;부족한 점을 빠르게 점검할 수 있었습니다.”
                        </p>
                        <p class="txt">“할거면 제대로 해보자!”라고 생각해서 우선선발반이 시작한 날부터 들어갔습니다. <strong>수능에 대한 기억이 남아있는 상태에서 부족한 점을 점검</strong>해 볼 수 있었고,  선택과목을 변경했는데 일찍 시작함으로써 작년에 그 과목을 치룬 학생들과 비슷한 수준에서 시작할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt><div class="l-year">2022</div>
                                <p><strong>서울대 인문계열 </strong> 합격</p>
                            </dt>
                            <dd>러셀 목동 우정민<br>
                                <span>(재원기간:2021년 1월~2021년 수능까지)</span>
                            </dd>
                        </dl>
                        <div>
                            <p><strong>84%</strong><br>
                            향상</p>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont02_graph02.jpg" alt="" /></div>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">“빠르게 준비를 시작하는 것이<br>
                            &nbsp;&nbsp;시간 관리에 큰 도움이 되었습니다.”
                        </p>
                        <p class="txt"><strong>빠르게 준비를 시작하는 것이 시간 관리에 더욱 도움</strong>이 될 것 같아 빠르게 시작하였습니다. 좋은 점은 수험생활에 집중할 수 있다는 점, 그리고 효과적으로 시간을 쓸 수 있다는 점입니다.
                        </p>
                    </div>
                </li>
            </ul>
        </div>
        <% end if %>
    </div>
    <!-- //cont02 -->
</div>