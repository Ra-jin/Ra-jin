<div class="cont js-cont-wrap <%=campusName%>">
    <% If campus_code = "INTRO" or campus_code = "CD0245" or campus_code = "CD0349" Then '인트로/목동/울산 %>
    <div class="cont01">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont01_tit.jpg" alt="최상위권이 집결하는 러셀, 러셀에서 빠르게 시작한 선배들은 최상위권 대입의 목표를 이루었습니다."></p>
        <div class="inner">
            <% If campus_code = "CD0245" Then '목동 %>
            <div class="g-box-result md">
                <div class="box">
                    <p class="tit">러셀 목동<br><strong>SKY 역대 최다 배출</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_bg01.png" alt="그래프"></p>
                </div>
                <div class="box">
                    <p class="tit">러셀 목동<br><strong>최상위권 주요 대학 <br>역대 최다 배출</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_bg02.png" alt="그래프"></p>
                </div>
                <p class="r-txt">* 2022-2024학년도 러셀 목동 합격자 수 기준</p>
            </div>
            <% Else %>
            <div class="g-box-result">
                <div class="box">
                    <p class="tit">러셀 <strong>서울대 의예과 <br> 역대 최다 배출</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_bg01.png" alt="그래프"></p>
                    <!-- <p class="num">19</p> -->
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/top_label.png" alt="" /></span>
                </div>
                <div class="box">
                    <p class="tit">러셀 <strong>메이저 의대 <br> 역대 최다 배출</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_bg02.png" alt="그래프"></p>
                    <!-- <p class="num">96</p> -->
                </div>
                <div class="box">
                    <p class="tit">러셀 <strong>전국 의예과 <br> 역대 최다 배출</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_bg03.png" alt="그래프"></p>
                    <!-- <p class="num">703</p> -->
                </div>
                <div class="box long">
                    <p class="tit">러셀 <strong>의&middot;치&middot;한&middot;약&middot;수 <br> 역대 최다 배출</strong><sup>*</sup><br><span>경희대 한의예과(인문) 4명</span></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_bg05.png" alt="그래프"></p>
                    <!-- <p class="num">1496</p> -->
                </div>
                <div class="box long">
                    <p class="tit">러셀 <strong>서울대 <br> 역대 최다 배출</strong><sup>*</sup><br><span>서울대 경영학부 11명 <br>서울대 경제학부 17명</span></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_bg04.png" alt="그래프"></p>
                    <!-- <p class="num">249</p> -->
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/top_label.png" alt="" /></span>
                </div>
                <div class="box midLong">
                    <p class="tit">러셀 <strong>서울대&middot;연세대&middot;고려대 <br> 역대 최다 배출</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/g_box_result_bg06.png" alt="그래프"></p>
                    <!-- <p class="num">1034</p> -->
                </div>

                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <ul class="list-star">
                            2020-2024학년도 러셀에서 배출한 서울대 의예과/메이저 의대/전국 의예과/의&middot;치&middot;한&middot;약&middot;수/서울대&middot;연세대&middot;고려대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                            - 2024학년도 서울대 의예과 배출: 러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명,러셀CORE 광주 2명, 러셀CORE 대전 3명 배출 <br>
                            - 2024학년도 메이저 의대 배출: 서울대 의예과 19명, 연세대(서울) 의예과 23명, 성균관대 의예과 7명, 가톨릭대(성의) 의예과 21명, 울산대 의예과 6명, 고려대 의과대학 20명 <br>
                            전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                            ※ 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 예정입니다.                            
                        </ul>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            <% End If %>
        </div>
    </div>
    <% Else %>
    <% If campus_code <> "CD0257" Then '중계 제외 %>
    <div class="cont01-1">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont01_tit.jpg" alt="최상위권이 집결하는 러셀, 러셀에서 빠르게 시작한 선배들은 최상위권 대입의 목표를 이루었습니다."></p>
        <div class="inner">
            <% If campus_code = "CD0001" Then '대치 %>
            <div class="r-box-result type02 dc">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-row">
                    <li>
                        <div>
                            <p>
                                2018/2020 <sup>1),2)</sup><br>
                                <strong>수능 만점자 배출</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2021 <sup>3)</sup><br>
                                <strong>수능 전국 수석 배출</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024 대입 <sup>4)</sup><br>
                                메이저 의예과 <br>
                                <strong>총 35명 합격</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024 대입 <sup>4)</sup><br>
                                전국 의예과 <br>
                                <strong>총 119명 합격</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024 대입 <sup>4)</sup><br>
                                의/치/한/수/약 <br>
                                <strong>총 199명 합격</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024 대입 <sup>4)</sup><br>
                                서/연/고 <br>
                                <strong>총 230명 합격</strong>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        1) 2018학년도 수능 실성적 기준 <br>
                        2) 2020학년도 수능 실성적 기준 <br>
                        3) 2021학년도 수능 실성적 기준 <br>
                           (*표준점수/백분위 합 기준) <br>
                        4) 2024학년도 러셀 대치 재원생의 합격자 기준 <br>
                           (*복수대학 합격자 및 중복 합격자 포함)                                         
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% ElseIf campus_code = "CD0250" Then '부천 %>
            <div class="r-box-result type02">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-row">
                    <li>
                        <div>
                            <p>
                                2024학년도 인천&middot;부천지역 <br>
                                최상위권 입결 <br>
                                <strong>1<span>위</span></strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024학년도 수능 <br>
                                의약학계열 합격 <br>
                                <strong>50<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024학년도 수능 <br>
                                서울대&middot;연세대&middot;고려대 합격 <br>
                                <strong>56<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        
                        *합격자 : 수시/정시 최종발표 인원(2023년 바른공부 자습전용관 재원생 기준) <br>
                        *지역 입결 1위 인천/부천 재수종합학원 홈페이지 입결
                                       
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="r-box-result type03 gj">
                <ul class="line-row">
                    <li>
                        <div>
                            <p>
                                러셀CORE 광주 <br>
                                <strong>광주지역 재학생 수석 배출<sup>*</sup></strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_trophy.png" alt="트로피"></p>
            </div>
            <div class="r-box-result type04 gj">
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서울대 의예<br>
                                <strong>2<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                메이저 의예<br>
                                <strong>9<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                전국 의예<br>
                                <strong>69<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                메디컬 <span class="small-txt">(의/치/한/수/약)</span> <br>
                                <strong>119<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                서연고 <br>
                                <strong>28<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- <ul class="g-box-result">
                <li class="box">
                    <p class="tit">러셀CORE 광주<br><strong>메이저 의대 <br> 350% 상승</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_bg01.png" alt="그래프"></p>
                </li>
                <li class="box">
                    <p class="tit">러셀CORE 광주<br><strong>전국 의예과 <br> 44% 상승</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_bg02.png" alt="그래프"></p>
                </li>
                <li class="box">
                    <p class="tit">러셀CORE 광주<br><strong>서울대 <br> 100% 상승</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_bg03.png" alt="그래프"></p>
                </li>
                <li class="box">
                    <p class="tit">러셀CORE 광주<br><strong>의&middot;치&middot;한&middot;수&middot;약 <br> 27% 상승</strong><sup>*</sup></p>
                    <p class="arrow"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_arrow.png" alt="화살표"></p>
                    <p class="graph"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/g_box_result_bg04.png" alt="그래프"></p>
                </li>
            </ul> -->

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준) <br>
                        (복수 대학 합격자 포함 / 단과 수강생 제외) <br>
                        *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준 <br>
                        *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준                                                                                         
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="r-box-result type04">
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                2년 연속 <br>
                                <strong>서울대학교 의예과</strong> <br>
                                합격생 배출
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2년 연속 <br>
                                대전 지역 <strong>최상위권 <br>
                                입결 1위</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                2024학년도 <br>
                                메이저 의예과 <br>
                                <strong>7명</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024학년도 최종합격<br>
                                의/치/한/약/수 <br>
                                <strong>74명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서울대 <br>
                                의예과 <br>
                                <strong>3<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                메이저 <br>
                                의예과 <br>
                                <strong>7<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                전국 <br>
                                의예과 <br>
                                <strong>41<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                메디컬 <br>
                                <span class="small-txt">(의/치/한/약/수)</span> <br>
                                <strong>74<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                SKY/포항공대/ <br>
                                카이스트 <br>
                                <strong>26<span>명</span></strong>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        ※ 최종 업데이트 : 2024-03-05 기준 / 매주 업데이트 예정 <br>
                        ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준 <br>
                        ※ 최상위권: 메디컬(의/치/한/약/수) + SKY <br>
                        ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준(홈페이지 대입 실적 기준/2024-03-05 기준)                                                                 
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->

            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
            <div class="r-box-result type01 cj">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                의예 <br>
                                <strong>8</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                치의예 <br>
                                <strong>1</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                한의예 <br>
                                <strong>4</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                수의예 <br>
                                <strong>1</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                약학 <br>
                                <strong>3</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                SKY <br>
                                <strong>12</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        ※ 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외) 2024.02.29 기준, 지속적으로 업데이트 예정                                                               
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->

            <% ElseIf campus_code = "CD0247" Then '강남 %>
            <div class="r-box-result type05">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul>
                    <li>
                        <div>
                            <p>
                                5개년 연속 <br>
                                <strong>서울대 의예과</strong> 합격
                            </p>
                        </div>
                    </li>
                </ul>
                <div class="stu-list">
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu01.png" alt=""></dt>
                        <dd>
                            2023학년도<br>
                            <strong>이윤서 학생</strong>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu03.png" alt=""></dt>
                        <dd>
                            2023학년도<br>
                            <strong>김OO 학생</strong>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu03.png" alt=""></dt>
                        <dd>
                            2022학년도<br>
                            <strong>서OO 학생</strong>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu04.png" alt=""></dt>
                        <dd>
                            2021학년도<br>
                            <strong>김OO 학생</strong>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu02.png" alt=""></dt>
                        <dd>
                            2020학년도<br>
                            <strong>양지헌 학생</strong>
                        </dd>
                    </dl>
                    <dl>
                        <dt><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/stu03.png" alt=""></dt>
                        <dd>
                            2019학년도<br>
                            <strong>이OO 학생</strong>
                        </dd>
                    </dl>
                </div>
                <ul>
                    <li>
                        <div>
                            <p>
                                의학계열 누적합격생 <br>
                                <strong>619명</strong> 배출
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="leaf-mini-silver mini">
                    <li>
                        <div>
                            <p>
                                의예과 <br>
                                <strong>327명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="leaf-mini-silver mini">
                    <li>
                        <div>
                            <p>
                                치의예과 <br>
                                <strong>79명</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                한의예과 <br>
                                <strong>110명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="leaf-mini-silver mini">
                    <li>
                        <div>
                            <p>
                                수의예과 <br>
                                <strong>31명</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                약학과 <br>
                                <strong>72명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li>
                        <div>
                            <p>
                                최상위권 대학 <br>
                                누적 합격 현황
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                의치한수약 <br>
                                <strong>619명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <p class="info-detail">의예과 327명, 치의예과 79명,<br>
                    한의예과 110명, 수의예과 31명, 약학과 72명
                </p>
                <ul class="leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                서연고 <br>
                                <strong>585명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <p class="info-detail">서울대 113명, 연세대 237명, 고려대 235명</p>
                <ul class="leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                서성한이중경외시 <br>
                                +카이스트, 포항공대 <br>
                                <strong>1,215명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준) 
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->

            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="r-box-result type06">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                의&middot;치&middot;한&middot;수&middot;약 <br>
                                <strong>219</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서울대 <br>
                                <strong>63</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                SKY <br>
                                <strong>250</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서&middot;성&middot;한&middot;이 <br>
                                <strong>210</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                중&middot;경&middot;외&middot;시 <br>
                                <strong>212</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                교대&middot;경대사관 <br> &middot;특성화대 <br>
                                <strong>81</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                주요 15개 대 <br>
                                <strong>795</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">
                    ※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준<br>
                    (2024.02.29 기준)
                </p>
            </div>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <div class="r-box-result type05 pc">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-row">
                    <li>
                        <div>
                            <p>
                                서울대<br>
                                <strong>18</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                의약학계열<br>
                                <strong>64</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
    
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                연세대<br>
                                <strong>24</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                고려대<br>
                                <strong>31</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                서강대<br>
                                <strong>9</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                성균관대<br>
                                <strong>35</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                한양대<br>
                                <strong>8</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col leaf-mini-silver mini">
                    <li>
                        <div>
                            <p>
                                중앙대<br>
                                <strong>29</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                한국외대<br>
                                <strong>6</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                경희대<br>
                                <strong>17</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                특성화대<br>
                                <strong>6</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">* 2024년 러셀 평촌 바른공부 자습전용관 재원생 기준</p>
            </div>
            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
            <div class="r-box-result type01 wj">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>   
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                2024학년도 <br>
                                최종합격 서울대학교 <br>
                                <strong>3명</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024학년도 <br>
                                <strong>메이저 의예<가톨릭대></strong> <br>
                                합격생 배출
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                2024학년도 최종합격 <br>
                                의/치/한/약/수 <br>
                                <strong>46명</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024학년도 <br>
                                최종합격 SKY <br>
                                <strong>17명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                의예과 <br>
                                <strong>25</strong>명
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                치의예 <br>
                                <strong>4</strong>명
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                한의예 <br>
                                <strong>4</strong>명
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                수의예 <br>
                                <strong>10</strong>명
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                약학과 <br>
                                <strong>3</strong>명
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                SKY <br>
                                <strong>17</strong>명
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        ※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준 <br>
                        ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준 <br>
                        ※ 최종 업데이트 : 2024-02-28
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
            <div class="r-box-result type01 jj">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                연세대 의예 <br>
                                <strong>3</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                고려대 의예 <br>
                                <strong>1</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                의예과 <br>
                                <strong>46</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                치&middot;한&middot;수&middot;약 <br>
                                <strong>37</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                SKY <br>
                                <strong>18</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                서성한이 <br>과기원 <br>
                                <strong>31</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        ※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.) <br>
                        ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 <br> 
                        (홈페이지 대입 실적 기준)                
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
            <div class="r-box-result type01 cw">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>   
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                개원 첫해 <br>
                                <strong>메이저 의대 합격생 <br>
                                배출</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                개원 첫해 <br>
                                <strong>
                                    전국 의예과 합격생 <br>
                                    21명 배출
                                </strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col leaf-mini-silver">
                    <li>
                        <div>
                            <p>
                                2024학년도 최종합격 <br>
                                <strong>의/치/한/약/수 42명</strong>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                2024학년도 최종합격 <br>
                                <strong>SKY 10명</strong>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                울산대 <br>
                                의예 <br>
                                <strong>1</strong>명
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                서울대 <br>
                                치의예 <br>
                                <strong>1</strong>명
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                전국 의예 <br>
                                <strong>21</strong>명
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                메디컬 <br>
                                <span class="small-txt">(의/치/한/약/수)</span> <br>
                                <strong>42</strong>명
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                SKY/서성한이 <br>
                                <strong>43</strong>명
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        ※ 최종 업데이트 : 2024-03-07 <br>
                        ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함) <br>
                        ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예                        
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <div class="r-box-result type01 bd">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                의예과<br>
                                <strong>48</strong><span>명</span> <br>
                                <span class="sub-txt">(서울대 의예과 1명 포함)</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                치의예과<br>
                                <strong>17</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                한의예과<br>
                                <strong>15</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                약학대<br>
                                <strong>32</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                수의예과<br>
                                <strong>15</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서울대<br>
                                <strong>31</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                연&middot;고대<br>
                                <strong>92</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서&middot;성&middot;한&middot;이<br>
                                <strong>98</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                중&middot;경&middot;외&middot;시<br>
                                <strong>104</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <p class="r-txt">
                    ※ 러셀 분당 바른공부 자습전용관 재원생 기준<br>
                    (복수 대학 합격자 및 수시/정시 중복 합격자 포함, 단과 수강생 미포함)
                </p>
            </div>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div class="r-box-result type01 dg">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                <strong>4</strong><br>
                                서울대 의예
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                <strong>3</strong><br>
                                연세대 의예
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                <strong>9</strong><br>
                                메이저 의예<br>
                                <span class="sub-txt">
                                    (서울대, 연세대, 성균관대, <br>
                                    가톨릭대, 울산대 기준)
                                </span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                <strong>116</strong><br>
                                전국 의예
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                <strong>116</strong><br>
                                치&middot;한&middot;수&middot;약학
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                <strong>73</strong><br>
                                서&middot;연&middot;고
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                <strong>88</strong><br>
                                서성한이 <br>
                                과학기술원
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                <strong>117</strong><br>
                                경북대 <br>
                                <span class="sub-txt">
                                    (* 의약학계열 30명)
                                </span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        *2023년 러셀 대구 바른공부 자습전용관 재원생 기준 <br>
                        (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함) <br>
                        *2024.3.15 기준이며, 지속적으로 업데이트 될 예정입니다
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            <div class="r-box-result type01 ct">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                의예과<br>
                                <strong>47</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                치&middot;한&middot;수&middot;약<br>
                                <strong>43</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서&middot;연&middot;고<br>
                                <strong>34</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                서&middot;성&middot;한&middot;이<br>
                                <strong>54</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                중&middot;경&middot;외&middot;시<br>
                                <strong>36</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                이공계특성화대/<br>
                                사관학과/교대<br>
                                <strong>13</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/rBox_tit02.jpg" alt="러셀 ㅇㅇ 최상위권 입시 결과"></p>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                의예과<br>
                                <strong>223</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                치&middot;한&middot;수&middot;약<br>
                                <strong>168</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                서&middot;연&middot;고<br>
                                <strong>161</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                서&middot;성&middot;한&middot;이<br>
                                <strong>219</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                중&middot;경&middot;외&middot;시<br>
                                <strong>204</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
                <ul class="line-col">
                    <li>
                        <div>
                            <p>
                                이공계특성화대/<br>
                                사관학과/교대<br>
                                <strong>85</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                    <li>
                        <div>
                            <p>
                                부산대&middot;경북대<br>
                                <strong>319</strong><span>명</span>
                            </p>
                        </div>
                    </li>
                </ul>
            </div>

            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/summer/ico_info.png" alt=""></span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-star">
                        * 2024 의/치/한/약/수 합격자. 23년 러셀 센텀 바른공부 자습전용관 11월 재원생 기준 <br>
                        * 2024 주요 15개대 학 수시/정시 입결. 23년 러셀 센텀 바른공부 자습전용관 재원생 기준 (복수 합격자 포함) <br>
                        * 홈페이지 대입 실적 기준, 2024.03.10 기준 <br>
                        * 러셀 센텀학원 바른공부 자습전용관 재원생 20-24학년도 합격자 기준(단과 수강생 제외, 복수대학 합격자 포함)                        
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <% End If %>
        </div>
    </div>
    <% End If %>
    <% End If %>
    <div class="cont02">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/summer/cont02_tit.jpg" alt="반수에 특화된 시스템이 만들어 낸 놀라운 결과 러셀 반수반 선배들이 증명합니다."></p>
        <div class="inner">
            <!-- 상승리뷰 슬라이드 -->
            <!-- #include virtual = "/intro/2024/summer/review_slide.asp" -->
            <!-- //상승리뷰 슬라이드 -->
        </div>
    </div>
</div>