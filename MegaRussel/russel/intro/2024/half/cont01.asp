<div class="cont js-cont <%=campusName%>">
    <div class="cont01">
        <div class="inner">
            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0349" OR sCampusCode = "CD0346" Then '인트로/울산/코어청주 %>
            <h3 class="mb60" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont01_tit.png" alt="최상위권이 집결하는 러셀, 러셀에서 빠르게 시작한 선배들은 최상위권 대입의 목표를 이루었습니다." /></h3>
            <% Else %>
            <h3 class="mb60" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_tit.png" alt="최상위권이 집결하는 러셀, 러셀에서 빠르게 시작한 선배들은 최상위권 대입의 목표를 이루었습니다." /></h3>
            <% End If %>

            <% If sCampusCode = "CD0247" Then '강남 %>
            <div class="result-box">
                <!-- 데이터 산출 기준 -->
                <div class="mt0 mb30" style="position:relative;justify-content:flex-end;">
                    <p class="data-txt">ⓘ 데이터 산출 기준</p>
                    <div class="data-view">2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준<br>
                        (단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준) </div>
                </div>
                <!-- //데이터 산출 기준 -->

                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="러셀 강남 최상위권 대학 합격자 현황" /></p>
                <ul class="num-list type01">
                    <li>
                        <p>5개년 연속<br>
                            <strong>서울대 의예과</strong> 합격</p>
                    </li>
                    <li>
                        <p>의학계열 누적합격생<br>
                            <strong>619명</strong> 배출</p>
                    </li>
                    <li>
                        <p>최상위권 대학<br>
                            누적 합격 현황</p>
                    </li>
                </ul>
                <div class="num-bottom">
                    <div>
                        <ul class="num-list type04">
                            <li>
                                <p class="stu-num">2023학년도 이윤서 학생</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/img_stu01.png" alt="" /></p>
                            </li>
                            <li>
                                <p class="stu-num">2023학년도 김OO 학생</p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/half/img_stu_w.png" alt="" /></p>
                            </li>
                            <li>
                                <p class="stu-num">2022학년도 서OO 학생</p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/half/img_stu_w.png" alt="" /></p>
                            </li>
                            <li>
                                <p class="stu-num">2021학년도 김OO 학생</p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/half/img_stu_m.png" alt="" /></p>
                            </li>
                            <li>
                                <p class="stu-num">2020학년도 양지헌 학생</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/img_stu02.png" alt="" /></p>
                            </li>
                            <li>
                                <p class="stu-num">2019학년도 이OO 학생</p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/half/img_stu_w.png" alt="" /></p>
                            </li>
                        </ul>
                    </div>
                    <div>
                        <ul class="num-list silver02">
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
                        <ul class="num-list silver02">
                            <li>
                                <p>의치한수약 <strong>619명</strong></p>
                            </li>
                        </ul>
                        <p class="info-txt">의예과 327명, 치의예과 79명,<br>
                            한의예과 110명, 수의예과 31명, 약학과 72명</p>
                        <ul class="num-list silver02">
                            <li>
                                <p>서연고 <strong>585명</strong></p>
                            </li>
                        </ul>
                        <p class="info-txt">서울대 113명, 연세대 237명, <br>
                            고려대 235명</p>
                        <ul class="num-list silver02">
                            <li class="p0">
                                <p>서성한이중경외시 <br>
                                    +카이스트, 포항공대<br>
                                    <strong>1,215명</strong></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="러셀 대치 최상위권 입시 결과" /></p>
                <ul class="num-list">
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_stu01.png" alt="" /></p>
                        <p class="stu-tit">2018<i>1)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_stu02.png" alt="" /></p>
                        <p class="stu-tit">2020<i>2)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                        
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_stu03.png" alt="" /></p>
                        <p class="stu-tit">2021<i>3)</i><br>
                            <strong>수능 전국 수석 배출</strong></p>
                        
                    </li>
                </ul>
                <ul class="num-list mt60">
                    <li>
                        <p style="margin-top: 20px !important;">2024 대입<i>4)</i><br>
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
                        <p style="margin-top: 20px !important;">2024 대입<i>4)</i><br>
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
                        <p style="margin-top: 20px !important;">2024 대입<i>4)</i><br>
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
                        <p style="margin-top: 20px !important;">2024 대입<i>4)</i><br>
                        서/연/고<br>
                        <strong>총 230명 합격</strong></p>
                        <ol class="s-num-list">
                            <li>서울대 총 <strong>74명</strong></li>
                            <li>연세대 총 <strong>83명</strong></li>
                            <li>고려대 총 <strong>73명</strong></li>
                        </ol>
                    </li>
                </ul>
                <div style="position:relative">
                    <p class="data-txt mt30">ⓘ 데이터 산출 기준</p>
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
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="결과로 증명하는 러셀 목동 러셀 목동 2024학년도 대입 합격 현황" /></p>
                <ul class="num-list type05">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>15</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">치한수</p>
                        <p class="stu-num"><strong>14</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">약학</p>
                        <p class="stu-num"><strong>22</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list type05 mt60">
                    <li>
                        <p class="stu-tit">SKY</p>
                        <p class="stu-num"><strong>55</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit pt30">과학기술원</p>
                        <p class="stu-num"><strong>9</strong>명<br>
                            <span class="mt15">* KAIST 3명 포함</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">주요대학</p>
                        <p class="stu-num"><strong>361</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt50">* 2024학년도 러셀 목동 대학 합격자 수 기준</p>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="이제부터, 러셀 부천은 선택이 아닌 필수입니다!" /></p>
                <ul class="num-list type05 mt0">
                    <li>
                        <p class="stu-tit fz24">서울대 의예</p>
                        <p class="stu-num"><strong>1</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit fz24">서울대</p>
                        <p class="stu-num"><strong>9</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit fz24">의치한수약</p>
                        <p class="stu-num"><strong>50</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list silver04">
                    <li>
                        <p class="stu-tit">연고대</p>
                        <p class="stu-num"><strong>47</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서성한이</p>
                        <p class="stu-num"><strong>60</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">중경외시</p>
                        <p class="stu-num"><strong>63</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list silver04">
                    <li style="width:530px">
                        <p class="stu-tit">KAIST, UNIST, GIST, DGIST, KENTECH, POSTECH,<br>
                            경찰대, 공군사관, 해군사관</p>
                        <p class="stu-num"><strong>11</strong>명</p>
                    </li>
                </ul>

                <div style="position:relative">
                    <p class="data-txt mt30">ⓘ 데이터 산출 기준</p>
                    <div class="data-view">
                        *합격자 : 수시 최종발표 + 정시 일부발표 인원(2023년 바른공부 자습전용관 재원생 기준)<br>
                        *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결<br>
                        2024.02.22(목) 기준   
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="놀라운 입시 결과로 최상위권의 선택을 증명하다! 러셀 분당 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list type05">
                    <li>
                        <p class="stu-tit pt40">의예과</p>
                        <p class="stu-num"><strong>48</strong>명<br>
                            <span class="fz14">서울대 의예과<br>
                            1명 포함</span></p>
                    </li>
                    <li>
                        <p class="stu-tit">치의예과</p>
                        <p class="stu-num"><strong>17</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">한의예과</p>
                        <p class="stu-num"><strong>15</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">약학대</p>
                        <p class="stu-num"><strong>32</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">수의예과</p>
                        <p class="stu-num"><strong>15</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list type05 mt60">
                    <li>
                        <p class="stu-tit">서울대</p>
                        <p class="stu-num"><strong>31</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">연&middot;고대</p>
                        <p class="stu-num"><strong>92</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서&middot;성&middot;한&middot;이</p>
                        <p class="stu-num"><strong>98</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                        <p class="stu-num"><strong>104</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt50">* 러셀 분당 바른공부자습전용관 재원생 기준<br>
                    (복수 대학합격자 및 수시/정시 중복합격자 포함, 단과수강생 미포함)</p>
            </div>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="놀라운 입시 결과로 최상위권의 선택을 증명하다! 러셀 분당 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list type01">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>47</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">치한수약</p>
                        <p class="stu-num"><strong>34</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서연고</p>
                        <p class="stu-num"><strong>34</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list type01">
                    <li>
                        <p class="stu-tit">서성한이</p>
                        <p class="stu-num"><strong>54</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">중경외시</p>
                        <p class="stu-num"><strong>36</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">이공계특성화대<br>/사관학교/교대</p>
                        <p class="stu-num"><strong>13</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt50">*러셀 센텀 바른공부자습전용관 재원생 기준<br>
                (복수 대학합격자 및 수시/정시 중복합격자 포함, 단과 수강생 미포함)
                </p>
            </div>
            <div class="mt40"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_img.jpg" alt="" /></div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="합격을 위한 최선의 선택 러셀 2020~2024학년도 합격자 현황" /></p>
                <ul class="num-list type01">
                    <li>
                        <p class="stu-tit">의&middot;치&middot;한&middot;수&middot;약</p>
                        <p class="stu-num"><strong>219</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서울대</p>
                        <p class="stu-num"><strong>63</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY</p>
                        <p class="stu-num"><strong>250</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list type02">
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
                <p class="r-txt mt50">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2024.02.29 기준)
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="결과로 증명하는 학생중심 러셀 중계" /></p>
                <ul class="num-list type01">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>11</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서울대</p>
                        <p class="stu-num"><strong>14</strong>명</p>
                    </li>
                </ul>

                <ul class="num-list silver03">
                    <li>
                        <p class="stu-tit">의치한수약</p>
                        <p class="stu-num"><strong>27</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서연고</p>
                        <p class="stu-num"><strong>40</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서성한이</p>
                        <p class="stu-num"><strong>34</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">중경외시</p>
                        <p class="stu-num"><strong>44</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">이외 주요대학</p>
                        <p class="stu-num"><strong>184</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt50 pr20">※ 2024학년도 러셀중계 바른공부 자습전용관 재원생 기준<br>
                    ※ 중복대학 합격자수 포함(2024.03.07 기준)</p>
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="지역 입결1위* 2024학년도 러셀 평촌 대입 합격 현황" /></p>
                <ul class="num-list type05">
                    <li>
                        <p class="stu-tit">4년 연속 배출</p>
                        <p class="stu-num"><strong>1</strong>
                            서울대 의예과</p>
                    </li>
                    <li>
                        <p class="stu-tit">메이저 의예 포함</p>
                        <p class="stu-num"><strong>64</strong>
                            전국 의약학계열</p>
                    </li>
                    <li>
                        <p class="stu-tit">의예,치의예 포함</p>
                        <p class="stu-num"><strong>18</strong>
                            서울대</p>
                    </li>
                    <li>
                        <p class="stu-tit">고려대 의대 포함</p>
                        <p class="stu-num"><strong>55</strong>
                            연고대</p>
                    </li>
                </ul>
                <ul class="num-list type05">
                    <li>
                        <p class="stu-num"><strong>74</strong>
                            서/성/한/이</p>
                    </li>
                    <li>
                        <p class="stu-tit">중앙의/약, 경희한 포함</p>
                        <p class="stu-num"><strong>58</strong>
                            중/경/외/시</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>61</strong>
                            건/동/홍/숙</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>481</strong>
                            주요대학 합계</p>
                    </li>
                </ul>
                <p class="r-txt mt50">*안양, 과천, 의왕, 군포 지역 기준<br>
                    **, 2024.03.04기준 (중복 합격 건수 포함, 추가 합격자 발표 시까지 업데이트 예정)</p>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="2023 개원 첫 해, 놀라운 입시 결과로 최상위권을 증명하다!" /></p>
                <ul class="num-list type05 mb40">
                    <li>
                        <p class="stu-num"><strong>4</strong></p>
                        <p class="stu-tit">서울대 의예</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>3</strong></p>
                        <p class="stu-tit">연세대 의예</p>
                    </li>
                    <li>
                        <p class="stu-num pt25"><strong>9</strong></p>
                        <p class="stu-tit">메이저 의예<br>
                        <span>(서울대, 연세대, 성균관대,<br>
                            가톨릭대, 울산대 기준)</span></p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>116</strong></p>
                        <p class="stu-tit">전국 의예</p>
                    </li>
                </ul>
                <ul class="num-list type05">
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
                        <p class="stu-tit">서성한이<br>과학기술원</p>
                    </li>
                    <li>
                        <p class="stu-num pt25"><strong>117</strong></p>
                        <p class="stu-tit">경북대<br>
                            <span>(*의약학계열 44명)</span></p>
                    </li>
                </ul>
                <p class="r-txt mt50">*2023년 러셀 대구 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)<br>
                    *2024.3.15 기준이며, 지속적으로 업데이트될 예정입니다.</p>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="러셀CORE 광주 2024학년도 합격생 현황 광주지역 재학생 수석 배출" /></p>
                <ul class="num-list mb40">
                    <li>
                        <p class="stu-tit">서울대<br>
                            의예</p>
                        <p class="stu-num"><strong>2</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">메이저<br>
                            의예</p>
                        <p class="stu-num"><strong>9</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">전국<br>
                            의예</p>
                        <p class="stu-num"><strong>69</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list mb50">
                    <li style="width:283px">
                        <p class="stu-tit">메디컬<br>
                            <span>(의/치/한/약/수)</span></p>
                        <p class="stu-num"><strong>119</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서연고</p>
                        <p class="stu-num"><strong>28</strong>명</p>
                    </li>
                </ul>

                <div style="position:relative">
                    <p class="data-txt">ⓘ 데이터 산출 기준</p>
                    <div class="data-view">
                        *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준)<br>
                        (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                        *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                        *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                    </div>
                </div>
            </div>
            <div class="result-box mt60">
                <p class="mb15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt02.png" alt="시작이 다르면 결과가 다릅니다! 결과로 증명하는 러셀CORE 광주 반수반" /></p>
                <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_img.jpg" alt="" /></div>
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="2024학년도 러셀 최상위권 대입 결과" /></p>
                <ul class="num-list silver01">
                    <li class="pt0"><p>2년 연속<br>
                        <strong>서울대학교 의예과</strong> <br>
                        합격생 배출</p></li>
                    <li class="pt0"><p>2년 연속<br>
                        대전 지역<br>
                        <strong>메이저 의대 입결 1위</strong></p></li>
                    <li><p>2024학년도<br>
                        메이저의예 <strong>7명</strong></p></li>
                    <li><p>2024학년도 최종합격<br>
                        의/치/한/약/수 <strong>74명</strong></p></li>
                </ul>
                <ul class="num-list mt60">
                    <li>
                        <p class="stu-tit">서울대<br>의예과</p>
                        <p class="stu-num"><strong>3</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">메이저<br>의예과</p>
                        <p class="stu-num"><strong>7</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">전국<br>의예과</p>
                        <p class="stu-num"><strong>41</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list mt40">
                    <li>
                        <p class="stu-tit">메디컬<br>
                            <span>(의/치/한/약/수)</span></p>
                        <p class="stu-num"><strong>74</strong>명</p>
                    </li>
                    <li style="width:307px">
                        <p class="stu-tit">SKY/포항공대/<br>
                            카이스트</p>
                        <p class="stu-num"><strong>26</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt50">※ 최종 업데이트 : 2024-03-05 기준 / 매주 업데이트 예정<br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                    ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예<br>
                    ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                    (홈페이지 대입 실적 기준/2024-03-05 기준)</p>
            </div>
            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="러셀CORE 전주는 결과로 증명합니다! 러셀CORE 전주 2024 대입 합격 현황" /></p>
                <ul class="num-list">
                    <li>
                        <p class="stu-num">개원 첫 해<br>
                            <strong class="black">의학계열</strong> <strong>총 83명 배출</strong></p>
                    </li>
                </ul>
                <ul class="num-list type03">
                    <li>
                        <p class="stu-num"><strong>3</strong></p>
                        <p class="stu-tit">연세대 의대</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>1</strong></p>
                        <p class="stu-tit">고려대 의대</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>46</strong></p>
                        <p class="stu-tit">의예과</p>
                    </li>
                </ul>
                <ul class="num-list type03 mt15">
                    <li>
                        <p class="stu-num"><strong>37</strong></p>
                        <p class="stu-tit">치&middot;한&middot;수&middot;약</p>
                    </li>
                    <li>
                        <p class="stu-num"><strong>18</strong></p>
                        <p class="stu-tit">SKY</p>
                    </li>
                    <li>
                        <p class="stu-num mt0"><strong>31</strong></p>
                        <p class="stu-tit">서성한이<br>
                            +과기원</p>
                    </li>
                </ul>
                <p class="r-txt mt50">* 2024학년도 러셀CORE 전주 바른공부 자습전용관 재원생 중 수시 및 정시 합격자 기준<br>
                    (복수 대학 합격자 포함/단과 수강생 미포함)<br>
                    * 2024-02-26 기준이며, 지속적으로 업데이트 될 예정입니다.</p>
            </div>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="2024학년도 러셀 최상위권 대입 결과" /></p>
                <ul class="num-list silver01">
                    <li class="pt0"><p>2024학년도 최종합격<br>
                        서울대학교 <strong>3명</strong></p></li>
                    <li class="pt0"><p>2024학년도 <strong>메이저 의예</strong><br>
                        <strong>&lt;가톨릭대&gt;</strong>합격생 배출</p></li>
                    <li><p>2024학년도 최종합격<br>
                        의/치/한/약/수 <strong>46명</strong></p></li>
                    <li><p>2024학년도 최종합격<br>
                        SKY <strong>17명</strong></p></li>
                </ul>
                <ul class="num-list mt60">
                    <li>
                        <p class="stu-tit">의예과</p>
                        <p class="stu-num"><strong>25</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">치의예</p>
                        <p class="stu-num"><strong>4</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">한의예</p>
                        <p class="stu-num"><strong>4</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list mt40">
                    <li>
                        <p class="stu-tit">수의예</p>
                        <p class="stu-num"><strong>10</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">약학과</p>
                        <p class="stu-num"><strong>3</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY</p>
                        <p class="stu-num"><strong>17</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt50">※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준<br>
                    ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준<br>
                    ※ 최종 업데이트 : 2024-02-28</p>
            </div>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="2024 러셀CORE 창원 합격 현황" /></p>
                <ul class="num-list silver01">
                    <li><p>개원 첫해<br>
                        <strong>메이저 의대</strong>합격생 배출</p></li>
                    <li><p>개원 첫해<br>
                        전국 의예과 합격생 <strong>21명</strong> 배출</p></li>
                    <li><p>2024학년도 최종합격<br>
                        의/치/한/약/수 <strong>42명</strong></p></li>
                    <li><p>2024학년도 최종합격<br>
                        SKY <strong>10명</strong></p></li>
                </ul>
                <ul class="num-list mt60">
                    <li>
                        <p class="stu-tit">울산대 의예</p>
                        <p class="stu-num"><strong>1</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서울대 치의예</p>
                        <p class="stu-num"><strong>1</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">전국 의예</p>
                        <p class="stu-num"><strong>21</strong>명</p>
                    </li>
                </ul>
                <ul class="num-list mt40">
                    <li>
                        <p class="stu-tit">메디컬<span>(의/치/한/약/수)</span></p>
                        <p class="stu-num"><strong>42</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">SKY</p>
                        <p class="stu-num"><strong>10</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">서성한이</p>
                        <p class="stu-num"><strong>33</strong>명</p>
                    </li>
                </ul>
                <p class="r-txt mt50">※ 최종 업데이트 : 2024-03-07<br>
                    ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                    ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예</p>
            </div>
            <% Else %>
                <% If sCampusCode = "CD0346" Then '코어청주 %>
                <div class="result-box mb40">
                    <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_txt01.png" alt="2024학년도 러셀 최상위권 대입 결과" /></p>
                    <ul class="num-list mt50 type03">
                        <li>
                            <p class="stu-tit">의예</p>
                            <p class="stu-num"><strong>8</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">치의예</p>
                            <p class="stu-num"><strong>1</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">한의예</p>
                            <p class="stu-num"><strong>4</strong>명</p>
                        </li>
                    </ul>
                    <ul class="num-list mt40 type03">
                        <li>
                            <p class="stu-tit">수의예</p>
                            <p class="stu-num"><strong>1</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">약학</p>
                            <p class="stu-num"><strong>3</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>12</strong>명</p>
                        </li>
                    </ul>
                    <div style="position:relative" class="mt30">
                        <p class="data-txt">ⓘ 데이터 산출 기준</p>
                        <div class="data-view">
                            &middot; 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외) <br>

                            &middot; 2024.02.29 기준, 지속적으로 업데이트 예정                                             
                        </div>
                    </div>
                </div>
                <% End If %>
            <div class="result-box">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont01_txt01.png" alt="2024학년도 러셀 최상위권 대입 결과" /></p>
                <ul class="num-list type01">
                    <li>
                        <p class="stu-tit">서울대 의예과</p>
                        <p class="stu-num"><strong>19</strong>명</p>
                        <div class="banner-balloon">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/banner_balloon.png" alt="전국 1위" />
                        </div>
                    </li>
                    <li>
                        <p class="stu-tit">메이저 의대</p>
                        <p class="stu-num"><strong>96</strong>명</p>
                    </li>
                    <li>
                        <p class="stu-tit">의치한약수</p>
                        <p class="stu-num"><strong>1,530</strong>명</p>
                    </li>
                </ul>
                
                <p class="r-txt mt50">* 2024학년도 러셀 전체 학원 바른공부 자습전용관 재원생만의 대입 결과 (단과 수강생 제외/복수대학 합격 포함)<br>
                    * 2024학년도 서울대 의예과 합격자 수 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 
                    <br>
                    러셀 대구 4명, 러셀CORE 광주 2명, 러셀CORE 대전 3명)<br>
                    * 2024학년도 메이저 의대 합격자 수 (서울대의예과19명, 연세대(서울)의예과23명, 성균관대의예과7명,<br>
                    가톨릭대(성의)의예과21명, 울산대의예과6명, 고려대의과대학 20명)<br>  
                    * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 홈페이지 노출 기준<br>
                    * 2024. 02.29 기준</p>
            </div>

            <div class="result-box mt40 d-start">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont01_txt02.png" alt="수치가 보여주는 높은 성적 향상" /></p>
                <ul>
                    <li class="doughnut">
                        <p>반수반 재원생<br>
                            <strong><span>10명 중 9명</span> 성적 상승</strong><br>
                            <span>*HS반, 서의치반, 연고대반 재원생 기준</span>
                        </p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <div class="chart-img"><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_graph03.png" alt="" /></div>
                        </div>
                    </li>
                    <li class="ml60">
                        <div><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont01_graph02.jpg" alt="2023 vs 2024 수능 백분위 상승 점수" /></div>
                        <p class="bubble"><strong>27.8점</strong> 상승</p>
                        <p class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_arrow.png" alt="" /></p>
                    </li>
                </ul>
                <p class="r-txt">* 2023학년도 러셀 전체 학원 반수반 재원생 중 2022/2023 수능 성적 확인이 가능한 학생들의 분석 결과/국수탐(2) 백분위 합 기준</p>
            </div>
            <% End If %>
        </div>
    </div>
    <div class="cont02">
        <div class="inner">
            <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0349" OR sCampusCode = "CD0346" Then '인트로/대치/영통/울산/코어청주 %>
            <h3 class="mb60" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2024/half/cont02_tit.png" alt="반수에 특화된 시스템이 만들어 낸 놀라운 결과 러셀 반수반 선배들이 증명합니다." /></h3>
            <% Else %>
            <h3 class="mb60" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont02_tit.png" alt="반수에 특화된 시스템이 만들어 낸 놀라운 결과 러셀 반수반 선배들이 증명합니다." /></h3>
            <% End If %>

            <% If sCampusCode = "CD0247" Then '강남 %>
            <ul class="review-list">
                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_lys.png" alt="이윤서" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35106563')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">러셀의 장점은 면학분위기입니다.</p>
                            <p class="name black">러셀 강남 이윤서<br>
                                <strong>2023 서울대 (의예과) / 고려대 (의과대학) / 순천향대 (의예과) 합격</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt="서울대 로고" /></p>
                            <p class="grade">2023학년도<br>
                                <strong>서울대학교<br>
                                의예과</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph03.png" alt="" />
                                <span class="ico"><strong>93.3</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box pl30">주변학생들이 열심히 공부하니 자극도 받고, 생활패턴을 보고 배울 수 있어서 좋았습니다.<br> 
                            또한, <strong>수능 시간표에 맞춰서 생활</strong>할 수 있게 지도해주는 것이 가장 좋았습니다.<br>
                            <strong>승강반 제도 또한 동기부여</strong>에 도움이 됐습니다. 서/의치반으로 입학을 했는데,<br>
                            HS반에 올라가고 싶어하는 마음이 공부하는 데 있어서 하나의 동력원이 되어 주었습니다.<br> 
                            그에 따른 <strong>장학혜택</strong>도 유사한 느낌을 받았습니다.</p>
                    </div>
                </li>

                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_lhm.png" alt="이혜민" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33690775')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">매달 실시하는 모의고사가<br>
                            경각심을 일깨워줬습니다.</p>
                            <p class="name">러셀 강남 이혜민</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result">
                            <p><strong>2023학년도 연세대/고려대/이화여대 합격</strong></p>
                            <div class="stu-logo mt15">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt="이화여대 로고" /></p>
                            </div>
                        </div>
                        <p class="txt-box">평가원 모의고사만으로는, 현재 공부가 제대로 되고 있는지,<br>
                            실력이 어떤지 파악하기엔 부족했습니다.<br>
                            학원에서 매달 모의고사를 치루면서 수능 시간표에 따라<br>
                            연습도 할 수 있었고 제 공부 방향을 수정하는 데 도움이 되었습니다.</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_kcm.png" alt="권충만" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35110620')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">승강반 제도가<br>
                            가장 좋았습니다.</p>
                            <p class="name">러셀 강남 권충만</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result">
                            <p><strong>2023학년도 연세대/성균관대/중앙대 합격</strong></p>
                            <div class="stu-logo mt15">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt="성균관대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungang.png" alt="중앙대 로고" /></p>
                            </div>
                        </div>
                        <p class="txt-box">승강 제도가 학습 동기에 긍정적인 영향을 줬다고 생각합니다.<br>
                            연고반에 있을 때는 더 높은 반으로 올라가고 싶은 마음으로 열심히 했고,<br> 
                            HS반에 있을 때는 다시 내려가고 싶지 않다는 마음으로 더 열심히 했습니다.</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_jyw.png" alt="정연욱" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33690787')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">러셀의 장점은<br>
                            바자관 시스템입니다.</p>
                            <p class="name">러셀 강남 정연욱</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type02">
                            <p>
                                <span class="year">2022학년도</span><br>
                                <strong>연세대학교<br>
                                    기계공학과</strong>
                                백분위 합 276점
                            </p>
                            <p>
                                <span class="year">2023학년도</span><br>
                                <strong>경희대학교<br>
                                    의예과</strong>
                                백분위 합 293.5점<br>
                                <span class="ico"><strong>73</strong><b>%</b><br>
                                    상승</span>
                            </p>
                        </div>
                        <p class="txt-box">체계적인 시스템과 관리, 그리고 우수한 면학분위기가 있어서<br>
                            제가 제대로 집중하고 공부할 수 있었다고 생각합니다.</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_khs.png" alt="김한수" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35106940')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">러셀의 장점은 학생을<br>
                            최우선으로 고려한다는 점입니다.</p>
                            <p class="name">러셀 강남 김한수</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></p>
                            <p class="grade">2023학년도<br>
                                <strong>조선대학교<br>
                                의예과</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph03.png" alt="" />
                                <span class="ico"><strong>82</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box">시간표의 구성, 자습 자리의 배치, 면학분위기 조성 등<br>
                            사소할 수 있는 부분까지도 학생들을 고려해서 짜였다는 점이<br>
                            다른 학원과 대비되는 가장 큰 장점인 것 같습니다.</p>
                    </div>
                </li>

                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_w.png" alt="" />
                            <a href="javascript:alert(`추후 오픈 예정입니다.`)"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">다년간의 입시 관리 경험이 있으신 담임선생님</p>
                            <p class="name black">러셀 강남 김OO<br>
                                <strong>2024학년도 동의대(한의예과) / 대구한의대(한의예과)/ 대구카톨릭대(약학부)합격</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type02">
                            <p>
                                <span class="year">2012학년도</span><br>
                                <strong>서울대학교<br>
                                    간호학과</strong>
                                백분위 합 269.5점
                            </p>
                            <p>
                                <span class="year">2024학년도</span><br>
                                <strong>동의대학교<br>
                                    한의예과</strong>
                                백분위 합 281점<br>
                                <span class="ico"><strong>38</strong><b>%</b><br>
                                    상승</span>
                            </p>
                        </div>
                        <p class="txt-box pl30">매 시점마다 필요한 <strong>공부 매체나 방법 등에 대해 조언</strong>을 해주시고,<br>
                            원서 작성기간에도 <strong>다양한 데이터베이스를 활용하여<br> 
                            저에게 맞는 전형을 추천</strong>해 주셔서 많은 도움이 되었습니다.<br>
                            바자관 내에서 지나다니며 눈이 마주칠 때면 인자한 미소로<br>
                            늘 힘내라고 응원해 주시던 모습이 가장 선연하게 기억에 남습니다.</p>
                    </div>
                </li>
            </ul>
            <p class="l-txt mt20">※ 백분위성적 기준 : 국어, 수학, 탐구평균성적 합계<br>
                ※ 상승률 산정 기준 : 백분위 상승 점수 / (백분위 만점 - 전년도 백분위 합)</p>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_isl.png" alt="임세린" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49403069')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">충분한 학습 시간이 확보되는<br>
                            시스템이 좋았습니다.</p>
                            <p class="name">러셀 목동 임세린</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result">
                            <p>2024학년도<br>
                                <strong>인제대 의예과 /이화여대 의예과 합격</strong></p>
                            <div class="stu-logo mt15">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt="인제대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt="이화여대 로고" /></p>
                            </div>
                        </div>
                        <p class="txt-box">바른공부 자습전용관의 장점은 충분한 학습시간이 확보된다는 것입니다. <br>
                            원하는 단과 수업을 수강할 수 있고, 한 건물 내에 이동시간이 많이 필요하지 
                            않아 원하는 만큼 충분한 학습을 할 수 있었습니다.</p>
                    </div>
                </li>
                <li class="mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_jds.png" alt="정다솜" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49404204')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">담임선생님의 관리 덕분에<br>
                            힘든 수험생활을<br>
                            극복할 수 있었습니다.</p>
                            <p class="name">러셀 목동 정다솜</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type02">
                            <p>
                                <span class="year">2023학년도</span><br>
                                <strong>서강대<br>
                                    컴퓨터 공학과</strong>
                            </p>
                            <p class="p0">
                                <span class="year">2024학년도</span><br>
                                <strong>고려대학교<br>
                                    산업경영공학부</strong>
                            </p>
                        </div>
                        <p class="txt-box">담임선생님과 원하는 시간에 자유롭게 상담하며 이전 선배들은 어떻게 <br>
                            슬럼프를 극복했는지, 대안은 무엇이 있는지를 들으면서 수험생활을 <br>
                            이어나갈 수 있었습니다. 멘탈뿐만 아니라 학습 방향 조정도 해주셔서 <br>
                            수험생활에 큰 힘이 되었습니다.</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_lsj.png" alt="이서진" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48230976')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">실전 모의 훈련장을 통해<br>
                            수능에 대한 불안감을<br>
                            줄일 수 있었어요.</p>
                            <p class="name">러셀 목동 이서진</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type02">
                            <p>
                                <span class="year">2023학년도</span><br>
                                <strong>성균관대<br> 
                                    경영학과</strong>
                            </p>
                            <p class="p0">
                                <span class="year">2024학년도</span><br>
                                <strong>연세대<br>
                                    중어중문학과</strong>
                            </p>
                        </div>
                        <p class="txt-box">수능을 앞두고 진행되었던 실전 모의 훈련장이 큰 도움이 되었습니다. <br>
                            원래 긴장을 많이 하는 성격이라 불안감이 굉장히 컸는데 <br>
                            실전 모의 훈련장에 꾸준히 참여하며 최대한 실전 훈련을 반복한 것이 <br>
                            많은 도움이 도움이 되었습니다.</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_pge.png" alt="박가은" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49404389')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">수능과 동일한 표준 시간표로<br>
                            현장감 있게<br> 
                            공부할 수 있었습니다.</p>
                            <p class="name">러셀 목동 박가은</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type02">
                            <p>
                                <span class="year">2023학년도</span><br>
                                <strong>전주교대<br> 
                                    과학교육과</strong>
                            </p>
                            <p class="p0">
                                <span class="year">2024학년도</span><br>
                                <strong>고려대<br>
                                    환경 생태공학부</strong>
                            </p>
                        </div>
                        <p class="txt-box">바른공부 자습전용관은 수능과 동일하게 시간표가 진행되어 오랜 시간동안 
                            온전히 공부하며 수능에 맞춰진 집중력을 기를 수 있었습니다.<br> 
                            또한 모의고사를 풀 때도 타종이 울려 흐름이 끊기는 일 없이 현장감 있게 <br>
                            공부할 수 있었습니다.</p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <ul class="review-list">
                
                <li class="type04" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_pjw.png" alt="박정우" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd class="pl0">
                            <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></p>
                            <p class="grade"><strong>2024 연세대(미래)<br>
                                의예과 합격</strong></p>
                            <p class="name">러셀 부천 박정우</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">점심 직후 영단어 테스트와 영어 듣기 평가가 <br>
                            도움이 되었습니다.</p>
                        <p class="txt-box">하루 30분~1시간을 투자하여 영단어를 외우고, <br>
                            매주 토요일마다 영어 듣기 평가도 모의로 진행하며 듣기감을 유지할 수 <br>
                            있어 좋았습니다. 자습관 바로 앞에 담임선생님이 계셔서 집중도 높은 학습
                            을 진행할 수 있었고, 과목별 학습법 등 팁도 얻었습니다. 또한 개별 상담과 <br>
                            성적에 맞는 수시/정시 전략도 꼼꼼하게 조언해 주셔서 감사했습니다.</p>
                    </div>
                </li>
                <li class="type04 mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_lge.png" alt="이가은" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48573125')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd class="pl0">
                            <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt="강원대 로고" /></p>
                            <p class="grade"><strong>2024 강원대<br> 
                                의예과 합격</strong></p>
                            <p class="name">러셀 부천 이가은</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">담임선생님의 조언에 감사했습니다.</p>
                        <p class="txt-box">모의고사를 볼 때마다 멘탈이 무너지고 공부하는 데에 지장이 있었습니다. 
                            그럴 때마다 담임선생님께 가서 고민을 털어놓고 얘기했습니다.
                            선생님께서 많은 학생들을 만나 보셔서 그런지 해주시는 말씀들이
                            멘탈을 다잡는 데에 도움이 많이 되었습니다.
                            대학 전형뿐만 아니라 모의고사 직후 결과와 함께 학습 방법 관련한 조언도 해주셨습니다.</p>
                    </div>
                </li>
                <li class="type04" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_khw.png" alt="김희원" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/51835155')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd class="pl0">
                            <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_konkuk.png" alt="" /></p>
                            <p class="grade"><strong>2024 건국대<br>
                                수의예과 합격</strong></p>
                            <p class="name">러셀 부천 김희원</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">외로운 수험생활 기간 좋은 멘토가 되어주신 담임선생님께 감사했습니다.</p>
                        <p class="txt-box">상담신청이 자유로워서 외로운 수험생활, 좋은 멘토가 되어주셨습니다.
                            담임선생님의 지속적인 학습 플래너 검사로 계획을 잘 지킬 수 있었고,
                            학습 방향에 대해서도 좋은 조언을 해주셔서 실제로 제 성적 상승에 정말 많은 기여를 하셨다고 생각합니다.</p>
                    </div>
                </li>
                <li class="type04" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_ldg.png" alt="이동규" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/51835168')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd class="pl0">
                            <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_jeju.png" alt="제주대 로고" /></p>
                            <p class="grade"><strong>2024 제주대<br> 
                                수의예과 합격</strong></p>
                            <p class="name">러셀 부천 이동규</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">자습관 면학분위기 조성과 학습시간을 <br>
                            확보할 수 있어 좋았습니다.</p>
                        <p class="txt-box">스피드게이트로 철저하게 출결관리를 하고 매 교시마다 출결을 확인하기 <br>
                            때문에 이른 시간부터 공부하는 습관을 기를 수 있었습니다.<br>
                            또한 수시로 자습 감독 선생님들께서 순찰을 돌기 때문에 집중해서 공부하는 
                            분위기가 조성되었고, 담임선생님께서 자습관 면학분위기 조성에 많은 <br>
                            신경을 써주셔서 항상 좋은 환경에서 공부할 수 있었고 나태해질 때마다 <br>
                            확실하게 관리해 주셨습니다.</p>
                    </div>
                </li>
                <li class="type02" data-aos="zoom-in-up" style="height:auto;">
                    <dl class="stu-info" style="justify-content:flex-end;">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_jcy.png" alt="전찬영" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48572948')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd class="pl0" style="width:calc(100% - 700px)">
                            <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                            <p class="grade fz24"><strong>2024 고려대 철학과 합격</strong></p>
                            <p class="name" style="padding-top:14px;">러셀 부천 전찬영</p>
                        </dd>
                    </dl>
                    <div class="review-box" style="flex-direction:column;align-items:baseline;">
                        <p class="stit mt0">개방형 구조에서 자신만의 온전한 학습시간을 확보할 수 있었습니다.</p>
                        <p class="txt-box mt15">바른공부 자습전용관의 가장 좋은 점은 개방형 구조에서 다른 학생들과 같이 
                            공부하기 때문에 나태해지지 않고 공부에만 집중할 수 있다는 점입니다. <br>
                            그리고 담임선생님이 계시면서 시험 일정 등 공부 외적으로 신경 써야 할 부분에 있어서도 항상 관심 가지고 챙겨 주셨기에 더더욱 공부에만 집중할 수 있었습니다.</p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <ul class="review-list">
                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_lhs.png" alt="이현승" />
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/V6l4BDWbQhE?si=55clgdQk821XDzKw')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">담임선생님들의 릴레이 응원은 제가 마지막까지 포기하지 않게 도와주었습니다.</p>
                            <p class="name black"><strong>2023학년도 고려대학교 의과대학</strong><br>
                                러셀 분당 이현승</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="txt-box">바자관 생활하면서 표준 시간표에 따라 매일을 수능에 맞게 규칙적으로 생활하면서<br>
                            수험생활의 가장 중요한 부분을 지켜나갈 수 있어서 좋았습니다. 실제 수능장에서도 그 루틴이 도움이 되었습니다.</p>
                    </div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_img01.jpg" alt="" /></p>
                </li>
                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_ujy.png" alt="유주영" />
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/DtrlLPdKQJI?si=5ECK2un97v3-exr4')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">일정한 시간 동안 공부하고 쉬는 시간을 강제하는 것이 좋았습니다.</p>
                            <p class="name black"><strong>2023학년도 가톨릭대학교 의예과</strong><br>
                                러셀 분당 유주영</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="txt-box">입시를 준비하다 보면 다양한 입시 전형들에 대한 정보를 찾아보는 것이 부담스러운데,<br>
                            입시 담임선생님이 이러한 입시 정보들을 알아봐 주시는 것이 큰 도움이 되었습니다.</p>
                    </div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_img02.jpg" alt="" /></p>
                </li>
                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_ssy.png" alt="심승연" />
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/3FGMVAKNhSU?si=oPK8CG3nJkWYsNMc')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">다른 학생들이 공부하는 모습을 볼 수 있는 것이 많은 도움이 되었습니다.</p>
                            <p class="name black"><strong>서울대학교 치의학학석사통합 | 충남대학교 의예과 | 단국대학교 의예과</strong><br>
                                러셀 분당 심승연</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="txt-box">쾌적한 환경을 위해 많은 노력을 기울이십니다. 수험생들이 하루 종일 공부하는 숨 쉬기 좋은 공간을 만들어주며,<br>
                            면학분위기를 조성해주어 집중력을 유지하는 데 좋았습니다.</p>
                    </div>
                    <p class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_img03.jpg" alt="" /></p>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <ul class="review-list">
                <li class="type09" data-aos="zoom-in-up">
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/review01.jpg" alt="" /></div>
                </li>
                <li class="type09" data-aos="zoom-in-up">
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/review02.jpg" alt="" /></div>
                </li>
                <li class="type09" data-aos="zoom-in-up">
                    <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/review03.jpg" alt="" /></div>
                </li>
                <li class="ml0" data-aos="zoom-in-up" style="height:auto;width:630px;">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_w.png" alt="" />
                        </dt>
                        <dd>
                            <span class="year">2024학년도</span>
                            <p class="stit">인제대 의예과<br>
                            러셀 센텀 임OO</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result">
                            <p><strong>의학계열 4관왕</strong><br>
                            인제대 의예과, 영남대 의예과, 고신대 의예과, 계명대 의예과</p>
                            <div class="stu-logo mt15">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt="인제대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt="영남대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kosin.png" alt="고신대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_keimyung.png" alt="계명대 로고" /></p>
                            </div>
                        </div>
                        <p class="txt-box">
                            <strong class="fz22 mb10">수능이 다가올수록 실전 수능 체험이나, 퀄 모의고사, 메가X대성 더 프리미엄 모의고사를 통해 철저한 실전 대비를 할 수 있었습니다.</strong><br>
                                수능 시험장에서는 무의식과 당황으로 실력과 무관하게 예상치 못한 상황이 생길 수 있는데, 이러한 다양한 시나리오를 점검하는 데에 굉장히 도움이 되었습니다. 또한 승강반 제도와 장학혜택으로 인한 동기부여도 큰 장점이라고 생각합니다. 
                            </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up" style="height:auto;width:630px;margin-left:40px">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_w.png" alt="" />
                        </dt>
                        <dd>
                            <span class="year">2024학년도</span>
                            <p class="stit">경상국립대 의예과<br>
                            러셀 센텀 고OO</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result">
                            <p><strong>의학계열 4관왕</strong><br>
                                경상국립대 의예과, 조선대 의예과, 원광대 의예과, 전남대 치의예과</p>
                            <div class="stu-logo mt15">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gyeongsang.png" alt="경상국립대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_wonkwang.png" alt="원광대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonnam.png" alt="전남대 로고" /></p>
                            </div>
                        </div>
                        <p class="txt-box">
                            <strong class="fz22 mb10">담임선생님께서 학습적인 부분이나 멘탈적으로 고민이 있으면 저와 늘 함께 고민해 주셔서 수험 기간 중 의지가 많이 되었습니다.
                            </strong><br>
                            또한 수시 원서와 관련된 부분도 합리적으로 저에게 확신을 심어 주셔서 굉장히 도움을 많이 받았습니다. 특히 학생들의 성향을 파악하고 세심하게 상담해 주셔서 감사했습니다. 

                            </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <ul class="review-list">
                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_shb.png" alt="신현빈" />
                            <a href="javascript:alert(`추후 오픈 예정입니다.`)"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">바른공부 자습전용관의 가장 큰 장점은 면학분위기입니다.</p>
                            <p class="name black"><strong>2024 서울대학교 물리학과 합격</strong><br>
                                러셀 중계 신현빈</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="txt-box">반수를 혼자 준비하게 되면 여러 방해 요소에 걸려 제대로 집중하지 못하게 되는 경우가 발생하는데, <br>
                            바자관 내에서 공부하게 되면 <strong>열심히 공부하는 다른 학생들이 있어</strong> 마치 학교 같다는 생각이 들었고, 이에 지지 않고자 <strong>저도 같이 공부를 열심히 하게 되었습니다.</strong><br>
                            또한 바자관은 공부를 하고자 하는 학생들이 모여있기 때문에 서로 조용히 하는 분위기에서 온전히 자신의 공부에만 집중할 수 있었습니다.<br>
                            이런 환경 속에서 공부를 하면서, <strong>하루에 학습하는 양과 질의 면에 있어  모든 부분이 이전 혼자 공부할 때보다 많이 향상</strong>되었다고 생각합니다.</p>
                    </div>
                </li>

                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_luj.png" alt="이유진" />
                            <a href="javascript:alert(`추후 오픈 예정입니다.`)"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">바른공부 자습전용관의 가장 큰 장점은 담임선생님의 관리입니다.</p>
                            <p class="name black"><strong>2024 이화여자대학교 약학과 합격</strong><br>
                                러셀 중계 이유진</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="txt-box"><strong>혼자 공부하면서 휴대폰 사용시간 조절이나 생활패턴 관리 등에 어려움을 겪고, 관리가 필요하다고 생각하여 등록</strong>하게 되었습니다.<br>
                            바자관은 개방형 구조로 되어있어, 탁 트여있어서 전혀 답답하지 않았고, 주변 친구들을 의식하지 않고 공부하는 연습을 할 수 있어서 좋았습니다.<br>
                            또한 <strong>입시 담임선생님은 저에게 든든한 멘토 역할</strong>을 해주셨습니다.성적이 오르지 않아 고민하고 있을 때,<br> 
                            실전 연습을 좀 더 늘리고 모르는 문제는 과감히 버리는 연습을 하라고 조언해 주신 것도 담임선생님이셨고,<br> 
                            집과 학원만을 오가며 단조로운 일상에 지쳐있었을 때 응원의 말씀을 해주셔서 끝까지 힘을 낼 수 있었던것 같습니다.</p>
                    </div>
                </li>

                <li class="type02" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_psj.png" alt="박수진" />
                            <a href="javascript:alert(`추후 오픈 예정입니다.`)"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">체계적인 시스템이 있어 규칙적으로 공부할 수 있습니다.</p>
                            <p class="name black"><strong>2023 연세대학교 경영학과 합격</strong><br>
                                러셀 중계 박수진</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="txt-box"><strong>바자관의 체계적인 출결관리와 표준 시간표가 좋았습니다.</strong> 혼자 공부하면서 힘들었던 점이 규칙적인 공부를 수립하는 것이었는데,<br> 
                            강제성이 없다 보니 일찍 일어나고 쉬는 시간을 적당히 가지는 것이 어려웠습니다. 바자관은  8시 등원이라는 강제적 시스템과 표준 시간표가 <br>
                            정해져 있기 때문에, 매일 규칙적으로 공부할 수 있다는 점이 가장 큰 좋았고, <strong>오로지 수능을 위해 공부하는 열정적인 수험생들이 모인 공간에서 <br>
                            함께 힘낼 수 있어 동기부여</strong>가 되었습니다. 공부하면서 고민이 생길 때, 친구나 부모님께 털어놓지 못하는 경우가 생기는데 <br>
                            <strong>담임선생님께서 저의 고민을 항상 들어주시고 적절한 조언을 해주셔서</strong> 수험생활 끝까지 힘을 낼 수 있었습니다.</p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_hjy.png" alt="한지윤" />
                            <a href="javascript:alert(`추후 오픈 예정입니다.`)"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">주변 학생들을 보며 자극받는 <br>
                            면학분위기가 좋았습니다</p>
                            <p class="name">러셀 평촌 한지윤</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type02">
                            <p>
                                <span class="year">2023학년도</span><br>
                                <strong>한국외국어대학교<br> 
                                    중국어교육과</strong>
                                백분위 합 267 점
                            </p>
                            <p class="pr35">
                                <span class="year">2024학년도</span><br>
                                <strong>연세대학교<br>
                                    아동가족학과</strong>
                                백분위 합 289.5점
                                <span class="ico"><strong>68</strong><b>%</b><br>
                                    상승</span>
                            </p>
                            
                        </div>
                        <p class="txt-box"><strong>바른공부 자습전용관의 장점은 좋은 면학분위기</strong>입니다.<br>
                            공부가 되지 않을 때 자습시간은 물론 쉬는시간에도 졸지 않고 <strong>공부하는 <br>
                            주변 학생들을 보며 자극을 받고 다시 집중할 수 있었습니다.</strong><br>
                            또한 학습 목적 외의 사이트는 모두 차단되는 전용 와이파이 덕분에<br> 
                            다른 곳에 눈을 돌리지 않고 오직 공부에만 신경 쓸 수 있었습니다.</p>
                    </div>
                </li>
                <li class="mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_whu.png" alt="왕휘웅" />
                            <a href="javascript:alert(`추후 오픈 예정입니다.`)"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd><p class="stit">다양한 학생 지원 시스템이<br>
                            구축되어있어서 좋았습니다.</p>
                            <p class="name">러셀 평촌 왕휘웅</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type02">
                            <p>
                                <span class="year">2023학년도</span><br>
                                <strong>한국외국어대학교<br> 
                                    LT학부</strong>
                                백분위 합 276.5 점
                            </p>
                            <p class="pr30">
                                <span class="year">2024학년도</span><br>
                                <strong>서울대학교<br>
                                    인문계열</strong>
                                백분위 합 289.5 점
                                <span class="ico"><strong>44</strong><b>%</b><br>
                                    상승</span>
                            </p>
                        </div>
                        <p class="txt-box">QUEL 모의고사, 장영진 모의고사, 월간 장영진, 플래너 제공 등 <strong>다양한 <br>
                            학생 지원 시스템이 구축되어 있어 본인이 의지가 있다면 공부에 활용할 <br>
                            수 있는 자원들이 많은 느낌이었습니다.</strong><br>
                            메대프 모의고사를 응시해 매달 자신의 실력을 점검하고 전국 <br>
                            기준 나의 위치를 파악할 수 있어 좋았습니다.</p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <ul class="review-list">
                <li class="type06" data-aos="zoom-in-up">
                    <div class="review-box">
                        <dl class="stu-info">
                            <dt>
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_jhh.png" alt="" />
                                <a href="javascript:CastPopup('https://tv.naver.com/v/45182079')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                            </dt>
                            <dd>
                                <p class="year">2024</p>
                                <p class="name">러셀 대구 HS반 조현호</p>
                                <p>재원기간 23년 8월~수능까지</p>
                            </dd>
                        </dl>
                        <div>
                            <p class="stit">“1타 강사님의 즉각적인 피드백을 통해<br>
                                올바른 공부 방향을 잡을 수 있었습니다.”</p>
                            <p class="txt-box">담임선생님께서 최상위 면학분위기를 조성 해주셨습니다.<br>
                                적당한 긴장감을 유지해주고, 시기에 맞는 입시정보를 제공해주셔서 큰 도움이 되었습니다.<br>
                                또 개개인에 맞는 조언과 충고로 내 상태를 되돌아보고 개선하는데 큰 도움이 되었습니다.</p>
                        </div>
                    </div>
                    <div class="result-wrap">
                        <div class="stu-result type06">
                            <div>
                                <p class="year"><strong>2024학년도 296점</strong></p>
                                <p class="year">2023학년도 280점</p>
                            </div>
                            <p class="arr">백분위 80% 상승</p>
                        </div>
    
                        <table class="tbl-01 stu-tbl mt50">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구</th>
                                    <th>총합</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>97</td>
                                    <td>100</td>
                                    <td>99</td>
                                    <td>296</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>96</td>
                                    <td>100</td>
                                    <td>84</td>
                                    <td>280</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
            </ul>
            <ul class="review-list">
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 292.5점</strong></p>
                                    <p class="year">2023학년도 275.5점</p>
                                </div>
                                <p class="arr">백분위 <strong>69% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 HS반 김예진<br>
                                <span>가천대/이화여대 약학과 합격</span></p>
                            <p class="name">재원기간 23년 2월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 291.5점</strong></p>
                                    <p class="year">2023학년도 276점</p>
                                </div>
                                <p class="arr">백분위 <strong>65% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 서의치반 조혜린<br>
                                <span>성균관대 약학과/계명대 의예과 합격</span></p>
                            <p class="name">재원기간 23년 1월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 284점</strong></p>
                                    <p class="year">2023학년도 210.5점</p>
                                </div>
                                <p class="arr">백분위 <strong>82% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 서의치반 이시훈<br>
                                <span>연세대 언더우드학부 합격</span></p>
                            <p class="name">재원기간 22년 12월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>7</td>
                                    <td>5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 291.5점</strong></p>
                                    <p class="year">2023학년도 265점</p>
                                </div>
                                <p class="arr">백분위 <strong>76% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 HS반 이인우<br>
                                <span>서울대 지리학과 합격</span></p>
                            <p class="name">재원기간 23년 8월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>4</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 296점</strong></p>
                                    <p class="year">2023학년도 290.5점</p>
                                </div>
                                <p class="arr">백분위 <strong>58% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 HS반 정지원<br>
                                <span>경북대/영남대/<br>
                                    계명대 의예과 합격</span></p>
                            <p class="name">재원기간 23년 9월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 293점</strong></p>
                                    <p class="year">2023학년도 270.5점</p>
                                </div>
                                <p class="arr">백분위 <strong>76% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 서의치반 권OO<br>
                                <span>동아대/원광대/<br>
                                    대구가톨릭대 의예과 합격</span></p>
                            <p class="name">재원기간 23년 6월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 277점</strong></p>
                                    <p class="year">2023학년도 216점</p>
                                </div>
                                <p class="arr">백분위 <strong>73% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 서의치반 박OO<br>
                                <span>경북대/순천향대 의예과 합격</span></p>
                            <p class="name">재원기간 23년 2월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>6</td>
                                    <td>4</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li class="type07 mt40" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <div class="stu-result type07">
                                <div>
                                    <p class="year"><strong>2024학년도 289점</strong></p>
                                    <p class="year">2023학년도 233점</p>
                                </div>
                                <p class="arr">백분위 <strong>84% 상승</strong></p>
                            </div>
                        </dt>
                        <dd>
                            <p class="year">2024</p>
                            <p class="grade">러셀 대구 연고대반 허OO<br>
                                <span>경북대 약학과 합격</span></p>
                            <p class="name">재원기간 23년 1월~수능까지</p>
                        </dd>
                    </dl>
                    <div class="review-box mt40">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
                                    <th>구분</th>
                                    <th>국어</th>
                                    <th>수학</th>
                                    <th>탐구1</th>
                                    <th>탐구2</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <th>2023 수능</th>
                                    <td>3</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <ul class="review-list">
                <li class="type03" data-aos="zoom-in-up">
                    <div class="review-box">
                        <dl class="stu-info">
                            <dt>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_khw.png" alt="" />
                                <a href="javascript:alert(`추후 오픈 예정입니다.`);"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                            </dt>
                            <dd>
                                <p class="stit">학습시간을 확보할 수 있었던 점이 가장 좋았습니다.</p>
                                <p class="grade">2024학년도 <strong>서울대학교 인문계열</strong></p>
                                <p class="name">러셀CORE 광주 김효원</p>
                            </dd>
                        </dl>
                        <p class="txt-box">바른공부 자습전용관의 장점은 <strong>학습에 집중할 수 있는 면학분위기</strong>입니다.<br>
                            <strong>개방형 구조</strong>로 되어있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다.<br> 
                            또한 체계적인 시스템으로 운영되기 때문에 학습시간을 충분히 확보할 수 있었고<br> 
                            시간을 효율적으로 사용하기 위해 집중력 있게 공부를 할 수 있었습니다.<br>
                            또한 <strong>라이브 수업 수강을 통해 받을 수 있었던 현강 자료</strong>들이 도움이 되었습니다.<br> 
                            높은 퀄리티의 자료들을 통해 실력을 향상시킬 수 있었고<br> 
                            질의응답을 통해 어려웠거나 헷갈렸던 개념들을 확인하고 바로잡을 수 있었습니다.</p>
                    </div>
                    <div class="stu-result ">
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph02.png" alt="" />
                            <span class="ico"><strong>88</strong><b>%</b><br>
                                상승</span>
                        </div>
                    </div>
                </li>
                <li class="type03" data-aos="zoom-in-up">
                    <div class="review-box">
                        <dl class="stu-info">
                            <dt>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_kny.png" alt="김나연" />
                                <a href="javascript:alert(`추후 오픈 예정입니다.`);"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                            </dt>
                            <dd>
                                <p class="stit">담임선생님은 마라톤에서의 페이스메이커 같은 분이십니다.</p>
                                <p class="grade">2024학년도 <strong>조선대학교 의예과</strong></p>
                                <p class="name">러셀CORE 광주 김나연</p>
                            </dd>
                        </dl>
                        <p class="txt-box"><strong>담임선생님께서는 1:1로 상담</strong>해 주셔서 대화하면서 앞으로의 계획이나 부족한 부분에 대해<br>
                            스스로 생각해 볼 수 있도록 도와주셨습니다. 마라톤에서의 페이스메이커 같은 분이십니다.<br>
                            <strong>라이브 수업의 장점은 공부하고 있던 건물에서 바로 수업을 들을 수 있다는 점</strong>입니다.<br>
                            덕분에 수업을 듣기 위한 이동시간이나 교통비 등을 아낄 수 있었습니다.<br>
                            수업에는 따로 조교 선생님들이 계셔서 질문이나 상담을 할 수 있었는데 이 점이 가장 만족스러웠습니다.</p>
                        
                    </div>
                    <div class="stu-result">
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph02.png" alt="" />
                            <span class="ico"><strong>80</strong><b>%</b><br>
                                상승</span>
                        </div>
                    </div>
                </li>
                <li class="type03" data-aos="zoom-in-up">
                    <div class="review-box">
                        <dl class="stu-info">
                            <dt>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_uto.png" alt="엄태옥" />
                                <a href="javascript:alert(`추후 오픈 예정입니다.`);"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                            </dt>
                            <dd>
                                <p class="stit">공부 외에 것들은 최대한 신경을 안 쓰게 관리를 해줘서 좋았습니다.</p>
                                <p class="grade">2024학년도 <strong>한양대학교 의예과</strong></p>
                                <p class="name">러셀CORE 광주 엄태옥</p>
                            </dd>
                        </dl>
                        <p class="txt-box">바른공부 자습전용관의 장점은 단과를 선택적으로 들을 수 있어서 <strong>시간을 효율적으로 쓸 수 있다는 것</strong>입니다.<br>
                            부족하다고 생각하는 과목을 찾아 듣다보니 강제로 불필요한 수업을 들을 때와 달리<br>
                            집중력있게 수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.<br>
                            공부에만 집중할 수 있게 공부 외에 것들은 최대한 신경을 안쓰게 관리를 해줘서 좋았습니다.</p>
                    </div>
                    <div class="stu-result">
                        <div class="graph">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph02.png" alt="" />
                            <span class="ico"><strong>60</strong><b>%</b><br>
                                상승</span>
                        </div>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <ul class="review-list">
                <li class="type04" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_lsh.png" alt="이상후" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34136621')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2023<br> 
                            <strong>서울대학교 의예과</strong></p>
                            <p class="name">러셀CORE 대전 이상후</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">러셀CORE 대전은 흠잡을 곳이 없는<br>
                            대입 최적의 공간입니다.</p>
                        <p class="txt-box">공부에만 집중할 수 있는 <strong>좋은 면학분위기,<br>
                            전문적인 관리와 학생 중심의 담임선생님,<br> 
                            순공시간을 최대화 할 수 있는 체계적인 시간표,<br> 
                            다양한 모의고사를 통한 실전 훈련</strong> 등<br>
                            어느 한 쪽에 치우쳐져 있지 않은 완벽한 육각형이라는 인상을 받았습니다.</p>
                    </div>
                </li>
                <li class="type04 mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu_luy.png" alt="이O안" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34136726')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="grade">2023<br>
                                <strong>순천향대학교 의예과</strong></p>
                            <p class="name">러셀CORE 대전 이O안</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="stit">러셀CORE 대전은 흠잡을 곳이 없는<br>
                            대입 최적의 공간입니다.</p>
                        <p class="txt-box">담임선생님께서는 <strong>수험생활 전반적인 부분에서 많은 도움</strong>을 주셨습니다.<br>
                            원서 접수 기간에는 제가 놓치고 있었던 <strong>입시 정보</strong>를 알려주시고,<br>
                            <strong>전략적으로 어느 대학에 지원을 해야 할지<br>
                            전문적인 관리</strong>를 해주셔서<br>
                            성공적으로 입시를 마무리할 수 있었습니다.</p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
            <ul class="review-list">
                <li class="type04" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt class="p0"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea_big.png" alt="고려대 로고" /></dt>
                        <dd>
                            <p class="stit">수능 시간표대로 공부하여 실제 수능 리듬에 최적화되어 공부할 수 있었습니다.</p>
                            <p class="name">2024학년도 <strong>고려대학교 의예과</strong><br>
                            <span class="black">러셀CORE 전주 서진원</span></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <p class="txt-box p0">가장 좋았던 점은 <strong>표준 시간표를 통한 공부 리듬 형성과 집단적인 면학분위기</strong>였습니다.<br>
                            혼자 공부할 때에는 수능 시간표대로 공부를 해야 하는 강제성도 없으며, 집중력을 잃을 때 바로잡아 줄 요소도 없습니다.<br>
                            하지만 러셀에서는 <strong>수능 시간표대로 공부</strong>하고, <strong>목요일마다 위클리 모의고사를 실시</strong>하여 수능 리듬에 최적화되도록<br> 
                            반복 연습하여 실제 수능을 더욱더 익숙하게 느끼는데 큰 도움을 주었습니다.<br>
                            또한 <strong>포기하지 않고 집중력을 이어나가도록 도움을 준 개방적인 면학분위기</strong>도 수능 시험 도중 집중력을 잃고<br> 
                            부정적인 생각들이 밀려올 때마다 빠르게 다시 집중할 수 있도록 해준 주역이었다고 생각합니다.</p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up" class="r_go">
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>가톨릭대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 이아인
                            </dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu01.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49173377');"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">담임선생님이 입시, 생활, 학습에 대한<br>
                        전반적인 부분을 관리해 주셔서 좋았습니다.
                            </p>
                        <p class="txt">
                            <strong>담임선생님과의 상담</strong>이 큰 도움이 되었습니다. <strong>저에게 가장 알맞은 전형을 추천</strong>해 주셨고, 생기부 관련해서도 많은 도움을 주셨습니다. 또한, 수능 날에 가까워질수록 불안감이 높아졌는데 <strong>제 자신을 믿을 수 있도록 조언을 해주신 것이 멘탈 관리에 도움이 되었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up" class="r_go mt0">
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>가톨릭관동대 의예과 </strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 최승훈</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu02.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49173395');"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            바른공부 자습전용관의 표준 시간표가<br>실제 수능을 준비하는 데 큰 도움이 되었습니다.
                        </p>
                        <p class="txt">
                            실제 수능에선 <strong>국어가 80분, 수학이 100분</strong>이고 그 후 점심 식사를 하게 됩니다. 러셀도 이와 거의 동일하게 오전에 시간표를 80분, 100분으로 나누어 <strong>종소리에 맞추어 실전 모의고사</strong>를 풀 수 있었습니다. 특히 수능 직전에 이러한 <strong>바른공부 자습전용관의 표준 시간표가 실제 수능을 준비하는 데 큰 도움이 되었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up" class="r_go">
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>연세대학교(미래) 의예과 </strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 박민재</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu03.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49173388');"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            높은 퀄리티의 다양한 모의고사를 통해 긴장감을<br>유지하고, 학습 상태를 점검할 수 있었습니다.

                        </p>
                        <p class="txt">
                            주기적으로 보는 다양한 모의고사가 공부하는 데 도움이 되었습니다. <strong>QUEL, Weekly, 더 프리미엄 모의고사</strong>와 같은 다양한 모의고사를 통해
                            <strong>수험 생활의 긴장감을 유지</strong>할 수 있었습니다.<br>
                            그리고 이를 통해 <strong>학습 상태를 점검</strong>할 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up" class="r_go">
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>강원대학교 수의예과 </strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 윤지혜</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/stu04.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49173379');"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            식당, 자습관, 강의실이 모두 한 건물에 위치해서<br>낭비되는 시간 없이 공부에만 집중할 수 있었습니다.

                        </p>
                        <p class="txt">
                            식당, 자습관, 강의실, 화장실이 모두 가깝게 위치해 있어서
                            <strong>동선을 최소화하여 낭비되는 시간 없이 공부에만 집중할 수 있었습니다.</strong><br>
                            조용한 환경의 면학 분위기가 좋았고, 여러 명이 학습하다 보니
                            <strong>긍정적 경쟁심을 기를 수 있었습니다.</strong>

                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="stu-info">
                        <p class="stit">전면 통유리로 되어 있는 바자관에서 <br>
                            집체 모의고사 응시를 통해 <br>
                            실전에 대비할 수 있었습니다.</p>
                        <p class="name mt15">러셀CORE 창원 윤종빈</p>
                    </div>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt="동아대 로고" /></p>
                            <p class="grade">2024학년도<br>
                                <strong>동아대학교<br>
                                    의예과 합격</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph01.png" alt="" />
                                <span class="ico"><strong>69.6</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box">실전과 같은 분위기에서 모의고사를 볼 수 있는 기회가 많지 않은데,<br> 
                            러셀은 위클리, 메대프, 퀄 모의고사 등으로 매주 수능과 같이 대비할 수 <br> 
                            있었습니다. 또한 담임선생님과의 상담을 통해 부족한 부분을 보완할 수 <br> 
                            있어 효과적인 성적 향상의 계기가 되었습니다.</p>
                    </div>
                </li>
                <li class="mt0" data-aos="zoom-in-up">
                    <div class="stu-info">
                        <p class="stit">담임선생님의 면학분위기 관리와 <br>
                            1:1 맞춤 상담을 통해 체계적인 공부 습관을 <br>
                            기를 수 있었습니다.</p>
                        <p class="name mt15">러셀CORE 창원 제현수</p>
                    </div>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt="동아대 로고" /></p>
                            <p class="grade">2023학년도<br>
                                <strong>동아대학교<br>
                                의예과 합격</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph01.png" alt="" />
                                <span class="ico"><strong>70.9</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box">학습 계획을 짜는데 어려움이 있었는데, 담임선생님과의 상담을 통해 <br>
                            체계적인 공부 방향을 설정할 수 있었습니다. 학습적인 측면 및 멘탈적<br>
                            으로도 잘 잡아주시고, 입시에서도 생기부를 기반하여 최적의 입시 방향을 <br>
                            잡아주셔서 성공적인 결과를 거둘 수 있었습니다.</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="stu-info">
                        <p class="stit">대치동 LIVE 수업과 콘텐츠를 <br>
                            똑같이 받을 수 있다는 점이 마음에 들어 <br>
                            학원을 선택했습니다.</p>
                        <p class="name mt15">러셀CORE 창원 백지훈</p>
                    </div>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt="충남대 로고" /></p>
                            <p class="grade">2024학년도<br>
                                <strong>충남대학교<br>
                                    수의예과 합격</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph01.png" alt="" />
                                <span class="ico"><strong>79.9</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box">서울에 가지 않아도 대치동 LIVE 수업과 콘텐츠를 동일하게 이용할 수 있다<br>
                            는 점이 마음에 들었습니다. 수업 외에도 한 건물에 자습관, 식당, 강의실을 <br>
                            같이 배치함으로써 이동 동선을 최소화하고 체력과 학습 분위기 유지 측면에서 큰 이점을 얻을 수 있었습니다. </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="stu-info">
                        <p class="stit"> 효율적으로 시간을 활용하고 싶어 <br>
                            이에 적합한 학원을 찾던 중, 러셀CORE 시스템이 <br>
                            저에게 맞는 것 같아 학원을 선택했습니다.</p>
                        <p class="name mt15">러셀CORE 창원 윤득영</p>
                    </div>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt="연세대 로고" /></p>
                            <p class="grade">2024학년도<br>
                                <strong>연세대학교<br>
                                    경제학부 합격</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph01.png" alt="" />
                                <span class="ico"><strong>58.5</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box">단과 수업과 자습관 이용을 한 번에 할 수 있다는 점이 좋았습니다. <br>
                            관리형 독서실과 대치동 현장 단과의 장점을 지방에서 거의 그대로 구현<br>
                            한 것이 큰 장점인 것 같습니다. 주기적으로 치러지는 모의고사 역시 <br>
                            실력 향상에 큰 도움을 주었습니다</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="stu-info">
                        <p class="stit">개방된 공간에서 공부하는 상위반 학생들을 보며 <br>
                            학습의 동기를 부여받을 수 있었습니다.</p>
                        <p class="name mt15">러셀CORE 창원 이은지</p>
                    </div>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></p>
                            <p class="grade">2024학년도<br>
                                <strong>한양대학교<br>
                                    화학과 합격</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph01.png" alt="" />
                                <span class="ico"><strong>83.5</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box">자습관이 개방형 구조로 되어있기 때문에, 집중이 되지 않을 때 옆에서 <br>
                            열심히 공부하고 있는 친구들을 보며 동기부여를 받을 수 있었습니다. <br>
                            또한 승&middot;강반 제도가 있어 긴장감을 놓지 않고 학습을 진행할 수 있는 것 또한 
                            성적 향상에 큰 도움이 되었던 것 같습니다.</p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="stu-info">
                        <p class="stit">수능 시간표와 동일하게 운영되는 자습관과 <br>
                            면학분위기 관리가 가장 만족스러웠습니다.</p>
                        <p class="name mt15">러셀CORE 창원 성재호</p>
                    </div>
                    <div class="review-box">
                        <div class="stu-result type03">
                            <p class="logo"><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt="한양대 로고" /></p>
                            <p class="grade">2024학년도<br>
                                <strong>한양대학교<br>
                                    기계공학과 합격</strong></p>
                            <div class="graph">
                                <img src="<%=Application("img_path_russel")%>/intro/2024/half/img_graph01.png" alt="" />
                                <span class="ico"><strong>71.3</strong><b>%</b><br>
                                    상승</span>
                            </div>
                        </div>
                        <p class="txt-box">수능 시간표와 동일한 시간표에 맞추어 진행되기에 실전과 동일한 컨디션<br>
                            으로 공부하는 습관을 들일 수 있었습니다. 또한 핸드폰 사용 금지, 원내 대화 
                            금지 등 엄격한 면학 분위기 관리를 통해 공부에만 집중할 수 있어 좋은 결과
                            를 이끌어낼 수 있었습니다.</p>
                    </div>
                </li>
            </ul>
            <% Else %>
            <ul class="review-list">
                <li class="type05" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_jhh.png" alt="조현호" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/47829951')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2024학년도</p>
                            <p class="grade">경북대 의예과</p>
                            <p class="name">러셀 대구 조현호</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type04">
                            <div>
                                <p><strong>2024 수능 296점</strong></p>
                                <p>2023 수능 280점</p>
                            </div>
                            <p class="arr"><strong>백분위 80% 상승</strong></p>
                        </div>

                        <div class="mt15">
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <th>2023 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="stit">메가스터디 선생님의 즉각적인 피드백을 통해<br>
                            올바른 공부 방향을 잡을 수 있었습니다.</p>
                        <p class="txt-box mt10">담임선생님께서 최상의 면학분위기를 조성해 주셨습니다.
                            적당한 긴장감을 유지해 주고, 시기에 맞는 입시정보를 제공해 주셔서 큰 도움이 되었습니다. 
                            <strong>개개인에 맞는 조언과 충고로 내 상태를 되돌아보고 개선하는데 큰 도움</strong>이 되었습니다.</p>
                    </div>
                </li>
                <li class="type05 mt0" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_lge.png" alt="이가은" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48573125')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2024학년도</p>
                            <p class="grade">강원대 의예과</p>
                            <p class="name">러셀 부천 이가은</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type05">
                            <p class="result-tit"><i><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_crown.png" alt="" /></i>의학계열 수시 6관왕</p>
                            <p>강원대 의예과, 조선대 의예과, 전남대 치의학학석사과정,<br>
                                전북대 치의예과, 대구한의대 한의예과, 동신대 한의예과</p>
                            <div class="stu-logo">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt="강원대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt="조선대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonnam.png" alt="전남대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonbuk.png" alt="전북대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_daeguhanuidae.png" alt="대구한의대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_dongshin.png" alt="동신대 로고" /></p>
                            </div>
                        </div>
                        
                        <p class="stit">반수로 짧은 기간이었음에도 불구하고<br>
                            입시 공백을 채울 수 있었습니다.</p>
                        <p class="txt-box mt10"><strong>반수로 짧은 기간이었음에도 불구하고 학생 개인에 맞춰 위로와 상담</strong>을<br>
                            해주셔서 자괴감과 우울감에 빠지기 쉬운 재수생활 중 큰 힘이 되었습니다.<br>
                            1년 반의 입시 공백이 있어서 많이 잊은 상태였는데, 담임선생님께서 대학과 전형까지 모두 알아봐 주셔서 정말 도움이 됐습니다.</p>
                    </div>
                </li>
                <li class="type05" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_obw.png" alt="오병욱" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48297711')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2024학년도</p>
                            <p class="grade">경희대 치의예과</p>
                            <p class="name">러셀 대치 오병욱</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type05">
                            <p class="result-tit"><i><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_crown.png" alt="" /></i>의약학계열 2관왕</p>
                            <p>경희대 치의예과, 고려대(세종) 약학과</p>
                            <div class="stu-logo mt15">
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyunghee.png" alt="경희대 로고" /></p>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt="고려대 로고" /></p>
                            </div>
                        </div>

                        <p class="stit">짧은 기간 담임선생님이 있어<br>
                            빠르게 공부 방향을 잡고 나아갈 수 있었습니다.</p>
                        <p class="txt-box mt10">공부를 비교적 늦게 시작해서 걱정되는 부분이 많았는데 <strong>담임선생님께서<br>
                            성적표를 통해 구체적으로 제가 부족한 유형이 무엇인지, 보충 학습을<br>
                            해야 하는 과목이 무엇인지를 알려 주셨습니다.</strong> 또한 학습 중 고민이 생기면<br>
                            친절하게 상담해 주셔서 수험 기간 중 의지가 많이 되었습니다.</p>
                    </div>
                </li>

                <li class="type05" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_ksj.png" alt="김서진" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49013191')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2024학년도</p>
                            <p class="grade">연세대 천문우주학과</p>
                            <p class="name">러셀 분당 김서진</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type04">
                            <div>
                                <p><strong>2024 수능 287.5점</strong></p>
                                <p>2023 수능 246.5점</p>
                            </div>
                            <p class="arr"><strong>백분위 77% 상승</strong></p>
                        </div>

                        <div class="mt15">
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <th>2023 수능</th>
                                        <td>2</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>4</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="stit">철저한 출결관리와 표준 시간표로<br>
                            공부 리듬을 형성할 수 있었습니다.</p>
                        <p class="txt-box mt10">러셀의 가장 큰 장점은 철저한 출결관리와 공부 리듬 형성을 도와주는<br>
                            표준 시간표라고 생각합니다. 저는 누군가 관리를 하지 않으면 전혀 공부를 
                            하지 않는 타입인데 <strong>담임선생님의 체계적인 관리와 시간표 제도로 <br>
                            반수 기간에 공부를 꾸준히 할 수 있었습니다.</strong></p>
                    </div>
                </li>
                <li class="type05" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_sdh.png" alt="송다현" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35702155')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2023학년도</p>
                            <p class="grade">조선대 의예과</p>
                            <p class="name">러셀CORE 광주 송다현</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type04">
                            <div>
                                <p><strong>2023 수능 294점</strong></p>
                                <p>2022 수능 266.5점</p>
                            </div>
                            <p class="arr"><strong>백분위 82% 상승</strong></p>
                        </div>

                        <div class="mt15">
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>2023 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <th>2022 수능</th>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>3</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="stit">CORE 수업 시스템으로<br>
                            완강과 학습패턴을 유지할 수 있었어요.</p>
                        <p class="txt-box mt10">수업시간에 나눠 주는 자료가 도움이 많이 되었고 실전 모의고사들을 통해 
                            실제 수험장에서 이런 유형의 시험지가 나왔을 때 어떻게 대처해야 할지 <br>
                            미리 준비할 수 있어서 좋았습니다. 인강을 혼자 들으면 완강률도 낮고 공부 
                            패턴도 들쑥날쑥해지는데 <strong>코어에서는 정해진 시간에 수업을 들어야 돼서 <br>
                            완강을 하게 되고 학습 패턴을 유지할 수 있어 좋았습니다.</strong></p>
                    </div>
                </li>
                <li class="type05" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_lhs.png" alt="이현승" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34793926')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2023학년도</p>
                            <p class="grade">고려대(안암) 의과대학</p>
                            <p class="name">러셀 분당 이현승</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type04">
                            <div>
                                <p><strong>2023 수능 295점</strong></p>
                                <p>2022 수능 282.5점</p>
                            </div>
                            <p class="arr"><strong>백분위 71% 상승</strong></p>
                        </div>

                        <div class="mt15">
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>2023 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <th>2022 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>3</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="stit">수능 시간에 맞춰진 표준 시간표로<br>
                            생활하면서 공부에만 집중할 수 있었어요.</p>
                        <p class="txt-box mt10">매일을 표준 시간표에 따라 생활하면서 수능 공부에 오롯이 <br>
                            집중할 수 있다는 것이 좋았습니다. <strong>반수를 시작하면서 충분한 공부시간을 
                            확보하는 것이 가장 중요하다고 생각하였는데 러셀학원이 저의 필요를<br>
                            충족할 수 있는 곳</strong>이었습니다. 좋은 면학분위기도 큰 도움이 되었습니다. </p>
                    </div>
                </li>
                <li class="type05" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_rjy.png" alt="류재용" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34906318')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2023학년도</p>
                            <p class="grade">중앙대 의학부</p>
                            <p class="name">러셀 목동 류재용</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type04">
                            <div>
                                <p><strong>2023 수능 296.5점</strong></p>
                                <p>2022 수능 271.5점</p>
                            </div>
                            <p class="arr"><strong>백분위 88% 상승</strong></p>
                        </div>

                        <div class="mt15">
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>2023 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                    </tr>
                                    <tr>
                                        <th>2022 수능</th>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="stit">자습시간을 최대로 확보할 수 있어<br>
                            효율적으로 시간관리를 할 수 있었습니다.</p>
                        <p class="txt-box mt10">반수로 대입을 다시 준비하는 거라, 개인 시간을 많이 확보할 수 있어야<br>
                            했습니다. 바자관은 <strong>철저한 관리와 자습시간을 최대로 확보할 수 있다는 점
                            에서 효율적으로 공부</strong>할 수 있었습니다. 담임선생님과의 편한 상담으로 <br>
                            고민을 해결할 수 있었고, 큰 스트레스 없이 공부할 수 있었습니다.</p>
                    </div>
                </li>
                <li class="type05" data-aos="zoom-in-up">
                    <dl class="stu-info">
                        <dt>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/half/stu_nuc.png" alt="노유찬" />
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35186151')"><img src="<%=Application("img_path_russel")%>/intro/2024/half/ico_play.png" alt="" /></a>
                        </dt>
                        <dd>
                            <p class="year">2023학년도</p>
                            <p class="grade">서울대 전자정보학부</p>
                            <p class="name">러셀CORE 대전 노유찬</p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <div class="stu-result type04">
                            <div>
                                <p><strong>2023 수능 277.5점</strong></p>
                                <p>2022 수능 272점</p>
                            </div>
                            <p class="arr"><strong>백분위 71% 상승</strong></p>
                        </div>

                        <div class="mt15">
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                    <col style="width:auto;">
                                </colgroup>
                                <thead>
                                    <tr class="low">
                                        <th>구분</th>
                                        <th>국어</th>
                                        <th>수학</th>
                                        <th>탐구1</th>
                                        <th>탐구2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th>2023 수능</th>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>3</td>
                                    </tr>
                                    <tr>
                                        <th>2022 수능</th>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <p class="stit">개방형 구조로 되어 있어 주변에서 공부하는<br>
                            모습을 보고 자극을 받을 수 있었습니다.</p>
                        <p class="txt-box mt10">러셀에서 가장 좋았던 점은 <strong>쾌적한 환경과 면학분위기</strong>였습니다.<br>
                            개방형 구조로 되어 있어 탁 트인 느낌은 물론이고 밝은 조명 덕분에<br>
                            더욱 쾌적하다는 느낌을 받았습니다. 또한 주변 친구들이 공부하는 모습을 
                            볼 수 있기 때문에 자극을 받으며 더욱 집중할 수 있었고, <strong>담임선생님들께서 
                                곳곳을 순회하시며 면학분위기를 조성</strong>해 주시는 점이 좋았습니다.</p>
                    </div>
                </li>
            </ul>

            <div class="roll-slide swiper-container mt45" dir="ltl">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            수의예과</p>
                        <p class="name">러셀 대치<br>
                            <span>강OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">러셀 분당<br>
                            <span>곽OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">중앙대(서울)<br>
                            의학부</p>
                        <p class="name">러셀CORE 광주<br>
                            <span>권OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            약학계열</p>
                        <p class="name">러셀 중계<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            식물생산과학부</p>
                        <p class="name">러셀CORE 대전<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경영대학</p>
                        <p class="name">러셀 평촌<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            재료공학부</p>
                        <p class="name">최상위권 여학생 의대전문관<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            수의예과</p>
                        <p class="name">러셀 센텀<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">중앙대(서울)<br>
                            의학부</p>
                        <p class="name">러셀 목동<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">경희대(서울)<br>
                            의예과</p>
                        <p class="name">러셀 대구<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            첨단융합학부</p>
                        <p class="name">러셀CORE 광주<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">러셀 대구<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경영대학</p>
                        <p class="name">러셀CORE 청주<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">서연고&middot;의치대 전문관<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            인문계열</p>
                        <p class="name">러셀CORE 광주<br>
                            <span>김OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">러셀CORE 광주<br>
                            <span>문OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">연세대(서울)<br>
                            의예과</p>
                        <p class="name">러셀 대치<br>
                            <span>박OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">서연고&middot;의치대 전문관<br>
                            <span>박OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">경희대(서울)<br>
                            의예과</p>
                        <p class="name">러셀 강남<br>
                            <span>박OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">고려대(안암)<br>
                            의과대학</p>
                        <p class="name">최상위권 남학생 의대전문관<br>
                            <span>박OO</span></p>
                    </div>
                </div>
            </div>
            
            <div class="roll-slide swiper-container" dir="rtl">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경영대학</p>
                        <p class="name">러셀 대치<br>
                            <span>박OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">고려대(안암)<br>
                            의과대학</p>
                        <p class="name">서연고&middot;의치대 전문관<br>
                            <span>박OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">러셀 강남<br>
                            <span>백OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">고려대(안암)<br>
                            의과대학</p>
                        <p class="name">러셀CORE 전주<br>
                            <span>서OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            약학계열</p>
                        <p class="name">러셀 대치<br>
                            <span>서OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            공과대학</p>
                        <p class="name">최상위권 남학생 의대전문관<br>
                            <span>손OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            약학계열</p>
                        <p class="name">러셀 대치<br>
                            <span>송OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">한양대(서울)<br>
                            의예과</p>
                        <p class="name">러셀 대구<br>
                            <span>신OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">경희대(서울)<br>
                            의예과</p>
                        <p class="name">최상위권 남학생 의대전문관<br>
                            <span>심OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">연세대(서울)<br>
                            의예과</p>
                        <p class="name">최상위권 남학생 의대전문관<br>
                            <span>심OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            치의학학석사통합과정</p>
                        <p class="name">러셀 분당<br>
                            <span>안OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">한양대(서울)<br>
                            의예과</p>
                        <p class="name">러셀CORE 광주<br>
                            <span>엄OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">러셀 분당<br>
                            <span>윤OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">러셀 중계<br>
                            <span>이OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            경제학부</p>
                        <p class="name">러셀 대치<br>
                            <span>이OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            정치외교학부</p>
                        <p class="name">러셀 대구<br>
                            <span>임OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">서울대<br>
                            약학계열</p>
                        <p class="name">서연고&middot;의치대 전문관<br>
                            <span>전OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">고려대(안암)<br>
                            의과대학</p>
                        <p class="name">서연고&middot;의치대 전문관<br>
                            <span>전OO</span></p>
                    </div>
                    <div class="swiper-slide">
                        <p class="year">2024학년도</p>
                        <p class="grade">경희대(서울)<br>
                            의예과</p>
                        <p class="name">러셀CORE 대전<br>
                            <span>최OO</span></p>
                    </div>
                </div>
            </div>
            <% End If %>
            
            <% If sCampusCode = "CD0001" Then '대치 %>
            <% Else %>
            <a class="btn" href="<%=btn_url%>" target="_blank"><%=btn_txt%></a>
            <% End If %>
        </div>
    </div>
</div>