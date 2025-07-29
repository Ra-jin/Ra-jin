<div class="cont02">
    <% If campus_code = "INTRO" Then '인트로 %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/map_tit.jpg" alt="최근 5년 가장 어려웠던 수능, 러셀은 가장 탁월한 입결로 최상위권의 선택을 증명했습니다 러셀의 방법은 옳았습니다."></p>
    <div class="map-area">
        <!-- 각 지역 입결 지도 -->
        <!-- #include virtual = "/intro/2024/pre_winter/map.asp" -->
        <!-- //각 지역 입결 지도 -->
    </div>    
    <% Else %>
        <% If campus_code = "CD0349" Then '울산 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_tit02.png" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont02_tit02.png" alt=""></p>
        <% End If %>
        <div class="inner">
            <% If campus_code = "CD0342" Then '대구 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_txt.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황"></p>
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
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    *2023년 러셀 대구 바른공부 자습전용관 재원생 기준<br>
                    (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)
                </div>
            </div>
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            <div class="result_list pt0">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_tit01.png" alt="러셀 센텀 2024학년도 합격생 현황"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>의예과</p>
                            <p><strong>47</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>치/한/약/수</p>
                            <p><strong>34</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서연고</p>
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
                    <li>
                        <div>
                            <p>건동홍숙</p>
                            <p><strong>18</strong>명</p>
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
                            <p>경찰대&middot;사관학교</p>
                            <p><strong>3</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>교원&middot;교육대</p>
                            <p><strong>7</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>부산대&middot;경북대</p>
                            <p><strong>88</strong>명</p>
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
                    ※ 러셀 센텀학원 바른공부 자습전용관 재원생 24학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)
                </div>
            </div>
            <div class="result_list pt0 mt30">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_tit02.png" alt="최상위권의 선택! 러셀 센텀 5개년 누적 입결 현황"></p>
                <ul class="type03">
                    <li class="mt0">
                        <div>
                            <p>의예과</p>
                            <p><strong>223</strong>명</p>
                        </div>
                    </li>
                    <li class="mt0">
                        <div>
                            <p>치/한/약/수</p>
                            <p><strong>159</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서연고</p>
                            <p><strong>161</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>서성한이</p>
                            <p><strong>219</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>중경외시</p>
                            <p><strong>204</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>건동홍숙</p>
                            <p><strong>93</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>이공계특성화</p>
                            <p><strong>27</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>경찰대&middot;사관학교</p>
                            <p><strong>16</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>교원&middot;교육대</p>
                            <p><strong>46</strong>명</p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>부산대&middot;경북대</p>
                            <p><strong>322</strong>명</p>
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
                    ※ 러셀 센텀학원 바른공부 자습전용관 재원생 20-24학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)
                </div>
            </div>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <div class="result_box mt20">
                <ul>
                    <li>
                        <div>
                            <p>서울대 의예과</p>
                            <p><strong class="counter" data-count="19">0</strong>명<sup>1)</sup></p>
                            <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/top_label.png" alt="" /></span>
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
                            <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/top_label.png" alt="" /></span>
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
                    2024학년도 서울대의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀CORE 대전 3명 배출)<br>
                    2) 2020-2024학년도 러셀에서 배출한 메이저 의대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                       2024학년도 메이저 의대 (서울대의예과19명, 연세대(서울)의예과23명, 성균관대의예과7명, 가톨릭대(성의)의예과21명, 울산대의예과6명, 고려대의과대학 20명)<br>
                    3) 2020-2024학년도 러셀에서 배출한 전국 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    4) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    5) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    6) 2020-2024학년도 러셀에서 배출한 서울대/연세대/고려대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                    ※ 본 결과는 최종 합격자를 기준으로 집계하였습니다.
                </div>
            </div>

            <a class="result_link" href="https://mrussel.megastudy.net/perfect/2024/susi/index.asp">2024학년도 대입 합격 결과</a>

            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_txt.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황"></p>
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
                        <li>2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준</li>
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
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_txt.png" alt="러셀CORE 원주는 결과로 증명합니다! 러셀CORE 원주 2024학년도 대입 합격 현황"></p>
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
            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_txt.png" alt="2024학년도 대입 합격자 현황"></p>
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
                <p class="r-txt mt20" style="padding-right: 5%; color: #757DAA;">※ 최종 업데이트 : 2024-02-26 기준 <br>
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
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont02_txt.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황"></p>
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

            <% End If %>
        </div>
    <% End If %>
