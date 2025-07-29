
<div class="cont01 js-cont <%=campusName%>">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_tit.jpg" alt="성공적인 반수를 위한 변함없는 공식, 최상위권 대입 결과로 증명된 러셀 반수반"></p>
    <% If campus_code = "INTRO" Then '인트로 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list">
            <ul>
                <li>
                    <div>
                        <p>메이저 의대</p>
                        <p><strong>115</strong>명<sup>1)</sup></p>
                    </div>
                    <p class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/ico_badge.png" alt="뱃지"></p>
                </li>
                <li>
                    <div>
                        <p>전국 의예과</p>
                        <p><strong>1,269</strong>명<sup>2)</sup></p>
                    </div>
                    <p class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/ico_badge.png" alt="뱃지"></p>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        <p>의&middot;치&middot;한&middot;약&middot;수</p>
                        <p><strong>2,220</strong>명<sup>3)</sup></p>
                    </div>
                    <p class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/ico_badge.png" alt="뱃지"></p>
                </li>
                <li>
                    <div>
                        <p>서울대 의예과</p>
                        <p><strong>13</strong>명<sup>4)</sup></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>서울대</p>
                        <p><strong>243</strong>명<sup>5)</sup></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>서울대&middot;연세대&middot; <br> 고려대</p>
                        <p><strong>1,224</strong>명<sup>6)</sup></p>
                    </div>
                    <p class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/ico_badge.png" alt="뱃지"></p>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            ※ 최종 업데이트 : 2025-03-25 기준｜2025학년도 대입에 합격한 러셀 학원 재원생의 결과 (단과 수강생 제외/복수 대학 포함) <br>
            ※ 본 결과는 최상위권 전문관(구 양지 기숙), 자연계 전문관(구 서초 기숙), 서의치관, 남의대관, 여의대관, 안성기숙 입결 결과가 포함되어 있습니다. <br> <br>
            1) 2020-2025학년도 러셀에서 배출한 메이저 의대 합격자 중 2025학년도 최다 배출 <br>
            ㄴ 2025학년도 메이저 의대(서울대 13명, 연세대 16명, 가톨릭대 18명, 성균관대 22명, 고려대 22명, 울산대 24명) <br>
            2) 2020-2025학년도 러셀에서 배출한 전국 의예과, 의학과, 의과대학 합격자 중 2025학년도 최다 배출 <br>
            3) 2020-2025학년도 러셀에서 배출한 전국 의·치·한·약·수 (석학사 통합과정 포함) 합격자 중 2025학년도 최다 배출 <br>
            4) 2025학년도 러셀에서 배출한 서울대 의예과 합격자 수  <br>
            5) 2025학년도 러셀에서 배출한 서울대 합격자 수  <br>
            6) 2020-2025학년도 러셀에서 배출한 서울대, 연세대, 고려대 합격자 중 2025학년도 최다 배출 <br>
            ㄴ (서울대 243명, 연세대 418명, 고려대 563명)       
        </div>
    </div>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt02.jpg" alt="러셀 수험생의 성적 향상"></p>

        <!-- 그래프(도넛, 막대) -->
        <!-- <div class="h-box-graph">
            <div class="doughnut">
                <p>
                    <strong><span>10명 중 9명</span><sup>1)</sup> 성적 상승</strong><br>
                    <span>※ 상위권 재원생 기준</span><sup class="small-txt">2)</sup>
                </p>
                <div class="chart-area">
                    <canvas id="doughnut-chart"></canvas>
                    <div class="chart-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/doughnut_img.png" alt="" /></div>
                </div>
            </div>
            <div class="bar-graph">
                <p>
                    <strong>5개년 평균<sup>3)</sup> 성적향상 점수</strong><br>
                    <span>※ 전체 재원생 중 성적 상승 인원 기준</span><sup class="small-txt">4)</sup>
                </p>
                <div class="graph-con">
                    <span class="bar-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/bar_graph_bg.png" alt="" /></span>
                    <span class="balloon"><strong>33.4점</strong> 향상</span>
                    <span class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/bar_graph_arrow.png" alt="" /></span>
                </div>
            </div>
        </div> -->

        <div class="h-box-graph">
            <div class="doughnut">
                <p>
                    <strong><span>10명 중 9명</span><sup>1)</sup> 성적 상승</strong><br>
                    <span>※ 상위권 재원생 기준</span><sup class="small-txt">2)</sup>
                </p>
                <div class="chart-area">
                    <div class="chart-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/doughnut_img02.png" alt="" /></div>
                    <p class="d-text">
                        5개년 평균 <br>
                        <strong>
                            <span>92.1%</span><br>
                            성적 상승
                        </strong>
                    </p>
                </div>
            </div>
            <div class="bar-graph">
                <p>
                    <strong>5개년 평균<sup>3)</sup> 성적향상 점수</strong><br>
                    <span>※ 전체 재원생 중 성적 상승 인원 기준</span><sup class="small-txt">4)</sup>
                </p>
                <div class="graph-con">
                    <span class="bar-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/bar_graph_bg.png" alt="" /></span>
                    <span class="balloon"><strong>33.4점</strong> 향상</span>
                    <span class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/bar_graph_arrow.png" alt="" /></span>
                </div>
            </div>
        </div>
        <!-- //그래프(도넛, 막대) -->
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            1) 국수탐(2) 백분위 합 '국어(100)'+'수학(100)'+'탐구 두 과목의 평균(100)' 값으로 300점 만점 기준 <br>
            2) 2021~2025학년도 러셀 당해연도 재원한 'N수 이상' 인원 중, '입학(직전년도) 수능'과  <br>
               '졸업(해당연도) 수능' 국수탐(2) 백분위 값이 모두 있는 인원 중 졸업 수능 국수탐(2) 백분위 합 인문 270, 자연 280 이상 <br>
            3) 국수탐(2) 백분위 합 '국어(100)'+'수학(100)'+'탐구 두 과목의 평균(100)' 값으로 300점 만점 기준 졸업 성적 - 입학 성적   <br>
            4) 2021~2025학년도 러셀 당해연도 재원한 'N수 이상' 인원 중, '입학(직전년도) 수능'과  <br>
               '졸업(해당연도) 수능' 국수탐(2) 백분위 값이 모두 있는 인원만 반영          
        </div>
    </div>
    <% ElseIf campus_code = "CD0001" Then '대치 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type02">
            <div class="pic-wrap">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/result_stu01.png" alt="학생1"></p>
                <ul>
                    <li>
                        <div>
                            <p>
                                2018 <sup>1)</sup>
                            </p>
                            <p><strong>수능 만점자 배출</strong></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="pic-wrap">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/result_stu02.png" alt="학생2"></p>
                <ul>
                    <li>
                        <div>
                            <p>
                                2020 <sup>2)</sup>
                            </p>
                            <p><strong>수능 만점자 배출</strong></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="pic-wrap">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/result_stu03.png" alt="학생3"></p>
                <ul>
                    <li>
                        <div>
                            <p>
                                2021 <sup>3)</sup>
                            </p>
                            <p><strong>수능 전국 수석 배출</strong></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="pic-wrap">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/result_stu04.png" alt="학생4"></p>
                <ul>
                    <li>
                        <div>
                            <p>
                                2025 <sup>4)</sup>
                            </p>
                            <p><strong>수능 만점자 배출</strong></p>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="pic-wrap">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/result_stu_m.png" alt="남자1"></p>
                <ul>
                    <li>
                        <div>
                            <p>
                                2025 <sup>4)</sup>
                            </p>
                            <p><strong>수능 만점자 배출</strong></p>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <!-- <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt02.jpg" alt="2024 최상위권 입시 결과"></p>
        <div class="result-list type01">
            <ul>
                <li>
                    <div>
                        <p>
                            2024 대입 <sup>4)</sup> <br>
                            메이저 의예과
                        </p>
                        <p><strong>총 35명 합격</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>
                            2024 대입 <sup>4)</sup> <br>
                            전국 의예과
                        </p>
                        <p><strong>총 119명 합격</strong></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>
                            2024 대입 <sup>4)</sup> <br>
                            의/치/한/수/약
                        </p>
                        <p><strong>총 199명 합격</strong></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>
                            2024 대입 <sup>4)</sup> <br>
                            서/연/고
                        </p>
                        <p><strong>총 230명 합격</strong></p>
                    </div>
                </li>
            </ul>
        </div> -->

        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt03.jpg" alt="2024 최상위권 수시 입시 결과"></p>
        <div class="result-list type01">
            <ul>
                <li>
                    <div>
                        <p>
                            2025 대입 <sup>4)</sup> <br>
                            메이저 의예과
                        </p>
                        <p><strong>총 21명 합격</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>
                            2025 대입 <sup>4)</sup> <br>
                            전국 의예과
                        </p>
                        <p><strong>총 130명 합격</strong></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>
                            2025 대입 <sup>4)</sup> <br>
                            의/치/한/수/약
                        </p>
                        <p><strong>총 216명 합격</strong></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>
                            2025 대입 <sup>4)</sup> <br>
                            서/연/고
                        </p>
                        <p><strong>총 210명 합격</strong></p>
                    </div>
                </li>
            </ul>
        </div>

    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            1) 2018학년도 수능 실성적 기준 <br>
            2) 2020학년도 수능 실성적 기준 <br>
            3) 2021학년도 수능 실성적 기준 (*표준점수/백분위 합 기준) <br>
            4) 2025학년도 러셀 대치 재원생의 합격자 기준(*복수대학 합격자 및 중복 합격자 포함)  
        </div>
    </div>
    <% ElseIf campus_code = "CD0245" Then '목동 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>의예과</p>
                        <p><strong>102</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>치한수</p>
                        <p><strong>60</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>약학과</p>
                        <p><strong>62</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>과학기술원</p>
                        <p><strong>18</strong>명</p>
                        <span>카이스트 8명 포함</span>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서울대</p>
                        <p><strong>34</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>연세대</p>
                        <p><strong>89</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>고려대</p>
                        <p><strong>105</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>교대 외 <br> 특수 대학</p>
                        <p><strong>59</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>최상위권 주요대학</p>
                        <p><strong>1,389</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            *러셀 목동 2022-2025학년도 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 포함, 단과 수강생 미포함)
        </div>
    </div>
    <% ElseIf campus_code = "CD0244" Then '분당 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        
        <div class="result-list type04">
            <ul>
                <li>
                    <div>
                        <p><strong>974</strong>명 합격</p>
                    </div>
                </li>
            </ul>
        </div>

        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>수능만점자<sup>3)</sup></p>
                        <p><strong>4</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서울대 의예</p>
                        <p><strong>9</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>메이저 의대</p>
                        <p><strong>44</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>의예</p>
                        <p><strong>231</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>메디컬</p>
                        <p><strong>437</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서울대</p>
                        <p><strong>116</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>연세대</p>
                        <p><strong>218</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>고려대</p>
                        <p><strong>200</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
        
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt02.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>메이저 의예<sup>4)</sup></p>
                        <p><strong>13</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>의예</p>
                        <p><strong>48</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>치의예</p>
                        <p><strong>17</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>한의예</p>
                        <p><strong>15</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>약학</p>
                        <p><strong>32</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>수의예</p>
                        <p><strong>15</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서울대</p>
                        <p><strong>31</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>카이스트</p>
                        <p><strong>6</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>연세대</p>
                        <p><strong>48</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>고려대</p>
                        <p><strong>45</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>서&middot;성&middot;한&middot;이</p>
                        <p><strong>98</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>중&middot;경&middot;외&middot;시</p>
                        <p><strong>104</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            러셀 분당 20~24학년도 바른공부 자습전용관 재원생만을 대상으로 한 결과 (단과만 수강생 미포함, 중복 대학 합격자 포함) <br>
            1) 홈페이지에 입시 결과를 공개한 분당 지역 학원 중 의치한약수+SKY 합격생 수 기준 <br>
            2) 최상위권 대학(의예, 치의예, 한의예, 약학, 수의예, 서울대, 연세대, 고려대) <br>
            3) 20학년도 2명, 21학년도 1명, 25학년도 1명(바자관 이력이 있는 학생 중 수능 실채점 만점자) <br>
            4) 메이저 의예(서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대)            
        </div>
    </div>
    <% ElseIf campus_code = "CD0343" Then '코어원주 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>서울대</p>
                        <p><strong>1</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>전국 의예</p>
                        <p><strong>29</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>메디컬 <span>(의&middot;치&middot;한&middot;수&middot;약)</span></p>
                        <p><strong>50</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서&middot;연&middot;고</p>
                        <p><strong>9</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>주요 15개 대학</p>
                        <p><strong>70</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>교대</p>
                        <p><strong>8</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            ※ 2024년 러셀CORE 원주 바른공부 자습전용관 재원생 합격자 기준<br>
            
            ※ 복수 대학 합격자 포함<br>
            ※ 주요 15개 대학: 서울/연세/고려/서강/성균관/한양/이화/중앙/경희/외대/시립/건국/동국/홍익/숙명<br>
            ※ 최종 업데이트: 2025-03-26

        </div>
    </div>
    <% ElseIf campus_code = "CD0346" Then '코어청주 %>
    <div class="inner">
        <!-- 청주 입결 슬라이드 -->
        <div class="result-slide swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div>
                        <p>
                            <strong>순천향대 의예과 합격</strong>
                            [HS반] 송OO
                            <!-- <span>* 재원기간 24년 1월~수능까지</span> -->
                        </p>
                        <ul>
                            <li>
                                <div>
                                    <strong>2025 수능 285</strong>
                                    2024 수능 245.5
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_arrow.png" alt="상승 화살표"></p>
                            </li>
                        </ul>
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>2025 <br> 수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <td>2024 <br> 수능</td>
                                    <td>4</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>4</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div>
                        <p>
                            <strong>세명대 한의예과 합격</strong>
                            [서의치반] 연OO
                            <!-- <span>* 재원기간 24년 1월~수능까지</span> -->
                        </p>
                        <ul>
                            <li>
                                <div>
                                    <strong>2025 수능 281</strong>
                                    2024 수능 238
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_arrow.png" alt="상승 화살표"></p>
                            </li>
                        </ul>
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>2025 <br> 수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>3</td>
                                </tr>
                                <tr>
                                    <td>2024 <br> 수능</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>4</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div>
                        <p>
                            <strong>연세대 화학과 합격</strong>
                            [HS반] 신OO
                            <!-- <span>* 재원기간 24년 1월~수능까지</span> -->
                        </p>
                        <ul>
                            <li>
                                <div>
                                    <strong>2025 수능 290</strong>
                                    2024 수능 237.5
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_arrow.png" alt="상승 화살표"></p>
                            </li>
                        </ul>
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                                <col style="width: 20%;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>2025 <br> 수능</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>2024 <br> 수능</td>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>5</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div>
                        <p>
                            <strong>경상대 약학과 합격</strong>
                            [HS반] 이OO
                            <!-- <span>* 재원기간 24년 3월~수능까지</span> -->
                        </p>
                        <ul>
                            <li>
                                <div>
                                    <strong>2025 수능 279</strong>
                                    2024 수능 184
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_arrow.png" alt="상승 화살표"></p>
                            </li>
                        </ul>
                        <table class="tbl-type01">
                            <colgroup>
                                <col style="width: %;">
                                <col style="width: %;">
                                <col style="width: %;">
                                <col style="width: %;">
                                <col style="width: %;">
                            </colgroup>
                            <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>2025 <br> 수능</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <td>2024 <br> 수능</td>
                                    <td>4</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>7</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
            <div class="swiper-pagination type01"></div>
        </div>
        <!-- //청주 입결 슬라이드 -->
    </div>
    <% ElseIf campus_code = "CD0247" Then '강남 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="러셀 강남 최상위권 대학 합격자 현황"></p>
        <div class="result-list">
            
            <div class="result-list type04">
                <ul>
                    <li>
                        <div>
                            <p>5개년 연속 <br> <strong>서울대 의예과</strong> 합격</p>
                        </div>
                    </li>
                </ul>
            </div>
            
            <ul class="type-img">
                <li>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_01.png" alt=""></p>
                    <p>2023학년도<br><strong>이윤서 학생</strong></p>
                </li>
                <li>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_w.png" alt=""></p>
                    <p>2023학년도<br><strong>김OO 학생</strong></p>
                </li>
                <li>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_w.png" alt=""></p>
                    <p>2022학년도<br><strong>서OO 학생</strong></p>
                </li>
                <li>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_m.png" alt=""></p>
                    <p>2021학년도<br><strong>김OO 학생</strong></p>
                </li>
                <li class="mb0">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_02.png" alt=""></p>
                    <p>2020학년도<br><strong>양지헌 학생</strong></p>
                </li>
                <li class="mb0">
                    <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_w.png" alt=""></p>
                    <p>2019학년도<br><strong>이OO 학생</strong></p>
                </li>
            </ul>

            <div class="result-list type04">
                <ul>
                    <li>
                        <div>
                            <p>의학계열 누적 합격생 <br> <strong>711명</strong> 배출</p>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="result-list type01">
                <ul>
                    <li>
                        <div>
                            <p>의예과</p>
                            <p><strong>388명</strong></p>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li>
                        <div>
                            <p>치의예과</p>
                            <p><strong>81명</strong></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>한의예과</p>
                            <p><strong>117명</strong></p>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li>
                        <div>
                            <p>수의예과</p>
                            <p><strong>35명</strong></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>약학과</p>
                            <p><strong>90명</strong></p>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="result-list type04">
                <ul>
                    <li>
                        <div>
                            <p>최상위권 대학 <br> 누적 합격 현황</p>
                        </div>
                    </li>
                </ul>
            </div>

            <div class="result-list type01 second">
                <ul>
                    <li>
                        <div>
                            <p>의치한수약</p>
                            <p><strong>711명</strong></p>
                        </div>
                    </li>
                    <span>
                        의예과 388명, 치의예과 81명, <br>
                        한의예과 117명, 수의예과 35명, 약학과 90명
                    </span>
                </ul>
                <ul>
                    <li>
                        <div>
                            <p>서연고</p>
                            <p><strong>694명</strong></p>
                        </div>
                    </li>
                    <span>서울대 132명, 연세대 271명, 고려대 291명</span>
                </ul>
                <ul>
                    <li>
                        <div>
                            <p>서성한이중경외시<br>
                                + 카이스트, 포항공대</p>
                            <p><strong>1,414명</strong></p>
                        </div>
                    </li>
                </ul>

            </div>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            2018-2025학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함)(2025-03-07 기준)
        </div>
    </div>
    <% ElseIf campus_code = "CD0250" Then '부천 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type04">
            <ul>
                <li>
                    <div>
                        2025학년도 <br>의치한수약 합격
                        <p><strong>48</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        2025학년도 <br>서울대 합격
                        <p><strong>14</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        2025학년도 <br>연고대 합격
                        <p><strong>50</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
        <!-- <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>서성한이</p>
                        <p><strong>45</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>중경외시</p>
                        <p><strong>27</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>특수 대학*</p>
                        <p><strong>11</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>기타대학**</p>
                        <p><strong>41</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
        <p class="r-txt">
            *특수대학: KAIST, POSTECH, DGIST, GIST, UNIST, KENTECH, <br> 경찰대, 공군사관, 해군사관, 육군사관, 간호사관 <br>
            **기타대학: 건동홍숙, 인하, 아주, 교대
        </p> -->
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            2024년 러셀 부천 바른공부 자습전용관 재원생 기준(중복합격자 포함/2025.02.21 기준)
  
        </div>
    </div>
    <% ElseIf campus_code = "CD0249" Then '영통 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type04">
            <ul>
                <li>
                    <div>
                        의&middot;치&middot;한&middot;수&middot;약
                        <p><strong>299</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        서울대
                        <p><strong>76</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        SKY
                        <p><strong>327</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>서&middot;성&middot;한&middot;이</p>
                        <p><strong>282</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>중&middot;경&middot;외&middot;시</p>
                        <p><strong>284</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p class="smaller">교대&middot;경대사관 <br> &middot;특성화대</p>
                        <p><strong>97</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>주요 15개 대</p>
                        <p><strong>1,059</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            ※ 2020~2025학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2025.03.04 기준)   
        </div>
    </div>
    <% ElseIf campus_code = "CD0246" Then '센텀 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul style="justify-content: center;">
                <li>
                    <div>
                        <p>의예과</p>
                        <p><strong>71</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>치/한/약/수</p>
                        <p><strong>35</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서연고</p>
                        <p><strong>32</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서성한이</p>
                        <p><strong>56</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>중경외시</p>
                        <p><strong>41</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>건동홍숙</p>
                        <p><strong>23</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>이공계특성화</p>
                        <p><strong>7</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>경찰대&middot;사관학교<br>&middot;교육대</p>
                        <p><strong>4</strong>명</p>
                    </div>
                </li>                
                <li class="mb0">
                    <div>
                        <p>부산대&middot;경북대</p>
                        <p><strong>62</strong>명</p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">※ 러셀 센텀학원 바른공부 자습전용관 재원생 25학년도 합격자 기준 <br> (단과 수강생 제외, 복수대학 합격자 포함)
            </p>
        </div>
    </div>
    <div class="result-wrap mt20">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt02.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul style="justify-content: center;">
                <li>
                    <div>
                        <p>의예과</p>
                        <p><strong>294</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>치/한/약/수</p>
                        <p><strong>194</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서연고</p>
                        <p><strong>193</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서성한이</p>
                        <p><strong>275</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>중경외시</p>
                        <p><strong>245</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>건동홍숙</p>
                        <p><strong>116</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>이공계특성화</p>
                        <p><strong>34</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>경찰대&middot;사관학교<br>&middot;교육대</p>
                        <p><strong>66</strong>명</p>
                    </div>
                </li>                
                <li class="mb0">
                    <div>
                        <p>부산대&middot;경북대</p>
                        <p><strong>384</strong>명</p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">※ 러셀 센텀학원 바른공부 자습전용관 재원생 20~25학년도 합격자 기준 <br>
                (단과 수강생 제외, 복수대학 합격자 포함)
            </p>
        </div>
    </div>
    <% ElseIf campus_code = "CD0341" Then '대전 %>
    <div class="result-wrap">
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>
                            2025학년도 최종 합격 <br>
                            서울대학교 의예과
                        </p>
                        <p><strong>4명</strong></p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>
                            2025학년도 최종 합격 <br>
                            전국 의예
                        </p>
                        <p><strong>92명</strong></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>
                            2025학년도 최종합격 <br>
                            의/치/한/약/수
                        </p>
                        <p><strong>126명</strong></p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>
                            2025학년도 최종합격 <br>
                            SKY / KAIST
                        </p>
                        <p><strong>21명</strong></p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="result-list type04">
            <ul>
                <li>
                    <div>
                        서울대 <br> 의예
                        <p><strong>4</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        메이저 <br> 의예
                        <p><strong>6</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        전국 <br> 의예과
                        <p><strong>92</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li class="mb0">
                    <div>
                        메디컬 <br> <span>(의/치/한/약/수)</span>
                        <p><strong>126</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        SKY/포항공대/ <br> 카이스트
                        <p><strong>21</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            ※ 최종 업데이트 : 2025-02-28 기준 <br>
            ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준 <br>
            (단과 수강생 제외/복수대학 합격자 포함) <br>
            ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예
        </div>
    </div>
    <% ElseIf campus_code = "CD0349" Then '울산 %>
    <div class="result-wrap">
        <div class="result-list type04">
            <ul>
                <li>
                    <div>
                        메이저 의예
                        <p><strong>2</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        전국 의예과
                        <p><strong>29</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        치한수약학
                        <p><strong>31</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        서울대
                        <p><strong>2</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        서연고
                        <p><strong>26</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        KAIST
                        DGIST <br>
                        UNIST
                        <p><strong>13</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        서성한
                        <p><strong>22</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        중경외시이
                        <p><strong>29</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li class="mb0">
                    <div>
                        건동홍숙
                        <p><strong>18</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        지방거점 국립대
                        <p><strong>53</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>        
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            ※ 최종 업데이트 : 2025-03-10｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다. <br>
            ※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
            ※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과

        </div>
    </div>
    <% ElseIf campus_code = "CD0257" Then '중계 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt02.jpg" alt="2025학년도 대입 합격 결과"></p>
        <div class="result-list type04">
            <ul class="mt0">
                <li>
                    <div>
                        의예과
                        <p><strong>26</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        의치한약수
                        <p><strong>52</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>서연고</p>
                        <p><strong>58</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>서성한이</p>
                        <p><strong>55</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>중경외시</p>
                        <p><strong>48</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
        <p class="r-txt">
            *2025학년도 러셀 중계 바른공부 자습전용관 재원생 기준<br>
            (복수 대학 합격자 중복 포함, 단과 수강생 미포함(2025-05-11 기준))
        </p>
    </div>
    <% ElseIf campus_code = "CD0248" Then '평촌 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>메이저 의예</p>
                        <p><strong>2</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        <p>의약학계열</p>
                        <p><strong>58</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서울대</p>
                        <p><strong>16</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>연고대</p>
                        <p><strong>62</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서&middot;성&middot;한&middot;이</p>
                        <p><strong>103</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>중&middot;경&middot;외&middot;시</p>
                        <p><strong>79</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>건&middot;동&middot;홍&middot;숙</p>
                        <p><strong>63</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            - 최종 업데이트: 2025.02.28 기준 <br>
            - 2025학년도 수시, 정시 합격 기준/ 러셀 평촌 바른공부 자습전용관 재원생 합격생 기준(단과 수강생 제외/ 복수대학 합격자 포함)<br>
            - 메이저 의예 : 서울대, 연세대(서울), 성균관대, 가톨릭대, 울산대, 고려대<br>
            - 의약학계열 : 전국 의예과/ 의학과/ 의과대학, 전국 치의예과, 전국 한의예과, 전국 약학과/약학부, 전국 수의예과 모든 대학             
        </div>
    </div>
    <% ElseIf campus_code = "CD0342" Then '대구 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>연세대 의예</p>
                        <p><strong>1</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>성균관대 의예</p>
                        <p><strong>2</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>메이저 의예</p>
                        <p><strong>12</strong>명</p>
                        <span style="bottom: calc(-54vw / 7.2);">(서울대, 연세대, 성균관대, <br> 가톨릭대, 울산대 기준)</span>
                    </div>
                </li>
                <li>
                    <div>
                        <p>전국 의예</p>
                        <p><strong>152</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>치&middot;한&middot;수&middot;약&middot;학</p>
                        <p><strong>85</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>서&middot;연&middot;고</p>
                        <p><strong>53</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>서성한이 <br> 과학기술원</p>
                        <p><strong>73</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>경북대</p>
                        <p><strong>68</strong>명</p>
                        <span>(*의약학계열 36명)</span>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            *2024년 러셀 대구 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함) <br>
            *2025.02.07 기준이며, 지속적으로 업데이트 될 예정입니다.            
        </div>
    </div>
    <% ElseIf campus_code = "CD0340" Then '코어광주 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>서울대 의예</p>
                        <p><strong>1</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>메이저 의예</p>
                        <p><strong>10</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>연세대 의예</p>
                        <p><strong>3</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>전국 의예</p>
                        <p><strong>86</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p style="line-height: 2.5;">메디컬 <br> <span>(의치한수약)</span></p>
                        <p><strong>155</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>서연고</p>
                        <p><strong>33</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            * 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2025.02.27 기준) <br>
            (복수 대학 합격자 포함/단과 수강생 제외)<br>
            * 25학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
            * 메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
            
        </div>
    </div>
    <% ElseIf campus_code = "CD0344" Then '코어전주 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <p class="stit">의치한약수 <strong>68명 합격</strong></p>
        <div class="result-list type03">
            <ul>
                <li>
                    <div>
                        <p>메이저 의예과</p>
                        <p><strong>2</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        <p>전국 의예과</p>
                        <p><strong>36</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>치한수약</p>
                        <p><strong>32</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        <p>주요대학/ <br> 교대, 과기원</p>
                        <p><strong>51</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            ※ 최종 업데이트 : 2025-02-24 기준 / 지속 업데이트 예정 <br>
            ※ 2025학년도 수시/정시 최종 합격 기준 (복수 대학 합격자 포함) <br>
            ※ 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 (단과 수강생 미포함)
        </div>
    </div>
    <% ElseIf campus_code = "CD0345" Then '코어창원 %>
    <div class="result-wrap">
        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont01_txt.jpg" alt="2025학년도 러셀 최상위권 대입 결과"></p>
        <div class="result-list type04">
            <ul>
                <li>
                    <div>
                        서울대 의예과

                        <p><strong>1</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li>
                    <div>
                        메이저 의대
                        <p><strong>11</strong>명</p>
                    </div>
                </li>
                <li>
                    <div>
                        전국 의예과
                        <p><strong>44</strong>명</p>
                    </div>
                </li>
            </ul>
            <ul>
                <li class="mb0">
                    <div>
                        의치한약수
                        <p><strong>63</strong>명</p>
                    </div>
                </li>
                <li class="mb0">
                    <div>
                        SKY/KAIST
                        <p><strong>12</strong>명</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- 데이터 산출기준 -->
    <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_info.png" alt=""></span></a>
    <div class="layer-wrap">
        <div class="bg-mask"></div>
        <div class="layer-in">
            <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
            ※ 최종 업데이트 : 2025-03-07 기준 ｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다. <br>
            ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준 (단과 수강생 제외/복수 대학 합격자 포함) <br>
            ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예, 고려대 의예
            
        </div>
    </div>
    <% End If %>


    <% If campus_code = "CD0244" or campus_code = "CD0343" Then '분당/코어원주 %>
    <div class="inner">
        <a href="<%=result_url%>" class="btn-result">대입 합격 결과 자세히 보기</a>
    </div>
    <% End If %>
