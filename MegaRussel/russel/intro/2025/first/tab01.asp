<div class="cont js-cont <%=campusName%>">
    <% If sCampusCode = "INTRO" or sCampusCode = "CD0349" Then '인트로/울산 %>
    <div class="cont01">
        <div class="inner">
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont01_tit.png" alt="" /></p>

            <!--입결 그래프-->
            <div class="result-box">
                <div class="left-box">
                    <p>매년 <br> <strong>전국의 최상위권은 <br> 러셀로</strong> 모이고 있습니다.</p>
                    <div class="stxt">
                        <strong>* HS반은 러셀 모집반 중 최상위권반입니다.</strong> <br>
                        * 2022~2024년 러셀 전체 학원 바른공부 자습전용관 HS반 8월 인원 기준 <br>
                        ( HS반 입학 기준 : 수능 국수영 또는 국수탐(1) 4등급 이내 ) <br>
                        * 학원마다 입학 기준은 상이하며, 각 학원 홈페이지에서 확인하실 수 있습니다.
                    </div>
                </div>
                <div id="right-box" class="right-box bar-graph-top">
                    <img src="<%=Application("img_path_russel")%>/intro/2025/first/cont01_graph.png" alt="그래프" />
                    <div class="word txt01">
                        <img class="" src="<%=Application("img_path_russel")%>/intro/2025/first/cont01_word01.png" alt="말풍선1" />
                        <p>약 <span>1.2배</span> <br> 증가</p>
                    </div>
                    <div class="word txt02">
                        <img class="" src="<%=Application("img_path_russel")%>/intro/2025/first/cont01_word02.png" alt="말풍선2" />
                        <p>약 <span>1.2배</span> <br> 증가</p>
                    </div>
                    <img class="arrow" src="<%=Application("img_path_russel")%>/intro/2025/first/cont01_arrow.png" alt="상승 화살표" />
                </div>
            </div>
            <!--//입결 그래프-->

            <!-- 입결 카운팅 -->
            <div class="result-box">
                <div class="left-box">
                    <p>최근 5년, <br> <strong>가장 어려운 수능</strong>에서<br> <strong>역대 가장 탁월한</strong><br> <strong>입결을 달성</strong>하였습니다.</p>
                    <a href="<%=pass_url%>" class="btn-result">2024학년도 대입 결과 더보기</a>
                </div>
                <div class="right-box">
                    <ul>
                        <li class="top-label">
                            <dl>
                                <dt>서울대 의예과</dt>
                                <dd><strong class="counter" data-count="19">0</strong><span>명<sup>1)</sup></span></dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>메이저 의대</dt>
                                <dd><strong class="counter" data-count="96">0</strong><span>명<sup>2)</sup></span></dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>전국 의예과</dt>
                                <dd><strong class="counter" data-count="745">0</strong><span>명<sup>3)</sup></span></dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>의치한약수</dt>
                                <dd><strong class="counter" data-count="1530">0</strong><span>명<sup>4)</sup></span></dd>
                                <p>경희대 한의예과(인문) 4명</p>
                            </dl>
                        </li>
                        <li class="top-label">
                            <dl>
                                <dt>서울대</dt>
                                <dd><strong class="counter" data-count="253">0</strong><span>명<sup>5)</sup></span></dd>
                                <p>
                                    서울대 경영대학 11명, 서울대 경제학부 17명
                                </p>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>서울대/연세대/고려대</dt>
                                <dd><strong class="counter" data-count="1053">0</strong><span>명<sup>6)</sup></span></dd>
                            </dl>
                        </li>
                    </ul>
                    <div class="info-stxt">
                        <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                        <div class="data-view">
                            1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29기준) <br>
                            2024학년도 서울대 의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀 대전 3명 배출) <br>
                            2) 2020-2024학년도 러셀에서 배출한 메이저 의대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                                2024학년도 메이저 의대 (서울대 의예과 19명, 연세대(서울) 의예과 23명, 성균관대 의예과 7명, 가톨릭대(성의) 의예과 21명, 울산대 의예과 6명, 고려대 의과대학 20명) <br>
                            3) 2020-2024학년도 러셀에서 배출한 전국 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                            4) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-06-11 기준) <br>
                            5) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                            6) 2020-2024학년도 러셀에서 배출한 서울대/연세대/고려대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)  <br>
                            * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024-02-29 기준) <br>
                            ※  본 결과는 최종 합격자를 기준으로 집계하였습니다.
                            
                        </div>
                    </div> 
                </div>
            </div>
            <!-- //입결 카운팅 -->
        </div>
    </div>
    <% Else %>
    <div class="cont01-1">
        <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_tit.png" alt="" /></p>
        <% If sCampusCode = "CD0247" Then '강남 %>
        <div class="inner">
            <!-- style03 --> 
            <div class="result-box style03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="러셀 강남 최상위권 대학 합격자 현황" /></p>
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
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/img_stu_lys.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2023학년도 김OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/img_stu_w.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2022학년도 서OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/img_stu_w.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2021학년도 김OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/img_stu_m.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2020학년도 양지헌 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/img_stu_yjh.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2019학년도 이OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/first/img_stu_w.png" alt="" /></p>
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
                                        + 카이스트, 포항공대<br>
                                        <strong>1,215명</strong>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>       
                </div>
                <div class="info-stxt" style="top:auto; bottom: 70px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준)        
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p class="tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp06">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>68</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">치한수</p>
                            <p class="stu-num"><strong>42</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">약학과</p>
                            <p class="stu-num"><strong>44</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">과학기술원</p>
                            <p class="stu-num"><strong>13</strong>명</p>
                            <span class="txt">*카이스트 6명 포함*</span>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp06">
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>21</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">연세대</p>
                            <p class="stu-num"><strong>54</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">고려대</p>
                            <p class="stu-num"><strong>64</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">교대 외<br>특수 대학</p>
                            <p class="stu-num"><strong>43</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">최상위권<br>주요대학</p>
                            <p class="stu-num"><strong>926</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">*러셀 목동 2022-2024학년도 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 포함, 단과 수강생 미포함)</span>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
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
                            <p class="stu-tit"><span>서성한</span></p>
                            <p class="stu-num"><strong>52</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>중경외시</span></p>
                            <p class="stu-num"><strong>52</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>특성화대</span></p>
                            <p class="stu-num"><strong>6</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">*2024 러셀 평촌 바른공부 자습전용관 재원생 기준</span>
                </div> 
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="러셀CORE 광주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황" /></p>
                <p class="stit">광주지역 재학생 <span>수석 배출</span></p>
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
                            <p class="stu-tit">메디컬<br>
                                <span>(의/치/한/수/약)</span></p>
                            <p class="stu-num"><strong>119</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서연고</p>
                            <p class="stu-num"><strong>28</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 64px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준)<br>
                        (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                        *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                        *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <div class="style02-inner">
                    <ul class="num-list tp09">
                        <li>
                            <p class="stu-tit">2년 연속</p>
                            <p class="stu-num"><strong>서울대학교 의예과</strong><br> <span>합격생 배출</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">2년 연속</p>
                            <p class="stu-num">
                                <span>대전 지역</span> <strong>최상위권</strong> <br>
                                <strong>입결 1위</strong>
                            </p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도</p>
                            <p class="stu-num"><span>메이저 의예</span> <strong>7명</strong></p>
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
                            <p class="stu-tit">서울대 의예</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의예</p>
                            <p class="stu-num"><strong>7</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">전국 의예과</p>
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
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2024-03-05 기준<br>
                        ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                        ※ 최상위권: 메디컬(의/치/한/약/수) + SKY<br>
                        ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예<br>
                        ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                        (홈페이지 대입 실적 기준/2024-03-05 기준)
                                   
                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="러셀 영통 2020~2024학년도 합격자 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp05">
                        <li style="width:164px;">
                            <p class="stu-tit">의&middot;치&middot;한&middot;수&middot;약</p>
                            <p class="stu-num"><strong>219</strong><span>명</span></p>
                        </li>
                        <li style="width:164px;">
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>63</strong><span>명</span></p>
                        </li>
                        <li style="width:164px;">
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>250</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt50 tp08">
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
                <div class="info-stxt" style="top:auto; bottom: 90px; right:100px;">
                    <span class="info-color">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2024.02.29 기준)</span>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp07">
                        <li>
                            <p class="stu-tit"><span>의예과</span></p>
                            <p class="stu-num"><strong>11</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>서울대</span></p>
                            <p class="stu-num"><strong>14</strong><span>명</span></p>
                        </li>
                    </ul>       
                    <ul class="num-list tp08">
                        <li>
                            <p class="stu-tit"><span>의치한수약</span></p>
                            <p class="stu-num"><strong>27</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>서연고</span></p>
                            <p class="stu-num"><strong>40</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>서성한이</span></p>
                            <p class="stu-num"><strong>34</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>중경외시</span></p>
                            <p class="stu-num"><strong>44</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 90px; right:112px;text-align: right;">
                    <span class="info-color">
                        *2024학년도 러셀 중계 바른공부자습전용관 재원생 기준 <br>
                        *중복대학 합격자수 포함 (2024년 3월 7일 기준)
                    </span>
                </div> 
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p class="tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp06">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>47</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">치/한/약/수</p>
                            <p class="stu-num"><strong>34</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">서연고</p>
                            <p class="stu-num"><strong>34</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">서성한이</p>
                            <p class="stu-num"><strong>54</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">중경외시</p>
                            <p class="stu-num"><strong>36</strong>명</p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp06">
                        <li>
                            <p class="stu-tit">건동홍숙</p>
                            <p class="stu-num"><strong>18</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">이공계특성화</p>
                            <p class="stu-num"><strong>7</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">경찰대&middot; <br> 사관학교</p>
                            <p class="stu-num"><strong>34</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">교원&middot;<br>교육대</p>
                            <p class="stu-num"><strong>7</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">부산대&middot;<br>경북대</p>
                            <p class="stu-num"><strong>88</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">※ 러셀 센텀학원 바른공부 자습전용관 재원생 24학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)</span>
                </div>
            </div>

            <div class="result-box style02">
                <p class="tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt02.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp06">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>223</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">치/한/약/수</p>
                            <p class="stu-num"><strong>159</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">서연고</p>
                            <p class="stu-num"><strong>161</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">서성한이</p>
                            <p class="stu-num"><strong>219</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">중경외시</p>
                            <p class="stu-num"><strong>204</strong>명</p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp06">
                        <li>
                            <p class="stu-tit">건동홍숙</p>
                            <p class="stu-num"><strong>93</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">이공계특성화</p>
                            <p class="stu-num"><strong>27</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">경찰대&middot;<br>사관학교</p>
                            <p class="stu-num"><strong>16</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">교원&middot;<br>교육대</p>
                            <p class="stu-num"><strong>46</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">부산대&middot;<br>경북대</p>
                            <p class="stu-num"><strong>322</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span class="info-color">※ 러셀 센텀학원 바른공부 자습전용관 재원생 20~24학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)</span>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
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
                <div class="style02-inner mt80">
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
                    <ul class="num-list mt60 tp05">
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
                <div class="info-stxt" style="top:auto; bottom: 70px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준 <br>
                        ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준 <br>
                        ※ 최종 업데이트 : 2024-02-28                        
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
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
                            <p class="stu-num"><strong>9</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 80px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생(복수대학 합격자 포함, 단과 수강생 제외)               
                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp10">
                        <li>
                            <p class="stu-tit">
                                2024학년도<br>
                                인천&middot;부천지역 <br>
                                최상위권 입결
                            </p>
                            <p class="stu-num"><strong class="fz50">1</strong><span>위</span></p>
                        </li>
                        <li>
                            <p class="stu-stit">
                                2024학년도 수능 <br>
                                의약학계열 합격
                            </p>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong class="fz50">50</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-stit">
                                2024학년도수능 <br>
                                서울대&middot;연세대&middot;고려대 합격
                            </p>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong class="fz50">56</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 78px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        *합격자 : 수시/정시 최종발표 인원(2023년 바른공부 자습전용관 재원생 기준) <br>
                        *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결                                    
                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p class="tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp06">
                        <li>
                            <p class="stu-tit">연세대 의예</p>
                            <p class="stu-num"><strong>3</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">고려대 의예</p>
                            <p class="stu-num"><strong>1</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">의예과</p>
                            <p class="stu-num"><strong>46</strong>명</p>
                        </li>
                    </ul>
                    <ul class="num-list mt40 tp06">
                        <li>
                            <p class="stu-tit">치&middot;한&middot;수&middot;약</p>
                            <p class="stu-num"><strong>37</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>18</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">서성한이<br>과기원</p>
                            <p class="stu-num"><strong>31</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="top:auto; bottom: 90px; right:165px;">
                    <span class="info-color">
                        ※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.) <br>
                        ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 <br>
                        (홈페이지 대입 실적 기준)
                    </span>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp09">
                        <li>
                            <p class="stu-tit">개원 첫해</p>
                            <p class="stu-num"><strong>메이저 의대</strong> <br> 합격생 배출</p>
                        </li>
                        <li>
                            <p class="stu-tit">개원 첫해</p>
                            <p class="stu-num">전국 의예과 합격생 <br> <strong>21명</strong> 배출</p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num">의/치/한/약/수 <strong>42명</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2024학년도 최종합격</p>
                            <p class="stu-num">SKY <strong>10명</strong></p>
                        </li>
                    </ul>
                </div>
                <div class="style02-inner mt50">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">울산대 의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서울대 치의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">전국 의예</p>
                            <p class="stu-num"><strong>21</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt40 tp05">
                        <li>
                            <p class="stu-tit">메디컬 <br>(의/치/한/약/수)</p>
                            <p class="stu-num"><strong>42</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>10</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서성한이</p>
                            <p class="stu-num"><strong>33</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tar" style="top:auto; bottom: 90px; right:100px;">
                    <span class="info-color">
                        ※ 최종 업데이트 : 2024-03-07 <br>
                        ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                        ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예                        
                    </span>
                </div> 
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="2023 개원 첫 해, 놀라운 입시 결과로 최상위권을 증명하다!" /></p>
                <div class="style02-inner">
                    
                    <ul class="num-list tp06">
                        <li>
                            <p class="stu-tit">서울대 의예</p>
                            <p class="stu-num"><strong>4</strong>명</p>                           
                        </li>
                        <li>
                            <p class="stu-tit">연세대 의예</p>
                            <p class="stu-num"><strong>3</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의예</p>
                            <p class="stu-num"><strong>9</strong>명</p>
                            <span class="txt">(서울대, 연세대, 성균관대,<br>가톨릭대, 울산대 기준)</span>
                        </li>
                        <li>
                            <p class="stu-tit">전국 의예</p>
                            <p class="stu-num"><strong>116</strong>명</p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp06">
                        <li>
                            <p class="stu-tit">치&middot;한&middot;수&middot;약학</p>
                            <p class="stu-num"><strong>116</strong>명</p>                           
                        </li>
                        <li>
                            <p class="stu-tit">서&middot;연&middot;고</p>
                            <p class="stu-num"><strong>73</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">서성한이 <br>과학기술원</p>
                            <p class="stu-num"><strong>88</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">경북대</p>
                            <p class="stu-num"><strong>117</strong>명</p>
                            <span class="txt">(*의약학계열 44명)</span>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tar" style="top:auto; bottom: 90px; right:182px;">
                    <span class="info-color">*2023년 러셀 대구 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)
                    </span>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0001" Then '대치 %>
        <div class="inner">
            <!-- style01 -->
            <div class="result-box style01">
                <p class="tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
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
                <ul class="num-list mt50 tp02">
                    <li>
                        <p class="mt10">2024 대입<i>4)</i><br>
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
                        <p class="mt10">2024 대입<i>4)</i><br>
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
                        <p class="mt10">2024 대입<i>4)</i><br>
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
                <div class="info-stxt" style="top:auto; bottom: 90px; right:71px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="" /></i></span>
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
        </div>
        <% ElseIf sCampusCode = "CD0244" Then '분당 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt01.png" alt="" /></p>
                
                <div class="style02-inner">
                    <ul class="num-list tp11">
                        <li>
                            <p class="stu-num"><strong>974</strong><span>명</span> 합격</p>
                        </li>
                    </ul>
                </div>
                <div class="style02-inner">
                    <ul class="num-list tp07">
                        <li>
                            <p class="stu-tit">수능만점자</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서울대 의예</p>
                            <p class="stu-num"><strong>9</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의대</p>
                            <p class="stu-num"><strong>44</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">의예</p>
                            <p class="stu-num"><strong>231</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list tp07 mt40">
                        <li>
                            <p class="stu-tit">메디컬</p>
                            <p class="stu-num"><strong>437</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>116</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">연세대</p>
                            <p class="stu-num"><strong>218</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">고려대</p>
                            <p class="stu-num"><strong>200</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>

                <p class="mt90"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont01-1_txt02.png" alt="2024학년도 최상위권 입결" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp03">
                        <li>
                            <p class="stu-tit">메이저 의예<sup>3)</sup></p>
                            <p class="stu-num"><strong>13</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">의예</p>
                            <p class="stu-num"><strong>48</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">치의예</p>
                            <p class="stu-num"><strong>17</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">한의예</p>
                            <p class="stu-num"><strong>15</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">약학</p>
                            <p class="stu-num"><strong>32</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">수의예</p>
                            <p class="stu-num"><strong>15</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list tp03">
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>31</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">카이스트</p>
                            <p class="stu-num"><strong>6</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">연세대</p>
                            <p class="stu-num"><strong>47</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">고려대</p>
                            <p class="stu-num"><strong>45</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">성&middot;서&middot;한&middot;이</p>
                            <p class="stu-num"><strong>98</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                            <p class="stu-num"><strong>104</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>

                <div class="info-stxt" style="top:auto; bottom: 90px; right:139px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        러셀 분당 20~24학년도 바른공부 자습전용관 재원생만을 대상으로 한 결과 (단과만 수강생 미포함, 중복 대학 합격자 포함)<br>
                        
                        1) 홈페이지에 입시 결과를 공개한 분당 지역 학원 중 의치한약수+SKY 합격생 수 기준<br>
                        2) 최상위권 대학(의예, 치의예, 한의예, 약학, 수의예, 서울대, 연세대, 고려대)<br>
                        3) 메이저 의예(서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대)

                    </div>
                </div>    
            </div>
        </div>
        <% End if %>
    </div>
    <% End if %>
    <div class="cont02">
        <div class="inner">
            <% If sCampusCode = "CD0250" Then '부천 %>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/cont02_tit.png" alt="" /></p>
            <% Else %>
            <p data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/first/cont02_tit.png" alt="" /></p>
            <% End if %>
            <% If sCampusCode = "INTRO" or sCampusCode = "CD0001" or sCampusCode = "CD0349" Then '인트로/대치/울산 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 의예과 합격</b>
                        <strong>러셀 기숙(남-의대관) 심민준</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2024 6평</th>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>2</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p><strong>담임선생님</strong>께서는 굉장히 친절하시고 제가 공부에만 집중할 수 있도록 도와주셨습니다. 상담할 때에도 <strong>심리적으로 안정을 찾거나 앞으로의 큰 계획을 세우는 데에 도움을 많이 주셨습니다.</strong> 덕분에 1월부터 수능까지 안정적으로 공부할 수 있었습니다.</p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2023</span> <br>
                        <b>연세대학교 의예과 합격</b>
                        <strong>러셀 센텀 김민재</strong> <span class="sub-txt">(재원기간 2022년 1월~2022년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2023 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2022 수능</th>
                                <td>2</td>
                                <td>1</td>
                                <td>2</td>
                                <td>3</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            “최대한 많은 양을 정확하게” 공부하는 것이 수험생의 기본자세라고 생각합니다. 입시가 고도화됨에 따라 풀어야 할 자료가 매우 많기
                            때문에 <strong>겨울부터 빠르게 개념을 정리했고, 이것이 안정감 있는 수험생활을 보내는 데 주효</strong>했습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>국수영 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>이화여자대학교 의예과 합격</b>
                        <strong>러셀 목동 임세린</strong> <span class="sub-txt">(재원기간 2023년 2월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>1</td>
                                <td>3</td>
                                <td>3</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            바자관의 장점은 충분한 학습시간이 확보된다는 것입니다. <strong>원하는 단과 수업을 수강할 수 있고, 한 건물 내에 있어 이동시간이 많이 필요하지 않아 제가 원하는 만큼의 충분한 학습</strong>을 할 수 있었습니다. 표준 시간표 덕분에 수능처럼 모의고사를 풀 수 있었던 것도 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>전남대학교 의예과 합격</b>
                        <strong>러셀 기숙(남-의대관) 이상문</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>1</td>
                                <td>2</td>
                                <td>2</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            <strong>바자관의 자습 총 시간이 밖에서 공부할 때의 시간에 비해 많았고</strong>
                            정해진 시간표대로 꾸준히 공부할 수 있다는 점이 좋았습니다. 또한
                            <strong>바자관의 면학분위기 덕에</strong> 다른 생각을 하다가도 옆에서 공부하고
                            있는 친구들을 보며 다시 <strong>집중할 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>전북대학교 의예과 합격</b>
                        <strong>러셀CORE 전주 최희민</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>2</td>
                                <td>2</td>
                                <td>1</td>
                                <td>5</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <P>
                            수험생활에서 가장 중요시한 것은 바로 루틴이었는데 이러한 관점에서 보았을 때 바자관의 가장 큰 장점은 표준 시간표였다고 생각합니다.
                            <strong>수능 시간표에 맞춰서 공부한 경험이 집중력을 올려주고 공부 리듬을 설정하고 또 루틴을 만드는 데에 큰 도움</strong>이 되었습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2023</span> <br>
                        <b>전북대학교 의예과 합격</b>
                        <strong>러셀CORE 광주 김준표</strong> <span class="sub-txt">(재원기간 2022년 1월~2022년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2023 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2022 수능</th>
                                <td>2</td>
                                <td>3</td>
                                <td>1</td>
                                <td>3</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <P>
                            <strong>재수를 결심하고 중요한 것은 수능 학습의 감각을 잃지 않는 것</strong>이라 생각하였고, 빠르게 공부에 집중하기 위해 우선선발반을 선택했습니다. <strong>1~2월을 학습 예열의 기간으로 삼았고, 이것이 3월부터 본격적인 공부를 하면서 집중력을 유지할 수 있는 원동력</strong>이 되어주었습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span> <br> 합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2023</span> <br>
                        <b>을지대학교 의예과 합격</b>
                        <strong>러셀 대전 김우찬</strong> <span class="sub-txt">(재원기간 2022년 1월~2022년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2023 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2022 수능</th>
                                <td>3</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            <strong>시간적 여유를 갖고 개념부터 다시 쌓고자 대입을 일찍 시작</strong>하게 되었습니다. 대입을 일찍 시작하니 공부 방향이나 계획을 수정하는 데
                            있어서 시간에 쫓기지 않을 수 있었던 것 같습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>국수탐 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>경희대학교 치의예과 합격</b>
                        <strong>러셀 분당 윤현진</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>3</td>
                                <td>2</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p><strong>바자관의 장점은 개방형 구조</strong>입니다. 자습시간 뿐만 아니라 쉬는 시간이나 식사 시간에도 <strong>열심히 공부하는 주변 친구들을 보며 자극을 받아 더욱 열정적으로 공부할 수 있었습니다.</strong> 또한 공부하다가 피곤할 때는 스탠딩 책상을 활용하여 집중력을 유지할 수 있었습니다.</p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>국수영 <br> <span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 경제학부 합격</b>
                        <strong>러셀 강남 백경도</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>3</td>
                                <td>2</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p><strong>담임선생님께서는</strong> 매달 응시하는 모의고사 후 <strong>어떻게 개선할까를 함께 고민하는 쪽으로 대해 주셔서 좋았습니다.</strong> 여러 입시 데이터를 바탕으로 <strong>제 맞춤형의 정확한 조언을 들을 수 있었습니다.</strong></p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span> <br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2023</span> <br>
                        <b>서울대학교 경제학부 합격</b>
                        <strong>러셀 센텀 안정후</strong> <span class="sub-txt">(재원기간 2022년 2월~2022년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2023 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                            </tr>
                            <tr>
                                <th>2022 수능</th>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>1</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            새롭게 미적분을 선택하여 배우기 시작했기 때문에, <strong>빠르게 남들을
                            따라잡고 싶어 대입을 일찍 시작하게 되었습니다.</strong> 바자관은 탁 트인
                            개방형 구조이기 때문에 혼자가 아닌, 함께 공부한다는 느낌이 들고
                            다른 친구들을 보며 경쟁심이 생겨 더욱 열심히 공부할 수 있습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0247" Then '강남 %>
            <ul class="review-list style03">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 경제학부 합격</b>
                        <strong>러셀 강남 백경도</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/review_graph01.jpg" alt="" /></p>
                    <div class="d-box">
                        <P>
                            입시 정보 지원이 있어 좋았습니다. 승강반 제도도 노릴 만합니다.
                            시험지를 들고 검사받는 분위기를 만들기보다는 <strong>어떻게 개선할지 함께 고민</strong>하는 쪽으로 대해 주셔서 좋았습니다.
                            여러 데이터를 바탕으로 제 <strong>맞춤형의 정확한 조언</strong>을 들을 수 있었습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>백분위 <br> <span>35점 상승</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>고려대학교 신소재공학부 합격</b>
                        <strong>러셀 강남 진예인</strong> <span class="sub-txt">(재원기간 2023년 2월~2023년 수능까지)</span>
                    </p>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/review_graph02.jpg" alt="" /></p>
                    <div class="d-box">
                        <P>
                            충분한 자습시간을 확보하기 위해 러셀을 선택했던 저는 일주일의 스케줄을 저 스스로 계획하고 공부할 수 있다는 점이 가장 좋았습니다.
                            제가 <strong>원하는 시간에 자습하고, 듣고 싶은 선생님의 수업을 골라 들을 수 있다는 것만으로도 큰 장점</strong>이라 생각합니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>백분위<br><span>46점 상승</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 심리학과 합격</b>
                        <strong>러셀 강남 류지웅</strong> <span class="sub-txt">(재원기간 2023년 2월~2023년 수능까지)</span>
                    </p>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/review_graph03.jpg" alt="" /></p>
                    <div class="d-box">
                        <p>
                            <strong>각종 공개특강이 자주 열리는 것이 유익</strong>했습니다.
                            수학에 많은 시간을 써야 하는 저로서는 다른 과목 강좌를 수강하기는 부담스러웠는데 공개특강에 참석해서 <strong>선생님들의 풀이법이나 각종 팁을 배우고 부족하면 따로 상담 신청까지 드릴 수 있는 시스템</strong>이 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>치의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>강릉원주대학교 치의예과 합격</b>
                        <strong>러셀 강남 김OO</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/first/review_graph04.jpg" alt="" /></p>
                    <table class="tbl-01" style="margin-top: 21px;">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>3</td>
                                <td>2</td>
                                <td>2</td>
                                <td>3</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <ul class="review-list style02">
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_kch.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/49404108')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>연세대학교 간호학과 합격</b>
                            <strong>러셀 목동 김채현</strong>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>3</td>
                                <td>1</td>
                                <td>3</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            바른공부 자습전용관의 <strong>개방형 구조는 주변 친구들이 열심히 공부하는 모습을 보며 마음을 다잡을 수 있다는 점이 좋았습니다.</strong>
                            또한 바자관 안에서 면학분위기를 흐리는 학생이 있는 경우에는 <strong>담임선생님께서 바로 잡아주시며 좋은 면학분위기가 꾸준히 유지될 수 있도록 해주셨습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_isr.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/49403069')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>이화여자대학교 의예과 합격</b>
                            <strong>러셀 목동 임세린</strong>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>1</td>
                                <td>3</td>
                                <td>3</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            바자관의 장점은 <strong>충분한 학습시간이 확보된다는 것입니다.</strong> 원하는 단과 수업을 수강할 수 있어 <strong>원하는 만큼의 학습을 할 수 있었습니다.</strong>
                            표준 시간표 덕분에 <strong>수능 당일처럼 모의고사를 풀 수 있던 점</strong>도 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_psw.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/51432614')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>고려대학교 <br> 화공생명공학과 합격</b>
                            <strong>러셀 목동 박상원</strong>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>1</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <P>
                           <strong> 담임선생님과 입시 정보나 학습 관련해서 상담</strong>을 많이 했는데 저의 상황에 맞춰서 여러 조언을 해주셔서 <strong>저에게 맞는 공부법을 찾을 수 있었습니다.</strong>
                            또한 담임선생님과 이야기를 하면서 <strong>멘탈 회복을 하여 다시 공부에 집중할 수 있었습니다.</strong>
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_ysw.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/49403729')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>전남대학교 약학과 합격</b>
                            <strong>러셀 목동 유성우</strong>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>3</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>3</td>
                                <td>5</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <P>
                            러셀 목동 자습관 시스템 중 <strong>더 프리미엄 모의고사를 통해 매월 자신의 실력을 점검</strong>해 보고, <strong>시험 결과에 따른 승강반 제도를 통해 더 열심히 공부해야겠다는 동기부여</strong>를 받을 수 있었습니다.
                        </P>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>경북대학교 의예과 합격</b>
                        <strong>러셀 평촌 홍OO</strong> <span class="sub-txt">(재원기간 2023년 6월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2024 6평</th>
                                <td>2</td>
                                <td>1</td>
                                <td>1</td>
                                <td>2</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style02">
                        <p>
                            저는 파이널 기간에 실전 모의고사를 보면 단순 계산 실수, 발문 오독 등 자잘한 실수들이 계속 발생해서 스트레스를 많이 받았었는데,
                            이 문제에 대해 <strong>담임선생님과 상담하며 해결책을 찾은 것이 점수 향상에 큰 도움</strong>이 되었습니다.
                            그뿐만 아니라 공부 방향에 대해 의구심이 들 때 담임선생님께 여쭤보면 아낌없는 격려와 조언을 해주셔서 수능까지 정신적으로 흔들리지 않고 공부에만 집중할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 아동가족학과 합격</b>
                        <strong>러셀 평촌 한OO</strong> <span class="sub-txt">(재원기간 2023년 4월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2024 6평</th>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style02">
                        <p>
                            수능을 한 달 남겼을 때 <strong>크게 지쳤던 적이 있는데 이때 담임선생님 덕분에 빨리 극복할 수 있었습니다.</strong>
                            6월 대비 제가 얼마나 많이 성장했는지 말씀해 주시고 응원해 주신 덕에 마지막 한 달을 다시 힘내서 달릴 수 있었습니다.
                            또한 <strong>원서 접수 때에도 지속적으로 정보를 제공해 주신 덕에 확신을 갖고 원서 접수를 할 수 있었고</strong> 결과적으로 후회 없이 입시를 마칠 수 있게 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 화공생명공학과 합격</b>
                        <strong>러셀 평촌 이OO</strong> <span class="sub-txt">(재원기간 2023년 3월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2024 6평</th>
                                <td>2</td>
                                <td>1</td>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style02">
                        <p>
                            <strong>담임선생님께서</strong> 매달 보는 더 프리미엄 모의고사와 평가원 모의평가를 토대로 <strong>입시 상담을 해주셨는데,
                            부족한 점이나 더 메꿔야 할 부분을 혼자 생각하지 못하는 부분까지 꼼꼼하게 알려주셔서 많은 도움</strong>이 되었습니다.
                            또한 특정 과목에 편향된 공부를 할 때 바로잡아 주셔서 균형 있는 공부를 할 수 있었습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>고려대학교 자유전공학부 합격</b>
                        <strong>러셀 평촌 조OO</strong> <span class="sub-txt">(재원기간 2023년 3월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>3</span></td>
                            </tr>
                            <tr>
                                <th>2024 6평</th>
                                <td>2</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style02">
                        <p>
                            목표 대학에 대한 생각보다는 당장 해야 하는 공부에 집중한 것이 멘탈 관리에 큰 도움이 되었습니다.
                            목표를 계속 상기시키면 동기부여가 된다는 장점도 있지만 그것이 부담으로 다가올 수도 있기 때문에,
                            일주일 단위로 단기 목표를 세워서 눈앞에 보이는 할 일들에 조금 더 집중했던 것 같습니다. 
                            이렇게 <strong>학습에 필요한 목표를 설정하고 그것을 완수하는 데 있어 담임선생님께서 지속적으로 관심을 가져주신 것이 많은 도움</strong>이 되었습니다.                            
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <ul class="review-list style02">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_ktw.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48188348')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>동국대학교 한의예과 합격</b>
                            <strong>러셀CORE 광주 권태완</strong> <br>
                            <span class="sub-txt">(재원기간 : 2023년 3월 ~ 2023년 수능까지)</span>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01" style="height: 243px;">
                        <p>
                            바른공부 자습전용관과 가까운 거리에 강의실이 있다는 점은 확실한 장점으로 다가왔습니다. <strong>이동에 낭비하는 시간이 없도록</strong> 도움을 주었습니다.
                            또한 <strong>검증된 강사진의 퀄리티 높은 콘텐츠는</strong> 실력 향상에 큰 도움을 주었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>연세대</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_lsj.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48188913')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>연세대학교 <br> 화공생명공학과 합격</b>
                            <strong>러셀CORE 광주 이석준</strong> <br>
                            <span class="sub-txt">(재원기간 : 2023년 2월 ~ 2023년 수능까지)</span>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>2</td>
                                <td>1</td>
                                <td>4</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            <strong>담임선생님께서 언제나 친절하게 고민이 있으면 상담해 주시고,</strong>
                            고민이 없어도 주기적으로 학생들을 불러 원내 생활이 괜찮은지 물어보며 <strong>학생들을 진지하게 케어해 주셔서 힘든 수험기간 동안 큰 힘이 되었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_ksy.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/50967562')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>조선대학교 의예과 합격</b>
                            <strong>러셀CORE 광주 김시영</strong>
                            <span class="sub-txt">(재원기간 : 2023년 2월~2023년 수능까지)</span>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>3</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 9평</th>
                                <td>1</td>
                                <td>2</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <P>
                            혼자서 모의고사를 보면 현장감이 떨어져서 긴장이 되지 않는데 매달마다 <strong>학원생들 전체가 모의고사를 응시하여 현장감을 느낄 수 있었습니다.</strong>
                            함께 본 모의고사 덕분에 실제 수능 날에는 긴장하지 않고 시험에 응시할 수 있었습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_kny.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/50967672')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>조선대학교 의예과 합격</b>
                            <strong>러셀CORE 광주 김나연</strong> <br>
                            <span class="sub-txt">(재원기간 : 2023년 2월 ~ 2023년 수능까지)</span>
                        </p>
                    </div>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                            </tr>
                            <tr>
                                <th>2023 6평</th>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>2</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <P>
                            수업에는 따로 조교 선생님들이 계셔서 <strong>질문이나 상담을 할 수 있었는데 이 점이 가장 만족스러웠습니다.</strong>
                            덕분에 실전에 도움이 되는 팁들을 많이 얻을 수 있었고 수능 때도 유용하게 쓸 수 있었습니다.
                        </P>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <ul class="review-list style02">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_hgh.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/49682721')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>충남대학교 의예과 합격</b>
                            <strong>러셀 대전 허관훈</strong>
                        </p>
                    </div>
                    <div class="d-box style03 style01">
                        <p>
                            <strong>러셀 대전에서는 오로지 수능 공부에만 집중할 수 있어서 좋았습니다.</strong>
                            수능시간에 최적화된 표준 시간표, 정말 열심히 수능 공부에 임하는 친구들 그리고 진심으로 대해주시는 선생님들 덕분에 최고의 수험생활을 보냈습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_hts.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48232680')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>순천향대학교 의예과 합격</b>
                            <strong>러셀 대전 하태솔</strong> <br>
                            <span class="sub-txt">(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            <strong>일찍 재수를 시작하니 미리 규칙적으로 시간에 맞춰 공부할 수 있는 습관을 들일 수 있어서 좋았습니다.</strong>
                            더불어 담임선생님께서 꾸준히 관리해 주시는 덕분에 마음이 풀어지지 않고 수능까지 열심히 공부할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_yhs.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48592152')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>가톨릭대학교 의예과 합격</b>
                            <strong>러셀 대전 윤훈석</strong>
                        </p>
                    </div>
                    <div class="d-box style03 style01">
                        <p>
                            <strong>개방감과 폐쇄성의 적절한 조화가 바자관의 큰 장점이라고 생각합니다.</strong>
                            바자관의 통유리창 덕분에 다른 친구들이 공부하는 모습을 보고 동기부여를 받을 수 있었고, 수납공간과 책상의 격벽이 본인의 공간을 확실히 구분해 주어 방해받지 않고 학습에 집중할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_jhb.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/49682755')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>충남대학교 의예과 합격</b>
                            <strong>러셀 대전 조한별</strong> <br>
                            <span class="sub-txt">(재원기간 : 2022년 8월 ~ 2023년 수능까지)</span>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            <strong>바자관의 면학분위기가 좋았습니다.</strong> 혼자 공부하거나 집에서 공부하게 되면 집중도가 떨어지게 됩니다.
                            러셀 대전에서는 공부에만 집중할 수 있는 환경을 만들어 주어 자연스레 공부 습관이 잡히게 되었습니다. 절제력이 부족한 저에겐 최고의 학습 환경이었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_kwc.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/34135695')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2023</span> <br>
                            <b>을지대학교 의예과 합격</b>
                            <strong>러셀 대전 김우찬</strong> <br>
                            <span class="sub-txt">(재원기간 : 2022년 1월 ~ 2022년 수능까지)</span>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                           <strong>시간에 쫓기지 않고 공부를 할 수 있어서 좋았습니다.</strong> 시간적 여유를 갖고 개념부터 다시 쌓고자 재수를 일찍 시작했습니다.
                            재수를 일찍 시작한 만큼 공부 방향이나 계획을 수정하는 데 있어서 시간적 여유가 있었고, 체계적이고 전략적으로 수능을 준비할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_kgh.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/35186314')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2023</span> <br>
                            <b>충북대학교 의예과 합격</b>
                            <strong>러셀 대전 김경호</strong> <br>
                            <span class="sub-txt">(재원기간 : 2022년 1월 ~ 2022년 수능까지)</span>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            <strong>빠르게 시작했기에 성공적으로 수험생활을 마무리할 수 있었습니다.</strong> 모든 과목을 개념부터 다시 공부하기 위해 일찍 재수를 시작했습니다.
                            일찍 시작하니 개념과 기출문제를 여유 있게 끝낼 수 있었고, 새로운 문제 유형을 충분히 접해볼 수 있는 시간을 확보할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_lss.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/34135553')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2023</span> <br>
                            <b>연세대학교(미래) <br> 의예과 합격</b>
                            <strong>러셀 대전 이승섭</strong> <br>
                            <span class="sub-txt">(재원기간 : 2022년 1월~2022년 수능까지)</span>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <P>
                            <strong>일찍 시작한 만큼 탄탄한 기본기를 다질 수 있어서 좋았습니다.</strong> 더 많은 공부시간 확보를 위해 새해가 되자마자 러셀CORE 대전에서 공부를 시작했습니다.
                            1월에 부족했던 개념을 다시 다져놓아 수험생활 동안 개념에 구멍이 생기지 않았고, 원하는 목표를 이룰 수 있었습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_nyc.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/35186151')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2023</span> <br>
                            <b>서울대학교 <br> 전기정보공학부 합격</b>
                            <strong>러셀 대전 노유찬</strong> <br>
                            <span class="sub-txt">(재원기간 : 2022년 7월 ~ 2022년 수능까지)</span>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <P>
                            <strong>불필요한 수업은 줄이고 자습시간은 극대화할 수 있어서 좋았습니다.</strong>
                            또한 탁 트인 개방형 구조의 바자관에서 공부하면서 최상위권 학생들에게 동기부여 받을 수 있었고, 최적의 면학분위기를 위해 항상 노력해 주시는 담임선생님 덕분에 쾌적하게 공부할 수 있었습니다.
                        </P>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <ul class="review-list style02">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의과대학</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_osj.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48584694')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>고려대학교 의과대학 합격</b>
                            <strong>러셀 영통 오서준</strong>
                        </p>
                    </div>
                    <div class="d-box style01 style04">
                        <p>
                            <strong>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다.</strong>
                            모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 더 <strong>현장감 있기에, 러셀의 표준 시간표에 맞추어 공부하였습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>치의학</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_cjw.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48964346')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>서울대학교 <br> 치의학학석사통합과정 합격</b>
                            <strong>러셀 영통 최지원</strong> <br>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            <strong>학습 동선을 최소화하는 것</strong>이 큰 도움이 되었습니다.  또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다.</strong>
                            모의고사 이후 성적 분석을 토대로 한 상담은 학습 방향을 잡는 데에 도움이 되었습니다. 또한 정확한 수치를 근거로 입시에 대한 구체적인 정보를 알려주셔서 원서 접수에도 도움이 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_ojh.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48584747')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>전북대학교 의예과 합격</b>
                            <strong>러셀 영통 오준학</strong>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            바자관의 장점은 <strong>표준 시간표와 전용 와이파이</strong> 입니다.
                            항상 자습시간이 정해져 있다 보니 딴 곳으로 잘 새지 않고 <strong>자습시간을 확보할 수 있으며 자습시간 동안에도 딴짓하지 않고 공부에만 집중</strong>할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_pwy.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/50089650')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>영남대학교 의예과 합격</b>
                            <strong>러셀 영통 박우영</strong> <br>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            바자관의 장점은 <strong>개방형 구조</strong>라고 생각합니다.
                            다른 학생들과 적당한 거리로 떨어져 있어서 부담스럽지도 않았고, <strong>집중이 안 될 때 주변 학생들이 공부하고 있는 모습을 보면 ‘나도 다시 열심히 해야겠다.’</strong>라는 생각이 들어서 좋았습니다.
                            또한 <strong>시간표가 수능 시간표와 비슷한 것이 습관 형성</strong>에 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>치의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_wth.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48964415')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>전북대학교 치의예과 합격</b>
                            <strong>러셀 영통 우태현</strong> <br>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            바자관의 장점 중 하나는 <strong>개방형 구조</strong>입니다. 또한, <strong>러셀의 체조 시스템</strong>도 좋았습니다.
                            추가로 <strong>바자관 내에 공기청정기과 온도계를 상시 가동</strong>하여 쾌적한 환경에서 공부를 할 수 있었던 것도 좋았습니다.
                            <strong>재수 초반에 멘탈적으로 지칠대로 지쳐있었고</strong> 이런 상황에 <strong>가장 큰 힘이 되어주셨던건 담임선생님</strong>이라고 생각합니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>치의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_lsm.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/48584485')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>원광대학교 치의예과 합격</b>
                            <strong>러셀 영통 이수민</strong> <br>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            <strong>심야자습제도가 가장 좋았습니다.</strong>
                            10시에 학원이 끝나서 바로 집에 가면 집중력이 흐트러지고 수업 복습을 안 하게 되는데 학원이 끝나고 바로 바자관에 가서 복습하면 집중력이 흐트러지지 않고 12시까지 공부를 할 수 있었습니다.
                            또한 <strong>벌점제도를 통해 나태해지지 않고 끝까지 달릴 수 있었던 것 같습니다.</strong>
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 약학과 합격</b>
                        <strong>러셀 중계 김규리</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            수능을 다시 준비하던 중에 슬럼프가 좀 세게 왔었는데,
                            담임선생님께서 저에게 맞는 슬럼프 극복법을 조언해 주셔서 도움이 많이 되었습니다.
                            또한 빠르게 변하는 입시체제에서 제가 <strong>어느 방향으로 공부하는 것이 좋을지  끊임없이 함께 고민해 주시고, 구체적인 방법을 제안해 주셔서 의지가 많이 되었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 간호학과 합격</b>
                        <strong>러셀 중계 구도경</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            바자관의 장점은 <strong>쾌적한 환경</strong>입니다.
                            바자관에서 공부하는 동안 밝은 조명과 통유리 창으로 탁 트여있는 내부는 <strong>공부에 집중할 수 있는 환경을 만들어주는데 최적화</strong>되어 있었습니다.
                            또한 앞, 옆이 다 보이는 개방형 구조이기에 주변에 열심히 공부하는 친구들을 보면서 다시 공부에 집중할 수 있었습니다.  
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 영어교육과 합격</b>
                        <strong>러셀 중계 황아림</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            바자관을 이용하면서 <strong>단과 수업을 수강하였는데, 그 덕분에 불필요한 이동시간을 줄일 수 있었고, 수업이 끝난 후 바로 바자관에 돌아와서 그날 배운 내용을 정리할 수 있었기 때문에 효율적으로 공부할 수 있었습니다.</strong>
                            수업시간에 풀었던 다양한 문제와 실전 연습 경험이 제 실력 향상에 많은 도움이 되었다고 생각합니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>성균관대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>성균관대학교 사회과학계열 합격</b>
                        <strong>러셀 중계 이우진</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            <strong>바자관의 장점은 좋은 면학분위기입니다.
                            개방형 구조와 통유리 창</strong>으로 트여있어 피곤하거나 공부하기 싫을때, 열심히 공부하고 있는 <strong>주변 학생들을 보며 다시 공부에 집중할 수 있었습니다.</strong>
                            또한 춥거나 더울 때 담임선생님께 말씀드리면 바로바로 온도를 맞춰주시기 때문에 <strong>더욱 쾌적한 환경에서 공부에만 몰두할 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>고신대학교 의예과 합격</b>
                        <strong>러셀 센텀 박OO</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>3</td>
                                <td>1</td>
                                <td>3</td>
                                <td>4</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            <strong>담임선생님</strong>께서는 모의고사 결과마다 상담을 진행해 주셔서 <strong>심리적으로 안정을 찾거나 앞으로의 큰 계획을 세우는 데에 도움을 많이 주셨습니다.</strong>
                            덕분에 1월부터 수능까지 안정적으로 공부할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>인제대학교 의예과 합격</b>
                        <strong>러셀 센텀 임O원</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>3</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            <strong>승강반제도와 장학혜택으로</strong> 인한 동기부여도 큰 장점이라고 생각합니다.
                            강반당하지 않기 위해, 또한 높은 반일 수록 장학혜택이 컸기 때문에 열심히 공부할 수 있었습니다.
                            수능이 다가올수록 <strong>실전수능체험이나, 퀄 모의고사, 메가X대성 더 프리미엄 모의고사를 통해</strong> 철저한 실전 대비를 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 경제학부 합격</b>
                        <strong>러셀 센텀 이O명</strong> <span class="sub-txt">(재원기간 2023년 2월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>1</td>
                                <td>2</td>
                                <td>3</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            상위권 학생들이 모여서 <strong>집단적인 면학분위기가 조성</strong>되어 있으며 슬럼프가 와도 할 수 있는 게 공부밖에 없어서 더 열심히 할 수 있었던 거 같습니다.
                            우선선발반은 일찍 공부를 시작하는 만큼 체력적으로 힘든 점이 크지만 <strong>학습량이 많아 성적 향상을 이룰 수 있는 점이</strong> 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목<br><span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>부산대학교 의예과 합격</b>
                        <strong>러셀 센텀 이OO</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            등급은 이전 수능에서 잘 나왔지만 백분위가 낮아서 다시 공부를 하게 되었는데 긴 수험생활을 하면서 러셀 센텀에서 자습관을 이용하면서 <strong>잘 하는 학생들이 많이 모여있어</strong> 자극이 많이 되었습니다.
                            <strong>담임선생님과의 상담</strong>을 통해 자기 객관화를 할 수 있어서 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>메디컬</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>부산대학교 약학부 합격</b>
                        <strong>러셀 센텀 이O연</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 6평</th>
                                <td>1</td>
                                <td>2</td>
                                <td>1</td>
                                <td>3</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            바자관의 좋은 점은 <strong>공부 시설 및 면학분위기</strong> 입니다.
                            넓은 책상과 많은 책들을 보관할 수 있는 개인 사물함, 통유리 창 등 쾌적한 공부환경 속에서 열심히 공부하는 친구들을 보며 열심히 공부할 수 있었습니다.
                            덕분에 독학재수를 하였다면 늘어지기 쉬운 여름방학 기간 동안에 더욱 질 높은 공부를 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>메디컬</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>가천대학교 한의예과 합격</b>
                        <strong>러셀 센텀 박O우</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>3</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>4</td>
                                <td>4</td>
                                <td>1</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            바른공부 자습전용관은 <strong>철저한 출결관리가</strong> 이루어집니다.
                            몰래 이동을 할 수 없게 카드를 찍고 출입하는 출결 방법이라 공부를 하다 힘들어 나가고 싶을 때에도 마음을 잡고 다시 공부에 집중할 수 있었습니다.
                            또한 전용 와이파이 이용으로 <strong>공부 중 인강 사이트 이외의 사이트를 사용하지 못하므로</strong> 집중력을 더 높일 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>의예과<br><span>합격</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>부산대학교 의예과 합격</b>
                        <strong>러셀 센텀 이OO</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>1</td>
                                <td>2</td>
                                <td>2</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            <strong>담임선생님</strong>께서는 늘 학습적인 부분이나 멘탈적인 고민이 있으면 저와 같이 고민해 주셔서 <strong>학생들의 성향을 파악하고 세심하게 상담해 주셔서</strong> 긴 수험생활에서 많은 의지를 할 수 있었습니다.
                            감사했습니다. 담임선생님의 한마디가 큰 힘이 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>의예과<br><span>합격</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>고신대학교 의예과 합격</b>
                        <strong>러셀 센텀 배O림</strong> <span class="sub-txt">(재원기간 2023년 1월~2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>3</td>
                                <td>2</td>
                                <td>1</td>
                                <td>3</td>
                                <td>4</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box style01">
                        <p>
                            러셀 시스템 중에서 <strong>바자관과 강의실이 같이 있었던 점</strong>이 가장 좋았습니다.
                            바자관에서 1분 거리에 강의실이 있어 이동하는 시간을 줄일 수 있어 좋았습니다.
                            그리고 메가X대성 더 프리미엄 모의고사를 통해 <strong>매달 실력을 점검해 보는 시간을 가질 수 있었던 점</strong>도 좋았습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <ul class="review-list style04">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>연세대</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_nhw.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/51775617')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>연세대학교 <br> 스포츠응용산업학과 <br> 합격</b>
                            <strong>러셀CORE 원주 남현웅</strong>
                        </p>
                    </div>
                    <div class="d-box">
                        <p class="tit">우선선발반을 통해 남들보다 한 발 빠르게 수능을 준비하며, <br> 담임선생님의 입시/학습/생활 관리를 받는 것이 좋았습니다.</p>
                        <p>
                            저는 러셀CORE 원주에서 우선선발반부터 공부하며 수능을 준비하였습니다. <strong>남들보다 한 발 빠르게 시작해서 담임선생님의 1:1 입시/학습/생활 관리</strong>를 받는 것이 좋았습니다. 
                            담임선생님과의 <strong>주기적인 상담을 통해 체계적인 학습 계획을 세울 수 있었고, 계획한 대로 공부가 잘되지 않아 힘들 때면 선생님께서 격려와 응원을 해주셔서 정신적으로 큰 도움이 되었습니다.</strong>                            
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_csh.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/49173395')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>가톨릭관동대 <br> 의예과 합격</b>
                            <strong>러셀CORE 원주 최승훈</strong>
                        </p>
                    </div>
                    <div class="d-box">
                        <p class="tit">
                            바른공부 자습전용관의 표준 시간표가 <br>
                            실제 수능을 준비하는 데 큰 도움이 되었습니다.
                        </p>
                        <p>
                            실제 수능에선 국어가 80분, 수학이 100분이고 그 후 점심 식사를 하게 됩니다. 러셀도 이와 거의 동일하게 <strong>오전에 시간표를 80분, 100분으로 나누어 종소리에 맞추어 실전 모의고사</strong>를 풀 수 있었습니다.
                            특히 수능 직전에 이러한 <strong>바른공부 자습전용관의 표준 시간표가 실제 수능을 준비하는 데 큰 도움</strong>이 되었습니다.                           
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/first/ico_img_pmj.png" alt="" />
                                <a class="btn-play" href="javascript:CastPopup('https://tv.naver.com/v/49173388')"><img src="<%=Application("img_path_russel")%>/intro/2025/first/btn_play.png" alt="" /></a>
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>연세대학교(미래) <br> 의예과 합격</b>
                            <strong>러셀CORE 원주 박민재</strong>
                        </p>
                    </div>
                    <div class="d-box">
                        <p class="tit">
                            높은 퀄리티의 다양한 모의고사를 통해 긴장감을 <br>
                            유지하고, 학습 상태를 점검할 수 있었습니다.
                        </p>
                        <p>
                            주기적으로 보는 <strong>다양한 모의고사가 공부하는 데 도움</strong>이 되었습니다. <strong>QUEL, Weekly, 메가X대성 더 프리미엄 모의고사</strong>와 같은 다양한 모의고사를 통해 <strong>실전 수능을 대비하고 수험 생활의 긴장감을 유지할 수 있었습니다.</strong>
                            또한, 나의 <strong>객관적인 위치를 정확하게 파악하여 부족한 부분을 보완</strong>할 수 있었습니다.                         
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>을지대학교 의예과 합격</b>
                        <strong>러셀CORE 청주 오화영</strong>
                    </p>
                    <div class="d-box style02">
                        <p>
                            <strong>바자관 표준 시간표</strong>에 공부 리듬을 맞추며 <strong>체계적인 계획</strong>을 세우는 데 도움이 많이 되었습니다.
                            공부 시간과 휴식 시간이 정해져 있어서 집중력을 잃어버리는 것을 방지하며 <strong>시간을 최대한 효율적으로 사용</strong>할 수 있었다고 생각합니다.
                            또 계속 시간표대로 행동하다 보면 이 시간표가 나의 <strong>생체리듬</strong>이 되어 의식하지 않아도 시간표대로 행동하는 나 스스로를 발견할 수 있게 되기도 하는데,
                            이렇게 <strong>꾸준한 시간 관리 연습 덕분에 수능 당일 긴장하지 않고 실력을 발휘할 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>충북대학교 의예과 수석 합격</b>
                        <strong>러셀CORE 청주 김하민</strong>
                    </p>
                    <div class="d-box style02">
                        <p>
                            전국 단위 모의고사를 보지 않는 N수생에게 메가X대성 더 프리미엄 모의고사, QUEL 모의고사는 정말 좋은 기회였습니다.
                            혼자 다양한 모의고사를 정말 많이 풀었지만, <strong>다른 학생들과 같이 푸는 경험</strong>도 중요하다고 생각하는데 메가X대성 더 프리미엄 모의고사와 QUEL 모의고사가 이를 채워주었습니다.
                            <strong>수능 시간표에 맞춰 진행되는 전국 단위 모의고사를 통해 실전 감각을 익히고, 객관적인 나의 위치를 파악하며 계획을 수정하고 보완할 수 있었습니다.</strong>  
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 경영학과 합격</b>
                        <strong>러셀CORE 청주 김하진</strong>
                    </p>
                    <div class="d-box style02">
                        <p>
                            각 모의고사 이후에 작성했던 <strong>러셀 총평노트</strong>가 많은 도움이 되었습니다.
                            <strong>시험마다 어떤 점이 좋았고, 어떤 점을 개선해 나가야 하는지 머릿속으로만 생각하지 않고 명시적으로 표현함으로써 저 자신을 더욱 객관적으로 바라볼 수 있었습니다.</strong>
                            실전과 같은 모의고사, 총평노트 작성을 반복하며 점차 실수를 줄여나갈 수 있었다고 생각합니다.
                            또한 모의고사를 치른 후 해이해질 수 있는 시점에서 총평노트를 기반으로 한 담임선생님과의 상담을 통해 다시 한번 마음을 다잡고 나아갈 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>연세대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 철학과 합격</b>
                        <strong>러셀CORE 청주 김화랑</strong>
                    </p>
                    <div class="d-box style02">
                        <p>
                            바자관의 장점은 <strong>개방형 구조와 집단적인 면학분위기</strong>라고 생각합니다.
                            이전에 다니던 다른 곳은 졸거나 딴짓을 할 때 조교나 친구들에게 잘 보이지 않아 상대적으로 불리한 구조에 있었지만, 러셀은 서로가 서로를 감시하는 분위기 속에서 <strong>선의의 경쟁</strong>을 할 수 있었습니다.
                            바자관 내 넓은 책상과 개인 책장도 사용하기 편했고, 에어컨이나 히터도 신경 쓰이지 않도록 잘 관리해 주셔서 <strong>쾌적한 환경에서 공부에만 집중할 수 있었습니다.</strong> 
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>약학과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>덕성여자대학교 약학과 합격</b>
                        <strong>러셀CORE 청주 박예은</strong>
                    </p>
                    <div class="d-box style02">
                        <p>
                            <strong>입시 담임선생님의 전문적인 관리</strong> 덕분에 더 좋은 분위기에서 공부할 수 있었습니다. 
                            자습 시간에 분위기를 해치는 학생들을 지도해 주시고, 조례와 종례 시간에 학생들에게 응원의 말씀을 해 주시기도 했습니다.
                            또한 원서접수 기간에 저의 <strong>성적과 생기부에 맞는 대학들을 함께 고민해 주시고, 여러 방향을 제시해 주셔서 큰 어려움 없이 최선의 원서를 지원할 수 있었습니다.</strong>
                            덕분에 합격의 기쁨을 누릴 수 있었다고 생각합니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>약학과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>덕성여자대학교 약학과 합격</b>
                        <strong>러셀CORE 청주 조현지</strong>
                    </p>
                    <div class="d-box style02">
                        <p>
                            저는 재수생 우선선발반으로 <strong>남들보다 빠르게 공부를 시작</strong>하였고, 그 덕분에 수능에서 좋은 성적을 받을 수 있었다고 생각합니다.
                            안정적인 수능 점수를 확보하는데 러셀 LIVE 수업이 큰 도움이 되었습니다.  인강보다 현강으로 듣는 것이 더 집중이 잘 되는 편인데, <strong>매번 서울까지 올라가지 않더라도 집 근처에서 바로 수업을 들을 수 있다는 점이 매우 좋았습니다.</strong>
                            강의실 내 화면이 크다 보니 온라인 실시간 수업이어도 현장에서 듣는 것 같은 <strong>현장감</strong>을 느낄 수 있었고, 집중도 잘 되었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교(미래) 의예과 합격</b>
                        <strong>러셀 부천 박정우</strong>
                    </p>
                    <div class="d-box style02-1">
                        <p class="d-tit">
                            점심 직후 영단어 테스트와 영어 듣기 평가가 <br>
                            도움이 되었습니다.
                        </p>
                        <p>
                            하루 30분~1시간을 투자하여 영단어를 외우고,
                            매주 토요일마다 영어 듣기 평가도 모의로 진행하며 <strong>듣기감을 유지할 수 있어 좋았습니다.</strong>  자습관 바로 앞에 담임선생님이 계셔서 
                            집중도 높은 학습을 진행할 수 있었고, 과목별 학습법 등 팁도 
                            얻었습니다. 또한 <strong>개별 상담과 성적에 맞는 수시/정시 전략도 꼼꼼하게 조언해 주셔서 감사했습니다.</strong>
                            
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>강원대학교 의예과 합격</b>
                        <strong>러셀 부천 이가은</strong>
                    </p>
                    <div class="d-box style02-1">
                        <p class="d-tit">
                            담임선생님의 조언에 감사했습니다.
                        </p>
                        <p>
                            모의고사를 볼 때마다 멘탈이 무너지고 공부하는 데에 
                            지장이 있었습니다. 그럴 때마다 담임선생님께 가서 고민을 털어놓고 얘기했습니다. 선생님께서 많은 학생들을 만나 보셔서 그런지,
                            해 주시는 말씀들이 <strong>멘탈을 다잡는 데에 도움이 많이 되었습니다. 
                            대학 전형뿐만 아니라 모의고사 직후 결과와 함께 
                            학습 방법 관련한 조언도 해주셨습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>수의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>제주대학교 수의예과 합격</b>
                        <strong>러셀 부천 이동규</strong>
                    </p>
                    <div class="d-box style02-1">
                        <p class="d-tit">
                            자습관 면학분위기 조성과 학습시간을 <br>
                            확보할 수 있어 좋았습니다.
                        </p>
                        <p>
                            스피드게이트로 철저하게 출결 관리를 하고 매 교시마다 출결을 
                            확인하기 때문에 <strong>이른 시간부터 공부하는 습관을 기를 수 있었습니다.</strong>
                            또한 수시로 자습 감독 선생님들께서 순찰을 돌기 때문에 <strong>집중해서 공부하는 분위기가 조성</strong>되었고,
                            담임선생님께서 자습관 면학분위기 조성에 많은 신경을 써주셔서 <strong>항상 좋은 환경에서 공부할 수 있었고 나태해질 때마다 확실하게 관리해 주셨습니다.</strong>                            
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>고려대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>고려대학교 철학과 합격</b>
                        <strong>러셀 부천 전찬영</strong>
                    </p>
                    <div class="d-box style02-1">
                        <p class="d-tit">
                            개방형 구조에서 자신만의 온전한 학습시간을 <br>
                            확보할 수 있었습니다.
                        </p>
                        <p>
                            <strong>바른공부 자습전용관의 가장 좋은 점</strong>은 개방형 구조에서 다른 학생들과 같이 공부하기 때문에 <strong>나태해지지 않고 공부에만 집중할 수 있다는 점입니다.</strong>
                            그리고 담임선생님이 계시면서 시험 일정 등 
                            <strong>공부 외적으로 신경 써야 할 부분에 있어서도 항상 관심 가지고 챙겨 주셨기에 더더욱 공부에만 집중할 수 있었습니다.</strong>                            
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
            <ul class="review-list style02">
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="" />
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>고려대학교 의과대학 합격</b>
                            <strong>러셀CORE 전주 서진원</strong>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            러셀CORE 전주 바자관은 공부하는 데 있어 시설적 면에서 불편함이 전혀 없을 정도로 환경 구성이 잘 되어 있습니다.
                            이러한 곳에서 <strong>매일 수능 시간표 대로 공부</strong>를 하고, <strong>집체 모의고사를 응시한 덕분에 수능에 최적화된 공부 리듬</strong>을 만들 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jeonbuk.jpg" alt="" />
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>전북대학교 의예과 합격</b>
                            <strong>러셀CORE 전주 최희민</strong>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <p>
                            <strong>러셀 플래너를 통해 과목 간 공부량을 점검</strong>할 수 있어 좋았습니다.
                            이를 통해 목표를 달성하며 <strong>꾸준히 공부하는 습관을 형성</strong>할 수 있었으며, <strong>담임선생님의 학습관리</strong>와 함께 무탈한 수험생활을 마칠 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_wonkwang.png" alt="" />
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>원광대학교 의예과 합격</b>
                            <strong>러셀CORE 전주 하은채</strong>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <P>
                            <strong>입시 담임선생님께서 플래너를 주기적으로 검사해 주시며 과목별 시간 배분이나 복습에 관해 부족한 부분에 대해 피드백</strong>을 해주셨던 게 많은 도움이 됐습니다.
                            학습관리 이외에도 건강이나 멘탈 관리 등 여러 가지를 신경 써 주셔서 힘을 낼 수 있었습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="t-box">
                        <div>
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="" />
                            </p>
                        </div>
                        <p class="info-txt">
                            <span class="year">2024</span> <br>
                            <b>고려대학교 국어교육과 합격</b>
                            <strong>러셀CORE 전주 정태영</strong>
                        </p>
                    </div>
                    <div class="d-box style01">
                        <P>
                            <strong>러셀의 LIVE 수업</strong>은 인강과는 또 다른 차이점이 있습니다.
                            인강은 집중력이 흐려지면 멈추고 다시 들으면서 몰입이 깨지지만, 라이브 수업은 <strong>실시간으로 진행되기 때문에 수업에 몰입하며 집중</strong>할 수 있어 좋았습니다. 
                        </P>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>동아대학교 의예과 합격</b>
                        <strong>러셀CORE 창원 윤종빈</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            <strong>실전과 같은 분위기에서 모의고사</strong>를 볼 수 있는 기회가 많지 않은데,
                            러셀은 위클리, 메대프, 퀄 모의고사 등으로 <strong>매주 수능과 같이 대비</strong>할 수 있었습니다.
                            또한 담임선생님과의 상담을 통해 부족한 부분을 보완할 수 있어 효과적인 성적 향상의 계기가 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>동아대학교 의예과 합격</b>
                        <strong>러셀CORE 창원 제현수</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            학습 계획을 짜는데 어려움이 있었는데, <strong>담임선생님과의 상담을 통해
                            체계적인 공부 방향을 설정</strong>할 수 있었습니다. 학습적인 측면 및 멘탈적으로도 잘 잡아주시고, 입시에서도 생기부를 기반하여 최적의 입시 방향을 잡아주셔서 성공적인 결과를 거둘 수 있었습니다.                            
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>충남대학교 수의예과 합격</b>
                        <strong>러셀CORE 창원 백지훈</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            <strong>서울에 가지 않아도 대치동 LIVE 수업과 콘텐츠를 동일하게 이용</strong>할 수 있다는 점이 마음에 들었습니다.
                            수업 외에도 <strong>한 건물에 자습관, 식당, 강의실을 같이 배치함으로써 이동 동선을 최소화하고 체력과 학습 분위기 유지 측면에서 큰 이점</strong>을 얻을 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 경제학부 합격</b>
                        <strong>러셀CORE 창원 윤득영</strong>
                    </p>
                    <div class="d-box style01">
                        <p>
                            <strong>단과 수업과 자습관 이용을 한 번에 할 수 있다는 점</strong>이 좋았습니다.
                            관리형 독서실과 <strong>대치동 현장 단과의 장점을 지방에서 거의 그대로 구현한 것이 큰 장점</strong>인 것 같습니다. 주기적으로 치러지는 모의고사 역시 실력 향상에 큰 도움을 주었습니다.                                                   
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>연세대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 언더우드학부 합격</b>
                        <strong>러셀 대구 서의치반 이시훈</strong> <br>
                        <span class="sub-txt mt10" style="display: block;">(재원기간 23년 1월~수능까지)</span>
                    </p>
                    <table class="tbl-01">
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
                                <th><span>2024 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
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
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목<br><span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>계명대학교 의예과 합격</b>
                        <strong>러셀 대구 서의치반 조혜린</strong> <br>
                        <span class="sub-txt mt10" style="display: block;">(재원기간 23년 1월~수능까지)</span>
                    </p>
                    <table class="tbl-01">
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
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
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
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p>전 과목<br><span>1등급</span></p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>이화여자대학교 약학과 합격</b>
                        <strong>러셀 대구 HS반 김예진</strong> <br>
                        <span class="sub-txt mt10" style="display: block;">(재원기간 23년 2월~수능까지)</span>
                    </p>
                    <table class="tbl-01">
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
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
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
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>약학과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>경북대학교 약학과 합격</b>
                        <strong>러셀 대구 연고대반 허OO</strong> <br>
                        <span class="sub-txt mt10" style="display: block;">(재원기간 23년 1월~수능까지)</span>
                    </p>
                    <table class="tbl-01">
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
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
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
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>치의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 치의예과 합격</b>
                        <strong>러셀 분당 안OO</strong>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>2</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p><strong>다른 학생들이 열심히 하고 있다는 것이 제 눈앞에 생생히 보이는 바자관 환경 덕분에 동기부여</strong>를 받을 수 있었고, 사계절 일정한 온도를 유지해 주셔서 쾌적한 환경에서 공부에만 집중할 수 있어서 좋았습니다.</p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>치의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>경희대학교 치의예과 합격</b>
                        <strong>러셀 분당 윤OO</strong> <span class="sub-txt">(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>3</td>
                                <td>1</td>
                                <td>2</td>
                                <td>2</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            <strong>바자관이 개방적으로 설계되어 있어</strong>, 자습시간뿐만 아니라 쉬는 시간에도 <strong>열심히 공부하는 주변 친구들을 보며 자극을 받아 더욱 열정적으로 공부</strong>할 수 있었습니다.
                            매달 메가x대성 더 프리미엄 모의고사는 실제 수능 시간표와 동일하게 시험을 진행하여, 과목별로 시간 관리하는 연습을 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>치의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>단국대학교 치의예과 합격</b>
                        <strong>러셀 분당 정OO</strong> <span class="sub-txt">(재원기간 : 2023년 2월 ~ 2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>2</td>
                                <td>2</td>
                                <td>3</td>
                                <td>3</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            <strong>정기적으로 실시하는 모의고사로 수능 전까지 실전 경험</strong>을 늘릴 수 있었습니다.
                            <strong>바자관과 단과 강의실이 같은 건물에 있어 이동 시간을 최소화</strong>할 수 있었고, <strong>낭비되는 시간 없이 공부 시간을 확보</strong>할 수 있었습니다.
                            또한 원서 접수 시기에 담임선생님께서 해주신 상담이 크게 도움이 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>의예과</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>강원대학교 의예과 합격</b>
                        <strong>러셀 분당 이OO</strong>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>3</td>
                                <td>1</td>
                                <td>2</td>
                                <td>1</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            바자관은 밝은 조명과 공기청정기 덕분에 공부에 더 집중할 수 있으며 <strong>표준 시간표를 통해 매일 수능과 비슷한 시간에 앉아서 공부</strong>를 할 수 있기 때문에 공부하는 습관을 
                            기를 뿐만 아니라 수능 당일에도 머리를 깨우는 데 도움이 됐습니다. <strong>면학분위기 조성과 멘탈 관리에는 담임선생님의 역할이 크게 작용</strong>했고 많은 도움을 받았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>서울대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>서울대학교 재료공학부 합격</b>
                        <strong>러셀 분당 주OO</strong> <span class="sub-txt">(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>3</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>1</td>
                                <td>1</td>
                                <td>6</td>
                                <td>4</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <P>
                            <strong>담임선생님께 사소한 고민들이 생길 때마다 부담 없이 여쭤볼 수 있고, 정기적인 상담으로 성적에 대한 객관적인 조언</strong>들을 해주신 것이 큰 도움이 되었습니다.
                            또한 바자관의 장점 중 하나인 면학분위기를 확실하게 조성하고 통제하는 점이 좋았습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>고려대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>고려대학교 산업경영공학부 합격</b>
                        <strong>러셀 분당 최OO</strong> <span class="sub-txt">(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>2</td>
                                <td>1</td>
                                <td>4</td>
                                <td>4</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <P>
                            <strong>바자관의 표준 시간표를 통해 공부 계획을 세우고 학습 시간을 확보</strong>하는데 큰 도움이 되었습니다.
                            <strong>모의고사 성적을 기반으로 한 승강반 제도는 시험에 더 집중하여 임할 수 있는 동기를 부여</strong>했습니다.
                            또 같은 건물에서 메가스터디 선생님들의 수업을 바로 들을 수 있어 시간을 효율적으로 사용할 수 있었습니다.
                        </P>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>고려대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>고려대학교 차세대통신학과 합격</b>
                        <strong>러셀 분당 이OO</strong> <span class="sub-txt">(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>3</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>1</td>
                                <td>3</td>
                                <td>1</td>
                                <td>3</td>
                                <td>4</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            <strong>출결이 철저하게 관리되고 규정을 어긴 학생들에게 벌점을 부여</strong>하는 벌점 제도를 통해 수능까지 좋은 학습 환경에서 공부할 수 있었습니다.
                            또한 <strong>담임선생님과의 1:1 상담으로 약점을 피드백하고 하나의 문제에 대해 여러 가지 방향으로 대안을 제시</strong>해 주셔서 학생 입장에서 생기는 고민 해소에 효과적이었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div class="label">
                        <p class="mt25"><span>연세대</span><br>합격</p>
                    </div>
                    <p class="info-txt">
                        <span class="year">2024</span> <br>
                        <b>연세대학교 천문우주학과 합격</b>
                        <strong>러셀 분당 김OO</strong>
                    </p>
                    <table class="tbl-01">
                        <colgroup>
                            <col style="width: %;">
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
                                <th>영어</th>
                                <th>탐구1</th>
                                <th>탐구2</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th><span>2024 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                            </tr>
                            <tr>
                                <th>2023 수능</th>
                                <td>2</td>
                                <td>3</td>
                                <td>2</td>
                                <td>2</td>
                                <td>4</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="d-box">
                        <p>
                            <strong>담임선생님께서</strong> 목표로 하고 있는 과에 진학하기 위해 <strong>어떤 점수를 받아야 하는지 구체적으로 말씀해 주셔서 목표로 설정하고 공부를 하는데 크게 동기부여</strong>가 되었습니다.
                            또한 바자관의 철저한 출결 관리와, 공부 리듬 형성을 도와주는 표준 시간표가 꾸준히 나아가는데 큰 도움이 되었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% End if %>
            
            <p class="r-txt"><%=success_sub%></p>
            <% If sCampusCode <> "CD0247" and sCampusCode <> "CD0248" and sCampusCode <> "CD0001" Then '강남/평촌/대치 제외 %>
            <a class="btn-view" href="<%=success_url%>"><%=success_txt%></a>
            <% End if %>
        </div>
    </div>
</div>