</div>

<div class="cont03">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont03_tit.jpg" alt="한발 앞선 겨울의 시작,프리윈터스쿨도 다르다."></p>
    <% If campus_code = "CD0343" OR campus_code = "CD0246" Then '원주/센텀 %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont03.jpg" alt="프리원터스쿨만의 관리 포인트"></p>
    <% Else %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont03.jpg" alt="프리원터스쿨만의 관리 포인트"></p>
    <% End If %>
</div>
<% If campus_code = "CD0246" Then '센텀 %>
<div class="cont03-1">
    <p class="recruit-tit">프리윈터스쿨 <strong>특강 시간표</strong></p>
    <div class="tbl-box">
        
        <div class="tab-wrap">
            <a href="javascript:void(0)" class="on"><strong>고3</strong></a>
            <a href="javascript:void(0)"><strong>고2</strong></a>
            <a href="javascript:void(0)"><strong>고1</strong></a>
        </div>

        <!-- 고3 -->
        <div class="tab-cont mt30 on">
            <table class="tbl-type01 schedule">
                <colgroup>
                    <col style="width:12%;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>시간</th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th>토</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="bg-gray">
                        <td>요일</td>
                        <td>12/16</td>
                        <td>12/17</td>
                        <td>12/18</td>
                        <td>12/19</td>
                        <td>12/20</td>
                        <td>12/21</td>
                    </tr>
                    <tr>
                        <td rowspan="2">오전</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            수학<br>
                            바른찬 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            한국사<br>
                            홍민수 선생님
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">오후</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            영어<br>
                            위대영 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="2">저녁</td>
                        <td>&nbsp;</td>
                        <td>
                            인문논술<br>
                            최우석 선생님
                        </td>
                        <td>
                            화학<br>
                            정우정 선생님
                            
                        </td>
                        <td>
                            생활과 <br>윤리<br>
                            황진섭 선생님
                        </td>
                        <td>
                            수학<br>
                            손원재 선생님
                        </td>
                        <td>
                            생명과학<br>
                            이석준 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            지구과학<br>
                            함석진 선생님(1)
                        </td>
                        <td>
                            지구과학<br>
                            함석진 선생님(2)
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            사회문화<br>
                            이민기 선생님
                        </td>
                    </tr>
                    <tr class="bg-gray">
                        <td>요일</td>
                        <td>12/23</td>
                        <td>12/24</td>
                        <td>12/25</td>
                        <td>12/26</td>
                        <td>12/27</td>
                        <td>12/28</td>
                    </tr>
                    <tr>
                        <td rowspan="2">오전</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            수학<br>
                            김도형 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            한국지리<br>
                            홍민수 선생님
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">오후</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            국어<br>
                            박수빈 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            수학<br>
                            권동우 선생님
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">저녁</td>
                        <td>
                            수학<br>
                            권동우 선생님
                        </td>
                        <td>
                            물리<br>
                            신승환 선생님
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            수리논술<br>
                            김지훈 선생님
                        </td>
                        <td>
                            영어<br>
                            한세훈 선생님
                        </td>
                        <td>
                            영어<br>
                            문재원 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- //고3 -->
        <!-- 고2 -->
        <div class="tab-cont mt30">
            <table class="tbl-type01 schedule">
                <colgroup>
                    <col style="width:12%;">
                    <col style="width:15%;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:15%;">
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>시간</th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th>토</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="bg-gray">
                        <td>요일</td>
                        <td>12/16</td>
                        <td>12/17</td>
                        <td>12/18</td>
                        <td>12/19</td>
                        <td>12/20</td>
                        <td>12/21</td>
                    </tr>
                    <tr>
                        <td rowspan="3">오전</td>
                        <td class="bg-gray3" rowspan="3" colspan="5">학사 일정</td>
                        <td>
                            영어<br>
                            이지수 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            한국사<br>
                            홍민수 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            수학<br>
                            바른찬 선생님
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">오후</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            수학<br>
                            권동우 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="3">저녁</td>
                        <td>&nbsp;</td>
                        <td>
                            영어<br>
                            차희경 선생님
                        </td>
                        <td>
                            수리논술<br>
                            김지훈 선생님
                        </td>
                        <td>
                            국어<br>
                            정은주 선생님
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td> 국어<br>
                            최미성 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            인문논술<br>
                            최우석 선생님
                        </td>
                        <td>
                            화학<br>
                            정우정 선생님
                        </td>
                        <td>
                            생활과윤리<br>
                            황진섭 선생님
                        </td>
                        <td>&nbsp;</td>
                        <td>
                            사회문화<br>
                            이민기 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>
                            지구과학<br>
                            함석진 선생님(1)
                        </td>
                        <td>
                            지구과학<br>
                            함석진 선생님(2)
                        </td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>
                            생명과학<br>
                            이석준 선생님
                        </td>
                    </tr>
                    <tr class="bg-gray">
                        <td>요일</td>
                        <td>12/23</td>
                        <td>12/24</td>
                        <td>12/25</td>
                        <td>12/26</td>
                        <td>12/27</td>
                        <td>12/28</td>
                    </tr>
                    <tr>
                        <td rowspan="3">오전</td>
                        <td class="bg-gray3" rowspan="3" colspan="5">학사 일정</td>
                        <td>
                            한국지리<br>
                            홍민수 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            수학<br>
                            김도형 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="2">오후</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            수학<br>
                            권동우 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">저녁</td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            국어<br>
                            최미성 선생님
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            수학<br>
                            최병찬 선생님
                        </td>
                        <td>
                            영어<br>
                            차희경 선생님
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
            
        </div>
        <!-- //고2 -->
        <!-- 고1 -->
        <div class="tab-cont mt30">
            <table class="tbl-type01 schedule">
                <colgroup>
                    <col style="width:12%;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                    <col style="width:auto;">
                </colgroup>
                <thead>
                    <tr>
                        <th>시간</th>
                        <th>월</th>
                        <th>화</th>
                        <th>수</th>
                        <th>목</th>
                        <th>금</th>
                        <th>토</th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="bg-gray">
                        <td>요일</td>
                        <td>12/16</td>
                        <td>12/17</td>
                        <td>12/18</td>
                        <td>12/19</td>
                        <td>12/20</td>
                        <td>12/21</td>
                    </tr>
                    <tr>
                        <td rowspan="2">오전</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            영어<br>
                            이지수 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            한국사<br>
                            홍민수 선생님
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">오후</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            수학<br>
                            권동우 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="2">저녁</td>
                        <td>&nbsp;</td>
                        <td>
                            영어<br>
                            차희경 선생님
                        </td>
                        <td>
                            영어<br>
                            이지수 선생님
                            
                        </td>
                        <td>
                            국어<br>
                            정은주 선생님
                        </td>
                        <td>
                            통합사회<br>
                            황진섭 선생님
                        </td>
                        <td>
                            국어<br>
                            최미성 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr class="bg-gray">
                        <td>요일</td>
                        <td>12/23</td>
                        <td>12/24</td>
                        <td>12/25</td>
                        <td>12/26</td>
                        <td>12/27</td>
                        <td>12/28</td>
                    </tr>
                    <tr>
                        <td rowspan="2">오전</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td rowspan="2">오후</td>
                        <td class="bg-gray3" rowspan="2" colspan="5">학사 일정</td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td rowspan="2">저녁</td>
                        <td>
                            통합과학<br>
                            신승환 선생님
                        </td>
                        <td>
                            국어<br>
                            최미성 선생님
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            수학<br>
                            최병찬 선생님
                        </td>
                        <td>
                            영어<br>
                            차희경 선생님
                        </td>
                        <td>
                            수학<br>
                            최병찬 선생님
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                        <td>
                            &nbsp;
                        </td>
                    </tr>
                </tbody>
            </table>
            
        </div>
        <!-- //고1 -->

        <ul class="list-star">
            <li>프리윈터특강만 수강도 가능합니다.</li>
            <li>커리큘럼에 맞춰 학년 구분 없이 신청 가능합니다.</li>
            <li>전 과목 1회차 특강입니다. (지구과학 제외)</li>
        </ul>
        <a href="https://mrusselct.megastudy.net/common/russel_danka/russel_danka.asp?idx=1821" class="btn-link mt20">프리윈터특강 신청하기</a>
    </div>