</div>

<div class="cont02 js-cont <%=campusName%>">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont02_tit.jpg" alt=""></p>
    <% If campus_code = "INTRO" Then '인트로 %>
    <div class="inner">
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        을지대학교 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 대치 박*서
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_pcs.png" alt=""></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    효율적인 학습이 가능했던 
                                    단과 선택과 표준 시간표
                                </strong>
                                저는 자신 있는 과목인 수학은 수업을 듣지 않았고, 부족했던 국어와 영어는 단과 수업을 들으며 공부했습니다. 원하는 단과 수업을 선택함으로써 시간을 효율적으로 쓸 수 있었습니다. 
                                또한 바자관의 시간표가 수능형 리듬으로 짜여 있는 게 좋았습니다. 아침에 머리를 가볍게 예열하고 수능과 같이 국어, 수학을 오전에, 영어, 탐구를 오후에 공부하였고, 저녁에는 그날 부족했던 과목을 추가적으로 공부할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        동아대학교 <br>
                                        의예과 합격
                                    </strong>
                                    여학생 전문관 러셀 기숙 최*원
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_cjw.png" alt=""></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    학습에만 집중할 수 있는 환경과 
                                    실전 최적화된 시스템                                        
                                </strong>
                                정말 공부에만 집중할 수 있는 환경이 조성되어 있다는 것이 큰 장점인 것 같습니다. 학원 내부는 항상 조용하기 때문에 어디서든지 공부를 할 수 있어 시간을 낭비하지 않고 알차게 쓸 수 있었습니다. 또한 다양한 실전 모의고사를 접할 수 있다는 것이 좋았습니다. 시험이 다가올수록 실전처럼 연습해 보고 싶다는 생각이 많이 들었습니다. 학원에서 모의고사 강의실을 운영하고 각종 모의고사 현장 응시를 통해 실전 연습을 충분히 해볼 수 있었다는 점이 좋았습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        가천대학교 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 센텀 박*효
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_pjh.png" alt=""></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    시간을 효율적으로 
                                    사용할 수 있는 동선 최소화                                                                         
                                </strong>
                                프린터가 학원에 배치되어 있어 필요한 자료를 바로 뽑아 사용할 수 있어 시간 단축에 좋았고, 밥을 먹은 후 간단한 단체 체조를 통해 공부에 바로 집중할 수 있었던 점도 좋았습니다. 또한 모든 학원의 시스템이 한 건물에 있어 학습 동선을 최소화하여 시간 낭비 없이 공부할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        연세대학교 <br>
                                        영어영문학과 합격
                                    </strong>
                                    러셀 대치 이*중
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_lgj.png" alt=""></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    최적의 입시 상담으로 
                                    대입 성공의 길을 열어준 선생님                                                                         
                                </strong>
                                저는 현역이 아니라 대학 진학 중 회의를 느끼고 반수를 결심하게 된 케이스라서, 늦은 대입에 부담과 이질감을 종종 느꼈던 것 같습니다. 그러나 담임 선생님의 친절한 지도 덕분에 보다 편안하게 제가 가고 싶은 길에 확신을 가지고 공부에 몰입할 수 있었습니다. 또한 데이터 기반의 입시 상담과 입시 전반 상황에 대해 잘 아시는 만큼, 알게 모르게 많은 의지를 했습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        고려대학교 <br>
                                        경제학과 합격
                                    </strong>
                                    러셀 강남 장*윤
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_sjj.png" alt=""></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    재수의 부담을 덜어주고 
                                    동기부여가 되었던 장학혜택                               
                                </strong>
                                승강반 제도가 저에게 큰 자극점이 되어 좋은 영향을 받았습니다. 재수하면서 월마다 나가는 독서실 비용이 부담스러웠는데 장학제도가 잘 나누어져 있고 학생들의 불이익을 최소한으로 하는 방식으로 구성되어 있어 만족했습니다. 승반만 있는 것이 아니라 강반도 있어, 성적이 떨어지지 않기 위해서 공부를 더 열심히 했던 것 같습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        카톨릭관동대학교 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 원주 신*재
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_jjy.png" alt=""></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    N수에 꼭 필요한 실력점검 
                                    러셀 콘텐츠로 해결                                     
                                </strong>
                                조금 늦게 공부를 시작하여 제 실력을 계속해서 점검할 필요가 있었는데, 학원에서 시행한 메가X대성 더 프리미엄 모의고사를 통해 제 자신의 전반적인 위치를 확인할 수 있어서 좋았습니다. 또한, 시험마다 학원생의 평균 점수를 알 수 있어서 시험의 객관적인 난이도를 파악할 수 있었고, 다음 시험의 전략을 짜는데 용이하게 만들었습니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
        </div>

        <!-- 합격자 리스트 롤링 -->
        <div class="pass-rolling-l swiper-container">
            <ul class="swiper-wrapper">
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>서울대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>권수현</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>서울대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 분당</dt>
                        <dd>김기민</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>서울대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>노서현</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>연세대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 영통</dt>
                        <dd>임희수</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>연세대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 평촌</dt>
                        <dd>유현우</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>연세대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 광주</dt>
                        <dd>박채은</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>성균관대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 목동</dt>
                        <dd>이소정</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>성균관대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 분당</dt>
                        <dd>이세윤</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>성균관대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 대구</dt>
                        <dd>서예리</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>성균관대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 센텀</dt>
                        <dd>이재성</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 강남</dt>
                        <dd>이예은</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 영통</dt>
                        <dd>이정묵</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 대구</dt>
                        <dd>장서윤</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 대전</dt>
                        <dd>엄서영</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 광주</dt>
                        <dd>김도윤</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 전주</dt>
                        <dd>박성민</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>울산대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 울산</dt>
                        <dd>이예빈</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>울산대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 창원</dt>
                        <dd>김태희</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>울산대학교<br>의예과</p>
                    <dl>
                        <dt>최상위권 전문관 러셀 기숙학원</dt>
                        <dd>김규리</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>고려대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 강남</dt>
                        <dd>최원영</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>고려대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 중계</dt>
                        <dd>동나영</dd>
                    </dl>
                </li>
            </ul>
        </div>
        <div class="pass-rolling-r swiper-container" dir="rtl">
            <ul class="swiper-wrapper">
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>경희대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 평촌</dt>
                        <dd>김성윤</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>경희대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 전주</dt>
                        <dd>김하연</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>아주대학교<br>의학과</p>
                    <dl>
                        <dt>러셀 중계</dt>
                        <dd>이예준</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>아주대학교<br>의학과</p>
                    <dl>
                        <dt>러셀 대전</dt>
                        <dd>신유찬</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>인하대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 부천</dt>
                        <dd>박정우</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>한양대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 센텀</dt>
                        <dd>김수훈</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>한양대학교<br>의예과</p>
                    <dl>
                        <dt>남학생 전문관 러셀 기숙학원</dt>
                        <dd>김선규</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭관동대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 원주</dt>
                        <dd>김민솔</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>가톨릭관동대학교<br>의예과</p>
                    <dl>
                        <dt>여학생 전문관 러셀 기숙학원</dt>
                        <dd>최윤서</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>강원대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 원주</dt>
                        <dd>정동준</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>건국대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 목동</dt>
                        <dd>김승연</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>부산대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 울산</dt>
                        <dd>공승희</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>부산대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 창원</dt>
                        <dd>김용준</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>부산대학교<br>의예과</p>
                    <dl>
                        <dt>남학생 전문관 러셀 기숙학원</dt>
                        <dd>강태욱</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>연세대학교(미래)<br>의예과</p>
                    <dl>
                        <dt>최상위권 전문관 러셀 기숙학원</dt>
                        <dd>강민준</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>을지대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 청주</dt>
                        <dd>김이담</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>을지대학교<br>의예과</p>
                    <dl>
                        <dt>여학생 전문관 러셀 기숙학원</dt>
                        <dd>박서연</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>인제대학교<br>의예과</p>
                    <dl>
                        <dt>러셀 부천</dt>
                        <dd>도유빈</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>인제대학교<br>의예과</p>
                    <dl>
                        <dt>자연계 전문관 러셀 기숙학원</dt>
                        <dd>노현곤</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>충북대학교<br>의예과</p>
                    <dl>
                        <dt>러셀CORE 청주</dt>
                        <dd>오유영</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2025학년도</div>
                    <p>부산대학교<br>한의학전문대학원 <br> 학석사통합과정</p>
                    <dl>
                        <dt>자연계 전문관 러셀 기숙학원</dt>
                        <dd>박규빈</dd>
                    </dl>
                </li>
            </ul>
        </div>
        <!-- //합격자 리스트 롤링 -->
        <p class="r-txt">*기숙학원 합격생의 경우, 학원 개편으로 인해 <br> 구 남의대관, 서의치관 진학실적이 포함될 수 있습니다.</p>
    </div>
    <% Else %>
    <div class="inner">
        <% If campus_code = "CD0001" Then '대치 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        연세대 <br>
                                        치의예과 합격
                                    </strong>
                                    러셀 대치 정민지
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_jmj.png" alt="정민지"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    바자관의 장점은 <br>
                                    좋은 면학 분위기와 시설입니다.                                    
                                </strong>
                                넓은 책상과 책꽂이 덕분에 공부할 때에 불편하지 않을 수 있었습니다. 또한 <b>공간이 탁 트여있기 때문에 답답함이 없었고, 시간표에 맞게 공부 계획을 짤 수 있어 쾌적한 환경에서 효율적으로 공부할 수 있었습니다.</b> 마지막으로 점심시간 종료 직후에 나오는 스트레칭 방송을 통해 오래 앉아있음에도 매일 스트레칭을 할 수 있어 도움이 되었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        을지대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 대치 박찬서
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_pcs.png" alt="박찬서"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    러셀의 장점은 담임 선생님입니다.                             
                                </strong>
                                저는 이전까지 공부는 당연히 혼자 해야 하는 것이라고 생각했습니다. 그러나 러셀에서 만나게 된 담임 선생님께서는 저의 성취에 같이 기뻐해 주시고, 힘들 때 위로도 해주시며 단순한 멘토 이상의 역할을 해주셨습니다. <b>누군가가 옆에서 지켜봐 주고 있다는 사실만으로도 매일 14시간씩의 끝이 없어 보이던 공부도 해나갈 수 있었습니다.</b> 저는 혼자였더라면 절대 이룰 수 없을 결과를 얻게 된 가장 큰 이유는 러셀에 다니며 담임 선생님을 만나게 된 것이라고 생각합니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        연세대 <br>
                                        간호학과 합격
                                    </strong>
                                    러셀 목동 김채현
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_kch.png" alt="김채현"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    수험 생활 기간 담임 선생님과의 상담이 큰 힘이 되었습니다.                                                               
                                </strong>
                                공부하다가 지치거나 어떻게 공부해야 할지 막막할 때마다 <b>담임 선생님께서 친절하게 상담해 주셔서 수험 기간 중 의지가 많이 되었습니다.</b> 수험생활 중 성적 문제 및 슬럼프로 고민이 있을 때마다 담임 선생님과의 상담을 통해 <b>사고를 긍정적으로 바꾸고 수능 때까지 잘 마무리할 수 있었습니다.</b>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        연세대 <br>
                                        융합인문사회학부 합격
                                    </strong>
                                    러셀 목동 김은재
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_kej.png" alt="김은재"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    실전 모의고사를 통해 실전 감각을 
                                    최대한으로 끌어올릴 수 있었습니다.                       
                                </strong>
                                자습관에서 매월 응시하는 <b>실전 모의고사를 통해 수능 전 실전 감각을 끌어올릴 수 있을뿐더러 성적 분석이 매우 잘 되었다고</b> 생각합니다. 다른 수험생들과 비교하여 나의 위치가 어느 정도이고, 어떤 부분이 취약한지에 대한 분석이 제대로 이뤄졌다고 생각합니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        서울대 <br>
                                        첨단융합학부 합격
                                    </strong>
                                    러셀 목동 채준영
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_cjy.png" alt="채준영"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    오로지 공부에만 집중할 수 있는 
                                    러셀 시스템 덕분에 학습량이 늘어났습니다.                                                      
                                </strong>
                                <b>휴대폰 제출과 학습 외 활동 제한으로</b> 인해 알게 모르게 낭비되던 시간을 줄이고 <b>오로지 공부에 집중할 수 있도록</b> 해주었다는 것이 바자관의 큰 장점인 거 같습니다. 이로 인해 바자관을 다니기 전보다 <b>훨씬 많은 공부시간을 확보</b>할 수 있었고, 자연스럽게 집중하는 시간과 학습량도 늘어났습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        고려대 <br>
                                        식품자원경제학과 합격
                                    </strong>
                                    러셀 목동 설정연
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_sjy.png" alt="설정연"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    실제 수능과 유사한 환경에서 
                                    다양한 변수에 대비할 수 있었습니다.                  
                                </strong>
                                파이널 기간에 진행된 <b>수능 실전 모의 훈련장을 통해 실제 수능 시험장과 비슷한 환경에서</b> 실전 모의고사를  풀어보며 모의고사 시간 운용 방법을 계획할 수 있었습니다. 또한 시험장에서 생길 수 있는 <b>다양한 변수에 대비하며 수능 준비를 철저하게</b> 할 수 있었던 거 같습니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0244" Then '분당 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        조선대 <br>
                                        치의예과 합격
                                    </strong>
                                    러셀 분당 양서진
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_ysj.png" alt="양서진"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    열심히 공부하는 분위기여서 
                                    더욱 공부에 집중할 수 있었습니다.                              
                                </strong>
                                <b>바른공부 자습전용관에서 가장 좋았던 점은 좋은 공부 환경</b>입니다. 표준 시간표에 맞춰 자습하면서 수능 시간표에 적응하고 공부 리듬을 형성할 수 있었습니다. 또 자습 중 집중력이 떨어질 때는 주변의 학생들을 보며 다시 공부에 집중할 수 있었고 서서 공부할 수 있는 스탠딩 책상에서 공부하며 졸음을 깰 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        성균관대 <br>
                                        약학과 합격
                                    </strong>
                                    러셀 분당 김지수
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_kjs.png" alt="김지수"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    짧은 기간, 러셀 분당 면학 분위기로 
                                    해낼 수 있었습니다.                                                             
                                </strong>
                                타 대학을 다니다가 약 1년 5개월 만에 수능 공부를 다시 했습니다. 오랜만에 공부를 해서 오래 앉아있는 것조차 힘들었는데 <b>러셀 분당의 훌륭한 면학 분위기 덕분에 짧은 기간임에도 저의 대입 계획을 끝까지 해낼 수 있었습니다.</b>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0343" Then '코어원주 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        가톨릭관동대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 원주 신정재
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_sjj.png" alt="신정재"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    짧은 기간, 러셀의 다양한 콘텐츠와 
                                    담임 선생님의 관리가 많은 도움이 되었습니다.                                                
                                </strong>
                                조금 늦게 공부를 시작하여 제 실력을 계속해서 점검할 필요가 있었는데, 학원에서 운영되는 다양한 모의고사 콘텐츠를 통해 제 자신의 전반적인 위치를 확인할 수 있어서 좋았습니다. <br>
                                또한, 자신감이 떨어질 때마다 담임 선생님과의 상담을 통해 불안감들을 덜 수 있었습니다. 지금 하고 있는 공부의 방향이 적절한지 매주 선생님께서 확인해 주시고 학습 및 생활적인 부분에 대해 상담해 주셔서 많은 도움이 되었습니다.                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        상지대 <br>
                                        한의예과 합격
                                    </strong>
                                    러셀CORE 원주 전혜주
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_jhj.png" alt="전혜주"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    쾌적한 바자관 환경에서 학습하는 것이 좋았습니다.                                                         
                                </strong>
                                반수를 결심하고 공부를 시작하니 남들보다 늦은 것 같다는 생각에 두려움이 커져 불안해질 때도 많았는데, 이럴 때마다 담임 선생님께 제 공부 계획에 대해서 상담도 받고, 고민을 이야기하다 보면 목표를 다시 상기하고 마음을 다 잡을 수 있어서 좋았습니다. <br>
                                또, 환경에 예민한 시기였는데도 늘 청결하게 바자관을 유지해 주시고, 주기적으로 환기, 가습기 배치 등 쾌적한 환경을 위해 신경써 주셔서 매우 좋았습니다.                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0346" Then '코어청주 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        충북대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 청주 오우영
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_owy.png" alt="오우영"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    러셀 시스템으로 반복되던 실수를 줄이고 
                                    만족스러운 결과를 얻을 수 있었습니다.                                                                                  
                                </strong>
                                저는 실수를 많이 하는 스타일이라 이를 줄이는 것이 가장 중요한 과제였습니다. <b>실수를 분석하고 같은 실수를 반복하지 않도록 하는데 러셀 총평노트가 많은 도움이 되었습니다.</b> 모의고사 이후 러셀 총평노트를 작성하며 비슷한 유형에서 실수가 반복되는 경향을 파악할 수 있었고, 이를 의식적으로 신경 쓰며 실수를 줄여 최종적으로 만족스러운 성적을 받을 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        연세대 <br>
                                        정치외교학과 합격
                                    </strong>
                                    러셀CORE 청주 김화랑
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_khr.png" alt="김화랑"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    LIVE 강의와 현장강의를 병행하며 
                                    안정적인 수학 점수를 확보할 수 있었습니다.                                               
                                </strong>
                                제가 반수를 하게 된 이유는 수학이었습니다. 현역 때는 수학 공부 양도 적었고 강의도 잘 듣지 않아 백분위 85로 3등급을 받게 되었지만, 반수 때에는 러셀CORE 청주에서 <b>김기현 선생님과 장영진 선생님의 LIVE 강의</b>를 들었고, 특히 <b>김성민 선생님의 모의고사 해설 현장강의</b>를 들어 백분위 96으로 2등급을 받을 수 있었습니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0247" Then '강남 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        전북대 <br>
                                        수의예과 합격
                                    </strong>
                                    러셀 강남 전우호
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_jwh.png" alt="전우호"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    자습관에서 공부하며 자극을 받고
                                    다양한 특강을 들으면서 도움을 받았습니다.                                                                            
                                </strong>
                                바자관이 개방형 구조라 <b>다른 친구들이 열심히 공부하는 모습을 보며 자극을 받을 수 있었습니다.</b> 책상도 넓고 수납공간도 넉넉해서 편하게 공부할 수 있었습니다. 언제든 고민을 상담할 수 있는 담임 선생님이 계셔서 힘들 때 의지가 되었습니다. 
                                또한 수험생들에게 도움이 되는 <b>다양한 특강들이 알맞은 시기에 열려서 학습 동선 낭비 없이 많은 도움을 받을 수 있었습니다.</b>                                 
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        한양대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 강남 박성원
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_psw.png" alt="박성원"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    효율적으로 시간을 관리하고, 매달 모의고사를
                                    보면서 실전 연습을 진행하였습니다.                                                                               
                                </strong>
                                <b>철저한 관리가 이루어지고 시간을 효율적으로 사용</b>할 수 있었습니다. 단과 하나를 제외하고 자습에 집중했는데 다른 학생들이 <b>열심히 공부하는 면학 분위기 속에서 항상 긴장감 있게 공부할 수 있었습니다.</b> 
                                매달 메가X대성 더 프리미엄 모의고사를 비롯한 각종 모의고사를 통해서 실전 연습을 진행했습니다.  <b>모의고사 콘텐츠 모두 기대했던 것보다 퀄리티가 아주 좋았고, 다양한 유형의 시험지를 경험할 수 있어 큰 도움이 되었습니다.</b>                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        고려대 <br>
                                        스마트모빌리티학부 합격
                                    </strong>
                                    러셀 강남 김주원
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_kjw.png" alt="김주원"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    담임 선생님의 입시 상담과 관리로
                                    공부에 집중할 수 있었습니다.                                                                                
                                </strong>
                                입시를 준비하면서 어려운 부분을 담임 선생님께서 도와주셔서 공부에 집중할 수 있었습니다. 체계적인 자료와 전문성을 바탕으로 입시 상담을 진행해주시고, 공부하면서 힘들 때 선생님과 대화할 수 있다는 점도 큰 힘이 되었습니다. 
                                또한 승강반 제도와 장학 혜택은 공부하는 데 좋은 동기부여가 되었습니다.                                 
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        고려대 <br>
                                        교육학과 합격
                                    </strong>
                                    러셀 강남 곽승연
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_ksy.png" alt="곽승연"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    충분한 자습시간 확보와 모의고사 실전 연습이
                                    도움이 되었습니다.                                                                                  
                                </strong>
                                충분한 자습 시간을 확보하여 단과에서 배운 내용을 온전히 자신의 것으로 만들 수 있었습니다. 개방형 구조로 탁 트인 환경에서 공부하여 집중이 더 잘 되었고, 주변 학생들을 보며 동기부여도 받을 수 있었습니다. 
                                매달 한 번씩 모의고사를 보며 실전 경험을 쌓았습니다.  이후에는 바로 시험을 복기하면서 러셀 총평노트를 작성하여 약점을 파악하며 향후 계획을 세울 수 있었습니다.                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0250" Then '부천 %>
        <div class="review-wrap type03 russel-bc">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide dyb">
                        <dl class="stu-info">
                            <dt>
                                <img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/regular/stu_dyb.png" alt="">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72815564')"></a>
                            </dt>
                            <dd>
                                <p class="year">2025학년도</p>
                                <p class="grand">인제대학교 <br> 의예과</p>
                                <p class="name">도유빈 학생</p>
                            </dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <dl class="stu-info">
                            <dt>
                                <img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/regular/stu_psg.png" alt="">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/75299413')"></a>
                            </dt>
                            <dd>
                                <p class="year">2025학년도</p>
                                <p class="grand">인제대학교 <br> 의예과</p>
                                <p class="name">박승균 학생</p>
                            </dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <dl class="stu-info">
                            <dt>
                                <img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/regular/stu_lsb.png" alt="">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/75299879')"></a>
                            </dt>
                            <dd>
                                <p class="year">2025학년도</p>
                                <p class="grand">아주대학교 <br> 약학과</p>
                                <p class="name">이세빈 학생</p>
                            </dd>
                        </dl>
                    </div>
                        <div class="swiper-slide">
                            <dl class="stu-info">
                                <dt>
                                    <img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/regular/stu_lyn.png" alt="">
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/77249934')"></a>
                                </dt>
                                <dd>
                                    <p class="year">2025학년도</p>
                                    <p class="grand">서울대학교 <br> 재료공학부</p>
                                    <p class="name">이유나 학생</p>
                                </dd>
                            </dl>
                        </div>
                        <div class="swiper-slide">
                            <dl class="stu-info">
                                <dt>
                                    <img src="<%=Application("img_path_russel")%>/m_russel/russel_bc/2025/regular/stu_pjw.png" alt="">
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/72727043')"></a>
                                </dt>
                                <dd>
                                    <p class="year">2025학년도</p>
                                    <p class="grand">인하대학교 <br> 의예과</p>
                                    <p class="name">박정우 학생</p>
                                </dd>
                            </dl>
                        </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
        </div>
        <% ElseIf campus_code = "CD0249" Then '영통 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        고려대 <br>
                                        의과대학 합격
                                    </strong>
                                    러셀 영통 오서준
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_osj.png" alt="오서준"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    수능 시간표와 유사한 
                                    바자관의 표준 시간표가 큰 도움이 되었습니다.                                                                                                              
                                </strong>
                                <b>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다.</b> 모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 더 <b>현장감 있기에, 러셀의 표준 시간표에 맞추어 공부하였습니다.</b>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        서울대학교 <br>
                                        치의학학석사통합과정 합격
                                    </strong>
                                    러셀 영통 최지원
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_cjw02.png" alt="최지원"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    학습 및 입시에 대한 1:1 상담이
                                    많은 도움이 되었습니다.                                                                                                           
                                </strong>
                                <b>학습 동선을 최소화하는 것</b>이 큰 도움이 되었습니다.  또한, <b>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다.</b> 모의고사 이후 성적 분석을 토대로 한 상담은 학습 방향을 잡는 데에 도움이  되었고, 정확한 수치를 근거로 입시에 대한 구체적인 정보를 알려주셨습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        전북대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 영통 오준학
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_ojh.png" alt="오준학"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    표준 시간표와 전용 와이파이로
                                    집중도를 높일 수 있었습니다.                                                                                                                
                                </strong>
                                바자관의 장점은 <b>표준 시간표와 전용 와이파이</b>입니다. 항상 자습시간이 정해져 있다 보니 딴 곳으로 잘 새지 않고 자습시간을 확보할 수 있으며 <b>자습시간 동안에도 딴짓하지 않고 공부에만 집중</b>할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        영남대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 영통 박우영
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_pwy.png" alt="박우영"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    바자관의 개방형 구조로 인해
                                    주변 학생들을 보며 공부를 열심히 할 수 있었습니다.                                                                              
                                </strong>
                                바자관의 장점은 <b>개방형 구조</b>라고 생각합니다.  <b>집중이 안 될 때 주변 학생들이 공부하고 있는 모습을 보면 ‘나도 다시 열심히 해야겠다.’</b>라는 생각이 들어서 좋았습니다. 또한 <b>시간표가 수능 시간표와 비슷한 것이 습관 형성</b>에 좋았습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        전북대 <br>
                                        치의예과 합격
                                    </strong>
                                    러셀 영통 우태현
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_wty.png" alt="우태현"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    멘탈을 강하게 만들어주는
                                    자습관의 시스템으로 도움이 많이 되었습니다.                                                                                
                                </strong>
                                바자관의 장점은 <b>개방형 구조</b>입니다. 또한, <b>러셀의 체조 시스템, 바자관 내에 공기청정기과 온도계를 상시 가동</b>하여 쾌적한 환경에서 공부를 할 수 있었던 것도 좋았습니다. <b>재수 초반에 멘탈적으로 지칠 대로 지쳐있었고</b> 이런 상황에 <b>가장 큰 힘이 되어주셨던 건 담임 선생님</b>이라고 생각합니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        원광대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 영통 이수민
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_lsm.png" alt="이수민"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    심야 자습 제도와 나태해지지 않는 벌점 제도가
                                    가장 좋았어요.                                                                                                                 
                                </strong>
                                <b>심야 자습 제도가 가장 좋았습니다.</b> 10시에 학원이 끝나고 바로 바자관에 가서 복습하면 집중력이 흐트러지지 않고 12시까지 공부를 할 수 있었습니다. 또한 <b>벌점 제도를 통해 나태해지지 않고 끝까지 달릴 수 있었던 것 같습니다.</b>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0246" Then '센텀 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        울산대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 센텀 김OO
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    7개월간 임팩트 있는 러셀 시스템으로
                                    빠르게 합격할 수 있었습니다.                                                                                                                                               
                                </strong>
                                대학교 재학 중으로, 공부를 늦게 시작해서 정해진 시간을 잘 활용하자는 느낌으로 반수를 시작하였습니다. 혼자 할 수 있는 과목은 기출을 풀면서 빠르게 진도를 나갔으며 부족한 과목들은 <b>러셀 센텀 현강을 들으면서 복습&과제를 빠짐없이 꾸준히</b> 하였습니다. 수시를 쓸지 말지 고민 중 <b>담임 선생님과 상담을 진행하여 전략적인 지원</b>을 하게 되었으며 그 결과 합격할 수 있었습니다. 짧은 학습 기간이었지만 효율성 있는 공부를 하는 것이 포인트였습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        부산대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 센텀 이OO
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    짧은 수험 기간, 후회 없이 공부하여
                                    러셀에서 좋은 결과를 얻었습니다.                                                                                                                                           
                                </strong>
                                공부를 체계적으로 하고 싶어 <b>러셀 학습 플래너를 가지고 매일 체크하면서 과목별 밸런스 있는 공부를</b> 하기 위해 노력을 하였습니다. 비교적 늦게 시작해서 걱정되는 부분이 많았는데 <b>담임 선생님께서 매달 진행되는 모의고사 성적표를 가지고 상담을 진행해 주시고</b> 이후 학습에 대한 계획을 잘 말씀해 주셔서 수험 기간 동안 많은 도움이 되었습니다. 학습 기간은 짧았지만 나 자신을 믿으면서 공부한 것이 큰 힘이 되었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        부산대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 센텀 임OO
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_w.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    현장 강의를 통해서 실력을 향상시킬 수 있는
                                    러셀 센텀에서 원하는 곳을 갈 수 있었습니다.                                                                                                      
                                </strong>
                                러셀 센텀에서는 <b>인강이나 대치동에 출강하시는 유명 선생님들의 강의를 들을 수 있어 좋았습니다.</b>  또한 여러 단과 선생님들이 계셔서 자신의 스타일과 학습 정도에 맞는 단과 선생님을 수강할 수 있기에 실력 향상에 큰 도움이 됐습니다. 선생님들이 늦은 시간까지 <b>질의에 성실히 응답해 주셔서</b> 너무 감사했습니다. 
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        경상국립대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 센텀 윤OO
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    수능 시간표에 맞춰진 바자관 시간표가
                                    짦은 수험 기간에 큰 도움이 되었습니다.                                                                                                              
                                </strong>
                                저는 <b>바자관에서 체계적인 출결 관리와 시간표가</b> 좋았습니다. 출결 카드를 이용하여 출석체크를 함으로써 학원에 안 나오는 날이 거의 없도록 하였고, 자습관 내에서는 시간표 대로 맞춰서 공부함으로써 저의 공부 리듬을 만들 수 있었습니다. 또 수능 전에는 <b>수능 시간표에 맞추어</b> 시간표가 운영되어 수능 시간표에 적응할 수 있도록 한 점이 좋았습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        충남대 <br>
                                        수의예과 합격
                                    </strong>
                                    러셀 센텀 신OO
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_w.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    정해진 시간을 효율성 있게 공부할 수 있는
                                    러셀에서 성공할 수 있었습니다.                                                                                                                  
                                </strong>
                                1학기를 마치고 와서 공부를 늦게 시작한 만큼 정해진 시간을 잘 활용하자는 느낌으로 반수를 시작하였습니다. 하루 10~12시간을 공부하면서 취약한 과목을 중점적으로 공부하면서 안정적으로 나오는 과목은 모의고사를 풀어 시험에 대한 실전 연습을 꾸준히 하였습니다. <b>러셀의 하반기 학습 콘텐츠들을 통해 수능과 같은 실전 훈련을 충분히 할 수 있어서</b> 좋았습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        부산대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 센텀 홍OO
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    긴 시간은 아니었지만 꾸준한 노력으로 
                                    원하는 목표를 이룰 수 있었습니다.                                                                                                                                                   
                                </strong>
                                러셀 모의고사와 매달 응시하는 모의고사가 좋았습니다. 주기적으로 시험을 쳐서 실전 감각에 좋았고 과목별로 시간 분배를 연습하기에 좋았습니다. 6월 평가원 이후로 뭔가 공부의 방향성을 잃은 것 같아 힘들었는데, 담임 선생님과 장기적인 계획을 세워보면서 앞으로 나아가야 할 과정이 많다는 것을 상기해서 극복했습니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0341" Then '대전 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        충남대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 대전 허관훈
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_hgh.png" alt="허관훈"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    러셀 대전의 학습 환경 덕분에
                                    최고의 수험생활을 보냈습니다.                                                                                                                                                                               
                                </strong>
                                <b>러셀 대전에서는 오로지 수능 공부에만 집중할 수 있어서 좋았습니다.</b> 수능 시간에 최적화된 표준 시간표, 정말 열심히 수능 공부에 임하는 친구들 그리고 진심으로 대해주시는 선생님들 덕분에 최고의 수험생활을 보냈습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        가톨릭대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 대전 윤훈석
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_yhs.png" alt="윤훈석"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    바자관의 자습 분위기가 좋았습니다.                                                                                                                                          
                                </strong>
                                <b>개방감과 폐쇄성의 적절한 조화가 바자관의 큰 장점입니다.</b> 바자관의 통유리창 덕분에 다른 친구들이 공부하는 모습을 보고 동기부여를 받을 수 있었고, 수납공간과 책상의 격벽이 본인의 공간을 확실히 구분해 주어 방해받지 않고 학습에 집중할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2023</span>
                                    <strong>
                                        서울대 <br>
                                        전기정보공학부 합격
                                    </strong>
                                    러셀 대전 노유찬
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_nyc.png" alt="노유찬"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    바자관 시간표 덕분에 공부시간을 많이 확보할 수 있었습니다.                                                                                                            
                                </strong>
                                <b>불필요한 수업은 줄이고 자습시간은 극대화할 수 있어서 좋았습니다.</b> 탁 트인 개방형 구조의 바자관에서 공부하면서 최상위권 학생들에게 동기부여받을 수 있었고, 최적의 면학 분위기를 위해 항상 노력해 주시는 담임 선생님 덕분에 쾌적하게 공부할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        순천향대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 대전 하태솔
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_hts.png" alt="하태솔"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    러셀 시스템 덕분에 수능까지 열심히 공부할 수 있었습니다.                                                                                                                 
                                </strong>
                                <b>규칙적으로 시간에 맞춰 공부할 수 있는 습관을 들일 수 있어서 좋았습니다.</b> 더불어 담임 선생님께서 꾸준히 관리해 주시는 덕분에 마음이 풀어지지 않고 수능까지 열심히 공부할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        세명대 <br>
                                        한의예과 합격
                                    </strong>
                                    러셀 대전 임장원
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_ijw.png" alt="임장원"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    러셀 집체 모의고사가 많은 도움이 되었습니다.                                                                                                                                               
                                </strong>
                                <b>모의고사를 풀 때에 수능 시험장과 비슷한 환경을 조성해 주셔서 많이 도움이 되었습니다.</b> 또한, 조회시간이나 종례시간에 담임 선생님께서 항상 동기 부여가 되는 말씀을 해 주셔서 더 열심히 할 수 있도록 이끌어주셔서 감사했습니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0349" Then '울산 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        아주대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 울산 손○명
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    짧은 기간, 대입에 필요한
                                    모든 환경을 제공해 주었습니다.                                                                                                                                                                                                                
                                </strong>
                                입시 담임 선생님은 입시를 준비하는 과정에 있어서 <b>내가 지금 올바른 방향으로 가고 있는지, 잘못된 방향으로 가고 있지는 않은지 계속해서 점검</b>해 주십니다. 또한 모의고사를 치를 때마다 피드백을 통해 어떤 부분이 부족한지 모니터링할 수 있어서 학습 방향 설정에 큰 도움이 되었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        부산대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 울산 공승희
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_gsh.png" alt="공승희"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    입시 담임 선생님의
                                    입시 컨설팅으로 합격할 수 있었습니다.                                                                                                                                     
                                </strong>
                                대학 원서를 넣을 때 고민이 많았는데, 선생님께서 지난 입시 결과와 현재 상황을 알려주시며 어떤 식으로 넣으면 좋을지 추천도 해주셨고, 고민 상담도 잘 받아주셔서 큰 도움이 되었습니다. 또한 학원에서 모의고사를 친 후 이번 모의고사에서 아쉬웠던 점, 잘했던 점을 집어주시며 제가 다음 모의고사를 더 철저하게 준비할 수 있도록 큰 도움을 주셨던 분이 바로 담임 선생님이셨습니다. 
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        부산대 <br>
                                        약학과 합격
                                    </strong>
                                    러셀 울산 김○○
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    모두가 최선을 다하는
                                    학습 분위기가 큰 도움이 되었습니다.                                                                                                                             
                                </strong>
                                바자관이 독서실처럼 칸이 아예 막혀 있는 게 아니라 덜 답답했고 <b>다 같이 공부를 열심히 하는 분위기라서 좋았습니다.</b> 점심, 저녁 시간에도 알차게 공부하는 사람들이 많아 저까지 쉬는 시간에 같이 공부하게 되는 효과가 있었습니다. 
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        연세대 <br>
                                        경영학과 합격
                                    </strong>
                                    러셀 울산 김○은
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_w.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    문득 불안할 때마다
                                    현실적인 조언이 오히려 도움이 되었습니다.                                                                                                                                              
                                </strong>
                                바자관은 합격을 위해 기꺼이 노력하기로 다짐한 사람들이 모여있는 공간이기에, 주위 환경에 영향을 비교적 많이 받는 성향의 저에게 큰 도움이 되었습니다. 지친 기분이 들어도 주위에서 최선을 다하고 있는 다른 분들을 보며 다시 마음을 다잡고 오래 집중할 수 있었기에 <b>바자관의 분위기가 전체적인 학습에서 큰 도움을 주었습니다.</b>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        고려대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 중계 동나영
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/stu_dny.png" alt="동나영"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    바자관의 장점은 좋은 면학 분위기와
                                    관리 시스템입니다.                                                                                                                                                                                                                                               
                                </strong>
                                바자관 내부는 대화 금지여서 조용한 분위기에서 공부에 몰입할 수 있으며, 
                                개방형 구조와 통유리 창으로 탁 트여 있는 구조이기 때문에 옆에서 공부하는 친구들을 봐서라도 딴짓을 할 수 없어서 좋았습니다. 
                                또한 바자관은 개인 스케줄을 제외하고는 오전 8시부터 밤 10시까지 의무 자습이기 때문에 훨씬 많은 공부량을 확보할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        단국대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 중계 김태형
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/stu_kth.png" alt="김태형"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    러셀 시스템의 강점은 파이널 기간에 진행하는
                                    실전 모의고사라 생각합니다.                                                                                                                                                                  
                                </strong>
                                평소 경험해보지 못했던 유형의 문제들도 볼 수 있어서 좋고 모의고사를 채점한 뒤에 내가 무슨 과목, 
                                어떤 파트에 결함이 있구나를 객관적으로 파악하고 자신을 보완할 수 있는 기회를 만들 수 있어서
                                더 좋은 것 같습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        순천향대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 중계 신미나
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/stu_smn.png" alt="신미나"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    담임 선생님의 1:1 상담이
                                    많은 도움이 되었습니다.                                                                                                                                                           
                                </strong>
                                담임 선생님께서 주기적으로 1:1 상담을 해 주셨는데 러셀에서 공부한 선배들이 실제로 어떻게 공부했는지 알려 주셔서 저의 공부 방향을 잡아나가는 데 참고할 수 있었습니다. 
                                또 6장의 수시 원서를 어떻게 쓸지에 대해 담임 선생님과 여러 번의 상담을 통해 결정에 도움을 받았습니다. 
                                선생님들께서 항상 웃으며 인사해 주시고 많이 응원해 주셔서 힘내서 공부할 수 있었습니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0248" Then '평촌 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        서울대
                                        산림과학부 합격
                                    </strong>
                                    러셀 평촌 이근형
                                </div>
                                <p>
                                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/stu_01.png" alt="">
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/77249594')"></a>
                                </p>
                            </div>
                            <div class="btm-con">
                                바자관의 장점은 공기가 정말 좋고 2층에 있는 얼음이 공부할 때 정말 도움이 되었습니다. 또한 러셀의 시간표는 수능과 거의 유사하여 시간관리에도 정말 도움이 되었습니다. 또한 담임선생님은 아직 경험이 부족한 저에게 모의고사의 활용법, 공부법 등 제가 알지 못하는 많은 정보를 제공해 주셔서 좋았습니다. 또한 수능이 끝난 이후에도 정말 어려웠던 원서접수까지 끝까지 도와주셨습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        연세대 의예과 합격
                                    </strong>
                                    러셀 평촌 유현우
                                </div>
                                <p>
                                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/stu_02.png" alt="">
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/72293389')"></a>
                                </p>
                            </div>
                            <div class="btm-con">
                                러셀 평촌은 식당과 바자관이 한 건물에 있어서 식사를 하고 바로 공부를 하고 싶으면 빠르게 바자관으로 돌아와서 공부할 수 있고 점심시간이 충분하기 때문에 산책을 하는 등 컨디션 관리를 위해 선택할 수 있는 점이 많아서 좋았습니다. 그리고 장학혜택 덕분에 부담을 가지지 않고 편히 공부할 수 있었습니다. 또한 바자관 바로 앞에 담임선생님이 계시기 때문에 고민이 생기거나 하고 싶은 말이 있으면 바로 할 수 있어서 좋았고 3월부터 함께 지내기도 하였고 항상 친절하게 상담해 주셔서 의지할 수 있었습니다.                              
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0342" Then '대구 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        경북대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 대구 강유현
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_kyh.png" alt="강유현"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    개방형 구조의 바자관으로 
                                    긍정적인 경쟁심 자극                                                                                                                                                                                                                                                                                 
                                </strong>
                                바자관은 개방형 구조로 되어 있어 수능이라는 같은 목표를 향해 가고 있는 많은 사람들을 보며 긍정적인 경쟁심을 자극받을 수 있습니다.
                                수험 생활을 하다 보면 집중력이 떨어지거나 마음가짐이 흐려지는 순간이 오는데 <b>바자관의 철저한 출결 관리와 정해진 표준 시간표는 공부 리듬</b>이 깨지지 않고 끝까지 공부하는 데 큰 도움이 되었습니다.                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        가천대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀 대구 임승재
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_isj.png" alt="임승재"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    입시 정보 및 전문적인 지원 상담                                                                                                                                                           
                                </strong>
                                수시로 바자관을 관리 점검해 주시고 건의 사항 또한 빠르게 수리해 주십니다. 담임 선생님을 통해서 수험생활 전반의 안내를 받고 입시에 유용한 정보들을 얻을 수 있습니다. 또한 수시 접수 이전에는 통계 프로그램을 이용해서 전문적인 지원 상담도 해주셔서 원서를 접수하는 데 도움이 되었습니다. 
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        대구한의대 <br>
                                        한의예과 합격
                                    </strong>
                                    러셀 대구 박이완
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_piw.png" alt="박이완"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    주기적인 모의고사 진행으로
                                    부족한 점 빠르게 보완                                                                                                                                                                                                 
                                </strong>
                                주기적으로 진행되는 메가X대성 더 프리미엄 모의고사가 큰 도움이 되었습니다. 실제 수능 시간표와 동일하게 양질의 모의고사를 응시한 뒤 부족한 점을 최대한 많이 발견하고 보완할 수 있었습니다. 또한 차후 배부되는 <b>수능 예상 성적표를 통해 저의 위치를 객관적으로 진단하고 공부 의지</b>를 다시 다잡는 데 큰 도움이 되었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2025</span>
                                    <strong>
                                        경북대 <br>
                                        수의예과 합격
                                    </strong>
                                    러셀 대구 안준영
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_ajy.png" alt="안준영"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    입시 관련 특강 및 설명회로
                                    공부 계획 세우는 데 도움                                                                                                                                                                              
                                </strong>
                                다양한 특강이 개설되어서 도움이 많이 되었습니다. <b>입시 초반에 정시 설명회나 논술 설명회와 같이 입시 전형에 관한 특강</b>을 들었는데 합격한 사례들을 구체적으로 알 수 있어 합격 사례와 비교했을 때 내가 어떤 부분에서 부족한지 알 수 있었고 그것을 바탕으로, 앞으로의 공부 계획을 세우는 데에도 많은 도움이 됐습니다. 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">* 2025 합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0340" Then '코어광주 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        서울대 <br>
                                        인문계열 합격
                                    </strong>
                                    러셀CORE 광주 김효원
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_khw.png" alt="김효원"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    학습시간을 확보할 수 
                                    있었던 점이 가장 좋았습니다.                                    
                                </strong>
                                바른공부 자습전용관의 장점은 학습에 집중할 수 있는 면학 분위기입니다. 개방형 구조로 되어있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다. 또한 체계적인 시스템으로 운영되기 때문에 학습시간을 충분히 확보할 수 있었고 시간을 효율적으로 사용하기 위해 집중력 있게 공부를 할 수 있었습니다. 또한 라이브 수업 수강을 통해 받을 수 있었던 현강 자료들이 도움이 되었습니다. 높은 퀄리티의 자료들을 통해 실력을 향상시킬 수 있었고 질의응답을 통해 어려웠거나 헷갈렸던 개념들을 확인하고 바로잡을 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        한양대학교 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 광주 엄태옥
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_uto.png" alt="엄태옥"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    공부 외의 것들은 최대한 신경을 
                                    안 쓰게 관리를 해줘서 좋았습니다.                                                                                                                                                                              
                                </strong>
                                바른공부 자습전용관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다. 부족하다고 생각하는 과목을 찾아 듣다 보니 강제로 불필요한 수업을 들을 때와 달리 집중력 있게 수업을 들을 수 있었고 자습 시간 확보에도 도움이 되었습니다. 공부에만 집중할 수 있게 공부 외의 것들은 최대한 신경을 안 쓰게 관리를 해줘서 좋았습니다.
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0344" Then '코어전주 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        고려대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 전주 서진원
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_sjw.png" alt="서진원"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    수능 리듬에 최적화된 표준 시간표,
                                    공부 리듬 형성과 집단적 면학 분위기                                                                       
                                </strong>
                                가장 좋았던 점은 표준 시간표를 통한 공부 리듬 형성과 집단적인 면학 분위기였습니다.
                                혼자 공부할 때에는 수능 시간표 대로 공부를 해야 하는 강제성도 없으며, 집중력을 잃을 때 바로잡아 줄 요소도 없습니다.
                                하지만 러셀에서는 <b>수능 리듬에 최적화될 수 있도록 표준 시간표에 맞춘 공부를 할 수 있었기에</b> 실제 수능에서 큰 도움이 되었습니다.                                
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        전북대 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 전주 최희민
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_chm.png" alt="최희민"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    러셀 학습 플래너를 통한 꾸준한 점검,
                                    담임 선생님의 확실한 학습관리                                                                                                                                                                          
                                </strong>
                                <b>러셀 학습 플래너를 통해 과목 간 공부량을 점검</b>할 수 있어 좋았습니다. 이를 통해 목표를 달성하며 <b>꾸준히 공부하는 습관을 형성</b>할 수 있었으며, <b>담임 선생님의 학습관리</b>와 함께 무탈한 수험생활을 마칠 수 있었습니다. 
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% ElseIf campus_code = "CD0345" Then '코어창원 %>
        <div class="review-wrap">
            <div class="review-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        동아대학교 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 창원 윤종빈
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    실전력을 향상 시켜준
                                    러셀의 콘텐츠와 시스템                                                                     
                                </strong>
                                <b>실전과 같은 분위기에서 모의고사</b>를 볼 수 있는 기회가 많지 않은데, 러셀CORE 창원은 메가X대성 더 프리미엄 모의고사를 비롯해 다양한 실전 콘텐츠로 <b>매주 수능과 같이 대비</b>할 수 있었습니다. 또한 담임 선생님과의 상담을 통해 부족한 부분을 보완할 수 있어 효과적인 성적 향상의 계기가 되었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        동아대학교 <br>
                                        의예과 합격
                                    </strong>
                                    러셀CORE 창원 제현수
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    체계적인 공부 방향 설정으로 
                                    성공적 입시 결과                                                                                                                                                                                                               
                                </strong>
                                학습 계획을 짜는 데 어려움이 있었는데, <b>담임 선생님과의 상담을 통해 체계적인 공부 방향을 설정</b>할 수 있었습니다. 학습적인 측면 및 멘탈적으로도 잘 잡아주시고, 입시에서도  생기부를 기반하여 최적의 입시 방향을 잡아주셔서 성공적인 결과를 거둘 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        충남대학교 <br>
                                        수의예과 합격
                                    </strong>
                                    러셀CORE 창원 백지훈
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    대치동과 동일 콘텐츠,
                                    학습 최적화된 동선 배치                                                                                                                                                                                                                
                                </strong>
                                <b>서울에 가지 않아도 대치동 LIVE 수업과 콘텐츠를 동일하게 이용</b>할 수 있다는 점이 마음에 들었습니다. 수업 외에도 <b>한 건물에 자습관, 식당, 강의실을 같이 배치함으로써 이동 동선을 최소화하고 체력과 학습 분위기 유지 측면에서 큰 이점</b>을 얻을 수 있었습니다.
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="detail">
                            <div class="top-con">
                                <div class="txt">
                                    <span class="year">2024</span>
                                    <strong>
                                        연세대학교 <br>
                                        경제학부 합격
                                    </strong>
                                    러셀CORE 창원 윤득영
                                </div>
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/stu_m.png" alt="학생"></p>
                            </div>
                            <div class="btm-con">
                                <strong>
                                    단과 수업과 자습관을 한 번에 
                                    해결하여 효율적인 시간관리                                                                                                                                                                                                                
                                </strong>
                                <b>단과 수업과 자습관 이용을 한 번에 할 수 있다는 점</b>이 좋았습니다. 관리형 독서실과 <b>대치동 현장 단과의 장점을 지방에서 거의 그대로 구현한 것이 큰 장점</b>인 것 같습니다. 
                                주기적으로 치러지는 모의고사 역시 실력 향상에 큰 도움을 주었습니다.                                
                            </div>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination"></div>
            </div>
            <p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
        </div>
        <% End If %>
    </div>
    <% End If %>

    <% If campus_code = "INTRO" Then '인트로 %>
    <p class="highlight-txt"><%=txtCampus%>에서 시작한다면 시간은 충분합니다. <br> 더 이상 망설이지 말고 시작하세요.</p>
    <% Else %>
    <p class="highlight-txt"><%=txtCampus%>에서 시작한다면 <br> 시간은 충분합니다. <br> 더 이상 망설이지 말고 시작하세요.</p>
    <% End If %>
