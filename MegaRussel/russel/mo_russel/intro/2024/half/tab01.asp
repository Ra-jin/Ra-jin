<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont01">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont01_tit.jpg" alt="최상위권이 집결하는 러셀, 러셀에서 빠르게 시작한 선배들은 최상위권 대입의 목표를 이루었습니다."></p>
        <div class="inner">
            <% If campus_code = "INTRO" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '인트로/코어청주/울산 %>
                <% If campus_code = "CD0346" Then '코어청주 %>
                <div class="h-box-result mb20">
                    <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                    <ul class="type06 mt30">
                        <li>
                            <p>의예</p>
                            <div><strong>8</strong>명</div>
                        </li>
                        <li>
                            <p>치의예</p>
                            <div><strong>1</strong>명</div>
                        </li>
                    </ul>
                    <ul class="type06">
                        <li>
                            <p>한의예</p>
                            <div><strong>4</strong>명</div>
                        </li>
                        <li>
                            <p>수의예</p>
                            <div><strong>1</strong>명</div>
                        </li>
                    </ul>
                    <ul class="type06">
                        <li>
                            <p>약학</p>
                            <div><strong>3</strong>명</div>
                        </li>
                        <li>
                            <p>SKY</p>
                            <div><strong>12</strong>명</div>
                        </li>
                    </ul>
                    
                    <!-- 데이터 산출 기준-->
                    <div class="l-pop">
                        <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                    </div>
                    <div class="layer-wrap">
                        <div class="bg-mask"></div>
                        <div class="layer-in">
                            <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                            <ul class="list-dot">
                                <li>2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외)</li>
                                <li>2024.02.29 기준, 지속적으로 업데이트 예정 </li> 
                            </ul>
                        </div>
                    </div>
                    <!-- //데이터 산출 기준 -->
                </div>
                <% End If %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <div class="banner-balloon"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/banner_balloon.png" alt="전국 1위"></div>
                <ul class="mt10">
                    <li style="padding:8px 0">
                        <p>서울대 의예과</p>
                        <div><strong>19</strong>명</div>
                    </li>
                </ul>
                <ul>
                    <li style="padding:8px 0">
                        <p>메이저 의대</p>
                        <div><strong>96</strong>명</div>
                    </li>
                    <li style="padding:8px 0">
                        <p>의치한약수</p>
                        <div><strong>1,530</strong>명</div>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        * 2024학년도 러셀 전체 학원 바른공부 자습전용관 재원생만의 대입 결과 (단과 수강생 제외/복수대학 합격 포함)<br>
                        * 2024학년도 서울대 의예과 합격자 수 (러셀 대치 7명,러셀 부천 1명,러셀 분당 1명,러셀 평촌 1명,러셀 대구 4명,러셀CORE 광주 2명, 러셀CORE 대전 3명)<br>
                        * 2024학년도 메이저 의대 합격자 수 (서울대의예과 19명, 연세대(서울)의예과 23명, 성균관대의예과 7명, 가톨릭대(성의)의예과 21명, 울산대의예과 6명, 고려대의과대학 20명) <br> 
                        * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 홈페이지 노출 기준<br>
                        * 2024.02.29 기준 
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <!-- //대입 결과 -->
            <!-- 그래프(도넛, 막대) -->
            <div class="h-box-graph">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/graph_tit.jpg" alt="수치가 보여주는 높은 성적 향상"></p>
                <div class="doughnut">
                    <p>반수반 재원생<br>
                        <strong><span>10명 중 9명</span> 성적 상승</strong><br>
                        <span>*HS반, 서의치반, 연고대반 재원생 기준</span>
                    </p>
                    <div class="chart-area">
                        <canvas id="doughnut-chart"></canvas>
                        <div class="chart-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/doughnut_img.png" alt="" /></div>
                    </div>
                </div>
                <div class="bar-graph">
                    <p>반수반 재원생<br>
                        <strong>백분위 상승 점수</strong>
                    </p>
                    <div class="graph-con">
                        <span class="bar-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/bar-graph_2022.png" alt="" /></span>
                        <span class="balloon"><strong>27.8점</strong> 상승</span>
                        <span class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/bar-graph_arrow.png" alt="" /></span>
                    </div>
                </div>
                <p class="r-txt">
                    *2023학년도 러셀 전체 학원 반수반 재원생 중<br>
                    2022/2023 수능 성적 확인이 가능한 학생들의 분석 결과<br>
                    /국수탐(2) 백분위 합 기준

                </p>
            </div>
            <!-- //그래프(도넛, 막대) -->
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <p class="tit">광주지역 재학생 <strong>수석 배출</strong></p>
                <ul class="mt20 type10">
                    <li>
                        <p class="f14">서울대 의예</p>
                        <div><strong>2</strong>명</div>
                    </li>
                </ul>
                <ul class="type10">
                    <li>
                        <p class="f14">메이저 의예</p>
                        <div><strong>9</strong>명</div>
                    </li>
                    <li>
                        <p class="f14">전국 의예</p>
                        <div><strong>69</strong>명</div>
                    </li>
                </ul>
                <ul class="type10">
                    <li class="two">
                        <p class="f14">메디컬<br>(의/치/한/수/약)</p>
                        <div><strong>119</strong>명</div>
                    </li>
                    <li>
                        <p class="f14">서연고</p>
                        <div><strong>28</strong>명</div>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <ul class="list-star">
                            <li>러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준)<br>
                                (복수 대학 합격자 포함 / 단과 수강생 제외)</li>
                            <li>24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준
                            </li>
                            <li>메이저 의예  : 서울대/연세대/성균관대/가톨릭대/울산대 기준</li>
                        </ul>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <!-- //대입 결과 -->
            <div class="mt20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont01_img.jpg" alt=""></div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type02">
                    <li>
                        <p>2년 연속<br>
                        <span>서울대학교 의예과</span><br>
                        합격생 배출</p>
                    </li>
                    <li>
                        <p>2년 연속<br>
                            대전 지역<br>
                            <span>메이저 의대 입결 1위</span>
                        </p>
                    </li>
                </ul>
                <ul class="type02">
                    <li>
                        <p>2024학년도<br>
                        메이저의예<span> 7명</span>
                        </p>
                    </li>
                    <li>
                        <p>2024학년도<br>
                            최종합격<br>
                            의/치/한/약/수<span> 74명</span>
                        </p>
                    </li>
                </ul>
                <ul class="type03">
                    <li>
                        <p>서울대<br>
                        의예과</p>
                        <div><strong>3</strong>명</div>
                    </li>
                    <li>
                        <p>메이저<br>
                        의예과</p>
                        <div><strong>7</strong>명</div>
                    </li>
                    <li>
                        <p>전국<br>
                        의예과</p>
                        <div><strong>41</strong>명</div>
                    </li>
                </ul>
                <ul class="type04">
                    <li>
                        <p>메디컬<br><span>(의/치/한/약/수)</span>
                        </p>
                        <div><strong>74</strong>명</div>
                    </li>
                    <li>
                        <p>SKY/<br>
                        포항공대/카이스트</p>
                        <div><strong>26</strong>명</div>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <ul class="list-bullet">
                            <li>최종 업데이트 : 2024-03-05 기준 / 매주 업데이트 예정
                            </li>
                            <li>2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준</li>
                            <li>메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예</li>
                            <li>대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                                (홈페이지 대입 실적 기준/2024-03-05 기준)
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type05">
                    <li>
                        <p>개원 첫 해<br>
                        <div>의학계열 <strong>총 83명 배출</strong></div>
                    </li>
                </ul>
                <ul class="type06">
                    <li>
                        <p>연세대 의대
                        </p>
                        <div><strong>3</strong>명</div>
                    </li>
                    <li>
                        <p>고려대 의대
                        </p>
                        <div><strong>1</strong>명</div>
                    </li>
                </ul>
                <ul class="type06">
                    <li>
                        <p>의예과</p>
                        <div><strong>46</strong>명</div>
                    </li>
                    <li>
                        <p>치&middot;한&middot;수&middot;약</p>
                        <div><strong>37</strong>명</div>
                    </li>
                </ul>
                <ul class="type06">
                    <li>
                        <p>SKY</span>
                        </p>
                        <div><strong>18</strong>명</div>
                    </li>
                    <li class="two">
                        <p>서성한이<br>
                        +과기원
                        </p>
                        <div><strong>31</strong>명</div>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <ul class="list-star">
                            <li>2024학년도 러셀CORE 전주 바른공부 자습전용관 재원생 중 수시 및 정시 합격자 기준 (복수 대학 합격자 포함/단과 수강생 미포함)</li>
                            <li>2024-02-26 기준이며, 지속적으로 업데이트 될 예정입니다.
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0247" Then '강남 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준<br>
                        (단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준) 
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
                <ul class="mt30 type07">
                    <li>
                        <p><div>5개년 연속<br>
                        <strong>서울대 의예과</strong>합격</div>
                    </li>
                </ul>
                <div class="stu-list">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu01.png" alt=""></dt>
                        <dd>2023학년도<br>
                        이윤서 학생</dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu03.png" alt=""></dt>
                        <dd>2023학년도<br>
                        김OO 학생</dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu03.png" alt=""></dt>
                        <dd>2022학년도<br>
                        서OO 학생</dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu04.png" alt=""></dt>
                        <dd>2021학년도<br>
                        김OO 학생</dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu02.png" alt=""></dt>
                        <dd>2020학년도<br>
                        양지헌 학생</dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu03.png" alt=""></dt>
                        <dd>2019학년도<br>
                        이OO 학생</dd>
                    </dl>
                </div>
                <ul class="type07">
                    <li>
                        <p><div>의학계열 누적합격생<br>
                        <strong>619명</strong> 배출</div>
                    </li>
                </ul>
                <ul class="type08">
                    <li>
                        <p>의예과</p>
                        <div><strong>327명</strong></div>
                    </li>
                </ul>
                <ul class="type08">
                    <li>
                        <p>치의예과</p>
                        <div><strong>79명</strong></div>
                    </li>
                    <li>
                        <p>한의예과</p>
                        <div><strong>110명</strong></div>
                    </li>
                </ul>
                <ul class="type08">
                    <li>
                        <p>수의예과</p>
                        <div><strong>31명</strong></div>
                    </li>
                    <li>
                        <p>약학과</p>
                        <div><strong>72명</strong></div>
                    </li>
                </ul>
                <ul class="type07">
                    <li>
                        <p><div>최상위권 대학<br>
                        누적 합격 현황</div>
                    </li>
                </ul>
                <ul class="type08">
                    <li style="width:173px">
                        <p>의치한수약</p>
                        <div><strong>619명</strong></div>
                    </li>
                </ul>
                <p class="info-detail">의예과 327명, 치의예과 79명,<br>
                    한의예과 110명, 수의예과 31명, 약학과 72명
                </p>
                <ul class="type08">
                    <li style="width:173px">
                        <p>서연고</p>
                        <div><strong>585명</strong></div>
                    </li>
                </ul>
                <p class="info-detail">서울대 113명, 연세대 237명, 고려대 235명</p>
                <ul class="type08">
                    <li class="p0" style="width:173px">
                        <p>서성한이중경외시 <br>
                            +카이스트, 포항공대</p>
                        <div><strong>1,215명</strong></div>
                    </li>
                </ul>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type06">
                    <li>
                        <p>의&middot;치&middot;한&middot;수&middot;약</p>
                        <div><strong>219</strong>명</div>
                    </li>
                </ul>
                <ul class="type06">
                    <li>
                        <p>서울대</p>
                        <div><strong>63</strong>명</div>
                    </li>
                    <li>
                        <p>SKY</p>
                        <div><strong>250</strong>명</div>
                    </li>
                </ul>
                <ul class="type09">
                    <li>
                        <p>서&middot;성&middot;한&middot;이</p>
                        <div><strong>210</strong>명</div>
                    </li>
                    <li>
                        <p>중&middot;경&middot;외&middot;시</p>
                        <div><strong>212</strong>명</div>
                    </li>
                </ul>
                <ul class="type09">
                    <li class="two">
                        <p class="f11">교대&middot;경대사관<br>
                            &middot;특성화대</p>
                        <div><strong>81</strong>명</div>
                    </li>
                    <li>
                        <p>주요 15개 대</p>
                        <div><strong>795</strong>명</div>
                    </li>
                </ul>
                <p class="r-txt">
                    ※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준<br>
                    (2024.02.29 기준)
                </p>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0245" Then '목동 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="type09 mt30">
                    <li>
                        <p>의예과</p>
                        <div><strong>15</strong>명</div>
                    </li>
                    <li>
                        <p>치한수</p>
                        <div><strong>14</strong>명</div>
                    </li>
                </ul>
                <ul class="type09">
                    <li>
                        <p>약학</p>
                        <div><strong>22</strong>명</div>
                    </li>
                    <li>
                        <p>SKY</p>
                        <div><strong>55</strong>명</div>
                    </li>
                </ul>
                <ul class="type10">
                    <li style="padding:13px 0 11px">
                        <p>과학기술원</p>
                        <div><strong>9</strong>명</div>
                        <span class="comment" style="display:block;">* KAIST 3명 포함
                        </span>
                    </li>
                    <li style="padding:13px 0 23px;">
                        <p>주요대학</p>
                        <div><strong>361</strong>명</div>
                    </li>
                </ul>
                <p class="r-txt">
                    * 2024학년도 러셀 목동 대학 합격자 수 기준 
                </p>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt=""></p>
                <ul class="type03">
                    <li class="one">
                        <p>서울대 의예</p>
                        <div><strong>1</strong>명</div>
                    </li>
                    <li class="one">
                        <p>서울대</p>
                        <div><strong>9</strong>명</div>
                    </li>
                    <li class="one">
                        <p>의치한수약</p>
                        <div><strong>50</strong>명</div>
                    </li>
                </ul>
                <ul class="type08">
                    <li class="one">
                        <p>연고대</p>
                        <div><strong>47</strong>명</div>
                    </li>
                    <li class="one">
                        <p>서성한이</p>
                        <div><strong>60</strong>명</div>
                    </li>
                    <li class="one">
                        <p>중경외시</p>
                        <div><strong>63</strong>명</div>
                    </li>
                </ul>
                <ul class="type08">
                    <li style="width:215px" class="one">
                        <p>KAIST, UNIST, GIST, DGIST, <br>
                            KENTECH, POSTECH,<br>
                            경찰대, 공군사관, 해군사관</p>
                        <div><strong>11</strong>명</div>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <p>※ 데이터 산출 기준<br>
                            *합격자 : 수시 최종발표 + 정시 일부발표 인원(2023년 바른공부 자습전용관 재원생 기준) <br>
                            *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결 <br>
                            2024.02.22(목) 기준           
                        </p>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0001" Then '대치 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <p>※ 데이터 산출 기준<br>
                            1) 2018학년도 수능 실성적 기준<br>
                            2) 2020학년도 수능 실성적 기준<br>
                            3) 2021학년도 수능 실성적 기준<br>
                               (*표준점수/백분위 합 기준)<br>
                            4) 2024학년도 러셀 대치 재원생의 합격자 기준<br>
                               (*복수대학 합격자 및 중복 합격자 포함)                            
                        </p>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 대치 최상위권 입시 결과"></p>
                <ul class="mt30 type11">
                    <li>
                        <p>2018/2020 <sup>1), 2)</sup></p>
                        <div><strong>수능 만점자 배출</strong></div>
                    </li>
                </ul>
                <ul class="type11">
                    <li>
                        <p>2021<sup>3)</sup></p>
                        <div><strong>수능 전국 수석 배출</strong></div>
                    </li>
                </ul>
                <ul class="type11">
                    <li class="two">
                        <p>2024 대입<sup>4)</sup><br>
                            메이저 의예과
                        </p>
                        <div><strong>총 35명 합격</strong></div>
                    </li>
                </ul>
                <ul class="type11">
                    <li class="two">
                        <p>2024 대입<sup>4)</sup><br>
                            전국 의예과
                        </p>
                        <div><strong>총 119명 합격</strong></div>
                    </li>
                </ul>
                <ul class="type11">
                    <li class="two">
                        <p>2024 대입<sup>4)</sup><br>
                            의/치/한/수/약
                        </p>
                        <div><strong>총 199명 합격</strong></div>
                    </li>
                </ul>
                <ul class="type11">
                    <li class="two">
                        <p>2024 대입<sup>4)</sup><br>
                            서/연/고
                        </p>
                        <div><strong>총 230명 합격</strong></div>
                    </li>
                </ul>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type12">
                    <li style="width:180px" class="p0">
                        <p>의예과</p>
                        <div><strong>48</strong>명</div>
                        <span class="comment">(서울대 의예과 1명 포함)</span>
                    </li>
                </ul>
                <ul class="type12">
                    <li>
                        <p>치의예과</p>
                        <div><strong>17</strong>명</div>
                    </li>
                    <li>
                        <p>한의예과</p>
                        <div><strong>15</strong>명</div>
                    </li>
                </ul>
                <ul class="type12">
                    <li>
                        <p>약학대</p>
                        <div><strong>32</strong>명</div>
                    </li>
                    <li>
                        <p>수의예과</p>
                        <div><strong>15</strong>명</div>
                    </li>
                </ul>
                <ul class="type12">
                    <li>
                        <p>서울대</p>
                        <div><strong>31</strong>명</div>
                    </li>
                    <li>
                        <p>연&middot;고대</p>
                        <div><strong>92</strong>명</div>
                    </li>
                </ul>
                <ul class="type12">
                    <li>
                        <p>서&middot;성&middot;한&middot;이</p>
                        <div><strong>98</strong>명</div>
                    </li>
                    <li>
                        <p>중&middot;경&middot;외&middot;시</p>
                        <div><strong>104</strong>명</div>
                    </li>
                </ul>
                <p class="r-txt">
                    * 러셀 분당 바른공부 자습전용관 재원생 기준<br>
                    (복수 대학 합격자 및 수시/정시 중복 합격자 포함, 단과 수강생 미포함)
                </p>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30">
                    <li style="padding:8px 0">
                        <p>의예과</p>
                        <div><strong>47</strong>명</div>
                    </li>
                    <li style="padding:8px 0">
                        <p>치한수약</p>
                        <div><strong>34</strong>명</div>
                    </li>
                </ul>
                <ul>
                    <li style="padding:8px 0">
                        <p>서연고</p>
                        <div><strong>34</strong>명</div>
                    </li>
                    <li style="padding:8px 0">
                        <p>서성한이</p>
                        <div><strong>54</strong>명</div>
                    </li>
                </ul>
                <ul>
                    <li style="padding:8px 0">
                        <p>중경외시</p>
                        <div><strong>36</strong>명</div>
                    </li>
                    <li>
                        <p>이공계특성화대<br>
                        /사관학교/교대</p>
                        <div><strong>13</strong>명</div>
                    </li>
                </ul>
                <p class="r-txt">
                    *러셀 센텀 바른공부자습전용관 재원생 기준 <br>
                    (복수 대학합격자 및 수시/정시 중복합격자 포함, 단과 수강생 미포함)

                </p>
            </div>
            <!-- //대입 결과 -->
            <div class="mt20"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont01_img.jpg" alt=""></div>

            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="결과로 증명하는 학생중심 러셀 중계"></p>
                <ul class="mt30 type12">
                    <li>
                        <p>의예과</p>
                        <div><strong>11</strong>명</div>
                    </li>
                    <li>
                        <p>서울대</p>
                        <div><strong>14</strong>명</div>
                    </li>
                </ul>
                <ul class="type09 silver">
                    <li>
                        <p>의치한수약</p>
                        <div><strong>27</strong>명</div>
                    </li>
                    <li class="ml5">
                        <p>서연고</p>
                        <div><strong>40</strong>명</div>
                    </li>
                </ul>
                <ul class="type09 silver">
                    <li style="width:105px">
                        <p>서성한이</p>
                        <div><strong>34</strong>명</div>
                    </li>
                    <li class="ml5" style="width:105px">
                        <p>중경외시</p>
                        <div><strong>44</strong>명</div>
                    </li>
                    <li class="ml5" style="width:105px">
                        <p>이외<br>
                        주요대학</p>
                        <div><strong>184</strong>명</div>
                    </li>
                </ul>
                <p class="r-txt">
                    ※ 2024학년도 러셀 중계 바른공부 자습전용관 재원생 기준<br>
                    ※ 중복대학 합격자수 포함(2024.03.07 기준)
                    
                </p>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="결과로 증명하는 학생중심 러셀 중계"></p>
                <ul class="mt30 type13">
                    <li>
                        <div>4년 연속 배출</div>
                        <div><strong>1</strong></div>
                        <p>서울대 의예과</p>
                    </li>
                    <li>
                        <div>메이저 의예 포함</div>
                        <div><strong>64</strong></div>
                        <p>전국 의약학계열</p>
                    </li>
                </ul>
                <ul class="type13">
                    <li>
                        <div>의예, 치의예 포함</div>
                        <div><strong>18</strong></div>
                        <p>서울대</p>
                    </li>
                    <li>
                        <div>고려대 의대 포함</div>
                        <div><strong>55</strong></div>
                        <p>연고대</p>
                    </li>
                </ul>
                <ul class="type13">
                    <li class="two">
                        <div><strong>74</strong></div>
                        <p>서/성/한/이</p>
                    </li>
                    <li class="p0">
                        <div>중앙의/약,<br>경희한 포함</div>
                        <div><strong>58</strong></div>
                        <p>중/경/외/시</p>
                    </li>
                </ul>
                <ul class="type13">
                    <li class="two">
                        <div><strong>61</strong></div>
                        <p>건/동/홍/숙</p>
                    </li>
                    <li class="two">
                        <div><strong>481</strong></div>
                        <p>주요대학 합계</p>
                    </li>
                </ul>
                <p class="r-txt">
                    *안양, 과천, 의왕, 군포 지역 기준<br>
                    **2024.03.04기준<br>
                    (중복 합격 건수 포함, 추가 합격자 발표 시까지 업데이트 예정)

                </p>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type06">
                    <li>
                        <div><strong>4</strong></div>
                        <p>서울대 의예</p>
                    </li>
                    <li>
                        <div><strong>3</strong></div>
                        <p>연세대 의예</p>
                    </li>
                </ul>
                <ul class="type06">
                    <li class="pb0">
                        <div><strong>9</strong></div>
                        <p class="pb10">메이저 의예</p>
                        <span class="comment">(서울대, 연세대, 성균관대,<br>
                         가톨릭대, 울산대 기준)</span>
                    </li>
                    <li style="padding-bottom:35px">
                        <div><strong>116</strong></div>
                        <p>전국 의예</p>
                    </li>
                </ul>
                <ul class="mt0">
                    <li style="padding:6px 0;">
                        <div><strong>116</strong></div>
                        <p>치&middot;한&middot;수&middot;약학</p>
                    </li>
                    <li style="padding:6px 0;">
                        <div><strong>73</strong></div>
                        <p>서&middot;연&middot;고</p>
                    </li>
                </ul>
                <ul>
                    <li>
                        <div><strong>88</strong></div>
                        <p>서성한이<br>
                        과학기술원</p>
                    </li>
                    <li>
                        <div><strong>117</strong></div>
                        <p>경북대</p>
                        <span class="comment">(*의약학 계열 44명)</span>
                    </li>
                </ul>
                <p class="r-txt">
                    *2023년 러셀 대구 바른공부 자습전용관 재원생 기준 <br>
                (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)<br>
                *2024.3.15 기준이며, 지속적으로 업데이트 될 예정입니다.
                </p>
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type02">
                    <li style="width:140px">
                        <p>2024학년도<br>
                            최종합격<br>
                            서울대학교 <span>3명</span></p>
                    </li>
                    <li style="width:170px;">
                        <p>2024학년도<br>
                            <span>메이저 의예<br>
                                &lt;가톨릭대&gt;</span> 합격생 배출
                        </p>
                    </li>
                </ul>
                <ul class="type02">
                    <li>
                        <p>2024학년도<br>
                            최종합격<br>
                            의/치/한/약/수 <span>46명</span>
                        </p>
                    </li>
                    <li>
                        <p>2024학년도<br>
                            최종합격<br>
                            SKY <span>17명</span>
                        </p>
                    </li>
                </ul>
                <ul class="type03">
                    <li class="one">
                        <p>의예과</p>
                        <div><strong>25</strong>명</div>
                    </li>
                    <li class="one">
                        <p>치의예</p>
                        <div><strong>4</strong>명</div>
                    </li>
                    <li class="one">
                        <p>한의예</p>
                        <div><strong>4</strong>명</div>
                    </li>
                </ul>
                <ul class="type03">
                    <li class="one">
                        <p>수의예</p>
                        <div><strong>10</strong>명</div>
                    </li>
                    <li class="one">
                        <p>약학과</p>
                        <div><strong>3</strong>명</div>
                    </li>
                    <li class="one">
                        <p>SKY</p>
                        <div><strong>17</strong>명</div>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준 <br>
                        ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준 <br>
                        ※ 최종 업데이트 : 2024-02-28  
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <!-- //대입 결과 -->
            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
            <!-- 대입 결과 -->
            <div class="h-box-result">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/result_tit.jpg" alt="2024학년도 러셀 최상위권 대입 결과"></p>
                <ul class="mt30 type02">
                    <li>
                        <p>개원 첫해<br>
                        <span>메이저 의대</span><br>
                        합격생 배출
                        </p>
                    </li>
                    <li>
                        <p>개원 첫해<br>
                        전국 의예과 합격생<br>
                        <span>21명</span> 배출
                        </p>
                    </li>
                </ul>
                <ul class="type02">
                    <li>
                        <p>2024학년도 최종합격<br>
                            의/치/한/약/수<br>
                            <span>42명</span>
                        </p>
                    </li>
                    <li>
                        <p>2024학년도 최종합격<br>
                            SKY <span>10명</span>
                        </p>
                    </li>
                </ul>
                <ul class="type03">
                    <li class="one" style="width:110px">
                        <p class="f12">울산대 의예</p>
                        <div><strong>1</strong>명</div>
                    </li>
                    <li class="one" style="width:110px">
                        <p class="f12">서울대 치의예</p>
                        <div><strong>1</strong>명</div>
                    </li>
                    <li class="one">
                        <p class="f12">전국 의예</p>
                        <div><strong>21</strong>명</div>
                    </li>
                </ul>
                <ul class="type03">
                    <li class="one" style="width:140px">
                        <p class="f12">메디컬<span class="f10">(의/치/한/약/수)</span></p>
                        <div><strong>42</strong>명</div>
                    </li>
                    <li class="one" style="width:85px">
                        <p class="f12">SKY</p>
                        <div><strong>10</strong>명</div>
                    </li>
                    <li class="one">
                        <p class="f12">서성한이</p>
                        <div><strong>33</strong>명</div>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 최종 업데이트 : 2024-03-07<br>
                        ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                        ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예

                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <!-- //대입 결과 -->
            <% End If %>
        </div>
    </div>
    <div class="cont02">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont02_tit.jpg" alt="반수에 특화된 시스템이 만들어 낸 놀라운 결과 러셀 반수반 선배들이 증명합니다."></p>
        <div class="inner">
            <!-- 상승리뷰 슬라이드 -->
            <!-- #include virtual = "/intro/2024/half/review_slide.asp" -->
            <!-- //상승리뷰 슬라이드 -->
        <% If campus_code = "CD0247" Then '강남 %>
            <p class="r-txt">
                ※ 백분위 성적 기준 : 국어, 수학, 탐구평균 성적 합계<br>
                ※ 상승률 산정 기준 : 백분위 상승 점수 / (백분위 만점 - 전년도 백분위 합) 
            </p>
        <% End If %>
        </div>
        <% If campus_code = "INTRO" OR campus_code = "CD0249" OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '인트로/영통/대치/코어청주/울산 %>
        <!-- 합격자 리스트 롤링 -->
        <div class="pass-rolling-l swiper-container">
            <ul class="swiper-wrapper">
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>수의예과</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>강OO</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>러셀 분당</dt>
                        <dd>곽OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>중앙대(서울)
                        <br>의학부</p>
                    <dl>
                        <dt>러셀CORE 광주</dt>
                        <dd>권OO</dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>약학계열</p>
                    <dl>
                        <dt>러셀 중계</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>식물생산과학부</p>
                    <dl>
                        <dt>러셀CORE 대전</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경영대학</p>
                    <dl>
                        <dt>러셀 평촌</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>재료공학부</p>
                    <dl>
                        <dt>최상위권 여학생 의대전문관
                        </dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>수의예과</p>
                    <dl>
                        <dt>러셀 센텀</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>중앙대(서울)
                        <br>의학부</p>
                    <dl>
                        <dt>러셀 목동</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>경희대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>러셀 대구</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>첨단융합학부</p>
                    <dl>
                        <dt>러셀CORE 광주</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>러셀 대구</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경영대학</p>
                    <dl>
                        <dt>러셀CORE 청주</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>서연고&middot;의치대 전문관
                        </dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>인문계열</p>
                    <dl>
                        <dt>러셀CORE 광주</dt>
                        <dd>김OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>러셀CORE 광주</dt>
                        <dd>문OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>연세대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>박OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>서연고&middot;의치대 전문관
                        </dt>
                        <dd>박OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>경희대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>러셀 강남</dt>
                        <dd>박OO
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
        <div class="pass-rolling-r swiper-container" dir="rtl">
            <ul class="swiper-wrapper">
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>고려대(안암)
                        <br>의과대학</p>
                    <dl>
                        <dt>최상위권 남학생 의대전문관
                        </dt>
                        <dd>박OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경영대학</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>박OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>고려대(안암)
                        <br>의과대학</p>
                    <dl>
                        <dt>서연고&middot;의치대 전문관
                        </dt>
                        <dd>박OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>러셀 강남</dt>
                        <dd>백OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>고려대(안암)
                        <br>의과대학</p>
                    <dl>
                        <dt>러셀CORE 전주</dt>
                        <dd>서OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>약학계열</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>서OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>공과대학</p>
                    <dl>
                        <dt>최상위권 남학생 의대전문관
                        </dt>
                        <dd>손OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>약학계열</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>송OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>한양대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>러셀 대구</dt>
                        <dd>신OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>경희대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>최상위권 남학생 의대전문관</dt>
                        <dd>심OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>연세대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>최상위권 남학생 의대전문관</dt>
                        <dd>심OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>치의학학석사통합과정</p>
                    <dl>
                        <dt>러셀 분당</dt>
                        <dd>안OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>한양대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>러셀CORE 광주</dt>
                        <dd>엄OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>러셀 분당</dt>
                        <dd>윤OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>러셀 중계</dt>
                        <dd>이OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>경제학부</p>
                    <dl>
                        <dt>러셀 대치</dt>
                        <dd>이OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>정치외교학부</p>
                    <dl>
                        <dt>러셀 대구</dt>
                        <dd>임OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>서울대<br>약학계열
                    </p>
                    <dl>
                        <dt>서연고&middot;의치대 전문관</dt>
                        <dd>전OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>고려대(안암)
                        <br>의과대학</p>
                    <dl>
                        <dt>서연고&middot;의치대 전문관</dt>
                        <dd>전OO
                        </dd>
                    </dl>
                </li>
                <li class="swiper-slide">
                    <div>2024학년도</div>
                    <p>경희대(서울)
                        <br>의예과</p>
                    <dl>
                        <dt>러셀CORE 대전</dt>
                        <dd>최OO
                        </dd>
                    </dl>
                </li>
            </ul>
        </div>
        <!-- //합격자 리스트 롤링 -->
        <% End If %>
        <% If campus_code <> "CD0001" Then '대치 %>
        <div>
            <a href="<%=susi_url%>" onclick="<%=susi_alert%>" class="btn-link"><%=susi_txt%></a>
        </div>
        <% End If %>
    </div>
</div>