</div>
<script>
    $(function(){
        tabMenu('.tbl-box .tab-wrap','.tbl-box .tab-cont');
    })
</script>

<% End If %>
<div class="cont04">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont04_tit.jpg" alt=""></p>
    <div class="inner">
        <div class="time-navi swiper-container <%=campusName%>">
            <div class="swiper-wrapper">
                <% If campus_code <> "CD0342" and campus_code <> "CD0349" and campus_code <> "CD0343" and campus_code <> "CD0344" Then '대구/울산/원주/코어전주 제외 %>
                <div class="swiper-slide">고1/고2 시간표</div>
                <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                <div class="swiper-slide" style="width:auto;padding:3% 5%">고1/고2 시간표 &amp; 중3 시간표</div>
                <% End If %>

                <% If campus_code <> "CD0340" and campus_code <> "CD0341" and campus_code <> "CD0344" Then '광주/대전/코어전주 제외 %>
                <% If campus_code = "CD0342" Then '대구 %>
                <div class="swiper-slide">중3 시간표</div>
                <div class="swiper-slide">고1 시간표</div>
                <div class="swiper-slide">고2/고3 시간표</div>
                <% Else %>
                <div class="swiper-slide">중3 시간표</div>
                <% End If %>
                <% End If %>
            </div>
        </div>
        <div class="time-slide swiper-container">
            <div class="swiper-wrapper">
                <% If campus_code <> "CD0342" and campus_code <> "CD0349" and campus_code <> "CD0343" Then '대구/울산/원주 제외 %>
                <div class="swiper-slide" onclick="jsPopup('no1')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/baja_slide01.png" alt=""></div>
                <% End If %>
                <% If campus_code <> "CD0340" and campus_code <> "CD0341" and campus_code <> "CD0346" and campus_code <> "CD0344" Then '광주/대전/청주/코어전주 제외 %>
                    <% If campus_code = "CD0343" Then '원주 %>
                    <div class="swiper-slide" onclick="jsPopup('no2')"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/baja_slide02.png" alt=""></div>
                    <% ElseIf campus_code = "CD0342" Then '대구 %>
                    <div class="swiper-slide" onclick="jsPopup('no1')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/baja_slide02.png" alt=""></div>
                    <div class="swiper-slide" onclick="jsPopup('no2')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/baja_slide02.png" alt=""></div>
                    <div class="swiper-slide" onclick="jsPopup('no3')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/baja_slide02.png" alt=""></div>
                    <% Else %>
                    <div class="swiper-slide" onclick="jsPopup('no2')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/baja_slide02.png" alt=""></div>
                    <% End If %>
                <% End If %>
            </div>

            <% If campus_code <> "CD0349" and campus_code <> "CD0340" and campus_code <> "CD0341" and campus_code <> "CD0343" and campus_code <> "CD0346" and campus_code <> "CD0344" Then '울산/광주/대전/원주/청주/코어전주 제외 %>
            <div class="swiper-pagination time-pager"></div>
            <% End If %>

            <% If campus_code = "INTRO" or campus_code = "CD0349" or campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" Then '인트로/울산/광주/대전/원주 %>
            <p class="r-txt">※ 표준 시간표는 학원 사정에 의해 변동될 수 있습니다.</p>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <p class="r-txt">※ 수업일정은 12월 중순~12월 말, 2주 집중과정으로 진행 <br>※ 학교 기말고사 일정에 따라 변동 가능성 있습니다.</p>
            <% End If %>
        </div>

        <!-- 바자관 표준 시간표 -->
        <!-- #include virtual = "/intro/2024/pre_winter/baja_time_table.asp" -->
        <!-- //바자관 표준 시간표 -->
    </div>
