<div class="cont js-cont <%=campusName%>">
    <div class="cont01">
        <div class="inner">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <h3 class="mb60" data-aos="fade-up">
                <img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont01_tit.png" alt="전국 최상위권이 러셀을 선택해야 하는 이유! 매해 더 나은 입결과 후기가 입증하고 있습니다." />
            </h3>
            <% Else %>
            <h3 class="mb60" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_tit.png" alt="최상위권이 집결하는 러셀, 러셀에서 빠르게 시작한 선배들은 최상위권 대입의 목표를 이루었습니다." /></h3>
            <% End If %>

            <% If sCampusCode = "CD0247" Then '강남 %>
            <!-- style03 --> 
            <div class="result-box style03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황" /></p>
                <div class="style03-inner">
                    <ul class="num-list">
                        <li>
                            <p>5개년 연속<br>
                                <strong>서울대 의예과</strong> 합격
                            </p>
                        </li>
                        <li>
                            <p>의학계열 누적합격생<br>
                                <strong>619명</strong> 배출
                            </p>
                        </li>
                        <li>
                            <p>최상위권 대학<br>
                                누적 합격 현황
                            </p>
                        </li>
                    </ul>
                    <div class="num-bottom">
                        <div>
                            <ul class="first-list">
                                <li>
                                    <p class="stu-num">2023학년도 이윤서 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/img_stu01.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2023학년도 김OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/img_stu_w.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2022학년도 서OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/img_stu_w.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2021학년도 김OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/img_stu_m.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2020학년도 양지헌 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/img_stu02.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2019학년도 이OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/img_stu_w.png" alt="" /></p>
                                </li>
                            </ul>
                        </div>
                        <div>
                            <ul class="second-list silver">
                                <li>
                                    <p>의예과 <strong>327명</strong></p>
                                </li>
                                <li>
                                    <p>치의예과 <strong>79명</strong></p>
                                </li>
                                <li>
                                    <p>한의예과 <strong>110명</strong></p>
                                </li>
                                <li>
                                    <p>수의예과 <strong>31명</strong></p>
                                </li>
                                <li>
                                    <p>약학과 <strong>72명</strong></p>
                                </li>
                            </ul>
                        </div>    
                        <div>
                            <ul class="third-list silver">
                                <li>
                                    <p>의치한수약 <strong>619명</strong></p>
                                </li>
                            </ul>
                            <p class="info-txt">의예과 327명, 치의예과 79명,<br>
                                한의예과 110명, 수의예과 31명, 약학과 72명</p>
                            <ul class="third-list silver">
                                <li>
                                    <p>서연고 <strong>585명</strong></p>
                                </li>
                            </ul>
                            <p class="info-txt">서울대 113명, 연세대 237명, <br>
                                고려대 235명
                            </p>
                            <ul class="third-list silver">
                                <li class="p0">
                                    <p>서성한이중경외시 <br>
                                        +카이스트, 포항공대<br>
                                        <strong>1,215명</strong>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>       
                </div>
                <div class="info-stxt" style="top:80px; right:100px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준)                                
                    </div>
                </div> 
            </div>
            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
            <!-- style01 -->
            <div class="result-box style01">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀 대치 최상위권 입시 결과" /></p>
                <ul class="num-list tp01">
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_stu01.png" alt="" /></p>
                        <p class="stu-tit">2018<i>1)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_stu02.png" alt="" /></p>
                        <p class="stu-tit">2020<i>2)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                        
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_stu03.png" alt="" /></p>
                        <p class="stu-tit">2021<i>3)</i><br>
                            <strong>수능 전국 수석 배출</strong>
                        </p>                        
                    </li>
                </ul>
                <ul class="num-list mt30 tp02">
                    <li>
                        <p class="mt15">2024 대입<i>4)</i><br>
                        메이저 의예과<br>
                        <strong>총 35명 합격</strong></p>
                        <ol class="s-num-list">
                            <li>서울대 <strong>7명</strong></li>
                            <li>연세대 <strong>6명</strong></li>
                            <li>성균관대 <strong>5명</strong></li>
                            <li>가톨릭대 <strong>11명</strong></li>
                            <li>고려대 <strong>6명</strong></li>
                        </ol>
                    </li>
                    <li>
                        <p class="mt15">2024 대입<i>4)</i><br>
                        전국 의예과 <br>
                        <strong>총 119명 합격</strong></p>
                        <ol class="s-num-list">
                            <li>가천대 <strong>2명</strong></li>
                            <li>경희대 <strong>7명</strong></li>
                            <li>아주대 <strong>4명</strong></li>
                            <li>이화여대 <strong>1명</strong></li>
                            <li>인하대 <strong>8명</strong></li>
                            <li>한양대 <strong>5명</strong></li>
                            <li>이외 의예과 총 <strong>92명</strong></li>
                        </ol>
                    </li>
                    <li>
                        <p class="mt15">2024 대입<i>4)</i><br>
                        의/치/한/수/약<br>
                        <strong>총 199명 합격</strong></p>
                        <ol class="s-num-list">
                            <li>의예과 총 <strong>119명</strong></li>
                            <li>치의예과 총 <strong>9명</strong></li>
                            <li>한의예과 총 <strong>7명</strong></li>
                            <li>수의예과 총 <strong>11명</strong></li>
                            <li>약학과 총 <strong>53명</strong></li>
                        </ol>
                    </li>
                    <li>
                        <p class="mt15">2024 대입<i>4)</i><br>
                        서/연/고<br>
                        <strong>총 230명 합격</strong></p>
                        <ol class="s-num-list">
                            <li>서울대 총 <strong>74명</strong></li>
                            <li>연세대 총 <strong>83명</strong></li>
                            <li>고려대 총 <strong>73명</strong></li>
                        </ol>
                    </li>
                </ul>
                <div class="info-stxt" style="top:auto; bottom: 78px; right:100px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        1) 2018학년도 수능 실성적 기준<br>
                        2) 2020학년도 수능 실성적 기준<br>
                        3) 2021학년도 수능 실성적 기준<br>
                        &nbsp;(*표준점수/백분위 합 기준)<br>
                        4) 2024학년도 러셀 대치 재원생의 합격자 기준<br>
                        &nbsp;(*복수대학 합격자 및 중복 합격자 포함)                                      
                    </div>
                </div>        
            </div>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <!-- 그래프 -->
            <div class="g-box-result">            
                <div class="g-box">
                    <div class="box">
                        <p class="tit">러셀 목동<br>
                            <strong>SKY 역대 최다 배출</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/g_intro01.jpg" alt=""> 
                        </div>
                    </div>
                    <div class="box">
                        <p class="tit">러셀 목동<br>
                            <strong>최상위권 주요 대학 역대 최다 배출</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/g_intro02.jpg" alt=""> 
                        </div>
                    </div>
                </div>
                <div class="info-txt tar">
                    * 2022-2024학년도 러셀 목동 합격자 수 기준
                </div>               
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="5년 연속 인천?부천 지역 최상위권 입결 1위, 러셀 부천" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp10">
                        <li>
                            <p class="stu-tit fz20 mb20">2024학년도 <br>
                                인천&middot;부천지역 최상위권 입결
                            </p>
                            <p class="stu-num"><strong class="fz50">1</strong><span>위</span></p>
                        </li>
                        <li>
                            <p class="stu-tit fz20 mb20">2024학년도 수능 <br>
                                의약학계열 합격<br>
                            </p>
                            <p class="stu-num"><strong class="fz50">50</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit fz20 mb20">2024학년도수능 <br>
                                서울대&middot;연세대&middot;고려대 합격
                            </p>
                            <p class="stu-num"><strong class="fz50">56</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 78px; right:100px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        *합격자 : 수시/정시 최종발표 인원(2023년 바른공부 자습전용관 재원생 기준) <br>
                        *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결                                    
                    </div>
                </div>        
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀 영통 2020~2024학년도 합격자 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">의&middot;치&middot;한&middot;수&middot;약</p>
                            <p class="stu-num"><strong>219</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>63</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>250</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt80 tp06">
                        <li>
                            <p class="stu-tit">서&middot;성&middot;한&middot;이</p>
                            <p class="stu-num"><strong>210</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                            <p class="stu-num"><strong>212</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">교대&middot;경대사관&middot;<br>
                                특성화대</p>
                            <p class="stu-num"><strong>81</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">주요 15개 대</p>
                            <p class="stu-num"><strong>795</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2024.02.29 기준)</span>
                </div>        
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀 영통 2020~2024학년도 합격자 현황" /></p>
                <p class="info-txt">*안양/평촌/군포/의왕 지역 기준</p>
                <div class="style02-inner">
                    <ul class="num-list tp07">
                        <li>
                            <p class="stu-tit"><span>서울대</span></p>
                            <p class="stu-num"><strong>18</strong><span>명</span></p>
                        </li>
                    </ul>   
                    <ul class="num-list tp07">
                        <li>
                            <p class="stu-tit"><span>의약학계열</span></p>
                            <p class="stu-num"><strong>64</strong><span>명</span></p>
                        </li>
                    </ul>      
                    <ul class="num-list tp08">
                        <li>
                            <p class="stu-tit"><span>연세대</span></p>
                            <p class="stu-num"><strong>24</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>고려대</span></p>
                            <p class="stu-num"><strong>31</strong><span>명</span></p>
                        </li>
                    </ul> 
                    <ul class="num-list tp08">
                        <li>
                            <p class="stu-tit"><span>서강대</span></p>
                            <p class="stu-num"><strong>9</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>성균관대</span></p>
                            <p class="stu-num"><strong>35</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>한양대</span></p>
                            <p class="stu-num"><strong>8</strong><span>명</span></p>
                        </li>
                    </ul> 
                    <ul class="num-list tp08">
                        <li>
                            <p class="stu-tit"><span>중앙대</span></p>
                            <p class="stu-num"><strong>29</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>한국외대</span></p>
                            <p class="stu-num"><strong>6</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>경희대</span></p>
                            <p class="stu-num"><strong>17</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>특성화대</span></p>
                            <p class="stu-num"><strong>6</strong><span>명</span></p>
                        </li>
                    </ul> 
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">*2024년 러셀 평촌 바른공부 자습전용관 재원생 기준</span>
                </div> 
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀 분당 2024학년도 대입 합격 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp03">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>48</strong><span>명</span></p>
                            <span class="txt">서울대 의예과 <br> 1명 포함</span>
                        </li>
                        <li>
                            <p class="stu-tit">치의예과</p>
                            <p class="stu-num"><strong>17</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">한의예과</p>
                            <p class="stu-num"><strong>15</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">약학대</p>
                            <p class="stu-num"><strong>32</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">수의예과</p>
                            <p class="stu-num"><strong>15</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp03">
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>31</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">연 &middot; 고대</p>
                            <p class="stu-num"><strong>92</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서&middot;성&middot;한&middot;이</p>
                            <p class="stu-num"><strong>98</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                            <p class="stu-num"><strong>104</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tar" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">※ 러셀 분당 바른공부 자습전용관 재원생 기준 <br>
                        (복수 대학 합격자 및 수시/정시 중복 합격자 포함, 단과 수강생 미포함)
                    </span>
                </div>        
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀 분당 2024학년도 대입 합격 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp03">
                        <li>
                            <p class="stu-num"><strong>4</strong></p>                           
                            <p class="stu-tit">서울대 의예</p>
                        </li>
                        <li>
                            <p class="stu-num"><strong>3</strong></p>
                            <p class="stu-tit">연세대 의예</p>
                        </li>
                        <li>
                            <p class="stu-num"><strong>9</strong></p>
                            <p class="stu-tit">메이저 의예</p>
                            <span class="txt">(서울대, 연세대, 성균관대,<br>가톨릭대, 울산대 기준)</span>
                        </li>
                        <li>
                            <p class="stu-num"><strong>116</strong></p>
                            <p class="stu-tit">전국 의예</p>
                        </li>
                    </ul>
                    <ul class="num-list mt70 tp03">
                        <li>
                            <p class="stu-num"><strong>116</strong></p>                           
                            <p class="stu-tit">치&middot;한&middot;수&middot;약학</p>
                        </li>
                        <li>
                            <p class="stu-num"><strong>73</strong></p>
                            <p class="stu-tit">서&middot;연&middot;고</p>
                        </li>
                        <li>
                            <p class="stu-num"><strong>88</strong></p>
                            <p class="stu-tit">서성한이 <br>과학기술원</p>
                        </li>
                        <li>
                            <p class="stu-num"><strong>117</strong></p>
                            <p class="stu-tit">경북대</p>
                            <span class="txt">(*의약학계열 44명)</span>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tar" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">*2023년 러셀 대구 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함) <br>
                        *2024.3.15 기준이며, 지속적으로 업데이트 될 예정입니다
                    </span>
                </div>        
            </div>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="최상위권의 선택! 러셀 센텀학원" /></p>
                <p class="mt50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt02.png" alt="2024학년도 대입 합격 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp04">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>47</strong><span>명</span></p>                           
                        </li>
                        <li>
                            <p class="stu-tit">치&middot;한&middot;수&middot;약</p>
                            <p class="stu-num"><strong>43</strong><span>명</span></p>                   
                        </li>
                        <li>
                            <p class="stu-tit">서&middot;연&middot;고</p>
                            <p class="stu-num"><strong>34</strong><span>명</span></p>     
                        </li>
                    </ul>
                    <ul class="num-list tp04 mt35">
                        <li>
                            <p class="stu-tit">서&middot;성&middot;한&middot;이</p>
                            <p class="stu-num"><strong>54</strong><span>명</span></p>                           
                        </li>
                        <li>
                            <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                            <p class="stu-num"><strong>36</strong><span>명</span></p>                   
                        </li>
                        <li>
                            <p class="stu-tit fz20">이공계특성화대/ <br>사관학과/교대</p>
                            <p class="stu-num"><strong>13</strong><span>명</span></p>     
                        </li>
                    </ul>
                </div> 
                <p class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt03.png" alt="20-24학년도 5개년 누적 대입 합격 현황" /></p>
                <div class="style02-inner mt45">
                    <ul class="num-list tp04">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>223</strong><span>명</span></p>                           
                        </li>
                        <li>
                            <p class="stu-tit">치&middot;한&middot;수&middot;약</p>
                            <p class="stu-num"><strong>168</strong><span>명</span></p>                   
                        </li>
                        <li>
                            <p class="stu-tit">서&middot;연&middot;고</p>
                            <p class="stu-num"><strong>161</strong><span>명</span></p>     
                        </li>
                    </ul>
                    <ul class="num-list tp04 mt35">
                        <li>
                            <p class="stu-tit">서&middot;성&middot;한&middot;이</p>
                            <p class="stu-num"><strong>219</strong><span>명</span></p>                           
                        </li>
                        <li>
                            <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                            <p class="stu-num"><strong>204</strong><span>명</span></p>                   
                        </li>
                        <li>
                            <p class="stu-tit fz20">이공계특성화대/ <br>사관학과/교대</p>
                            <p class="stu-num"><strong>85</strong><span>명</span></p>     
                        </li>
                        <li>
                            <p class="stu-tit fz20">부산대&middot;경북대</p>
                            <p class="stu-num"><strong>319</strong><span>명</span></p>     
                        </li>
                    </ul>
                </div> 
                <div class="info-stxt" style="top:auto; bottom: 80px; right:120px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        * 2024 의/치/한/약/수 합격자. 23년 러셀 센텀 바른공부 자습전용관 11월 재원생 기준 <br>
                        * 2024 주요 15개대 학 수시/정시 입결. 23년 러셀 센텀 바른공부 자습전용관 재원생 기준 (복수 합격자 포함)<br>
                        * 홈페이지 대입 실적 기준, 2024.03.10 기준<br>
                        * 러셀 센텀학원 바른공부 자습전용관 재원생 20-24학년도 합격자 기준(단과 수강생 제외, 복수대학 합격자 포함)                                                                
                    </div>
                </div>          
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <!-- 그래프 -->
            <div class="g-box-result">   
                <div class="top-box pb20">
                    <div class="result-box style02 pb20">
                        <div class="style02-inner">
                            <ul class="num-list tp10">
                                <li>
                                    <p class="stu-tit fz32">러셀CORE 광주</p>
                                    <p class="stu-num"><strong>광주지역 재학생 수석 배출</strong><sub>*</sub></p>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/summer/ico_trophy.png" alt=""> </p>
                </div>
                
                <div class="result-box style02 last mt40">
                    <div class="style02-inner">
                        <ul class="num-list tp05">
                            <li>
                                <p class="stu-tit">서울대 의예</p>
                                <p class="stu-num"><strong>2</strong><span>명</span></p>
                            </li>
                            <li>
                                <p class="stu-tit">메이저 의예</p>
                                <p class="stu-num"><strong>9</strong><span>명</span></p>
                            </li>
                            <li>
                                <p class="stu-tit">전국 의예</p>
                                <p class="stu-num"><strong>69</strong><span>명</span></p>
                            </li>
                        </ul>
                        <ul class="num-list mt60 tp05">
                            <li>
                                <p class="stu-tit">메디컬 <span>(의/치/한/수/약)</p>
                                <p class="stu-num"><strong>119</strong><span>명</span></p>
                            </li>
                            <li>
                                <p class="stu-tit">서연고</p>
                                <p class="stu-num"><strong>28</strong><span>명</span></p>
                            </li>
                        </ul>
                    </div>

                </div>



                <!-- <div class="g-box">
                    <div class="box">
                        <p class="tit">러셀CORE 광주<br>
                            <strong>메이저 의대 350% 상승</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/g_intro01.jpg" alt=""> 
                        </div>
                    </div>
                    <div class="box">
                        <p class="tit">러셀CORE 광주<br>
                            <strong>전국 의예과 44% 상승</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/g_intro02.jpg" alt=""> 
                        </div>
                    </div>
                    <div class="box">
                        <p class="tit">러셀CORE 광주<br>
                            <strong>서울대 100% 상승</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/g_intro03.jpg" alt=""> 
                        </div>
                    </div>
                    <div class="box">
                        <p class="tit">러셀CORE 광주<br>
                            <strong>의&middot;치&middot;한&middot;수&middot;약 27% 상승</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/g_intro04.jpg" alt=""> 
                        </div>
                    </div>
                </div> -->
                <div class="info-stxt" style="top:auto; bottom: 100px; right:120px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준) <br>
                        (복수 대학 합격자 포함 / 단과 수강생 제외) <br>
                        *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준 <br>
                        *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준                                                                    
                    </div>
                </div>              
            </div>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀 영통 2020~2024학년도 합격자 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp09">
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num"><strong>서울대학교</strong> <span>3명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 <strong>메이저 의예</strong></p>
                            <p class="stu-num"><strong>&lt;가톨릭대&gt;</strong> <span>합격생 배출</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num"><span>의/치/한/약/수</span> <strong>46명</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num"><span>SKY</span> <strong>17명</strong></p>
                        </li>
                    </ul>
                </div>
                <div class="style02-inner mt95">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>25</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">치의예</p>
                            <p class="stu-num"><strong>4</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">한의예</p>
                            <p class="stu-num"><strong>4</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt80 tp05">
                        <li>
                            <p class="stu-tit">수의예</p>
                            <p class="stu-num"><strong>10</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">약학과</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>17</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tal" style="top:auto; bottom: 80px; left:97px; right: auto;">
                    <span class="info-color">
                        ※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준 <br>
                        ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준 <br>
                        ※ 최종 업데이트 : 2024-02-28   
                    </span>
                </div>      
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <!-- style02 -->
            <div class="result-box style02">
                <div class="style02-inner">
                    <ul class="num-list tp09">
                        <li>
                            <p class="stu-tit">2년 연속</p>
                            <p class="stu-num"><strong>서울대학교 의예과</strong> <span>합격생 배출</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">2년 연속</p>
                            <p class="stu-num"> <span>대전 지역</span> <strong>최상위권 입결 1위</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도</p>
                            <p class="stu-num"><span>메이저 의예과</span> <strong>7명</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num"><span>의/치/한/약/수</span> <strong>74명</strong></p>
                        </li>
                    </ul>
                </div>
                <div class="style02-inner mt90">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">서울대 <br>의예과</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 <br>의예과</p>
                            <p class="stu-num"><strong>7</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">전국 <br>의예과</p>
                            <p class="stu-num"><strong>41</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp05">
                        <li>
                            <p class="stu-tit">메디컬 <br><span>(의/치/한/약/수)</p>
                            <p class="stu-num"><strong>74</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY/포항공대/ <br>카이스트</p>
                            <p class="stu-num"><strong>26</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 70px; right:100px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2024-03-05 기준 / 매주 업데이트 예정 <br>
                        ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준 <br>
                        ※ 최상위권: 메디컬(의/치/한/약/수) + SKY <br>
                        ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준(홈페이지 대입 실적 기준/2024-03-05 기준)                                     
                    </div>
                </div>        
            </div>
            <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">의예</p>
                            <p class="stu-num"><strong>8</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">치의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">한의예</p>
                            <p class="stu-num"><strong>4</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt70 tp05">
                        <li>
                            <p class="stu-tit">수의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">약학</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>12</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        ※ 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외) 2024.02.29 기준, 지속적으로 업데이트 예정                                    
                    </div>
                </div>        
            </div>
            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀CORE 전주 바른공부 자습전용관 재원생 기준" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">연세대 의예</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">고려대 의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>46</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt70 tp05">
                        <li>
                            <p class="stu-tit">치&middot;한&middot;수&middot;약</p>
                            <p class="stu-num"><strong>37</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>18</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서성한이 <br>과기원</p>
                            <p class="stu-num"><strong>31</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tar" style="top:auto; bottom: 80px; right:97px;">
                    <span class="info-color">
                        ※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.) <br>
                        ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 <br>
                        (홈페이지 대입 실적 기준) 
                    </span>
                </div>          
            </div>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont01_txt01.png" alt="러셀CORE 창원 2024학년도 대입 합격 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp09">
                        <li>
                            <p class="stu-tit">개원 첫해</p>
                            <p class="stu-num"><strong>메이저 의대 합격생 배출</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">개원 첫해</p>
                            <p class="stu-num"><strong>전국 의예과 합격생 21명 배출</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num"><strong>의/치/한/약/수 42명</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num"><strong>SKY 10명</strong></p>
                        </li>
                    </ul>
                </div>
                <div class="style02-inner mt80">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">울산대 의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서울대 치의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt80 tp05">
                        <li>
                            <p class="stu-tit">전국 의예</p>
                            <p class="stu-num"><strong>21</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메디컬 <br>(의/치/한/약/수)</p>
                            <p class="stu-num"><strong>42</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY <br>/서성한이</p>
                            <p class="stu-num"><strong>43</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tal" style="top:auto; bottom: 80px; left:102px; right:auto">
                    <span class="info-color">
                        ※ 최종 업데이트 : 2024-03-07 <br>
                        ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                        ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예                        
                    </span>
                </div> 
            </div>
            <% Else %>
             <!-- 그래프 -->
            <div class="g-box-result">            
                <div class="g-box">
                    <div class="box">
                        <p class="tit">러셀 <strong>서울대 의예과 <br>
                            역대 최다 배출</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/summer/g_intro01.jpg" alt=""> 
                        </div>
                        <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/top_label.png" alt="" /></span>
                    </div>
                    <div class="box">
                        <p class="tit">러셀 <strong>메이저 의대 <br>
                            역대 최다 배출</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/summer/g_intro02.jpg" alt=""> 
                        </div>
                    </div>
                    <div class="box">
                        <p class="tit">러셀 <strong>전국 의예과 <br>
                            역대 최다 배출</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/summer/g_intro03.jpg" alt=""> 
                        </div>
                    </div>
                    <div class="box">
                        <p class="tit">러셀 <strong>의&middot;치&middot;한&middot;약&middot;수 <br>
                            역대 최다 배출</strong><sub>*</sub>
                            <span class="sub-txt">경희대 한의예과(인문) 4명</span>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/summer/g_intro04.jpg" alt=""> 
                        </div>
                    </div>
                    <div class="box">
                        <p class="tit">러셀 <strong>서울대 <br>
                            역대 최다 배출</strong><sub>*</sub>
                            <span class="sub-txt">서울대 경영학부 11명 <br>서울대 경제학부 17명</span>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/summer/g_intro05.jpg" alt=""> 
                        </div>
                        <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/top_label.png" alt="" /></span>
                    </div>
                    <div class="box">
                        <p class="tit">러셀 <strong>서울대&middot;연세대&middot;고려대<br>
                            역대 최다 배출</strong><sub>*</sub>
                        </p>
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/summer/g_intro06.jpg" alt=""> 
                        </div>
                    </div>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 70px; right:120px;">
                    <span>ⓘ 데이터 산출 기준</span>
                    <div class="data-view">
                        2020-2024학년도 러셀에서 배출한 서울대 의예과/메이저 의대/전국 의예과/의&middot;치&middot;한&middot;약&middot;수/서울대&middot;연세대&middot;고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                        - 2024학년도 서울대 의예과 배출: 러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명,러셀CORE 광주 2명, 러셀CORE 대전 3명 배출<br>
                        - 2024학년도 메이저 의대 배출: 서울대 의예과 19명, 연세대(서울) 의예과 23명, 성균관대 의예과 7명, 가톨릭대(성의) 의예과 21명, 울산대 의예과 6명, 고려대 의과대학 20명<br>
                        전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                        ※ 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 예정입니다.                 
                    </div>
                </div>               
            </div>
            <% End If %>
        </div>
    </div>
    <div class="cont02">
        <div class="inner">
            <% If sCampusCode = "INTRO" or sCampusCode = "CD0349" Then '인트로/울산 %>
            <h3 class="mb60" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/summer/cont02_tit.png" alt="러셀 썸머스쿨 재원생은 최상위권 성적과 최상위권 대입 성공을 이루었습니다." /></h3>
            <% Else %>
            <h3 class="mb60" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/summer/cont02_tit.png" alt="러셀 썸머스쿨 재원생은 최상위권 성적과 최상위권 대입 성공을 이루었습니다." /></h3>
            <% End If %>

            <!-- 합격 학생 리뷰-->
            <!-- #include virtual="/intro/2024/summer/review_list.asp"-->
            <!-- //합격 학생 리뷰-->         
        </div>
    </div>
</div>