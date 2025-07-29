<div class="js-cont-wrap <%=campusName%>">
    <!-- cont01 -->
    <% If campus_code = "INTRO" Then '인트로 %>
    <div class="cont01">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont01_tit.jpg" alt="최근 5년 가장 어려웠던 수능, 러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다 러셀의 방법은 옳았습니다."></p>
        <div class="map-area">
            <!-- 각 지역 입결 지도 -->
            <!-- #include virtual = "/intro/2024/winter/map.asp" -->
            <!-- //각 지역 입결 지도 -->
        </div>
    </div>
    <% End If %>

    <!-- cont02 -->
    <div class="cont02">
        <% If campus_code = "INTRO" Then '인트로 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont02_tit.png" alt="러셀 2024학년도 대입 주요 대학 합격자 역대 최다 배출*"></p>
        <% ElseIf campus_code = "CD0257" or campus_code = "CD0244" or campus_code = "CD0349" Then '중계/분당/울산 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_tit.png" alt="러셀 2024학년도 대입 주요 대학 합격자 역대 최다 배출*"></p>
        <% Else %>
        <!-- 학원 공통 -->
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont02_tit02.png" alt="러셀 2024학년도 대입 주요 대학 합격자 역대 최다 배출*"></p>
        <% End If %>
        <div class="inner">
            <% If campus_code = "CD0001" Then '대치 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀 대치 최상위권 입시결과"></p>
                <ul class="type02">
                    <li>
                        <div>
                            <p>2018/2020<sup>1),2)</sup></p>
                            <p><strong>수능 만점자 배출</strong></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2021<sup>3)</sup></p>
                            <p><strong>수능 전국 수석 배출</strong></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024 대입<br>메이저 의예과<sup>4)</sup></p>
                            <p><strong>총 35명 합격</strong></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024 대입<br>전국 의예과<sup>4)</sup></p>
                            <p><strong>총 119명 합격</strong></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024 대입<br>의/치/한/수/약<sup>4)</sup></p>
                            <p><strong>총 199명 합격</strong></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024 대입<br>서/연/고<sup>4)</sup></p>
                            <p><strong>총 230명 합격</strong></p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    1) 2018학년도 수능 실성적 기준<br>
                    2) 2020학년도 수능 실성적 기준<br>
                    3) 2021학년도 수능 실성적 기준<br>
                    (*표준점수/백분위 합 기준)<br>
                    4) 2024학년도 러셀 대치 재원생의 합격자 기준<br>
                    (*복수대학 합격자 및 중복 합격자 포함)
                </div>
            </div>
            <% ElseIf campus_code = "CD0245" Then '목동 %>
            <div class="result_list">
                <p class="tit" style="padding-bottom: 15px;"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀 대치 최상위권 입시결과"></p>
                <ul class="type03">
                    <li>
                        <div>
                            <p>의예과</p>
                            <p><strong>68</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>치한수</p>
                            <p><strong>42</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>약학과</p>
                            <p><strong>44</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div class="pt15">
                            <p>과학기술원</p>
                            <p><strong>13</strong>명</p>
                            <span>*카이스트 6명 포함*</span>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서울대</p>
                            <p><strong>21</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>연세대</p>
                            <p><strong>54</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>고려대</p>
                            <p><strong>64</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>교대 외<br>특수대학</p>
                            <p><strong>43</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>최상위권<br>주요대학</p>
                            <p><strong>926</strong>명</p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">*러셀 목동 2022-2024학년도 바른공부 자습전용관 재원생 기준<br>
                    (복수 대학 합격자 포함, 단과 수강생 미포함)</p>
            </div>

            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀 대치 최상위권 입시결과"></p>
                <ul class="type04">
                    <li>
                        <div>
                            <p>2024학년도<br>
                                인천&middot;부천지역<br>
                                최상위권 입결</p>
                            <p><strong>1</strong>위</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도 수능<br>
                                의약학계열 합격</p>
                            <p><strong>50</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도 수능<br>
                                서울대&middot;연세대&middot;고려대 합격</p>
                            <p><strong>56</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    *합격자 : 수시/정시 최종발표 인원<br>(2023년 바른공부 자습전용관 재원생 기준)<br>
                    *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결
                </div>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀 대치 최상위권 입시결과"></p>
                <ul class="type03">
                    <li>
                        <div>
                            <p>의&middot;치&middot;한&middot;수&middot;약</p>
                            <p><strong>219</strong>명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>서울대</p>
                            <p><strong>63</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>SKY</p>
                            <p><strong>250</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서&middot;성&middot;한&middot;이</p>
                            <p><strong>210</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>중&middot;경&middot;외&middot;시</p>
                            <p><strong>212</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>교대&middot;경대사관&middot;<br>
                                특성화대</p>
                            <p><strong>81</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>주요 15개 대</p>
                            <p><strong>795</strong>명</p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준<br>(2024.02.29 기준)</p>
            </div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="result_list">
                <ul class="type05">
                    <li>
                        <div>
                            <p>2년 연속<br>
                                <span>서울대학교 의예과</span><br>
                                합격생 배출</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>2년 연속<br>
                                대전 지역 <span>최상위권<br>
                                입결 1위</span></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도<br>
                                메이저 의예과</p>
                            <p>7명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도 최종합격<br>
                                의/치/한/약/수</p>
                            <p>74명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type06">
                    <li>
                        <div>
                            <p>서울대 의예</p>
                            <p><strong>3</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>메이저 의예</p>
                            <p><strong>7</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>전국 의예과</p>
                            <p><strong>41</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>메디컬<br>
                                <span>(의/치/한/약/수)</span></p>
                            <p><strong>74</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>SKY/포항공대/<br>
                                카이스트</p>
                            <p><strong>26</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-bullet">
                        <li>최종 업데이트 : 2024-03-05 기준</li>
                        <li>2024학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준</li>
                        <li>최상위권: 메디컬(의/치/한/약/수) + SKY</li>
                        <li>메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예</li>
                        <li>대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                            (홈페이지 대입 실적 기준/2024-03-05 기준)
                        </li>
                    </ul>
                </div>
            </div>
            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀CORE 원주는 결과로 증명합니다! 러셀CORE 원주 2024학년도 대입 합격 현황"></p>
                <ul class="type05">
                    <li>
                        <div>
                            <p>2024학년도<br>
                                최종합격 서울대학교<br>
                                <span>3명</span></p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>2024학년도<br>
                                <span>메이저의예 &lt;가톨릭대&gt;</span><br>
                                합격생 배출</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도 최종합격<br>
                                의/치/한/약/수</p>
                            <p><span>46명</span></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도<br>
                                최종합격 SKY</p>
                            <p><span>17명</span></p>
                        </div>
                    </li>
                </ul>
                <ul class="type06">
                    <li>
                        <div class="ml0">
                            <p>의예과</p>
                            <p><strong>25</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>치의예</p>
                            <p><strong>4</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div class="ml0">
                            <p>한의예</p>
                            <p><strong>4</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>수의예</p>
                            <p><strong>10</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div class="ml0">
                            <p>약학과</p>
                            <p><strong>3</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>SKY</p>
                            <p><strong>17</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-bullet">
                        <li>2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준</li>
                        <li>메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준</li>
                        <li>최종 업데이트 : 2024-02-28</li>
                    </ul>
                </div>
            </div>
            <% ElseIf campus_code = "CD0247" Then '강남 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀 강남 최상위권 대학 합격자 현황"></p>
                <ul class="type07">
                    <li class="mt0">
                        <div>
                            <p>5개년 연속<br>
                                <strong>서울대 의예과</strong> 합격</p>
                        </div>
                    </li>
                </ul>
                
                <div>
                    <ol>
                        <li class="mt0">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_stu01.png" alt=""></p>
                            <p>2023학년도<br><strong>이윤서 학생</strong></p>
                        </li>
                        <li class="mt0">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_stu03.png" alt=""></p>
                            <p>2023학년도<br><strong>김OO 학생</strong></p>
                        </li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_stu03.png" alt=""></p>
                            <p>2022학년도<br><strong>서OO 학생</strong></p>
                        </li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_stu04.png" alt=""></p>
                            <p>2021학년도<br><strong>김OO 학생</strong></p>
                        </li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_stu02.png" alt=""></p>
                            <p>2020학년도<br><strong>양지헌 학생</strong></p>
                        </li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_stu03.png" alt=""></p>
                            <p>2019학년도<br><strong>이OO 학생</strong></p>
                        </li>
                    </ol>
                </div>

                <ul class="type07">
                    <li>
                        <div>
                            <p>의학계열 누적합격생<br><strong>619명</strong> 배출</p>
                        </div>
                    </li>
                </ul>
                <ul class="type08">
                    <li>
                        <div>
                            <p>의예과</p>
                            <p>327명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type08">
                    <li>
                        <div>
                            <p>치의예과</p>
                            <p>79명</p>
                        </div>
                    </li>
                    <li class="ml10">
                        <div>
                            <p>한의예과</p>
                            <p>110명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>수의예과</p>
                            <p>31명</p>
                        </div>
                    </li>
                    <li class="ml10">
                        <div>
                            <p>약학과</p>
                            <p>72명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type07">
                    <li>
                        <div>
                            <p>최상위권 대학<br>누적 합격 현황</p>
                        </div>
                    </li>
                </ul>
                <ul class="type09">
                    <li>
                        <div>
                            <p>의치한수약</p>
                            <p>619명</p>
                        </div>
                        <p>의예과 327명, 치의예과 79명,<br>
                            한의예과 110명, 수의예과 31명, 약학과 72명</p>
                    </li>
                    <li>
                        <div>
                            <p>서연고</p>
                            <p>585명</p>
                        </div>
                        <p>서울대 113명, 연세대 237명, 고려대 235명</p>
                    </li>
                    <li class="pb10">
                        <div>
                            <p>서성한이중경외시<br>
                                + 카이스트, 포항공대</p>
                            <p>1,215명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준)
                </div>
            </div>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="4년 연속 서울대 의예과 배출 평촌,안양 지역 입결 1위!"></p>
                <ul class="type07">
                    <li class="mt0">
                        <div>
                            <p>서울대</p>
                            <p><strong>18</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>의약학계열</p>
                            <p><strong>64</strong>명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li>
                        <div>
                            <p>연세대</p>
                            <p><strong>24</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>고려대</p>
                            <p><strong>31</strong>명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li>
                        <div>
                            <p>서강대</p>
                            <p><strong>9</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>성균관대</p>
                            <p><strong>35</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>한양대</p>
                            <p><strong>8</strong>명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li>
                        <div>
                            <p>중앙대</p>
                            <p><strong>29</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>한국외대</p>
                            <p><strong>6</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>경희대</p>
                            <p><strong>17</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>특성화대</p>
                            <p><strong>6</strong>명</p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">* 2024 러셀 평촌 바른공부 자습전용관 재원생 기준</p>
            </div>
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="2024학년도 합격자 현황"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>의예과</p>
                            <p><strong>11</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>서울대</p>
                            <p><strong>14</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>의치한수약</p>
                            <p><strong>27</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서연고</p>
                            <p><strong>40</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서성한이</p>
                            <p><strong>34</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>중경외시</p>
                            <p><strong>44</strong>명</p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">*2024학년도 러셀 중계 바른공부 자습전용관 재원생 기준<br>
                    (복수 대학 합격자 중복 포함, 단과 수강생 미포함(2024-03-07 기준))</p>
            </div>
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="2024학년도 대입 합격자 현황"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>의예과</p>
                            <p><strong>47</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>치한수약</p>
                            <p><strong>34</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>SKY</p>
                            <p><strong>34</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서성한이</p>
                            <p><strong>54</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>중경외시</p>
                            <p><strong>36</strong>명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li>
                        <div>
                            <p>이공계특성화대/사관학교/교대</p>
                            <p><strong>13</strong>명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li>
                        <div>
                            <p>부산대/경북대</p>
                            <p><strong>88</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>주요 대학 합격</p>
                            <p><strong>217</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출 기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    1) 2024 의/치/한/약/수 합격자, 23년 러셀 센텀 바른공부 자습전용관 11월 재원생 기준<br>
                    2) 2024 주요 15개 대학 수시/정시 입결. 23년 러셀 센텀 바른공부 자습전용관 재원생 기준 (복수합격자 포함)<br>
                    *홈페이지 대입 실적 기준, 2024. 02. 26 기준
                </div>
            </div>
            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="2024학년도 대입 합격자 현황"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>연세대 의예</p>
                            <p><strong>3</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>고려대 의예</p>
                            <p><strong>1</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>의예과</p>
                            <p><strong>46</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>치&middot;한&middot;수&middot;약</p>
                            <p><strong>37</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>SKY</p>
                            <p><strong>18</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서성한이<br>과기원</p>
                            <p><strong>31</strong>명</p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">※ 최종 업데이트 : 2024-02-26 기준 <br>
                    (지속적으로 업데이트할 예정입니다.)<br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 <br>/ 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 <br>
                    (홈페이지 대입 실적 기준)</p>
            </div>
            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀CORE 창원 2024학년도 대입 합격 현황"></p>
                <ul class="type05">
                    <li>
                        <div>
                            <p>개원 첫해</p>
                            <p><span>메이저 의대 합격생<br>
                                배출</span></p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>개원 첫해</p>
                            <p><span>전국 의예과 합격생<br>
                                21명 배출</span></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도<br>
                                최종합격</p>
                            <p><span>의/치/한/약/수 42명</span></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>2024학년도<br>
                                최종합격</p>
                            <p><span>SKY 10명</span></p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>울산대 의예</p>
                            <p><strong>1</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>서울대 치의예</p>
                            <p><strong>1</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>전국 의예</p>
                            <p><strong>21</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>메디컬<br>
                            <span>(의/치/한/약/수)</span></p>
                            <p><strong>42</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>SKY/서성한이</p>
                            <p><strong>43</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출 기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    ※ 최종 업데이트 : 2024-03-07<br>
                    ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                    ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예
                </div>
            </div>
            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>의예</p>
                            <p><strong>8</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>치의예</p>
                            <p><strong>1</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>한의예</p>
                            <p><strong>4</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>수의예</p>
                            <p><strong>1</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>약학</p>
                            <p><strong>3</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>SKY</p>
                            <p><strong>9</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수대학 합격자 포함, 단과 수강생 제외) 
                </div>
            </div>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="5년 연속 분당지역 입결 압도적 1위!"></p>
                <ul class="style01">
                    <li>
                        <div class="ml0">
                            <p><strong>974명</strong> 합격</p>
                        </div>
                    </li>
                </ul>
                <ul class="style02">
                    <li>
                        <div>
                            <p>수능만점자</p>
                            <p><strong>3</strong>명</p>
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
                            <p>메이저 의예</p>
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
                    <li>
                        <div>
                            <p>연세대</p>
                            <p><strong>218</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>고려대</p>
                            <p><strong>200</strong>명</p>
                        </div>
                    </li>
                </ul>
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt02.png" alt="2024학년도 최상위권 입결"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p class="pr10">메이저 의예 <sup>3)</sup></p>
                            <p><strong>13</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
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
                            <p><strong>47</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>고려대</p>
                            <p><strong>45</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>성&middot;서&middot;한&middot;이</p>
                            <p><strong>98</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>중&middot;경&middot;외&middot;시</p>
                            <p><strong>104</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    러셀 분당 20~24학년도 바른공부 자습전용관 재원생만을 대상으로 한 결과 (단과만 수강생 미포함, 중복 대학 합격자 포함)<br>
                    1) 홈페이지에 입시 결과를 공개한 분당 지역 학원 중 의치한약수+SKY 합격생 수 기준<br>
                    2) 최상위권 대학(의예, 치의예, 한의예, 약학, 수의예, 서울대, 연세대, 고려대)<br>
                    3) 메이저 의예(서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대)
                </div>
            </div>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황"></p>
                <ul class="style04">
                    <li class="mt0">
                        <div>
                            <p>서울대 의예</p>
                            <p><strong>4</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>연세대 의예</p>
                            <p><strong>3</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>메이저 의예</p>
                            <p><strong>9</strong>명</p>
                        </div>
                        <span>(서울대, 연세대, 성균관대,<br>
                            가톨릭대, 울산대 기준)</span>
                    </li>
                    <li>
                        <div>
                            <p>전국 의예</p>
                            <p><strong>116</strong>명</p>
                        </div>
                    </li>
                    <li class="mt10">
                        <div>
                            <p>치·한·수·약학</p>
                            <p><strong>116</strong>명</p>
                        </div>
                    </li>
                    <li class="mt10">
                        <div>
                            <p>서·연·고</p>
                            <p><strong>73</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서성한이<br>과학기술원</p>
                            <p><strong>88</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>경북대</p>
                            <p><strong>117</strong>명</p>
                        </div>
                        <span>(*의약학계열 44명)</span>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    *2023년 러셀 대구 바른공부 자습전용관 재원생 기준<br>
                    (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)
                </div>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont02_txt.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>서울대 의예</p>
                            <p><strong>2</strong>명</p>
                        </div>
                    </li>
                </ul>
                <ul class="type03">
                    <li>
                        <div>
                            <p>메이저 의예</p>
                            <p><strong>9</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>전국 의예</p>
                            <p><strong>69</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>메디컬<br>(의/치/한/수/약)</p>
                            <p><strong>119</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서연고</p>
                            <p><strong>28</strong>명</p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출 기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준) <br>
                    (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                    *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                    *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                </div>
            </div>
            <% Else %>
            <div class="result_box">
                <ul>
                    <li>
                        <div>
                            <p>서울대 의예과</p>
                            <p><strong class="counter" data-count="19">0</strong>명<sup>1)</sup></p>
                            <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/top_label.png" alt="" /></span>
                        </div>
                        <div>
                            <p>메의저 의대</p>
                            <p><strong class="counter" data-count="96">0</strong>명<sup>2)</sup></p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>전국 의예과</p>
                            <p><strong class="counter" data-count="745">0</strong>명<sup>3)</sup></p>
                        </div>
                        <div>
                            <p>의치한약수</p>
                            <p><strong class="counter" data-count="1530">0</strong>명<sup>4)</sup></p>
                            <p>경희대 한의예과(인문) 4명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서울대</p>
                            <p><strong class="counter" data-count="253">0</strong>명<sup>5)</sup></p>
                            <p>서울대 경영대학 11명,<br>
                                서울대 경제학부 17명</p>
                            <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/top_label.png" alt="" /></span>
                        </div>
                        <div>
                            <p>서울대/<br>
                                연세대/고려대</p>
                            <p><strong class="counter" data-count="1053">0</strong>명<sup>6)</sup></p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출기준 -->
            <div class="l-pop">
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29기준)<br>
                    2024학년도 서울대의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀 대전 3명 배출)<br>
                    2) 2020-2024학년도 러셀에서 배출한 메이저 의대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                       2024학년도 메이저 의대 (서울대의예과19명, 연세대(서울)의예과23명, 성균관대의예과7명, 가톨릭대(성의)의예과21명, 울산대의예과6명, 고려대의과대학 20명)<br>
                    3) 2020-2024학년도 러셀에서 배출한 전국 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    4) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-06-11 기준)<br>
                    5) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    6) 2020-2024학년도 러셀에서 배출한 서울대/연세대/고려대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                    ※ 본 결과는 최종 합격자를 기준으로 집계하였습니다.
                </div>
            </div>

            <a class="result_link" href="https://mrussel.megastudy.net/perfect/2024/susi/index.asp">2024학년도 대입 합격 결과</a>
            <% End If %>
        </div>
    </div>

    <!-- cont03 -->
    <div class="cont03">
        <% If campus_code = "INTRO" or campus_code = "CD0349" Then '인트로/울산  %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont03_tit.jpg" alt="러셀 윈터스쿨에서 치열하게 겨울방학을 보낸 선배들은 자랑스러운 최상위권 대학 합격생이 되었습니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter/cont03_tit.jpg" alt="러셀 윈터스쿨에서 치열하게 겨울방학을 보낸 선배들은 자랑스러운 최상위권 대학 합격생이 되었습니다."></p>
        <% End If %>
        <div class="inner">
            <!-- 후기영역 -->
            <!-- #include virtual = "/intro/2024/winter/review_slide.asp" -->
        </div>
    </div>
</div>