</div>

<div class="cont05">
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_tit.jpg" alt="프리윈터스쿨 프로그램"></p>
    <div style="position: relative;">
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_01.jpg" alt="입시 담임 선생님의 1:1 맞춤형 관리">
        <div class="cont-slide cont-slide01 swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <% If campus_code = "INTRO" or campus_code = "CD0342"  Then '인트로/대구 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_01_sl01.jpg" alt="1:1맞춤관리01">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont05_01_sl01.jpg" alt="1:1맞춤관리01">
                    <% End If %>
                </div>    
                <div class="swiper-slide">
                    <% If campus_code = "INTRO" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0340" or campus_code = "CD0341" or campus_code = "CD0343" Then '인트로/대구/울산/광주/대전/원주 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_01_sl02.jpg" alt="1:1맞춤관리02">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont05_01_sl02.jpg" alt="1:1맞춤관리02">
                    <% End If %>
                </div>  
                <div class="swiper-slide">
                    <% If campus_code = "INTRO" or campus_code = "CD0345" Then '인트로/창원 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_01_sl03.jpg" alt="1:1맞춤관리03">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont05_01_sl03.jpg" alt="1:1맞춤관리03">
                    <% End If %>
                </div>            
            </div>
            <div class="swiper-pagination type01"></div>
        </div>
    </div>
    <div style="position: relative;">
        <% If campus_code = "INTRO" or campus_code = "CD0349" or campus_code = "CD0345" or campus_code = "CD0346" or campus_code = "CD0344" or campus_code = "CD0246" Then '인트로/울산/창원/청주/코어전주/센텀 %>
        <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont05_02.jpg" alt="면학분위기로 소문난 바른공부 자습전용관">
        <% Else %>
        <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_02.jpg" alt="면학분위기로 소문난 바른공부 자습전용관">
        <% End If %>
        <div class="cont-slide cont-slide02 swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <% If campus_code = "INTRO" Then '인트로 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_02_sl01.jpg" alt="바른공부 자습전용관01">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont05_02_sl01.jpg" alt="1:1맞춤관리01">
                    <% End If %>
                </div>    
                <div class="swiper-slide">
                    <% If campus_code = "INTRO" or campus_code = "CD0342" or campus_code = "CD0345" Then '인트로/대구/창원 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_02_sl02.jpg" alt="바른공부 자습전용관02">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont05_02_sl02.jpg" alt="바른공부 자습전용관02">
                    <% End If %>
                </div>  
                <div class="swiper-slide">
                    <% If campus_code = "INTRO" or campus_code = "CD0340" or campus_code = "CD0341" Then '인트로/광주/대전 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/cont05_02_sl03.jpg" alt="바른공부 자습전용관03">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/cont05_02_sl03.jpg" alt="바른공부 자습전용관03">
                    <% End If %>
                </div>            
            </div>
            <div class="swiper-pagination type02"></div>
        </div>
    </div>
</div>

<div class="bot-banner">
    <% If campus_code = "INTRO" Then '인트로 %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/pre_winter/bot_banner.jpg" alt="프리윈터스쿨에서 앞선 겨울을 시작해 보세요"></p>
    <% Else %>
    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/pre_winter/bot_banner.jpg" alt="프리윈터스쿨에서 앞선 겨울을 시작해 보세요"></p>
    <% End If %>
</div>