</div>

<!-- <div class="cont js-cont-wrap <%=campusName%> fix-menu-top"> -->
<div class="cont js-cont-wrap <%=campusName%>">

    <div class="cont03 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont03_tit.jpg" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/cont03_tit.jpg" alt=""></p>
        <% End If %>

        <% If campus_code = "CD0341" or campus_code = "CD0257" Then '대전/중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont03_txt.jpg" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/cont03_txt.jpg" alt=""></p>
        <% End If %>
        <div class="inner">

            <% If campus_code = "CD0341" Then '대전 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/danka_slide01.jpg" alt=""></p>
            <% Else %>
            <!-- 콘텐츠 슬라이드 -->
            <div class="contents-slide swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/danka_slide01.jpg" alt=""></p>
                    </div>
                    <div class="swiper-slide">
                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/danka_slide02.jpg" alt=""></p>
                    </div>
                </div>
                <div class="swiper-pagination type01"></div>
            </div>
            <!-- //콘텐츠 슬라이드 -->
            <% End If %>
            
            <p class="highlight-txt">
                메가스터디의 온&middot;오프라인 <br>
                수험 전문 강사진의 검증된 강의력과 <br>
                콘텐츠를 만나보실 수 있습니다.
            </p>

            <!-- 선생님 롤링 슬라이드 -->
            <!--#include virtual="/intro/2025/half/teacher_slide.asp" -->
            <!-- //선생님 롤링 슬라이드 -->

            <div class="danka-wrap">
                <a class="box" onclick="javascript:<%=regular_url%>">
                    <% If campus_code = "CD0257" Then '중계 %>
                    <span>목표 성적을 만드는 단계별 커리큘럼</span>
                    <% Else %>
                    <span>1등급을 만드는 단계별 커리큘럼</span>
                    <% End If %>
                    <p>정규&middot;특강 단과</p>
                </a>

                <% If campus_code <> "CD0343" and campus_code <> "CD0340" and campus_code <> "CD0341" Then '코어원주/코어광주/대전 제외 %>
                <a class="box" onclick="javascript:<%=am_url%>">
                    <span>오직 N수생을 위한 평일 오전/오후 단과</span>
                    <p>AM 단과</p>
                </a>
                <% End If %>
            </div>
        </div>
    </div>

    <div class="cont04 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont04_tit.jpg" alt="Point 2. 최대 효율"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/cont04_tit.jpg" alt="Point 2. 최대 효율"></p>
        <% End If %>
        <% If russelCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" or campus_code = "CD0250" or campus_code = "CD0249" Then '코어/대구/울산/대전/부천/영통 %>
        <a class="i-bus" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_bus.png" alt=""></a>
        <% End If %>
        <div class="inner">
            <div class="studyHall-wrap">
                <% If russelCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0244" or campus_code = "CD0341" Then '코어/대구/울산/평촌/분당/대전 %>
                <div class="studyHall-navi core swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><div>개인별 <br> 스케줄</div></div>
                        <div class="swiper-slide"><div>자습시간 <br> 최대 확보</div></div>
                        <div class="swiper-slide"><div>학습 동선 <br> 최소화</div></div>
                        <div class="swiper-slide"><div>학습 <br> 최적화 환경</div></div>

                        <% If campus_code = "CD0342" Then '대구 %>
                        <div class="swiper-slide"><div>셔틀버스 <br> 운행</div></div>
                        <% End If %>
                        
                        <% If campus_code = "CD0344" Then '코어전주 %>
                        <div class="swiper-slide"><div>급식실<br>운영</div></div>
                        <% Else %>
                        <div class="swiper-slide"><div>자체 식당<br>운영</div></div>
                        <% End If %>
                    </div>
                </div>
                <% Else %>
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">개인별<br>스케줄</div>
                        <div class="swiper-slide">자습시간<br>최대 확보</div>
                        <div class="swiper-slide">학습 동선<br>최소화</div>
                        <div class="swiper-slide">학습 <br> 최적화 환경</div>
                    </div>
                </div>
                <% End If %>
                <div class="studyHall-slide swiper-container <%=campusName%>">
                    <div class="swiper-wrapper">
                        <!-- 개인별 스케줄 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                대학 학업 병행과 최대 자습시간 확보가 <br>
                                가능한 시간관리 시스템           
                            </p>
                            <p class="stit">
                                대학 학업 병행이 필요한 반수생들을 위해 <br>
                                개인별 맞춤 스케줄 운영과 취약부분 보완에 <br>
                                꼭 필요한 자습시간을 최대로 확보하기 위한 <br>
                                단과 자율 선택제로 운영합니다.
                                <% If campus_code = "CD0345" Then '코어창원 %>
                                <br>(의무C수 충족 내 수업 자율 선택 가능)
                                <% End If %>
                            </p>
                            <div class="in-box">
                                <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/studyHall_img01.jpg" alt="반수생 시간표(예시)"></div>
                                <p>
                                    <strong>대학 학업 병행이 가능한 개인별 스케줄 운영</strong>
                                    학과 수업과 대입을 병행해야 하는  <br>
                                    반수생들을 위해 등&middot;하원 시간이 조정 가능하고  <br>
                                    필요한 수업만 선택하는 개인별 스케줄로  <br>
                                    운영하여 효율적으로 시간을 관리합니다.
                                    <% If campus_code = "CD0345" Then '코어창원 %>
                                    <br>(의무C수 충족 내 수업 자율 선택 가능)
                                    <% End If %>
                                </p>
                            </div>
                            <% If campus_code = "CD0245" Then '목동 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        바자관의 장점은 <strong>학습시간을 개인의 필요에 
                                        맞게 확보</strong>할 수 있다는 것입니다. 
                                        <strong>스케줄을 자율적으로</strong> 짤 수 있어서 제 필요에 맞게 
                                        효율적으로 학습할 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            연세대학교 중어중문학과 합격 <br>
                                            러셀 목동 이서진                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        러셀 분당을 다니면서 시간에 맞춰 
                                        스케줄을 짜는 것이 매우 용이하고, 
                                        <strong>집에서 시간을 낭비하는 대신 
                                        러셀 분당에서 공부를 할 수 있기 때문에 
                                        더 많은 공부 시간을 확보</strong>할 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_wonkwang02.png" alt="원광대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            원광대학교 의예과 합격 <br>
                                            러셀 분당 원*연                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        규칙적인 시간표대로 공부하며 공부 루틴을 잡을 수 있었고,
                                        학습량 자체를 늘릴 수 있었습니다. 바자관 내에서 
                                        완전히 집중하고 집에서는 휴식을 취하는
                                        하루들을 반복하니 스트레스 없이
                                        공부할 수 있었던 것 같습니다.                                       
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025 연세대학교 <br>
                                            의류환경학과 합격 <br>
                                            러셀CORE 원주 변재이                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        쉬는 시간과 식사시간의 
                                        남는 자투리 시간에도 
                                        <strong>공부하는 분위기</strong>가 형성되어 있어서 
                                        <strong>효율적으로 학습</strong>할 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_eulji02.png" alt="을지대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            을지대학교 의예과 합격 <br>
                                            러셀CORE 청주 김*담
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>철저히 관리가 이루어질 뿐 아니라 시간을
                                        내가 필요한 만큼 효율적으로 사용할 수 있었기에</strong> 러셀에 온 것이 좋은 선택이었습니다. 
                                        단과 하나를 제외하고는 모든 시간을 자습에 할애했는데, 좋은 면학 분위기 속에서 항상 해이해지지 
                                        않고 긴장감 있게 공부할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            한양대 의예과 합격 <br>
                                            러셀 강남 박성원                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        시간 관리를 하며 공부를 해야 하는데,
                                        의무적으로 오전 8시~오후 10시 자습을 하며
                                        <strong>규칙적인 생활습관을 유지할 수 있었습니다.</strong>
                                        또한 루틴이 형성되면서 효율적이고
                                        집중도 높은 학습을 실천할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            연세대(미래) 의예과 합격 <br>
                                            러셀 부천 박*우
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다.</strong>
                                        모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 <strong>더 현장감 있기에, 
                                        러셀의 표준 시간표에 맞추어 공부하였습니다.</strong>
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            고려대학교 의과대학 합격 <br>
                                            러셀 영통 오서준                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '대전 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>수능과 유사한 바른공부 자습전용관 
                                        시간표</strong> 덕분에 시간적 패턴을 몸에 익히는 데 큰 도움이 되었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            서울대학교 지리학과 합격 <br>
                                            러셀 대전 박재원                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        수능 시간을 고려한 시간표에 따라
                                        바자관 종이 울려서 저 혼자 공부할 때와 
                                        다르게 적절한 쉬는 시간과 공부 시간을
                                        가질 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_busan.png" alt="부산대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            부산대학교 약학과 합격 <br>
                                            러셀 울산 김○○                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관의 장점은 학습시간이 확보</strong>된다는점입니다. 바른공부 자습전용관은 개인의 스케줄을 반영해 필수 자습시간을 확보해 줍니다. 입시기간동안 학습시간을 확보하면 <strong>작은 시간들이 모여 굉장히 큰 변화</strong>를 만들어 내기 때문에 바자관의 장점이라고 생각합니다.                                 
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            연세대학교 수학과 합격 <br>
                                            러셀 중계 장*영                                                                                     
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        표준 시간표가 정해져 있어 학습시간 확보가 잘 되며 주말에도 생활패턴을 유지하고 공부 리듬을 형성시킬 수 있어 좋았습니다. 학교 등 유동적인 시간 조절이 필요했는데, 담임 선생님이 계셔 갑작스러운 일정에도 시간표 조절이 가능해서 편리했습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            고려대학교 합격 <br>
                                            러셀 평촌 박*연                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        러셀에서는 수능 시간표와 동일한 시간표를 사용해 따로 타이머를 맞추는 등의 수고를 덜 수 있어서 편리했습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dongguk02.png" alt="동국대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            동국대학교 한의예과 합격 <br>
                                            러셀 대구 문지연                                                                                      
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        부족하다고 생각하는 과목을 찾아 듣다 보니 강제로 불필요한 수업을 들을 때와 달리 집중력 있게 수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            한양대학교 의예과 합격 <br>
                                            러셀CORE 광주 엄태옥                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>규칙적이고 효율적인 시스템을 활용하여 학업에 몰입할 수 있었습니다.</strong> 규칙적인 생활은 컨디션 관리와 학습 계획에 큰 도움이 되었고, 취약 과목이었던 국어를 보완하면서도 수학과 과학의 비중을 유지하면서 수능을 대비할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            서울대 컴퓨터공학부 <br>
                                            러셀CORE 전주 임태빈                                         
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        원하는 단과 수업을 선택하여 듣고 그 외의 시간은 자습관을 이용할 수 있어 충분한 자습시간을 확보할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            한양대학교 기계과 합격 <br>
                                            러셀CORE 창원 성재호                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% Else %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        개인적으로 공부할 때, 
                                        <strong>시간의 효율성을 가장 중요시</strong>하는데 
                                        러셀의 시스템이 시간을 효율적으로 
                                        쓰는데 많은 도움이 되었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_gachon02.png" alt="가천대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br> 
                                            가천대학교 의예과 합격 <br>
                                            러셀 센텀 박*효
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <!-- 자습시간 최대 확보 -->
                        <div class="swiper-slide dough">
                            <p class="tit">
                                대학 학업 병행과 최대 자습시간 확보가 <br>
                                가능한 시간관리 시스템                           
                            </p>
                            <p class="stit">
                                대학 학업 병행이 필요한 반수생들을 위해  <br>
                                개인별 맞춤 스케줄 운영과 취약부분 보완에  <br>
                                꼭 필요한 자습시간을 최대로 확보하기 위한  <br>
                                단과 자율 선택제로 운영합니다.
                                <% If campus_code = "CD0345" Then '코어창원 %>
                                <br>(의무C수 충족 내 수업 자율 선택 가능)
                                <% End If %>
                            </p>
                            <div class="in-box">
                                <div class="chart-wrap">
                                    <canvas id="donutChart"></canvas>
                                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/chart_bg.png" alt="도넛차트 밑배경"></p>
                                    <span><strong>하루 최대 <%=chart_minute%>분</strong><br>자습시간 확보</span>
                                </div>
                                <a href="javascript:void(0)" class="bt-tt js-mask"><span>표준 시간표 자세히 보기</span></a>
                                <p>
                                    <strong>효율적인 학습을 위한 자습시간 최대 확보</strong>
                                    약점을 보완하고 개념을 깊게 이해하기 위한  <br>
                                    자습시간이 필수적인 <% If campus_code <> "CD0257" Then '중계 제외 %>최상위권<% End If %> 반수생들을 위해  <br>
                                    필요한 수업만 선택하는  <br>
                                    단과 자율 선택 시스템으로  <br>
                                    최대의 자습시간을 확보해 드립니다.
                                    <% If campus_code = "CD0345" Then '코어창원 %>
                                    <br>(의무C수 충족 내 수업 자율 선택 가능)
                                    <% End If %>
                                </p>
                            </div>
                            <% If campus_code = "CD0245" Then '목동 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        바자관의 장점은 <strong>학습시간을 개인의 필요에 
                                        맞게 확보</strong>할 수 있다는 것입니다. 
                                        <strong>스케줄을 자율적으로</strong> 짤 수 있어서 제 필요에 맞게 
                                        효율적으로 학습할 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            연세대학교 중어중문학과 합격 <br>
                                            러셀 목동 이서진                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        러셀 분당을 다니면서 시간에 맞춰 
                                        스케줄을 짜는 것이 매우 용이하고, 
                                        <strong>집에서 시간을 낭비하는 대신 
                                        러셀 분당에서 공부를 할 수 있기 때문에 
                                        더 많은 공부 시간을 확보</strong>할 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_wonkwang02.png" alt="원광대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            원광대학교 의예과 합격 <br>
                                            러셀 분당 원*연                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        규칙적인 시간표대로 공부하며 공부 루틴을 잡을 수 있었고,
                                        학습량 자체를 늘릴 수 있었습니다. 바자관 내에서 
                                        완전히 집중하고 집에서는 휴식을 취하는
                                        하루들을 반복하니 스트레스 없이
                                        공부할 수 있었던 것 같습니다.                                       
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025 연세대학교 <br>
                                            의류환경학과 합격 <br>
                                            러셀CORE 원주 변재이                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        쉬는 시간과 식사시간의 
                                        남는 자투리 시간에도 
                                        <strong>공부하는 분위기</strong>가 형성되어 있어서 
                                        <strong>효율적으로 학습</strong>할 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_eulji02.png" alt="을지대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            을지대학교 의예과 합격 <br>
                                            러셀CORE 청주 김*담
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>철저히 관리가 이루어질 뿐 아니라 시간을
                                        내가 필요한 만큼 효율적으로 사용할 수 있었기에</strong> 러셀에 온 것이 좋은 선택이었습니다. 
                                        단과 하나를 제외하고는 모든 시간을 자습에 할애했는데, 좋은 면학 분위기 속에서 항상 해이해지지 
                                        않고 긴장감 있게 공부할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            한양대 의예과 합격 <br>
                                            러셀 강남 박성원                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        시간 관리를 하며 공부를 해야 하는데,
                                        의무적으로 오전 8시~오후 10시 자습을 하며
                                        <strong>규칙적인 생활습관을 유지할 수 있었습니다.</strong>
                                        또한 루틴이 형성되면서 효율적이고
                                        집중도 높은 학습을 실천할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            연세대(미래) 의예과 합격 <br>
                                            러셀 부천 박*우
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다.</strong>
                                        모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 <strong>더 현장감 있기에, 
                                        러셀의 표준 시간표에 맞추어 공부하였습니다.</strong>
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            고려대학교 의과대학 합격 <br>
                                            러셀 영통 오서준                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '대전 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>수능과 유사한 바른공부 자습전용관 
                                        시간표</strong> 덕분에 시간적 패턴을 몸에 익히는 데 큰 도움이 되었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            서울대학교 지리학과 합격 <br>
                                            러셀 대전 박재원                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        수능 시간을 고려한 시간표에 따라
                                        바자관 종이 울려서 저 혼자 공부할 때와 
                                        다르게 적절한 쉬는 시간과 공부 시간을
                                        가질 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_busan.png" alt="부산대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            부산대학교 약학과 합격 <br>
                                            러셀 울산 김○○                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관의 장점은 학습시간이 확보</strong>된다는점입니다. 바른공부 자습전용관은 개인의 스케줄을 반영해 필수 자습시간을 확보해 줍니다. 입시기간동안 학습시간을 확보하면 <strong>작은 시간들이 모여 굉장히 큰 변화</strong>를 만들어 내기 때문에 바자관의 장점이라고 생각합니다.                                 
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            연세대학교 수학과 합격 <br>
                                            러셀 중계 장*영                                                                                     
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        표준 시간표가 정해져 있어 학습시간 확보가 잘 되며 주말에도 생활패턴을 유지하고 공부 리듬을 형성시킬 수 있어 좋았습니다. 학교 등 유동적인 시간 조절이 필요했는데, 담임 선생님이 계셔 갑작스러운 일정에도 시간표 조절이 가능해서 편리했습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            고려대학교 합격 <br>
                                            러셀 평촌 박*연                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        러셀에서는 수능 시간표와 동일한 시간표를 사용해 따로 타이머를 맞추는 등의 수고를 덜 수 있어서 편리했습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dongguk02.png" alt="동국대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            동국대학교 한의예과 합격 <br>
                                            러셀 대구 문지연                                                                                      
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        부족하다고 생각하는 과목을 찾아 듣다 보니 강제로 불필요한 수업을 들을 때와 달리 집중력 있게 수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            한양대학교 의예과 합격 <br>
                                            러셀CORE 광주 엄태옥                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>규칙적이고 효율적인 시스템을 활용하여 학업에 몰입할 수 있었습니다.</strong> 규칙적인 생활은 컨디션 관리와 학습 계획에 큰 도움이 되었고, 취약 과목이었던 국어를 보완하면서도 수학과 과학의 비중을 유지하면서 수능을 대비할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            서울대 컴퓨터공학부 <br>
                                            러셀CORE 전주 임태빈                                         
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        원하는 단과 수업을 선택하여 듣고 그 외의 시간은 자습관을 이용할 수 있어 충분한 자습시간을 확보할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            한양대학교 기계과 합격 <br>
                                            러셀CORE 창원 성재호                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% Else %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        개인적으로 공부할 때, 
                                        <strong>시간의 효율성을 가장 중요시</strong>하는데 
                                        러셀의 시스템이 시간을 효율적으로 
                                        쓰는데 많은 도움이 되었습니다.                                      
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_gachon02.png" alt="가천대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            가천대학교 의예과 합격 <br>
                                            러셀 센텀 박*효
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">
                                이동에 낭비하는 시간 없이 <br>
                                학습 동선 최소화                           
                            </p>
                            <p class="stit">
                                <%=food_txt%> <br>
                                한 번에 해결할 수 있도록 동선을 최적화하여 <br>
                                이동에 낭비되는 시간을 최소화하고  <br>
                                효율적인 시간 관리를 통해 높은 집중력을 발휘,  <br>
                                학습량을 극대화할 수 있습니다.
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/studyHall_img03.jpg" alt="강의실/바자관/급식(식당)"></p>

                            <% If campus_code = "CD0001" Then '대치 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>단과 수업 교실과 바자관이 같은 건물 안에 있어 학습 동선을 최소화할 수 있었습니다.</strong>
                                        단과 시작 시간 15분 전에만 이동하면 되었기 때문에 수업 시작 직전까지 공부를 할 수 있었고 덕분에 시간 낭비 없이 공부할 수 있었던 것이 매우 좋았습니다.                                                                            
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            서울대학교 사회교육과 합격 <br>
                                            러셀 대치 유수빈
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0245" Then '목동 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>한 건물 내에 자습관과 강의실</strong>이 함께 있어 이동 시간이 많이 필요하지 않아 제가 원하는 만큼의 <strong>충분한 자습시간을 확보</strong>할 수 있었습니다.                                   
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha05.png" alt="이화여자대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            이화여자대학교 의예과 합격 <br>
                                            러셀 목동 임세린                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        가까운 거리에서 필요한 모든 것들을 
                                        해결하고, <strong>이동에 낭비되는 시간을 줄여서 공부에 집중할 수 있도록 도움</strong>을 받은 것 같습니다.                                                                               
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            고려대학교 전자전기공학과 합격 <br>
                                            러셀 분당 양*솔                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        한 건물에 <strong>강의실-바자관-식당</strong>이 있어
                                        이동에 낭비하는 시간 없이 <strong>효율적으로
                                        시간 관리</strong>를 할 수 있다는 점이 좋았습니다. 학원 건물에서 하루를 보내도 부족한 것이 없어서 <strong>공부에만 몰두할 수 있었습니다.</strong>                                                                               
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_sangji02.png" alt="상지대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025 상지대학교 <br>
                                            한의예과 합격 <br>
                                            러셀CORE 원주 전혜주
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        강의실이 바자관 바로 위층에 위치해 있어서 거리상 시간 손실이 없었습니다. 
                                        <strong>대치동 수업을 실시간으로 들으며 현강 자료도 받을 수 있고, 동시에 시간도 절약</strong>할 수 있어서 정말 큰 도움이 되었습니다.                                    
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            서울대학교 경영학과 합격 <br>
                                            러셀CORE 청주 김*진                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        필요한 과목만 수강하고 충분한 
                                        자습시간 확보를 동시에 충족할 수 있어서 만족스러웠습니다.  
                                        <strong>바자관과 단과 강의실이 한 건물에 있어 수업 이후 바로 바자관으로 이동할 수 있어 불필요한 시간 낭비를 줄일 수 있었습니다.</strong>                                                                          
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            고려대 교육학과 합격 <br>
                                            러셀 강남 곽승연                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        자습관에서 공부하면서 현역 때와는
                                        비교도 안되는 <strong>학습 시간을 
                                        확보</strong>한 것이 좋았습니다.
                                        <strong>자습관 시간표에 맞춰서 이른 시간부터
                                        공부하는 습관을 기를 수 있어 좋았습니다.</strong>                                                                             
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeju02.png" alt="제주대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            제주대 수의학과 합격 <br>
                                            러셀 부천 이*규                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>학습 동선 최소화하는 것</strong>이 큰 도움이 되었습니다.
                                        또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다.</strong>
                                        모의고사 이후 성적 분석을 토대로 한 상담은 학습 방향을 잡는 데에 도움이 되었고, 정확한 수치를 근거로 입시에 대한 구체적인 정보를 알려주셨습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 서울대학교 <br>
                                            치의학학석사통합과정 합격 <br>
                                            러셀 영통 최지원                                                                                     
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0246" Then '센텀 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>학습 동선 최소화를 가장 큰 장점</strong>으로 
                                        생각합니다. 짧은 수험 기간인 만큼 시간을 절약하는 것이 포인트입니다. 그래서 <strong>급식, 단과 수업, 자습 등을 모두 해결할 수 있다 보니 시간 절약에 유용</strong>했습니다.                                                                         
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_busan.png" alt="부산대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025학년도 <br>
                                            부산대학교 의예과 합격 <br>
                                            러셀 센텀 최OO                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '대전 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        강의실, 바자관, 급식실이 한 건물 안에 있기 때문에 이동시간을 절약할 수 있어 좋았고, 생활 루틴을 지키며 생활할 수 있어서 좋았습니다.                                 
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2023학년도 <br>
                                            연세대학교(미래) 의예과 합격 <br>
                                            러셀 대전 이승섭                                                                                 
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        외부 출입이 안되어서 답답할 것 같은 이미지가 강한데, 내부가 생각보다 개방감이 있어서 불편함이 없었습니다.
                                        <strong>강의, 자습, 식사 공간이 층별로 나누어져 있는 것도 좋았고, 다른 층 학생들끼리 생활 공간을 침범하지 않도록 규제</strong>해 줘서 좋았습니다.                                                                               
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dongeui.png" alt="동의대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            동의대 한의예과 합격 <br>
                                            러셀 울산 김○경                                                                                     
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        러셀에서는 급식을 제공해 주기 때문에 외부 식당에 갈 때 걸리는 시간의 절반으로 식사를 해결할 수 있어 <strong>시간 절약에 도움이 되었습니다.</strong> 또 각자 본인 자리에서 식사를 하기 때문에 <strong>식사 시간에도 영어 단어를 외우거나 오답노트</strong>를 보는 등 시간을 알차게 활용할 수 있습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_soonchunhyang02.png" alt="순천향대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            순천향대학교 의예과 합격 <br>
                                            러셀 중계 신*나                                                                                                                   
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>학습 동선 최소화가 러셀의 가장 큰 장점이라고 생각합니다. 저는 러셀에서 단과도 수강했는데, 단과를 수강한 뒤 같은 건물 내에서 선생님들께 질문도 하고, 바로 바자관으로 올라갈 수 있어서 공부 시간을 더 확보할 수 있었습니다.</strong>
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            서울대학교 음악학과 합격 <br>
                                            러셀 평촌 윤*영                                                                               
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        러셀 현장 강의는 한 건물에 강의실과 바자관이 함께 있어 이동 시간을 아낄 수 있고 마치고 배운 내용을 바로 복습할 수 있어 효율을 높일 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kyungpook02.png" alt="경북대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            경북대학교 의예과 합격 <br>
                                            러셀 대구 최다연                                                                                                                             
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바른공부 자습전용관과 가까운 거리에 강의실이 있다는 점은 확실한 장점으로 다가왔습니다. 이동에 낭비하는 시간이 없도록 도움을 주었습니다. 또한 검증된 강사진의 퀄리티 높은 콘텐츠는 실력 향상에 큰 도움을 주었습니다.</strong>
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dongguk02.png" alt="동국대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            동국대 한의예과 합격 <br>
                                            러셀CORE 광주 권태완                                           
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관, 강의실, 급식실이 한 곳에 있어 이동 시간을 최소화하고 학습시간을 최대화할 수 있었습니다.</strong>
                                        자습실과 단과 수업을 듣는 공간이 가까이에 있고, 급식실도 가깝기 때문에 이동시간이 줄어들어 학습시간이 자연스럽게 늘어날 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            연세대학교 의예과 <br>
                                            러셀CORE 전주 김경환                                                                                  
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        한 건물에 자습관, 식당, 강의실이 같이 있어 <strong>이동 시간에 따른 체력 소모와 자습시간 확보</strong>에 있어 큰 이점을 얻을 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chungnam02.png" alt="충남대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            충남대학교 수의예과 합격<br>
                                            러셀CORE 창원 백지훈                                                                                       
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% Else %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>학습 동선 최소화를 가장 큰 장점</strong>으로 생각합니다.
                                        인지능력은 체력과 마찬가지로 쓸 수 있는 양에 한계가 있다고 합니다. 
                                        그런 점에서, 러셀은 한 건물 안에서 <strong>급식, 단과 수업, 자습 등을 모두 해결할 수 있다 보니 시간 절약에 유용</strong>했습니다.                                                                 
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            연세대학교 물리학과 합격 <br>
                                            러셀 대구 장*익
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <!-- 학습 최적화 환경 -->
                        <div class="swiper-slide <%=last%>">
                            <p class="tit">
                                집단적인 면학 분위기로 <br>
                                학습 최적화 환경                      
                            </p>
                            <p class="stit">
                                학습 효율성을 높이기 위해 <br>
                                세심하게 설계된 쾌적한 환경의 학습 시설과 <br>
                                <% If campus_code = "CD0257" Then '중계 %>재원생의<% Else %>최상위권의<% End If %> 학구열을 체감할 수 있는 <br>
                                개방형 구조로 학습의 긴장감을 유지시키고 <br>
                                학습동기를 부여합니다.
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/studyHall_img04.jpg" alt=""></p>

                            <% If campus_code = "CD0001" Then '대치 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관의 장점은 좋은 면학 분위기와 개방형 구조입니다.</strong>
                                        일반적인 독서실과는 달리 탁 트여있어 쾌적하게 공부를 할 수 있었습니다. 
                                        또한 공부에 집중이 잘 안될 때 주변에서 열심히 공부하고 있는 친구들을 보면서 다시 공부에 몰두할 수 있는 추진력을 얻기도 했습니다.                                                                       
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_cau04.png" alt="중앙대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            중앙대학교 약학부 합격 <br>
                                            러셀 대치 박정후
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0245" Then '목동 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관의 장점인 개방형 구조</strong>는 학생들끼리 긍정적인 자극이 형성되게 합니다. 
                                        하루 종일 공부를 하다 보면 중간중간에
                                        지치기도 하는데 그때마다 <strong>주변에 열심히 공부하는 친구를 보며 자극</strong>을 받습니다.                                                                            
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            고려대학교 경영대학 합격 <br>
                                            러셀 목동 장준혁                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관의 가장 큰 장점은 개방형 구조와 
                                        좋은 면학 분위기라고 생각합니다.</strong> 
                                        장시간 공부를 하다 지칠 때 
                                        주변에 열심히 하는 친구들을 보며 
                                        자극을 받을 수 있었습니다.                                                                         
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_dankook02.png" alt="단국대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            단국대학교 약학과 합격 <br>
                                            러셀 분당 우*람                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관 이용하면서 가장 도움이 되었던
                                        점은 개방형 구조로 다른 친구들이
                                        공부하는 모습이 바로 보인다는 점이었습니다.
                                        집중이 안 될 때 다른 친구들을 보며
                                        자극을 받을 수 있었습니다.</strong>                                                                          
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kwandong.png" alt="가톨릭관동대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            가톨릭관동대학교 의예과 합격 <br>
                                            러셀CORE 원주 김민솔
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        저는 개방형 구조의 학습 공간이 가장 좋았습니다.
                                        탁 트인 느낌을 받을 수 있어 좋았고, 앞뒤, 양옆에서 열심히 공부하는 친구들을 보면서 졸음이 몰려오거나 딴생각이 들 때마다 자극을 받아 스스로를 재정비하며 나아갈 수 있었습니다.                                
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            고려대학교 철학과 합격 <br>
                                            러셀CORE 청주 최*연                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        바자관이 개방형 구조라 <strong>다른 친구들이 열심히 공부하는 모습을 보며 자극을 받을 수 있었습니다.</strong> 
                                        책상도 넓고 수납공간도 넉넉해서 편하게 공부할 수 있었습니다.                                                                                                          
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeonbuk02.png" alt="전북대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            전북대 수의예과 합격 <br>
                                            러셀 강남 전우호                                                                                 
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        자습관의 가장 큰 장점은 <strong>개방적인 구조라고 생각합니다.</strong> 다른 학생들이  공부하는 모습을 볼 수 있어 집단적인 면학 분위기를 형성할 수 있을 뿐만 아니라, 어두운 분위기의 다른 독서실과 다르게 <strong>개방감을 주어 실내에 오랜 시간 머물러도 답답하지 않아</strong> 긴 시간 공부에 집중할 수 있도록 도와줍니다.                                                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kangwon03.png" alt="강원대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            강원대 의예과 합격 <br>
                                            러셀 부천 이*은                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        바자관의 장점은 <strong>개방형 구조</strong>입니다. 또한, <strong>러셀의 체조 시스템, 바자관 내에 공기청정기와 온도계를 상시 가동</strong>하여 쾌적한 환경에서 공부를 할 수 있었던 것도 좋았습니다. 
                                        <strong>재수 초반에 멘탈적으로 지칠 대로 지쳐있었고</strong> 이런 상황에 <strong>가장 큰 힘이 되어주셨던 건 담임 선생님</strong>이라고 생각합니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeonbuk02.png" alt="전북대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            전북대학교 치의예과 합격 <br>
                                            러셀 영통 우태현                                                                                                                           
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0246" Then '센텀 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관의 장점은 면학 분위기가 형성되어 
                                        공부하기 좋은 환경</strong>입니다. 
                                        또한 집중이 안 될 때, 공부하고 있는 다른 친구들을 보면서 
                                        안일한 생각을 바로잡을 수 있어서 좋았습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_gyeongsang02.png" alt="경상국립대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025학년도 <br>
                                            경상국립대학교 약학과 합격 <br>
                                            러셀 센텀 안*진                                                                                    
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '대전 %>
                            <!-- <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        바자관의 면학 분위기가 좋았습니다. 
                                        바자관에서는 공부에만 집중할 수 있는 
                                        환경을 만들어 주어 자연스레 공부습관이 
                                        잡히게 되었습니다.                                                                     
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chungnam02.png" alt="충남대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            충남대학교 의예과 합격 <br>
                                            러셀 대전 조한별                                                                                                                           
                                        </p>
                                    </div>            
                                </div>
                            </div> -->
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>조용하고 정돈된 환경에서 공부할 수
                                        있는 것이 큰 장점이라고 생각합니다.</strong>
                                        사실 아무래도 휴대폰이 근처에 있으면 자주 보게 되는데, 휴대폰이 없는 환경에서 다른 사람들이 열심히 공부하는 것을 보며 공부에 대한 의지를 다질 수 있었습니다.                                                                                                                 
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_busan.png" alt="부산대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            부산대 의예과 합격 <br>
                                            러셀 울산 옥○리                                                                                                                               
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        바자관의 장점은 <strong>좋은 면학 분위기와 관리 시스템</strong>입니다. 조용한 분위기에서 공부에 몰입할 수 있으며 <strong>개방형 구조</strong>로 옆에서 공부하는 친구들을 보며 딴짓을 할 수 없었습니다. 개인 스케줄을 제외하고 <strong>오전 8시~밤 10시까지</strong> 의무 자습이기에 <strong>훨씬 많은 공부량</strong>을 확보할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            고려대학교 의예과 합격 <br>
                                            러셀 중계 동*영                                                                                                                                                           
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관 특유의 개방형 구조로 인해 친구들을 둘러보며 긍정적인 경쟁심에 불타오를 수 있고 쾌적한 온도 조성과 공기 청정기 등으로 공부하는 데에만 오롯이 집중할 수 있도록 해 주어 매우 좋았습니다.</strong>
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            서울대학교 인문계열학과 합격 <br>
                                            러셀 평촌 왕휘웅                                                                                                                     
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        넓은 개인 책장이 바로 옆에 있다는 것이
                                        마음에 들었습니다. 
                                        허리만 돌리면 모든 과목의 책을 꺼낼 수 있기에 불필요한 이동 시간을 줄일 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_inje02.png" alt="인제대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            인제대학교 의예과 합격 <br>
                                            러셀 대구 조준호                                                                                                                                                                        
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        바른공부 자습전용관의 장점은 학습에 집중할 수 있는 면학 분위기입니다.
                                        개방형 구조로 되어있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다.                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_seoul02.png" alt="서울대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            서울대학교 인문계열 합격 <br>
                                            러셀CORE 광주 김효원                                                                                     
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        러셀CORE 전주 <strong>바자관은 공부하는 데 있어 시설적 면에서 불편함이 전혀 없을 정도로 환경 구성이 잘 되어 있습니다.</strong> 이러한 곳에서 매일 수능 시간표 대로 공부를 한 덕분에 수능에 최적화된 공부 리듬을 만들 수 있었습니다.                                 
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024학년도 <br>
                                            고려대학교 의예과 <br>
                                            러셀CORE 전주 서진원                                                                                                                        
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        자습관이 개방형 구조로 되어있기 때문에, 집중이 되지 않을 때 옆에서 열심히 공부하고 있는 친구들을 보며 동기부여를 받을 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_hy05.png" alt="한양대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            한양대 화학과 합격 <br>
                                            러셀CORE 창원 이은지                                                                                                                             
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% Else %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관의 장점은 공부하기 좋은 환경</strong>입니다.
                                        개방형 환경으로 졸음도 방지할 수 
                                        있었습니다. 또한 집중이 안 될 때, 
                                        공부하고 있는 다른 친구들을 보면서 
                                        다시 마음을 다잡을 수 있어 좋았습니다.                                     
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_catholic02.png" alt="대구가톨릭대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            대구가톨릭대학교 의예과 합격 <br>
                                            러셀 대구 유*채
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% End If %>
                        </div>

                        <% If campus_code = "CD0342" Then '대구 %>
                        <div class="swiper-slide <%=last%>">
                            <p class="tit">
                                러셀 대구 <br> 셔틀버스 운행
                            </p>
                            <p class="stit">
                                매주 월요일~금요일, 일 2회 운영(등원/하원) <br>
                                신청방법 : 노선별 기사님과 1:1 개별신청입니다.  <br>
                                (지불방법은 기사님이 안내드립니다.)                                                          
                            </p>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/studyHall_img06.jpg" alt=""></p>
                        </div>
                        <% End If %>

                        <% If russelCore = 1 or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0248" or campus_code = "CD0244" or campus_code = "CD0341" Then '코어/대구/울산/평촌/분당/대전 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide <%=last%>">
                            <% If campus_code = "CD0342" Then '대구 %>
                            <p class="tit">
                                건강하고 슬기로운 식생활 <br>
                                자체 식당 운영                                    
                            </p>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <p class="tit">
                                건강하고 슬기로운 식생활 <br>
                                급식실 운영                                    
                            </p>
                            <% Else %>
                            <p class="tit">
                                양질의 급식이 제공되는 <br>
                                자체 식당 운영          
                            </p>
                            <% End If %>

                            <% If campus_code = "CD0343" or campus_code = "CD0341" Then '코어원주/대전 %>
                            <p class="stit">
                                맛과 영양을 고려한 건강하고 든든한 한 끼를 <br>
                                재원생의 가장 가까운 곳에서  <br>
                                안전하게 준비합니다.                                                             
                            </p>
                            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
                            <p class="stit">
                                자체 식당 운영으로 균형 잡힌 식단을 유지하고  <br>
                                외부와의 접촉과  <br>
                                이동시간 최소화로 학습에 몰입 가능                           
                            </p>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <p class="stit">
                                양질의 급식으로 균형 잡힌 수험생 식단 유지 <br>
                                외부와의 접촉을 최소화하여, 이동 시간을 줄여 <br>
                                학습에 몰입할 수 있도록 내부 식당을 운영합니다.                                                        
                            </p>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <p class="stit">
                                급식 전문업체 메가F&S에서 급식을 진행하며, <br>
                                영양사와 조리장 등 전문가가 엄선한 재료와 <br>
                                식단으로 건강한 급식을 제공합니다.                                                         
                            </p>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <p class="stit">
                                맛과 영양을 고려한 건강하고 든든한 한 끼를 <br>
                                재원생의 가장 가까운 곳에서 안전하게 준비하고 <br>
                                외부와의 접촉과 이동 시간 최소화로 <br>
                                학습에 몰입 가능                                                             
                            </p>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <p class="stit">
                                식당 운영으로 <strong>건강하고 균형 잡힌 식단 제공, <br>
                                식사를 위한 이동 시간을 줄여 <br>
                                학습에 더욱 몰입 가능</strong>                             
                            </p>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <p class="stit">
                                자체 식당 운영으로 균형 잡힌  <br>
                                수험생 식단 유지가 가능합니다. <br>
                                외부와의 접촉을 최소화하고,  <br>
                                이동 시간을 줄여 학습에 몰입할 수 있습니다.                                                          
                            </p>
                            <% Else %>
                            <p class="stit">
                                재원생 전용 내부 식당 운영을 통해  <br>
                                갓 지은 밥으로 따뜻하고 균형 잡힌 식단을 <br>
                                제공하며 식사를 위한 이동 시간을 줄여  <br>
                                학습에 더욱 몰입할 수 있도록 합니다.                                
                            </p>
                            <% End If %>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/studyHall_img05.jpg" alt=""></p>
                            
                            <% If campus_code = "CD0244" Then '분당 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>같은 건물에서 급식을 빠르게 먹을 수 있어서 학습시간 확보에 유리하였습니다. 
                                        급식의 퀄리티가 좋았으며, 
                                        양도 많았습니다.</strong>                                                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kyungpook02.png" alt="경북대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            경북대학교 치의예과 합격 <br>
                                            러셀 분당 유*혁                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        자체 식당과 공부하는 곳이 한 건물에 있어 학습 동선을 최소화하여 시간 낭비 없이 공부할 수 있었습니다.
                                        밥을 먹기 위해 굳이 외부에 나가지 않아도 되어 공부시간을 확보하는데 큰 도움이 되었습니다.                                                                                                              
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_kangwon03.png" alt="강원대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            강원대학교 의예과 합격 <br>
                                            러셀CORE 원주 정동준                                                                                     
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0349" Then '울산 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>바자관, 강의실과 식당이 모두 한 건물에 있어 이동시간에서의 낭비가 없어서 좋았습니다. </strong>
                                        또, 쾌적한 공기 속에서 공부할 수 있어서 더 편안한 환경이 조성될 수 있었습니다.                                                                                                                                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_busan.png" alt="부산대학교 로고"></p>
                                        <p class="stu-txt">
                                            2025년도 <br>
                                            부산대 약학과 합격 <br>
                                            러셀 울산 이○환                                                                                                                          
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>한 건물에 자체 식당 급식실이 있어 동선이 최소화된다는 점이 좋았습니다. 버려지는 시간 없이 효율적으로 시간을 활용할 수 있었고, 한겨울, 한여름에도 건물 내에서 날씨의 영향을 받지 않고 쾌적하게 공부할 수 있었습니다.</strong>
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            고려대학교 경영학과 합격<br>
                                            러셀 평촌 김*주                                                                                                                                                           
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        <strong>자체 식당이 있어 급식, 단과, 자습을 한 건물에서 해결할 수 있었고, 이동 시간을 줄여 공부하는 데에 효율적으로 도움이 되었습니다.</strong>
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="연세대학교 로고"></p>
                                        <p class="stu-txt">
                                            2023학년도 <br>
                                            연세대학교 국어국문과 합격 <br>
                                            러셀CORE 광주 김지윤                                                                                                                             
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        급식이 정말 맛있습니다.
                                        <strong>건강 관리와 더불어 공부를 병행하는 데에도
                                        큰 도움이 되었습니다.</strong>                                        
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            연세대학교 의예과 <br>
                                            러셀CORE 전주 김경환                                                                                                                                                            
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="pick-box">
                                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/pick_tit.jpg" alt="선배들의 pick!"></p>
                                <div>
                                    <p class="p-txt">
                                        한 건물에 자체 식당이 있어 <strong>단과와 자습관 이동 시간을 줄이고</strong> 효율적으로 시간을 사용할 수 있었습니다.
                                    </p>
                                    <div class="stu-detail">
                                        <p><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ewha05.png" alt="이화여자대학교 로고"></p>
                                        <p class="stu-txt">
                                            2024년도 <br>
                                            이화여자대학교  <br>
                                            커뮤니케이션 미디어학부 합격 <br>
                                            러셀CORE 창원 유승연                                                                                                                                                                      
                                        </p>
                                    </div>            
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <% End If %>
                    </div>
                </div>

                <!-- 바자관 표준 시간표 -->
                <!-- #include virtual = "/intro/2025/half/baja_time_table.asp" -->
                <!-- //바자관 표준 시간표 -->
            </div>
            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="r-txt">
                * 합격생 후기 2025 합격생 인터뷰 중 일부 발췌 <br>
                * 학원별 운영 방법 및 시설은 상이하며, <br>
                자세한 내용은 학원별 페이지에서 확인할 수 있습니다.
            </p>
            <% ElseIf campus_code = "CD0247" or campus_code = "CD0249" or campus_code = "CD0248" or campus_code = "CD0345" Then '강남/영통/평촌/코어창원 %>
            <p class="r-txt">
                * 합격생 후기 2024 합격생 인터뷰 중 일부 발췌
            </p>
            <% ElseIf campus_code = "CD0346" or campus_code = "CD0341" or campus_code = "CD0257" or campus_code = "CD0340" or campus_code = "CD0344" Then '코어청주/대전/중계/코어광주/코어전주 %>
            <p class="r-txt">
                * 합격생 후기 합격생 인터뷰 중 일부 발췌
            </p>
            <% Else %>
            <p class="r-txt">
                * 합격생 후기 2025 합격생 인터뷰 중 일부 발췌
            </p>
            <% End If %>
        </div>
    </div>

    <div class="cont05 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont05_tit.jpg" alt="Point 3. 전략적 관리"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/cont05_tit.jpg" alt="Point 3. 전략적 관리"></p>
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
                        <p class="stit">반수생 개인별 맞춤 입시 전략 제시</p>
                        <div>
                            <div class="s-slide swiper-container type01">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">실제 데이터 기반 분석 입시관리</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide01_img01.jpg" alt=""></p>
                                        <p class="txt">
                                            주기적인 모의고사 시행을 통해 
                                            누적한 성적 DB와 모의고사 성적 추이를 
                                            기반으로 대학별 전형을 분석하여 
                                            목표 대학에 맞춘 학생별 맞춤 
                                            입시 방향을 제시합니다.
                                        </p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">전문적인 1:1 입시 상담</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide01_img02.jpg" alt=""></p>
                                        <p class="txt">
                                            세분화된 목표 설정부터 성취를 위한 
                                            구체적인 개인별 지원 전략까지 
                                            개별 성적 포트폴리오를 기반으로 
                                            체계적인 수시/정시 1:1 컨설팅을 통해 
                                            최적의 지원 전략을 수립합니다.
                                        </p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">반수생 대상 설명회 및 특강</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide01_img03.jpg" alt=""></p>
                                        <p class="txt">
                                            입시 특강, 전형별 설명회를 통해 
                                            풍부하고 정확한 입시 콘텐츠를 
                                            제공하고 다양한 사례가 포함된 
                                            메가스터디의 전문 입시 자료집 등을 통해 
                                            최신 입시 정보를 제공합니다.
                                        </p>
                                    </div>
                                </div>
                                <div class="swiper-pagination p-type01"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 학습관리 -->
                    <div class="swiper-slide">
                        <p class="stit">단기간 최대 효율을 위한 전략적인 학습 관리</p>
                        <div>
                            <div class="s-slide swiper-container type02">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">1:1 개별 학습 상담</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide02_img01.jpg" alt=""></p>
                                        <p class="txt">
                                            성적 데이터와 학습 현황을 기반으로 
                                            개인별 학습 스타일 및 취약점 분석에 
                                            따라 과목별 보완점과 학습 방향을 
                                            제시하고 구체적이고 실질적인 
                                            학습 계획과 설계, 점검이 진행됩니다.
                                        </p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">전략적 학습 스케줄 관리</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide02_img02.jpg" alt=""></p>
                                        <p class="txt">
                                            시간 활용이 중요한 반수생을 위해 
                                            철저한 시간 안배 및 효율적인 학습 
                                            전략을 제시하고 과목별 학습법 특강 및 
                                            설명회를 통해 시기별 상황에 맞춘 
                                            학습 가이드를 제시합니다.
                                        </p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">올바른 학습 루틴 형성</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide02_img03.jpg" alt=""></p>
                                        <p class="txt">
                                            느슨해지기 쉬운 환경 속 올바른 학습 
                                            루틴 형성을 위해 러셀 학습 플래너, 러셀 일일수학 30제, 러셀 총평노트 등 다양한 콘텐츠를 
                                            활용하여 학습 습관의 개선 방향을 
                                            제시합니다.
                                        </p>
                                    </div>
                                </div>
                                <div class="swiper-pagination p-type02"></div>
                            </div>
                        </div>
                    </div>
                    <!-- 생활관리 -->
                    <div class="swiper-slide">
                        <p class="stit">집단적인 면학 분위기를 위한 엄격한 생활관리</p>
                        <div>
                            <div class="s-slide swiper-container type03">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <p class="stit">출결 관리 시스템</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide03_img01.jpg" alt=""></p>
                                        <p class="txt">
                                            매 교시 출결을 체크하고 
                                            전자 출결 관리 시스템을 통해 학부모에게 
                                            문자를 발송하는 등 철저하게 출결이 관리되며, 지각, 무단 외출, 무단결석 등 
                                            면학 분위기를 저해하는 요소들을 
                                            엄격하게 관리합니다.
                                        </p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">태도 점수 제도</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide03_img02.jpg" alt=""></p>
                                        <p class="txt">
                                            휴대폰 소지, 자습시간 중 자리 이동 등 
                                            집중력이 저하될 수 있는 항목들을 
                                            통제하고 학습 태도가 불성실한 경우 
                                            페널티 등을 부과하여 학습에만 집중할 수 있는 면학 분위기를 형성합니다.
                                        </p>
                                    </div>
                                    <div class="swiper-slide">
                                        <p class="stit">정서적 멘토링</p>
                                        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/s_slide03_img03.jpg" alt=""></p>
                                        <p class="txt">
                                            목표 상기를 통해 지속적인 동기 부여와 
                                            안정적인 수험 생활이 가능하도록 
                                            학습 고충 상담, 슬럼프 극복을 위한 
                                            1:1 고민 상담 등 학생과 끊임없는 
                                            소통 및 지원을 제공합니다.
                                        </p>
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

    <div class="cont06 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/cont06_tit.jpg" alt="Point 4. 맞춤 콘텐츠"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/cont06_tit.jpg" alt="Point 4. 맞춤 콘텐츠"></p>
        <% End If %>
        <div class="inner">
            <div class="book-wrap">
                <div class="book-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img01.png" alt="OMEGA 시리즈"></p>
                            <p class="tit">OMEGA</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img01.png" alt="OMEGA 모의고사"></p>
                            <div><span>전 과목</span></div>
                            <ul class="list-dot">
                                <li>
                                    실제 수능과 비슷한 난이도의   <br>
                                    전 과목 FULL 모의고사
                                </li>
                                <li>
                                    신유형 포함 및 평가원 트렌드를 반영한  <br>
                                    문제로 수능 출제 패턴 체화
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-slide">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img01.png" alt="OMEGA 시리즈"></p>
                            <p class="tit">OMEGA link</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img02.png" alt="OMEGA link"></p>
                            <div>
                                <span>전 과목</span>
                            </div>
                            <ul class="list-dot">
                                <li>
                                    복습 최적화 OMEGA 준 연계  <br>
                                    하프 모의고사
                                </li>
                                <li>
                                    10지 선다형, OX 문제 등 과목별  <br>
                                    맞춤 문항으로 섬세한 실력 보완
                                </li>
                            </ul>
                        </div>
                        <% If campus_code <> "CD0343"  Then '코어원주 제외 %>
                        <div class="swiper-slide">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img01.png" alt="OMEGA 시리즈"></p>
                            <p class="tit">OMEGA black</p>
                            <% If campus_code = "CD0257" Then '중계 %>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/half/book_img03.png" alt="OMEGA black"></p>
                            <div><span>수학/사탐/과탐 I</span></div>
                            <ul class="list-dot">
                                <li>
                                    고득점을 위한 고난도 실전 모의고사
                                </li>
                                <li>
                                    고난도 문항 완전 정복

                                </li>
                            </ul>
                            <% Else %>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img03.png" alt="OMEGA black"></p>
                            <div><span>수학/사탐/과탐 I</span></div>
                            <ul class="list-dot">
                                <li>
                                    최상위권을 결정짓는 고난도  <br>
                                    실전 모의고사
                                </li>
                                <li>
                                    1등급을 넘어 만점을 향한 고난도 문항 <br>
                                    완전 정복
                                </li>
                            </ul>
                            <% End If %>
                        </div>
                        <% End If %>
                        <% If campus_code <> "CD0257" and campus_code <> "CD0250" and campus_code <> "CD0343"  Then '중계/부천/코어원주 제외 %>
                        <div class="swiper-slide">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img01.png" alt="OMEGA 시리즈"></p>
                            <p class="tit">OMEGA blue</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img04.png" alt="OMEGA blue"></p>
                            <div><span>수학/과탐 I</span></div>
                            <ul class="list-dot">
                                <li>
                                    안정적인 상위권 성적 확보를 위한 <br>
                                    실전 모의고사
                                </li>
                                <li>
                                    상수 문제 집중 훈련으로  <br>
                                    실수 완벽 방어                              
                                </li>
                            </ul>
                        </div>
                        <% End If %>
                        <div class="swiper-slide">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img01.png" alt="OMEGA 시리즈"></p>
                            <p class="tit">OMEGA weekly</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img05.png" alt="OMEGA weekly"></p>
                            <% If campus_code = "CD0250"  Then '부천 %>
                            <div><span>국/수/영</span></div>
                            <% Else %>
                            <div><span>국/수/영/사탐/과탐 I &middot; II</span></div>
                            <% End If %>
                            <ul class="list-dot">
                                <li>
                                    매주 제공되는 하프 문항 연습 문제로  <br>
                                    실전 감각 유지
                                </li>
                                <li>
                                    빠른 정답 확인이 가능한 표지 날개 <br>
                                    구성으로 학습 시간 단축
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-slide pink">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img02.png" alt="집체 모의고사"></p>
                            <p class="tit">전국 대단위 실전 모의고사</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img06.png" alt="전국 대단위 실전 모의고사"></p>
                            <div><span>전 과목</span></div>
                            <ul class="list-dot">
                                <li>
                                    전국 수험생과 경쟁하는  <br>
                                    6월 모평&middot;수능 대비 실전 모의고사
                                </li>
                                <li>
                                    성적 분석 리포트, 메가스터디 강사진의 <br>
                                    해설 강의로 학습 효과 극대화
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-slide pink">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img02.png" alt="집체 모의고사"></p>
                            <p class="tit">메가X대성 더 프리미엄 모의고사</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img07.png" alt="메가X대성 더 프리미엄 모의고사"></p>
                            <div><span>전 과목</span></div>
                            <ul class="list-dot">
                                <li>
                                    러셀X메가스터디학원, 대성학원 재원생  <br>
                                    전체가 응시하는 실전 모의고사
                                </li>
                                <li>
                                    과목별 전체 출제진의 다 회차 검토를  <br>
                                    거친 고퀄리티 문항
                                </li>
                            </ul>
                        </div>
                        <% If campus_code <> "CD0257"  Then '중계 제외 %>
                        <div class="swiper-slide red">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img03.png" alt="수학 전용 실전"></p>
                            <p class="tit">ALPHA</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img08.png" alt="알파 모의고사"></p>
                            <div><span>수학 공통 + 선택</span></div>
                            <ul class="list-dot">
                                <li>
                                    수능 기출 및 신유형 문제를 동시에 <br>연습할 수 있는 수학 모의고사
                                </li>
                                <li>
                                    서초 메가스터디학원 전임 강사가  <br>
                                    직접 출제한 고퀄리티 문항 
                                </li>
                            </ul>
                        </div>
                        <% End If %>
                        <div class="swiper-slide pur">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img04.png" alt="학습계획 콘텐츠"></p>
                            <p class="tit">러셀 학습 플래너</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img09.png" alt="러셀 학습 플래너"></p>
                            <ul class="list-dot" style="margin-top: calc(110vw/7.2);">
                                <li>
                                    매일 시간별&middot;과목별 목표 학습량과  <br>
                                    실제 학습량 비교
                                </li>
                                <li>담임 선생님의 피드백을 통해 학습 상황 점검
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-slide pur">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img04.png" alt="학습계획 콘텐츠"></p>
                            <p class="tit">러셀 일일수학 30제</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img10.png" alt="일일수학 30제"></p>
                            <ul class="list-dot" style="margin-top: calc(110vw /7.2);">
                                <li>
                                    매일 일정량의 수학 문제 학습으로  <br>
                                    문제 풀이 습관 형성
                                </li>
                                <li>
                                    지속적인 문제 풀이 훈련으로  <br>
                                    실수 방지                              
                                </li>
                            </ul>
                        </div>
                        <div class="swiper-slide pur">
                            <p class="label"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/label_img04.png" alt="학습계획 콘텐츠"></p>
                            <p class="tit">러셀 총평노트</p>
                            <p class="book-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/book_img11.png" alt="러셀 총평노트"></p>
                            <ul class="list-dot" style="margin-top: calc(110vw/7.2);">
                                <li>
                                    누적 기록을 통해 성적 변화를 확인하고  <br>
                                    향후 목표 설정 및 보완
                                </li>
                                <li>
                                    실수&middot;오답을 바탕으로  <br>
                                    자기 평가를 진행해 취약점 개선
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <p class="r-txt">
                <% If campus_code = "CD0257" Then '중계 %>
                *학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’됩니다.<br>
                <% Else %>
                * ALPHA 및 학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’됩니다.<br>
                <% End If %>
                이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 <br>
                및 사정에 따라 사용 여부 등이 변경 및 조정될 수 있습니다.
            </p>

            <p class="highlight-txt monthly">반수반 월별 모의고사 일정</p>
            <% If campus_code = "CD0244" Then '분당 %>
            <div class="month-scroll">
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 345%;">
                        <colgroup>
                            <col style="width: 4%;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>3월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>4월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>5월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>6월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td></td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>7월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>8월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>9월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>10월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>11월</th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="left-right-txt">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_hand.png" alt="좌우로 슬라이드 해보세요."></p>
                    <span>좌우로 슬라이드 해보세요.</span>
                </div>
            </div>
            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
            <div class="month-scroll">
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 260%;">
                        <colgroup>
                            <col style="width: 4%;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>3월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>4월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>5월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>6월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>7월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>8월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>9월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>10월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>11월</th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="left-right-txt">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_hand.png" alt="좌우로 슬라이드 해보세요."></p>
                    <span>좌우로 슬라이드 해보세요.</span>
                </div>
            </div>
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <div class="month-scroll">
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 250%;">
                        <colgroup>
                            <col style="width: 4%;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>3월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>4월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>5월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>6월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>7월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>8월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>9월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>10월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>11월</th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="left-right-txt">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_hand.png" alt="좌우로 슬라이드 해보세요."></p>
                    <span>좌우로 슬라이드 해보세요.</span>
                </div>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="month-scroll">
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 260%;">
                        <colgroup>
                            <col style="width: 4%;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>3월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>4월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>5월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>6월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>7월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>8월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>9월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>10월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>11월</th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="left-right-txt">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_hand.png" alt="좌우로 슬라이드 해보세요."></p>
                    <span>좌우로 슬라이드 해보세요.</span>
                </div>
            </div>
            <% Else %>
            <div class="month-scroll">
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width: 345%;">
                        <colgroup>
                            <col style="width: 4%;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                            <col style="width: %;">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>3월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>4월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td></td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>5월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>6월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td></td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td class="mini">
                                    [미니 모의고사] <br>
                                    OMEGA weekly
                                </td>
                                <td class="alpha">
                                    [기출변형] <br>
                                    알파 모의고사
                                </td>
                                <td></td>
                            </tr>
                            <tr>
                                <th>7월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>8월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td class="real">
                                    [실전 모의고사] <br>
                                    OMEGA blue
                                </td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>9월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="all">
                                    [전 과목 모의고사] <br>
                                    전국 대단위 <br>
                                    실전 모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>10월</th>
                                <td class="full">
                                    [풀 모의고사] <br>
                                    OMEGA
                                </td>
                                <td class="half">
                                    [하프 모의고사] <br>
                                    OMEGA link
                                </td>
                                <td class="top">
                                    [상위권 <br>
                                    풀 모의고사] <br>
                                    OMEGA black
                                </td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                            <tr>
                                <th>11월</th>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td class="premium">
                                    [전 과목 모의고사] <br>
                                    메가X대성 더 프리미엄 <br>
                                    모의고사
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div class="left-right-txt">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/half/ico_hand.png" alt="좌우로 슬라이드 해보세요."></p>
                    <span>좌우로 슬라이드 해보세요.</span>
                </div>
            </div>
            <% End If %>

            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="r-txt">
                * 상기 일정은 평가원 시행 계획 및 학원별 학사일정에 따라 <br>
                변경 및 조정될 수 있습니다.
            </p>            
            <% Else %>
            <p class="r-txt">
                * 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 <br>
                변경 및 조정될 수 있습니다.
            </p>
            <% End If %>
        </div>
    </div>

    <div class="btm-banner">
        <% If campus_code = "CD0340" Then '코어광주 %>
        짧은 시간 더 높은 목표의 대학에 합격하는 공식<br>
        <%=txtCampus%> 반수 정규반<br>
        <strong>
            <%=txtCampus%> 반수 정규반과 함께한다면<br>
            2026 최상위권 대입 합격 결과의 <br>
            주인공은 여러분입니다.
        </strong>
        <% Else %>
        짧은 시간 더 높은 목표의 대학에 합격하는 공식<br>
        <%=txtCampus%> 반수반<br>
        <strong>
            <%=txtCampus%> 반수반과 함께한다면<br>
            2026 <% If campus_code <> "CD0257" Then '중계 제외 %>최상위권<% End If %> 대입 합격 결과의 <br>
            주인공은 여러분입니다.
        </strong>
        <% End If %>
    </div>
</div>