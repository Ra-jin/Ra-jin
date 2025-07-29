<div class="cont js-cont-wrap <%=campusName%>">
    <% If campus_code = "INTRO" OR campus_code = "CD0349" Then '인트로/울산 %>
    <div class="cont01 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont01_tit.jpg" alt=""></p>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont01_img.jpg" alt=""></p>
        <div class="inner">
            <p class="r-txt">
                * 2018-2022, 2025학년도 수능 실채점(국/수/탐2 만점 및 영/한 1등급) 기준 : 
                러셀 강남, 러셀 대치, 러셀 분당, 러셀 영통, 최상위권 전문관(구. 양지 기숙) 배출 <br>
                *2021학년도 수능 만점자와 2025학년도 수능 만점자 중 1명은 개인정보 활용 
                에 동의하지 않아, 인터뷰가 제공되지 않습니다.
            </p>
        </div>
    </div>
    <% End If %>

    <div class="cont02 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_tit.jpg" alt=""></p>
        <div class="inner">
            <% If campus_code = "INTRO" Then '인트로 %>
            <!-- 입결 카운팅 -->
            <ul class="achieve-box">
                <li>
                    <dl>
                        <dd><strong class="counter" data-count="115">0</strong><span>명<sup>1)</sup></span></dd>
                        <dt>메이저 의대</dt>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/top_label02.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dd><strong class="counter" data-count="1269">0</strong><span>명<sup>2)</sup></span></dd>
                        <dt>전국 의예과</dt>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/top_label02.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dd><strong class="counter" data-count="2220">0</strong><span>명<sup>3)</sup></span></dd>
                        <dt>의&middot;치&middot;한&middot;약&middot;수</dt>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/top_label02.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dd><strong class="counter" data-count="13">0</strong><span>명<sup>4)</sup></span></dd>
                        <dt>서울대 의예과</dt>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dd><strong class="counter" data-count="243">0</strong><span>명<sup>5)</sup></span></dd>
                        <dt>서울대</dt>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dd><strong class="counter" data-count="1224">0</strong><span>명<sup>6)</sup></span></dd>
                        <dt>서울대&middot;연세대&middot; <br>고려대</dt>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/top_label02.png" alt="" /></span>
                </li>
            </ul>
            <!-- //입결 카운팅 -->

            <!-- 데이터 산출기준 -->
            <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
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
            <!-- //데이터 산출기준 -->
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <!-- 입결 카운팅 -->
            <ul class="achieve-box">
                <li>
                    <dl>
                        <dt>메이저 의대</dt>
                        <dd><strong class="counter" data-count="2">0</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>전국 의예과</dt>
                        <dd><strong class="counter" data-count="29">0</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>치&middot;한&middot;수&middot;약</dt>
                        <dd><strong class="counter" data-count="31">0</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>서울대</dt>
                        <dd><strong class="counter" data-count="2">0</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>연세대&middot;고려대</dt>
                        <dd><strong class="counter" data-count="26">0</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>KAIST</dt>
                        <dd><strong class="counter" data-count="2">0</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <!-- //입결 카운팅 -->

            <!-- 데이터 산출기준 -->
            <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    ※ 최종 업데이트 : 2025-03-10｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
                    ※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
                    ※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과

                </div>
            </div>
            <!-- //데이터 산출기준 -->
            <% Else %>
                <% If campus_code = "CD0001" Then '대치 %>
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
                <% ElseIf campus_code = "CD0247" Then '강남 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀 강남 최상위권 대학 합격자 현황"></p>
                    <div class="result-list">
                        <ul class="gold">
                            <li class="mt0">
                                <div>
                                    <p>5개년 연속<br>
                                        <strong>서울대 의예과</strong> 합격</p>
                                </div>
                            </li>
                        </ul>
                        
                        <ul class="type03">
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
        
                        <ul class="gold">
                            <li>
                                <div>
                                    <p>의학계열 누적합격생<br><strong>711명</strong> 배출</p>
                                </div>
                            </li>
                        </ul>
                        <ul>
                            <li style="width:calc(202vw/7.2)">
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
                            <li class="ml10">
                                <div>
                                    <p>한의예과</p>
                                    <p><strong>117명</strong></p>
                                </div>
                            </li>
                        </ul>
                        <ul>
                            <li class="mb0">
                                <div>
                                    <p>수의예과</p>
                                    <p><strong>35명</strong></p>
                                </div>
                            </li>
                            <li class="ml10 mb0">
                                <div>
                                    <p>약학과</p>
                                    <p><strong>90명</strong></p>
                                </div>
                            </li>
                        </ul>
                        <ul class="gold">
                            <li>
                                <div>
                                    <p>최상위권 대학<br>누적 합격 현황</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="type02">
                            <li>
                                <div>
                                    <p>의치한수약</p>
                                    <p><strong>711명</strong></p>
                                </div>
                            </li>
                            <span>의예과 388명, 치의예과 81명, <br> 한의예과 117명, 수의예과 35명, 약학과 90명</span>
                            <li>
                                <div>
                                    <p>서연고</p>
                                    <p><strong>694명</strong></p>
                                </div>
                            </li>
                            <span>서울대 132명, 연세대 271명, 고려대 291명</span>
                            <li class="mb0">
                                <div>
                                    <p class="pt0">서성한이중경외시<br>
                                        + 카이스트, 포항공대</p>
                                    <p class="pt0"><strong>1,414명</strong></p>
                                </div>
                            </li>
                        </ul>
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

                <% ElseIf campus_code = "CD0245" Then '목동 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt_v2.jpg" alt="결과로 증명하는 러셀 목동 2022-25학년도 최상위권 대학 누적 합격 현황"></p>
                    <div class="result-list">
                        <ul class="gold02">
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
                                </div>
                                <span>*카이스트 8명 포함*</span>
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
                                    <p class="pt0">교대 외<br>특수대학</p>
                                    <p><strong>59</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p class="pt0">최상위권<br>주요대학</p>
                                    <p><strong>1,389</strong>명</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        *러셀 목동 2022-2025학년도 바른공부 자습전용관 재원생 기준 <br>
                        (복수 대학 합격자 포함, 단과 수강생 미포함)
                    </div>
                </div>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="최상위권의 선택! 러셀 2024학년도 입결 현황"></p>
                    <div class="result-list">
                        <ul class="type07">
                            <li>
                                <div>
                                    <p>2025학년도<br>
                                        의치한수약 합격
                                    </p>
                                    <p><strong>48</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>2025학년도<br>
                                        서울대 합격
                                    </p>
                                    <p><strong>14</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p>2025학년도<br>
                                        연고대 합격
                                    </p>
                                    <p><strong>50</strong>명</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt mt10" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        2024년 러셀 부천 바른공부 자습전용관 재원생 기준 (중복합격자 포함/2025.02.21 기준)

                    </div>
                </div>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀 영통 2020~2024학년도 합격자 현황"></p>
                    <div class="result-list">
                        <ul class="type11 gold">
                            <li class="mt0">
                                <div>
                                    <p>의&middot;치&middot;한&middot;수&middot;약</p>
                                    <p><strong>299</strong>명</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="type11 gold">
                            <li>
                                <div>
                                    <p>서울대</p>
                                    <p><strong>76</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>SKY</p>
                                    <p><strong>327</strong>명</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="type05">
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
                                    <p>교대&middot;경대사관<br>&middot;특성화대</p>
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
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 2020~2025학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2025.03.04 기준)
                    </div>
                </div>
                <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                <div class="result-wrap">
                    <div class="result-list">
                        <ul class="type06">
                            <li>
                                <div>
                                    <p>2025학년도 최종 합격<br>
                                        서울대학교 의예과 <br>
                                        <span>4명</span>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>2025학년도 최종 합격<br>
                                        전국 의예  <br>
                                        <span>92명</span>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>2025학년도 최종 합격<br>
                                        의/치/한/약/수<br>
                                        <span>126명</span>
                                    </p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>2025학년도 최종 합격<br>
                                        SKY / KAIST<br>
                                        <span>21명</span>
                                    </p>
                                </div>
                            </li>
                        </ul>
                        <ul class="gold">
                            <li>
                                <div>
                                    <p>서울대 <br> 의예</p>
                                    <p><strong>4</strong>명</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="gold">
                            <li>
                                <div>
                                    <p>메이저 <br> 의예</p>
                                    <p><strong>6</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>전국 <br> 의예과</p>
                                    <p><strong>92</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>메디컬<br>
                                        <span>(의/치/한/약/수)</span></p>
                                    <p><strong>126</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>
                                        SKY/KAIST
                                    </p>
                                    <p><strong>21</strong>명</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 최종 업데이트 : 2025-02-28 기준<br>
                        ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준(단과 수강생 제외/복수대학 합격자 포함)<br>
                        ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예

                    </div>
                </div>
                <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀CORE 원주 2024학년도 대입 합격 현황"></p>
                    <div class="result-list">
                        <ul class="type05">
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
                                    <p>메디컬 <br> <span>(의/치/한/수/약)</span></p>
                                    <p><strong>50</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>서/연/고</p>
                                    <p><strong>9</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p>주요<br>
                                    15개 대학</p>
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
                <a class="data-txt mt10" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 데이터 산출 기준<br>
                        ※ 2024년 러셀CORE 원주 바른공부 자습전용관 재원생 중
                        수시&middot;정시 합격자 기준<br>
                        ※ 복수 대학 합격자 포함<br>
                        ※ 주요 15개 대학: 서울/연세/고려/서강/성균관/한양/이화/중앙/경희/외대/시립/건국/동국/홍익/숙명
                    </div>
                </div>
                <% ElseIf campus_code = "CD0248" Then '평촌 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="평촌 2024학년도 대입 합격 현황"></p>
                    <div class="result-list">
                        <ul class="gold03">
                            <li class="mt0">
                                <div>
                                    <p>메이저 의예</p>
                                    <p><strong>2</strong>명</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="gold03">
                            <li class="mt0">
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
                        </ul>
                        <ul class="type04">
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
                        </ul>
                        <ul class="type04">
                            <li class="m0">
                                <div>
                                    <p>중&middot;경&middot;외&middot;시</p>
                                    <p><strong>79</strong>명</p>
                                </div>
                            </li>
                            <li class="m0">
                                <div>
                                    <p>건&middot;동&middot;홍&middot;숙</p>
                                    <p><strong>63</strong>명</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt mt10" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        최종 업데이트: 2025.02.28 기준 <br>
                        2025학년도 수시, 정시 합격 기준/ 러셀 평촌 바른공부 자습전용관 재원생 합격생 기준(단과 수강생 제외/ 복수대학 합격자 포함)<br>
                        메이저 의예 : 서울대, 연세대(서울), 성균관대, 가톨릭대, 울산대, 고려대<br>
                        의약학계열 : 전국 의예과/ 의학과/ 의과대학, 전국 치의예과, 전국 한의예과, 전국 약학과/약학부, 전국 수의예과 모든 대학 
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀 중계 최상위권 대학 합격자 현황"></p>
                    <div class="result-list">
                        <ul class="type05">
                            <li>
                                <div>
                                    <p>의예과</p>
                                    <p><strong>11</strong>명</p>
                                </div>
                            </li>
                            <li>
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
                            <li class="mb0">
                                <div>
                                    <p>서성한이</p>
                                    <p><strong>34</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p>중경외시</p>
                                    <p><strong>44</strong>명</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt mt10" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        *2024학년도 러셀 중계 바른공부자습전용관재원생 기준 <br>
                        *중복대학 합격자수 포함 (2024년 3월 7일 기준)
                    </div>
                </div>
                <% ElseIf campus_code = "CD0246" Then '센텀 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="최상위권의 선택! 러셀 센텀 2024학년도 입결 현황"></p>
                    <div class="result-list">
                        <ul class="type05">
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
                                    <p>경찰대&middot;사관학교 <br>&middot;교육대</p>
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
                    </div>
                    <p class="r-txt">
                        ※ 러셀 센텀학원 바른공부 자습전용관 재원생 25학년도 합격자 기준 <br>
                        (단과 수강생 제외, 복수대학 합격자 포함)
                    </p>
                </div>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt02.jpg" alt="최상위권의 선택! 러셀 센텀 2024학년도 입결 현황"></p>
                    <div class="result-list">
                        <ul class="type05">
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
                                    <p>경찰대&middot;사관학교 <br>&middot;교육대</p>
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
                    </div>
                    <p class="r-txt">
                        ※ 러셀 센텀학원 바른공부 자습전용관 재원생 20~25학년도 합격자 기준 <br>
                        (단과 수강생 제외, 복수대학 합격자 포함)
                    </p>
                </div>
                <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀CORE 전주는 결과로 증명합니다!"></p>
                    <div class="result-list">
                        <ul class="type05">
                            <li>
                                <p>메이저 의예</p>
                                <p><strong>3</strong>명</p>
                            </li>
                            <li>
                                <p>전국 의예과</p>
                                <p><strong>36</strong>명</p>
                            </li>
                            <li class="mb0">
                                <p>치한약수</p>
                                <p><strong>32</strong>명</p>
                            </li>
                            <li class="mb0">
                                <p>주요대학 <br> +교대,과기원</p>
                                <p><strong>51</strong>명</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt mt10" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 최종 업데이트 : 2025-02-28 기준 <br>
                        ※ 2025학년도 수시/정시 최종 합격 기준/ 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 (홈페이지 대입실적기준)                        
                    </div>
                </div>
                <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                <div class="result-wrap mb20">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀CORE 창원 2024학년도 합격생 현황"></p>
                    <div class="result-list">

                        <ul class="type05">
                            <li>
                                <div>
                                    <p>서울대 의예과
                                    </p>
                                    <p><strong>1</strong>명</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="type05">
                            <li>
                                <div>
                                    <p>메이저 의대
                                    </p>
                                    <p><strong>11</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>전국 의예과
                                    </p>
                                    <p><strong>44</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p>의치한약수</p>
                                    <p><strong>63</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p>SKY/KAIST</p>
                                    <p><strong>12</strong>명</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 최종 업데이트 : 2025-03-07 기준 ｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다. <br>
                        ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준 (단과 수강생 제외/복수 대학 합격자 포함)<br>
                        ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예, 고려대 의예
                        
                    </div>
                </div>
                <% ElseIf campus_code = "CD0346" Then '코어청주 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀CORE 청주 2024학년도 대입 합격 현황"></p>
                    <div class="result-list">
                        <ul class="type05">
                            <li class="mt0">
                                <div>
                                    <p>의예</p>
                                    <p><strong>14</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>치의예</p>
                                    <p><strong>1</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>한의예</p>
                                    <p><strong>5</strong>명</p>
                                </div>
                            </li>
                            <li>
                                <div>
                                    <p>수의예</p>
                                    <p><strong>3</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p>약학</p>
                                    <p><strong>5</strong>명</p>
                                </div>
                            </li>
                            <li class="mb0">
                                <div>
                                    <p>SKY</p>
                                    <p><strong>15</strong>명</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 데이터 산출기준 -->
                <a class="data-txt mt10" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        ※ 2024년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외) <br>
                        ※ 2025-01-31 기준, 지속적으로 업데이트 예정
                    </div>
                </div>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt=""></p>
                    <div class="result-list">
                        <ul class="gold06">
                            <li>
                                <div>
                                    <p><strong>974명</strong> 합격</p>
                                </div>
                            </li>
                        </ul>
                        <ul class="gold02">
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
                        <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt02.jpg" alt=""></p>
                        <ul class="type05">
                            <li>
                                <div>
                                    <p>메이저 의예 <sup>3)</sup></p>
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
                                    <p><strong>47</strong>명</p>
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
                                    <p>성&middot;서&middot;한&middot;이</p>
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
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_info.png" alt=""></span></a>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        러셀 분당 20~24학년도 바른공부 자습전용관 재원생만을 대상으로 한 결과 (단과만 수강생 미포함, 중복 대학 합격자 포함) <br>
                        1) 홈페이지에 입시 결과를 공개한 분당 지역 학원 중 의치한약수+SKY 합격생 수 기준 <br>
                        2) 최상위권 대학(의예, 치의예, 한의예, 약학, 수의예, 서울대, 연세대, 고려대) <br>
                        3) 메이저 의예(서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대)
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="result-slide-wrap">
                    <div class="result-slide swiper-container">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="title">
                                    <p>
                                        <span>2025</span><br>
                                        <strong>성균관대 의예과 합격</strong><br>
                                        <strong class="uni-name">러셀 대구 HS반 이정빈</strong><br>
                                        <b class="period">(재원기간 24년 7월~수능까지)</b>
                                    </p>
                                    <div class="detail-box">
                                        <p class="score">
                                            <strong>2025학년도 297</strong>
                                            2024학년도 271
                                            <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_up_arrow.png" alt="상승 화살표"></span>
                                        </p>
                                        <p class="balloon-up">백분위 <strong>&nbsp;89.5</strong>% 상승</p>
                                    </div>
                                </div>
                                <div class="up-tbl">
                                    <table>
                                        <colgroup>
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
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
                                            <tr class="key-color">
                                                <td>2025 수능</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>2</td>
                                                <td>1</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>2024 수능</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>2</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="title">
                                    <p>
                                        <span>2025</span><br>
                                        <strong>성균관대 의예과 합격</strong><br>
                                        <strong class="uni-name">러셀 대구 HS반 서혜리</strong><br>
                                        <b class="period">(재원기간 24년 6월~수능까지)</b>
                                    </p>
                                    <div class="detail-box">
                                        <p class="score">
                                            <strong>2025학년도 298</strong>
                                            2024학년도 288
                                            <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_up_arrow.png" alt="상승 화살표"></span>
                                        </p>
                                        <p class="balloon-up">백분위 <strong>&nbsp;83.3</strong>% 상승</p>
                                    </div>
                                </div>
                                <div class="up-tbl">
                                    <table>
                                        <colgroup>
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
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
                                            <tr class="key-color">
                                                <td>2025 수능</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>2024 수능</td>
                                                <td>1</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>1</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="title">
                                    <p>
                                        <span>2025</span><br>
                                        <strong>계명대 의예과 합격</strong><br>
                                        <strong class="uni-name">러셀 대구 서의치대반 정은아</strong><br>
                                        <b class="period">(재원기간 24년 3월~수능까지)</b>
                                    </p>
                                    <div class="detail-box">
                                        <p class="score">
                                            <strong>2025학년도 293.5</strong>
                                            2024학년도 244
                                            <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_up_arrow.png" alt="상승 화살표"></span>
                                        </p>
                                        <p class="balloon-up">백분위 <strong>&nbsp;88.4</strong>% 상승</p>
                                    </div>
                                </div>
                                <div class="up-tbl">
                                    <table>
                                        <colgroup>
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
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
                                            <tr class="key-color">
                                                <td>2025 수능</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>2</td>
                                            </tr>
                                            <tr>
                                                <td>2024 수능</td>
                                                <td>2</td>
                                                <td>4</td>
                                                <td>2</td>
                                                <td>4</td>
                                                <td>1</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="title">
                                    <p>
                                        <span>2025</span><br>
                                        <strong>고려대 의예과 합격</strong><br>
                                        <strong class="uni-name">러셀 대구 서의치대반 송지안</strong><br>
                                        <b class="period">(재원기간 24년 2월~수능까지)</b>
                                    </p>
                                    <div class="detail-box">
                                        <p class="score">
                                            <strong>2025학년도 297.5</strong>
                                            2024학년도 289
                                            <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_up_arrow.png" alt="상승 화살표"></span>
                                        </p>
                                        <p class="balloon-up">백분위 <strong>&nbsp;77.3</strong>% 상승</p>
                                    </div>
                                </div>
                                <div class="up-tbl">
                                    <table>
                                        <colgroup>
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
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
                                            <tr class="key-color">
                                                <td>2025 수능</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>2024 수능</td>
                                                <td>1</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>1</td>
                                                <td>2</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="title">
                                    <p>
                                        <span>2025</span><br>
                                        <strong>경북대 약학과 합격</strong><br>
                                        <strong class="uni-name">러셀 대구 연고대반 홍승주</strong><br>
                                        <b class="period">재원기간 24년 1월~수능까지
                                        </b>
                                    </p>
                                    <div class="detail-box">
                                        <p class="score">
                                            <strong>2025학년도 292.5</strong>
                                            2024학년도 246.5
                                            <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_up_arrow.png" alt="상승 화살표"></span>
                                        </p>
                                        <p class="balloon-up">백분위 <strong>&nbsp;86</strong>% 상승</p>
                                    </div>
                                </div>
                                <div class="up-tbl">
                                    <table>
                                        <colgroup>
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
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
                                            <tr class="key-color">
                                                <td>2025 수능</td>
                                                <td>1</td>
                                                <td>1</td>
                                                <td>2</td>
                                                <td>2</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>2024 수능</td>
                                                <td>3</td>
                                                <td>1</td>
                                                <td>2</td>
                                                <td>3</td>
                                                <td>5</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="title">
                                    <p>
                                        <span>2025</span><br>
                                        <strong>경희대 한의예과 합격</strong><br>
                                        <strong class="uni-name">러셀 대구 서의치대반 유병철</strong><br>
                                        <b class="period">(재원기간 24년 2월~수능까지)</b>
                                    </p>
                                    <div class="detail-box">
                                        <p class="score">
                                            <strong>2025학년도 287.5</strong>
                                            2024학년도 257.5
                                            <span class="arrow03"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular_overall/ico_up_arrow.png" alt="상승 화살표"></span>
                                        </p>
                                        <p class="balloon-up">백분위 <strong>&nbsp;70.6</strong>% 상승</p>
                                    </div>
                                </div>
                                <div class="up-tbl">
                                    <table>
                                        <colgroup>
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
                                            <col style="width:16.6%;">
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
                                            <tr class="key-color">
                                                <td>2025 수능</td>
                                                <td>2</td>
                                                <td>1</td>
                                                <td>2</td>
                                                <td>1</td>
                                                <td>1</td>
                                            </tr>
                                            <tr>
                                                <td>2024 수능</td>
                                                <td>4</td>
                                                <td>1</td>
                                                <td>3</td>
                                                <td>2</td>
                                                <td>1</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination type01"></div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                <div class="result-wrap">
                    <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont02_txt.jpg" alt="러셀CORE 광주 2024학년도 합격자 현황"></p>
                    <div class="result-list">
                        <ul class="type05">
                            <li class="mt0">
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
                        </ul>
                        <ul class="type05">
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
                        </ul>
                        <ul class="type05">
                            <li class="mb0">
                                <div>
                                    <p>메디컬<br>(의/치/한/수/약)</p>
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
                <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_info.png" alt=""></span></a>
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
                <% End If %>
            <% End If %>

            <% If campus_code <> "CD0248" and campus_code <> "CD0349" Then '평촌/울산 제외 %>
            <a class="btn-common" href="<%=result_btn_url%>"><%=result_btn%></a>
            <% End If %>
        </div>
    </div>


    <div class="cont03 js-cont">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont03_tit.jpg" alt=""></p>
        <div class="inner">
            <% If campus_code = "INTRO" OR campus_code = "CD0349" Then '인트로/울산 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72832827')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_01.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">서울대학교 의예과 합격</div>
                                    </div>
                                    <p>러셀 분당 | 김기민</p>
                                </div>
                                <div class="btm-con">
                                   담임 선생님께서는 성적/입시 상담 외에도 생활이나  심리적인 부분에 있어서까지 고민을 들어주시고  친절하게 답변해 주셔서 수험생활 동안 많은 도움을  받았습니다. 입시가 끝난 뒤에도 원서접수의 구체적인  방향성과 관련 정보까지 제공해 주셔서 마지막까지 큰 도움이 되었습니다.

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72293389')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_02.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">연세대학교 의예과 합격</div>
                                    </div>
                                    <p>러셀 평촌 | 유현우</p>
                                </div>
                                <div class="btm-con">
                                    핸드폰을 제출하다 보니 혼자 공부할 때보다 집중도 
                                훨씬 잘되고 절대적인 공부량이 늘어나서 좋았습니다. 
                                또한 표준 시간표가 수능 시간표와 일치하다 보니 이로 인해 실전 모의고사들을 풀거나 그 시간에 맞는 과목을 공부할 때 도움이 되었습니다.
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72374198')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_03.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">성균대학교 의예과 합격</div>
                                    </div>
                                    <p> 러셀 목동 | 이소정</p>
                                </div>
                                <div class="btm-con">
                                    저는 러셀 승강반 제도가 도움이 많이 되었습니다. 
                                객관적인 위치와 등수를 알 수 있었기 때문에 저의 목표 성적을 더욱 확고히 정할 수 있었고, 강반 되지 않기 
                                위해 더 열심히 공부하게 되어서 성적 유지와 향상에 
                                도움이 많이 되었습니다.
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/73110455')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_04.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">울산대학교 의예과 합격</div>
                                    </div>
                                    <p>최상위권 전문관 러셀 기숙 | 김규리</p>
                                </div>
                                <div class="btm-con">
                                    기숙학원을 알아보던 중, 러셀 기숙이 생활 관리가  철저하고 시설도 좋다고 생각되어 크게 고민하지 않고 선택하게 되었습니다. 학원의 시설을 적극적으로  이용하며 넓은 운동장에서 산책을 하거나 헬스장에서  틈틈이 운동을 했던 덕분에 수능 날까지 건강을  유지하며 공부할 수 있었습니다.

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72606947')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_05.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">아주대학교 의예과 합격</div>
                                    </div>
                                    <p>러셀 대전 | 신유찬</p>
                                </div>
                                <div class="btm-con">
                                    바른공부 자습전용관의 가장 큰 장점은 집단적인 
                                면학 분위기라고 생각합니다. 자습시간에는 물론이고 
                                쉬는 시간에도 집중해서 공부하는 주변의 학생분들을 
                                보면서 다시 집중해서 공부할 수 있었습니다. 또한, 
                                일정한 시간표로 아침부터 밤까지 매일 바른공부 
                                자습전용관에서 공부하면서 항상 집중할 수 있는 공부 리듬을 형성할 수 있었던 것 같습니다. 
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72727043')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_06.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">인하대학교 의예과 합격</div>
                                    </div>
                                    <p>러셀 부천 | 박정우</p>
                                </div>
                                <div class="btm-con">
                                   바른공부 자습전용관의 장점은 학습시간 확보입니다. 
                                아침 8시부터 오후 10시까지, 14시간 가까이 최대한 
                                공부에만 집중할 수 있는 환경은 중요하다고 생각합니다. 또한, 학생들이 흐트러지지 않도록 담임 선생님들께서 
                                관리해 주시기 때문에, 다른 학생들에 의해 집중이 
                                끊기는 일이 없었습니다. 
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72747107')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_07.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">한양대학교 의예과 합격</div>
                                    </div>
                                    <p>남학생 전문관 러셀 기숙(서의치) | 김선규</p>
                                </div>
                                <div class="btm-con">
                                      수준별로 반이 나누어지기 때문에 과목마다 제 실력에 맞는 수업을 들을 수 있는 게 좋았습니다. 또한 모르는 것이 있다면 쉬는 시간 등을 통해 선생님께 질문하여 바로 해결할 수 있다는 것이 좋았습니다.
                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/70826729')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_08.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">가톨릭관동대학교 의예과 합격</div>
                                    </div>
                                    <p>여학생 전문관 러셀 기숙 | 최윤서</p>
                                </div>
                                <div class="btm-con">
                                    공부에 집중이 되지 않아 고개를 들면 열심히 공부하는 친구들이 보이지만 고개를 숙이면 혼자 공부하는 것처럼 몰입할 수 있게 해 주는 책상 크기와 쾌적한 환경,  공부로 지칠 때 쉴 수 있도록 해주는 주기적 힐링타임과 그 외의 시간에는 공부에만 집중할 수 있도록 해 주는  규칙과 벌점들이 힘든 시간에도 공부를 지속할 수 있게 해준 원동력이 되지 않았나 싶습니다.

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/72815457')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_09.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">을지대학교 의예과 합격</div>
                                    </div>
                                    <p>러셀CORE 청주 | 김이담</p>
                                </div>
                                <div class="btm-con">
                                    라이브 수업의 장점은 조교님들께서 출결과 과제 수행 여부를 체크하셔서 수업에 충실할 수 있다는 것입니다. 덕분에 인강을 수강하는 것보다 학습 효과가 더욱  극대화되어 나타났습니다. 라이브 수업 수강생은 대치동 현강생들과 똑같은 현강 전용 자료들을 받아볼 수 있는데 질 좋은 다량의 자료들을 제공받을 수 있어서 학습에 큰 도움이 되었습니다.

                                </div>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="profile">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/73110387')"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/stu_10.jpg" alt=""></a>
                            </div>
                            <div class="detail">
                                <div class="top-con">
                                    <div>
                                        <div class="year">2025학년도</div>
                                        <div class="uni-name">인제대학교 의예과 합격</div>
                                    </div>
                                    <p>자연계 전문관 러셀 기숙 | 노현곤</p>
                                </div>
                                <div class="btm-con">
                                    다양한 선택 수업이 매력적으로 느껴져 러셀 기숙을  선택하게 되었습니다. 수학에서 부족함을 느끼던 저는  자율 선택 수업을 통해 수학 수업의 양을 늘릴 수 있어 실력 향상에 가장 큰 도움이 되었던 것 같습니다. 또한, 자습 공간과 강의실이 분리되어 있어 수업 시간에는  수업에, 자습 시간에는 자습에 온전히 집중할 수 있다는 점도 큰 도움이 될 것 같았습니다.

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0247" Then '강남 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49909070')">
                                    <strong>2024학년도<br>중앙대학교 약학부 합격</strong>
                                    <span>러셀 강남 조휘윤</span>
                                </a>
                                <p>
                                    “<strong>모의고사를 보고 나면 1:1 상담을 진행하던 것도 도움이 됐습니다.</strong> 시험 결과가 좋지 않으면 실력이나 실수 탓을 하면서 뭉뚱그려 넘어가는 편이었던 저에게 시험 후 피드백을 어떻게 하면 좋을 지 많은 조언을 해 주셨습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49908977')">
                                    <strong>2024학년도<br>한양대학교 의예과 합격</strong>
                                    <span>러셀 강남 박성원</span>
                                </a>
                                <p>
                                    “<strong>메가X대성 더 프리미엄 모의고사 등 다양한 모의고사</strong>를 통해서 실전연습을 진행하였습니다. 두 모의고사 모두 기대했던 것보다 퀄리티가 아주 좋았고 다양한 유형의 시험지를 경험할 수 있어 큰 도움이 되었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49909017')">
                                    <strong>2024학년도<br>서울대학교 인문계열 합격</strong>
                                    <span>러셀 강남 김은태</span>
                                </a>
                                <p>
                                    “<strong>승강반제도와 그에 따른 장학혜택</strong>도 도움이 되었습니다. 
                                    처음에는 HS반으로 승반하고 장학혜택을 받기 위해서, 승반하고 나서는 강반되지 않고 제 자리를 유지해 나가기 위해서 더욱 공부를 열심히 할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48353134')">
                                    <strong>2024학년도<br>동의대학교 한의예과 합격</strong>
                                    <span>러셀 강남 김세주</span>
                                </a>
                                <p>
                                    “<strong>바자관과 단과수업을 함께</strong> 이용할 수 있다는 점이 좋았습니다. 
                                    단과 수업 시간 전후로 예, 복습을 하기 위한 이동시간의 소모가 없어 공부의 흐름을 계속 이어갈 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48353256')">
                                    <strong>2024학년도<br>대구한의대학교 한의예과 합격</strong>
                                    <span>러셀 강남 김하린</span>
                                </a>
                                <p>
                                    “러셀 단과에서 <strong>과목별로 훌륭한 선생님들의 현장강의</strong>를 들을 수 있었습니다. 
                                    학습에 도움이 되는 풍부한 학습자료를 제공해 주시고 질문을 해도 바로 잘 답변을 해 주셔서 많은 도움이 되었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49908997')">
                                    <strong>2024학년도<br>고려대학교 신소재공학부 합격</strong>
                                    <span>러셀 강남 진예인</span>
                                </a>
                                <p>
                                    “<strong>충분한 자습시간</strong>을 확보하기 위해 러셀을 선택했던 저는 일주일의 스케줄을 저 스스로 계획하고 공부할 수 있다는 점이 가장 좋았습니다. 제가 원하는 시간에 자습을 하고, 듣고 싶은 선생님의 수업을 골라 들을 수 있다는 것만으로도 큰 장점이라 생각합니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0001" Then '대치 %>
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
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48230989')">
                                    <strong>2024학년도<br>고려대학교 경영대학 합격</strong>
                                    <span>러셀 목동 장준혁</span>
                                </a>
                                <p>
                                    “바른공부 자습전용관의 <strong>개방형 구조는 학생들끼리의 긍정적인 자극이</strong> 형성되게 합니다. 하루 종일 공부를 하다 보면 중간중간 지치기도 하는 순간이 있는데 <strong>그때마다 주변에 열심히 공부하는 친구들을 보며 자극을 받고 더 열심히 공부하게</strong> 됐습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/51432614')">
                                    <strong>2024학년도<br>고려대학교 화공생명공학과 합격</strong>
                                    <span>러셀 목동 박상원</span>
                                </a>
                                <p>
                                    “담임선생님과 입시 정보나 학습 관련해서 상담을 많이 했는데 <strong>저의 상황에 맞춰서 여러 조언</strong>을 해주셔서 저에게 맞는 공부법을 찾을 수 있었습니다. 또한 <strong>담임선생님과 이야기를 하면서 멘탈 회복을 하여 다시 공부에 집중</strong>할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48230976')">
                                    <strong>2024학년도<br>연세대학교 중어중문학과 합격</strong>
                                    <span>러셀 목동 이서진</span>
                                </a>
                                <p>
                                    “러셀은 <strong>강의실과 바자관이 한 건물에 있어서 이동시간을 아낄 수 있어서 좋았습니다.</strong> 
                                    또한 학습시간을 개인의 필요에 맞게 확보할 수 있다는 점이 좋았습니다. <strong>자율적으로 스케줄을 짤 수 있어서 필요에 맞게 효율적으로 학습</strong>할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48230985')">
                                    <strong>2024학년도<br>고려대학교 국어교육과 합격</strong>
                                    <span>러셀 목동 윤지효</span>
                                </a>
                                <p>
                                    “수험생활을 하다 보면 불안하고 지칠 수밖에 없습니다. 저도 그런 시기에 선생님과 상담을 해본 경험이 있습니다. 
                                    <strong>선생님과의 상담과 조언을 통해 지치지 않고 다시 일어날 수 있는 힘</strong>을 얻었다고 생각합니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49402894')">
                                    <strong>2024학년도<br>연세대학교 융합인문사회학부 합격</strong>
                                    <span>러셀 목동 김은재</span>
                                </a>
                                <p>
                                    “<strong>매월 보는 모의고사와 수능 실전 훈련장</strong>이 좋았습니다. 모의고사를 통해 <strong>실전 감각을 끌어올릴 수 있을뿐더러</strong> 성적 분석이 매우 잘 되었다고 생각합니다. 수능 2달 전부터는 모의 훈련장이 운영되었는데 <strong>실제 수능장에서 어떤 행동을 취해야 할지 생각할 수 있었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49404108')">
                                    <strong>2024학년도<br>연세대학교 간호학과 합격</strong>
                                    <span>러셀 목동 김채현</span>
                                </a>
                                <p>
                                    “<strong>승강반 제도</strong>가 있어서 공부하는 보람도 있었고, 다른 친구들에게 밀리지 않으려는 마음을 통해 <strong>더욱 열심히 공부해야 할 원동력</strong>을 얻을 수 있었습니다.
                                    게다가 <strong>장학혜택을 통해 경제적인 부담까지 덜 수 있다는 점도</strong> 좋았습니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
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
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48584694')">
                                    <strong>2024학년도<br>고려대학교 의과대학 합격</strong>
                                    <span>러셀 영통 오서준</span>
                                </a>
                                <p>
                                    “<strong>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다.</strong> 모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 더 <strong>현장감 있기에, 러셀의 표준 시간표에 맞추어 공부하였습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48964346')">
                                    <strong>2024학년도<br>서울대학교 치의학학석사통합과정 합격</strong>
                                    <span>러셀 영통 최지원</span>
                                </a>
                                <p>
                                    “<strong>학습 동선을 최소화하는 것</strong>이 큰 도움이 되었습니다.  또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다.</strong> 모의고사 이후 성적 분석을 토대로 한 상담은 학습 방향을 잡는 데에 도움이  되었고, 정확한 수치를 근거로 입시에 대한 구체적인 정보를 알려주셨습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48584747')">
                                    <strong>2024학년도<br>전북대학교 의예과 합격</strong>
                                    <span>러셀 영통 오준학</span>
                                </a>
                                <p>
                                    “바자관의 장점은 <strong>표준 시간표와 전용 와이파이</strong> 입니다. 항상 자습시간이 정해져 있다보니 딴 곳으로 잘 새지 않고 <strong>자습시간을 확보할 수 있으며 자습시간 동안에도 딴짓 하지 않고 공부에만 집중</strong>할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50089650')">
                                    <strong>2024학년도<br>영남대학교 의예과 합격</strong>
                                    <span>러셀 영통 박우영</span>
                                </a>
                                <p>
                                    “바자관의 장점은 <strong>개방형 구조</strong>라고 생각합니다.  <strong>집중이 안될 때 주변 학생들이 공부하고 있는 모습을 보면 ‘나도 다시 열심히 해야겠다.’</strong>라는 생각이 들어서 좋았습니다. 또한 <strong>시간표가 수능 시간표와 비슷한 것이 습관 형성</strong>에 좋았습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48964415')">
                                    <strong>2024학년도<br>전북대학교 치의예과 합격</strong>
                                    <span>러셀 영통 우태현</span>
                                </a>
                                <p>
                                    “바자관의 장점은 <strong>개방형 구조</strong>입니다. 또한, <strong>러셀의 체조 시스템, 바자관 내에 공기청정기과 온도계를 상시 가동</strong>하여 쾌적한 환경에서 공부를 할 수 있었던 것도 좋았습니다. <strong>재수 초반에 멘탈적으로 지칠 대로 지쳐있었고</strong> 이런 상황에 <strong>가장 큰 힘이 되어주셨던 건 담임선생님</strong>이라고 생각합니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48584485')">
                                    <strong>2024학년도<br>원광대학교 치의예과 합격</strong>
                                    <span>러셀 영통 이수민</span>
                                </a>
                                <p>
                                    “<strong>심야자습제도가 가장 좋았습니다.</strong> 10시에 학원이 끝나고 바로 바자관에 가서 복습하면 집중력이 흐트러지지 않고 12시까지 공부를 할 수 있었습니다. 또한 <strong>벌점제도를 통해 나태해지지 않고 끝까지 달릴 수 있었던 것 같습니다.</strong>”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49682721')">
                                    <strong>2024학년도<br>충남대학교 의예과 합격</strong>
                                    <span>러셀 대전 허관훈</span>
                                </a>
                                <p>
                                    “<strong>러셀 대전에서는 오로지 수능 공부에만 집중할 수 있어서 좋았습니다.</strong> 수능시간에 최적화된 표준 시간표, 정말 열심히 수능 공부에 임하는 친구들 그리고 진심으로 대해주시는 선생님들 덕분에 최고의 수험생활을 보냈습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48592152')">
                                    <strong>2024학년도<br>가톨릭대학교 의예과 합격</strong>
                                    <span>러셀 대전 윤훈석</span>
                                </a>
                                <p>
                                    “<strong>개방감과 폐쇄성의 적절한 조화가 바자관의 큰 장점입니다.</strong> 바자관의 통유리창 덕분에 다른 친구들이 공부하는 모습을 보고 동기부여를 받을 수 있었고, 수납공간과 책상의 격벽이 본인의 공간을 확실히 구분해 주어 방해받지 않고 학습에 집중할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a class="non" href="javascript:void(0);">
                                    <strong>2024학년도<br>충남대학교 의예과 합격</strong>
                                    <span>러셀 대전 OOO</span>
                                </a>
                                <p>
                                    “<strong>바자관의 면학분위기가 좋았습니다.</strong> 혼자 공부하거나 집에서 공부하게 되면 집중도가 떨어집니다. 러셀 대전에서는 공부에만 집중할 수 있는 환경을 만들어 주어 자연스레 공부 습관이 잡히게 되었습니다. 절제력이 부족한 저에겐 최고의 학습 환경이었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/35186151')">
                                    <strong>2023학년도<br>서울대학교 전기정보공학부 합격</strong>
                                    <span>러셀 대전 노유찬</span>
                                </a>
                                <p>
                                    “<strong>불필요한 수업은 줄이고 자습시간은 극대화할 수 있어서 좋았습니다.</strong> 탁 트인 개방형 구조의 바자관에서 공부하면서 최상위권 학생들에게 동기부여 받을 수 있었고, 최적의 면학분위기를 위해 항상 노력해주시는 담임선생님 덕분에 쾌적하게 공부할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48232680')">
                                    <strong>2024학년도<br>순천향대학교 의예과 합격
                                    </strong>
                                    <span>러셀 대전 하태솔</span>
                                </a>
                                <p>
                                    “<strong>규칙적으로 시간에 맞춰 공부할 수 있는 습관을 들일 수 있어서 좋았습니다.</strong> 더불어 담임선생님께서 꾸준히 관리해 주시는 덕분에 마음이 풀어지지 않고 수능까지 열심히 공부할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48232686')">
                                    <strong>2024학년도<br>세명대학교 한의예과 합격</strong>
                                    <span>러셀 대전 임장원</span>
                                </a>
                                <p>
                                    “<strong>모의고사를 풀 때에 수능 시험장과 비슷한 환경을 조성해 주셔서 많이 도움이 되었습니다.</strong> 또한, 조회시간이나 종례시간에 담임선생님께서 항상 동기 부여가 되는 말씀을 해 주셔서 더 열심히 할 수 있도록 이끌어주셔서 감사했습니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/51775633')">
                                    <strong>2024학년도<br>서울대학교 공과대학 광역 합격</strong>
                                    <span>러셀CORE 원주 정혜인</span>
                                </a>
                                <p>
                                    “<strong>넓은 책상과 책꽂이</strong>가 있어 학습하기 좋았습니다. 또한, <strong>개방형 구조</strong>로 하루 종일 공부해도 답답하지 않았습니다. <br>
                                    <strong>화장실, 급식실이 가까워서 하루 중 버리는 시간을 최소화할 수 있다는 점에서 효율적으로 공부할 수 있었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49173377')">
                                    <strong>2024학년도<br>가톨릭대 의예과 합격</strong>
                                    <span>러셀CORE 원주 이아인</span>
                                </a>
                                <p>
                                    “<strong>담임선생님</strong>께서 저에게 가장 알맞은 <strong>입시 전형을 추천해 주셨고, 생기부 관련해서도 많은 도움을 주셨습니다.</strong> 또한, 수능 날에 가까워질수록 불안감이 높아졌는데 제 자신을 믿을 수 있도록 조언을 해주신 것이 <strong>멘탈 관리에 도움이 되었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49173395')">
                                    <strong>2024학년도<br>가톨릭관동대 의예과 합격</strong>
                                    <span>러셀CORE 원주 최승훈</span>
                                </a>
                                <p>
                                    “실제 수능에선 국어가 80분, 수학이 100분이고 그 후 점심 식사를 하게 됩니다. <br>
                                    러셀CORE 원주에서 공부하며 이러한 <strong>바른공부 자습전용관의 표준 시간표가 실제 수능을 준비하고 신체리듬을 형성하는 데 큰 도움이 되었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49173388')">
                                    <strong>2024학년도<br>연세대학교(미래) 의예과 합격</strong>
                                    <span>러셀CORE 원주 박민재</span>
                                </a>
                                <p>
                                    “<strong>러셀 실전 콘텐츠</strong>(다양한 모의고사)가 큰 도움이 되었습니다. <br>
                                    정기적인 모의고사 응시를 통해 <strong>수험생활의 긴장감을 유지할 수 있었고, 학습 상태를 점검하여 부족한 점을 발견하고 보완</strong>할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49173379')">
                                    <strong>2024학년도<br>강원대학교 수의예과 합격</strong>
                                    <span>러셀CORE 원주 윤지혜</span>
                                </a>
                                <p>
                                    “<strong>식당, 자습관, 강의실, 화장실이 모두 가깝게 위치해 있어서 동선을 최소화하여</strong> 낭비되는 시간 없이 공부에만 집중할 수 있었습니다. <br>
                                    조용한 환경의 면학분위기가 좋았고, <strong>여러 명이 학습하다 보니 긍정적 경쟁심을 기를 수 있었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48184717')">
                                    <strong>2024학년도<br>연세대학교 건축공학과 합격</strong>
                                    <span>러셀CORE 원주 심태엽</span>
                                </a>
                                <p>
                                    “바른공부 자습전용관에서 학습하며 특히 좋았던 점은 <strong>성적이 비슷한 친구들과 함께 공부할 수 있다는 점</strong>이었습니다. 공부를 하다가 집중력이 흐트러졌을 때 공부에 열중하고 있는 주변 친구들을 보며 자극을 받아 다시 공부에 집중할 수 있었습니다.
                                    ”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0248" Then '평촌 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')">
                                    <strong>2025학년도<br>서울대학교 산림과학부 합격</strong>
                                    <span>러셀 평촌 이근형</span>
                                </a>
                                <p>
                                    “바자관의 장점은 공기가 정말 좋고 2층에 있는 얼음이 공부할 때 정말 도움이 되었습니다. 또한 러셀의 시간표는 수능과 거의 유사하여 시간관리에도 정말 도움이 되었습니다. 또한 담임선생님은 아직 경험이 부족한 저에게 모의고사의 활용법, 공부법 등 제가 알지 못하는 많은 정보를 제공해 주셔서 좋았습니다. 또한 수능이 끝난 이후에도 정말 어려웠던 원서접수까지 끝까지 도와주셨습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')">
                                    <strong>2025학년도<br>서울대학교 공과대학 합격</strong>
                                    <span>러셀 평촌 선하람</span>
                                </a>
                                <p>
                                    “러셀 평촌 바자관의 좋은 점을 생각하면 제일 먼저 넓은 책상입니다. 저는 책상 위에 시계, 타이머, 태블릿 PC, 노트북 등등 온갖 잡동사니를 벌려 놓는 타입입니다. 그럼에도 불구하고 바자관의 책상이 모의고사를 풀어도 공간이 넉넉히 남을 만큼 커서 시계와 같은 잡동사니를 그대로 놓기에도 편했습니다. 또한, 생활기록부의 세부 특기사항을 챙기기 위해 갖가지 활동을 고안하고 활동 보고서를 제출하려면 노트북과 태블릿 PC를 모두 책상에 올려놓는 것이 편한데, 그 둘이 모두 책상 위에 올라갈 정도로 커서 좋았습니다. 면학 분위기나 표준 시간표 또한 만만치 않은 장점이지만, 저에게는 개인적으로 넓은 책상이 매우 맘에 들어서 이를 대표적으로 말씀드립니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')">
                                    <strong>2025학년도<br>경희대학교 의예과 합격</strong>
                                    <span>러셀 평촌 유현우</span>
                                </a>
                                <p>
                                    “러셀 평촌은 식당과 바자관이 한 건물에 있어서 식사를 하고 바로 공부를 하고 싶으면 빠르게 바자관으로 돌아와서 공부할 수 있고 점심시간이 충분하기 때문에 산책을 하는 등 컨디션 관리를 위해 선택할 수 있는 점이 많아서 좋았습니다. 그리고 장학혜택 덕분에 부담을 가지지 않고 편히 공부할 수 있었습니다. 또한 바자관 바로 앞에 담임선생님이 계시기 때문에 고민이 생기거나 하고 싶은 말이 있으면 바로 할 수 있어서 좋았고 3월부터 함께 지내기도 하였고 항상 친절하게 상담해 주셔서 의지할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:void(0)" onclick="alert('추후 오픈 예정입니다.')">
                                    <strong>2025학년도<br>인하대학교 의예과 합격</strong>
                                    <span>러셀 평촌 윤동민</span>
                                </a>
                                <p>
                                    “매달 응시하는 메가X대성 더 프리미엄 모의고사가 큰 도움이 되었습니다. 모의고사에서 가장 중요한 게 문제 퀄리티와 응시 인원수라고 생각합니다. 긴 시간 투자해서 모의고사를 보는 만큼 실력 점검도 가능하고 새로운 내용도 배워갈 수 있어야 할 뿐만 아니라 모의고사를 통해 자신의 정확한 위치를 알고 목표를 설정하려면 많은 응시 인원을 바탕으로 신뢰할 수 있는 통계 결과를 얻을 수 있어야 하는데 메가X대성 더 프리미엄 모의고사는 문제 퀄리티도 매우 우수하고 전국에서 가장 많은 수험생이 응시해 이 두 가지 면에서 모두 전국 최고의 모의고사라고 생각합니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>

            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49515163')">
                                    <strong>2024학년도<br>서울대학교 약학과 합격</strong>
                                    <span>러셀 중계 김규리</span>
                                </a>
                                <p>
                                    “담임선생님께서 빠르게 변하는 입시체제에서 제가 <strong>어느 방향으로 어떻게 공부하는 것이 좋을지 끊임없이 함께 고민해 주시고 구체적인 방법을 제안해 주셔서 의지가 많이 되었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/52067045')">
                                    <strong>2024학년도<br>가천대학교 약학과 합격</strong>
                                    <span>러셀 중계 문건오</span>
                                </a>
                                <p>
                                    “<strong>개인 자습 공간이 넓어서 매우 좋았습니다.</strong> 조그마한 책상에서 공부하는 것이 아니라, 책상에 책들을 여러 개 올려놓을 수 있었고 의자 바로 옆에 책장이 있어서 사물함에 왔다 갔다 해야 할 필요가 없었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49515179')">
                                    <strong>2024학년도<br>성균관대학교 사회과학계열 합격</strong>
                                    <span>러셀 중계 이우진</span>
                                </a>
                                <p>
                                    “<strong>바자관의 장점은 좋은 면학분위기입니다.</strong> 개방형 구조와 통유리 창으로 트여있어 피곤하거나 공부하기 싫을 때 열심히 공부하고 있는 주변 학생들을 보며 다시 공부에 집중할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49515168')">
                                    <strong>2024학년도<br>서울대학교 영어교육과 합격</strong>
                                    <span>러셀 중계 황아림</span>
                                </a>
                                <p>
                                    “<strong>담임선생님과의 1:1 상담에서 많은 입시 정보를 얻을 수 있었고, 부족한 과목의 성적 향상 방법도 같이 고민해 주셔서 도움이 많이 되었습니다.</strong> 또한 학생들이 공부에만 집중할 수 있도록 면학분위기 조성에도 힘써주셨습니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0246" Then '센텀 %>
            <div class="review-wrap type02">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>의예과</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">고신대학교 의예과 합격</p>
                                <p class="name">러셀 센텀 박OO<br>
                                    <span>(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>1</td>
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
                            <div class="txt-box">
                                <p><strong>담임선생님</strong>께서는 모의고사 결과마다 상담을 진행해 주셔서 <strong>심리적으로 안정을 찾거나 
                                    앞으로의 큰 계획을 세우는 데에 도움을 많이 주셨습니다. </strong>
                                    덕분에 1월부터 수능까지 안정적으로 공부할 수 있었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>의예과</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">인제대학교 의예과 합격</p>
                                <p class="name">러셀 센텀 임O원<br>
                                    <span>(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>2</td>
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
                            <div class="txt-box">
                                <p><strong>승강반제도와 장학혜택으로</strong> 인한 동기부여도 큰 장점이라고 생각합니다. 
                                    강반당하지 않기 위해, 또한 높은 반일 수록 장학혜택이 컸기 때문에 열심히 공부할 수 있었습니다. 
                                    수능이 다가올수록 <strong>메가X대성 더 프리미엄 모의고사 등 다양한 실전 모의고사를 통해
                                    </strong> 철저한 실전 대비를 할 수 있었습니다. </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>서울대</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">서울대학교 경제학부 합격</p>
                                <p class="name">러셀 센텀 이O명 <br>
                                    <span>(재원기간 : 2023년 2월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
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
                            <div class="txt-box">
                                <p>상위권 학생들이 모여서 <strong>집단적인 면학분위기가 조성</strong>되어 있으며 
                                    슬럼프가 와도 할 수 있는 게 공부밖에 없어서 더 열심히 할 수 있었던 거 같습니다. 
                                    우선선발반은 일찍 공부를 시작하는 만큼 체력적으로 힘든 점이 크지만 
                                    <strong>학습량이 많아 성적 향상을 이룰 수 있는 점이</strong> 좋았습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g">전 과목<br><strong>1등급</strong></p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">부산대학교 의예과 합격</p>
                                <p class="name">러셀 센텀 이O O <br>
                                    <span>(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
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
                            <div class="txt-box">
                                <p>등급은 이전 수능에서 잘 나왔지만 백분위가 낮아서 다시 공부를 하게 되었는데 
                                    긴 수험생활을 하면서 러셀 센텀에서 자습관을 이용하면서 <strong>잘 하는 학생들이 많이 모여있어</strong> 자극이 많이 되었습니다. 
                                    <strong>담임선생님과의 상담</strong>을 통해 자기 객관화를 할 수 있어서 좋았습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>메디컬</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">부산대학교 약학부 합격</p>
                                <p class="name">러셀 센텀 이O연<br>
                                    <span>(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>1</td>
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
                            <div class="txt-box">
                                <p>바자관의 좋은 점은 <strong>공부 시설 및 면학분위기</strong> 입니다. 
                                    넓은 책상과 많은 책들을 보관할 수 있는 개인 사물함, 통유리 창 등 
                                    쾌적한 공부환경 속에서 열심히 공부하는 친구들을 보며 열심히 공부할 수 있었습니다. 
                                    덕분에 독학재수를 하였다면 늘어지기 쉬운 여름방학 기간 동안에 더욱 질 높은 공부를 할 수 있었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>메디컬</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">가천대학교 한의예과 합격</p>
                                <p class="name">러셀 센텀 박O우<br>
                                    <span>(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>3</td>
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
                            <div class="txt-box">
                                <p>바른공부 자습전용관은 <strong>철저한 출결관리가</strong> 이루어집니다. 
                                    몰래 이동을 할 수 없게 카드를 찍고 출입하는 출결 방법이라 공부를 하다 힘들어 나가고 싶을 때에도 
                                    마음을 잡고 다시 공부에 집중할 수 있었습니다. 
                                    또한 전용 와이파이 이용으로 <strong>공부 중 인강 사이트 이외의 사이트를 사용하지 못하므로</strong> 집중력을 더 높일 수 있었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>의예과</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">부산대학교 의예과 합격</p>
                                <p class="name">러셀 센텀 이OO<br>
                                    <span>(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>1</td>
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
                            <div class="txt-box">
                                <p><strong>담임선생님</strong>께서는 늘 학습적인 부분이나 멘탈적인 고민이 있으면 저와 같이 고민해 주셔서 
                                    <strong>학생들의 성향을 파악하고 세심하게 상담해 주셔서</strong> 긴 수험생활에서 많은 의지를 할 수 있었습니다. 
                                    감사했습니다. 담임선생님의 한마디가 큰 힘이 되었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>의예과</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">고신대학교 의예과 합격</p>
                                <p class="name">러셀 센텀 배O림<br>
                                    <span>(재원기간 : 2023년 1월 ~ 2023년 수능까지)</span></p>
                            </div>
                            <table class="tbl-type01">
                                <colgroup>
                                    <col style="width:auto;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
                                    <col style="width:16%;">
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
                                        <th>2024 수능</th>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>1</td>
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
                            <div class="txt-box">
                                <p>러셀 시스템 중에서 <strong>바자관과 강의실이 같이 있었던 점</strong>이 가장 좋았습니다. 
                                    바자관에서 1분 거리에 강의실이 있어 이동하는 시간을 줄일 수 있어 좋았습니다. 
                                    그리고 메가X대성 더 프리미엄 모의고사를 통해 <strong>매달 실력을 점검해 보는 시간을 가질 수 있었던 점</strong>도 좋았습니다.</p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination type01"></div>
                </div>
            </div>
            <p class="r-txt">* <%=txtCampus%>학원 재원생 후기 중 일부 발췌</p>
            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="itv-list">
                                <p>
                                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_img01.jpg" alt="">
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/48138912')"></a>
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="itv-list">
                                <p>
                                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_img02.jpg" alt="">
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/49516014')"></a>
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="itv-list">
                                <p>
                                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/stu_img03.jpg" alt="">
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/52164967')"></a>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
            <div class="review-wrap type02">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>의예과</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">동아대학교 의예과 합격</p>
                                <p class="name">러셀CORE 창원 윤종빈</p>
                            </div>
                            <div class="txt-box">
                                <p>
                                    <strong>실전과 같은 분위기에서 모의고사</strong>를 볼 수 있는 기회가 
                                    많지 않은데, 러셀은 위클리, 메대프, 퀄 모의고사 등으로 <strong>매주 수능과 같이 대비</strong>할 수 있었습니다. 
                                    또한 담임선생님과의 상담을 통해 부족한 부분을 
                                    보완할 수 있어 효과적인 성적 향상의 계기가 되었습니다.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <p class="ico-g"><strong>의예과</strong><br>합격</p>
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">동아대학교 의예과 합격</p>
                                <p class="name">러셀CORE 창원 제현수</p>
                            </div>
                            <div class="txt-box">
                                <p>
                                    학습 계획을 짜는데 어려움이 있었는데, 
                                    <strong>담임선생님과의 상담을 통해 체계적인 공부 방향을
                                    설정</strong>할 수 있었습니다. 학습적인 측면 및 멘탈적으로도 
                                    잘 잡아주시고, 입시에서도 생기부를 기반하여 
                                    최적의 입시 방향을 잡아주셔서 성공적인 결과를 
                                    거둘 수 있었습니다.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">충남대학교 수의예과 합격</p>
                                <p class="name">러셀CORE 창원 백지훈</p>
                            </div>
                            <div class="txt-box">
                                <p>
                                    <strong>서울에 가지 않아도 대치동 LIVE 수업과 콘텐츠를 
                                    동일하게 이용</strong>할 수 있다는 점이 마음에 들었습니다. 
                                    수업 외에도 <strong>한 건물에 자습관, 식당, 강의실을 같이 
                                    배치함으로써 이동 동선을 최소화하고 체력과 
                                    학습 분위기 유지 측면에서 큰 이점</strong>을 얻을 수 있었습니다.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="stu-info">
                                <p class="year">2024</p>
                                <p class="grand">연세대학교 경제학부 합격</p>
                                <p class="name">러셀CORE 창원 윤득영</p>
                            </div>
                            <div class="txt-box">
                                <p>
                                    <strong>단과 수업과 자습관 이용을 한 번에 할 수 있다는 점</strong>이
                                    좋았습니다. 관리형 독서실과 <strong>대치동 현장 단과의 장점을 
                                    지방에서 거의 그대로 구현한 것이 큰 장점</strong>인 것 같습니다. 
                                    주기적으로 치러지는 모의고사 역시 실력 향상에 
                                    큰 도움을 주었습니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination type01"></div>
                </div>
            </div>
            <p class="r-txt">* 러셀CORE 창원학원 N수 정규반 재원생 후기 중 일부 발췌</p>
            <% ElseIf campus_code = "CD0346" Then '코어청주 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48258956')">
                                    <strong>2024학년도<br>을지대학교 의예과 합격</strong>
                                    <span>러셀CORE 청주 오화영</span>
                                </a>
                                <p>
                                    “바자관의 표준 시간표대로 행동하다보면 자연스럽게 <strong>나의 생체리듬도 표준 시간표에 맞춰집니다.</strong> 교시마다 할 공부를 정해놓는 등 체계적인 계획을 세울 수 있었고, 휴식시간이 일정하게 정해져 있어 <strong>공부시간에는 집중력을 계속해서 유지할 수 있었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50589352')">
                                    <strong>2024학년도<br>충북대학교 의예과 합격</strong>
                                    <span>러셀CORE 청주 김하민</span>
                                </a>
                                <p>
                                    “<strong>메가X대성 더 프리미엄 모의고사 등과 같은 실전 모의고사</strong>가 N수생에게 꼭 필요한 전국 단위 집체 모의고사 경험을 채워주었습니다. <strong>전 과목을 실제 수능시간에 맞춰 풀면서 실전 경험에 대한 부족함을 해소할 수 있었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50589412')">
                                    <strong>2024학년도<br>서울대학교 경영학과 합격</strong>
                                    <span>러셀CORE 청주 김하진</span>
                                </a>
                                <p>
                                    “강의실이 바자관 바로 위층에 위치해 있어서 거리상 시간 손실이 없었던 것이 가장 좋았습니다. <strong>단과 수업을 듣고, 수업이 끝나면 바로 자습관으로 이동해 시간을 아낄 수 있었습니다.</strong> 수업에서 제공받은 <strong>현강 자료</strong>도 수능을 준비하는 데 큰 도움이 되었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50589295')">
                                    <strong>2024학년도<br>연세대학교 철학과 합격</strong>
                                    <span>러셀CORE 청주 김화랑</span>
                                </a>
                                <p>
                                    “시험을 본 이후 러셀 총평노트를 작성한 것이 큰 도움이 되었습니다. <strong>틀린 유형을 되짚어 보며 실수를 줄여나갈 수 있었습니다.</strong>  또 담임선생님과 상담을 통해 학습 방향을 수월하게 설정해 나갈 수 있었고, <strong>동기부여를 해주셔서 수험생활에 힘이 될 수 있었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49229341')">
                                    <strong>2024학년도<br>덕성여자대학교 약학과 합격</strong>
                                    <span>러셀CORE 청주 박예은</span>
                                </a>
                                <p>
                                    “바자관의 장점은 <strong>개방형 구조</strong>입니다. 공부하다가 피곤해지고 지루해질 때 고개를 들어보면 주변의 공부 분위기를 바로 확인할 수 있어서 <strong>다시 한 번 마음을 다잡고 공부할 수 있었습니다.</strong> 공부 시작 전 체조로 뻐근해진 몸을 풀고, 집중력을 환기하는 것도 좋았습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/51834051')">
                                    <strong>2024학년도<br>덕성여자대학교 약학과 합격</strong>
                                    <span>러셀CORE 청주 조현지</span>
                                </a>
                                <p>
                                    “<strong>매주 진행되는 다양한 모의고사가 학습 방향 설정과 보완에 큰 도움이 되었습니다.</strong> 주기적으로 시험을 진행함으로써 오랜 시간 앉아서 시험 보는 것에 익숙해질 수 있었고, 매주 취약점을 발견해 그것을 보완해 나가며 성취감을 느낄 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0244" Then '분당 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49011801')">
                                    <strong>2024학년도<br>서울대학교 사회학과 합격</strong>
                                    <span>러셀 분당 엄ㅇㅇ</span>
                                </a>
                                <p>
                                    “바자관의 장점은 공부 리듬을 형성할 수 있다는 것입니다. 
                                    시간표가 수능과 비슷하게 맞추어져 있어 <strong>오래 집중하는 습관을 들이고 수능과 같은 패턴으로 공부하기에 유리</strong>합니다. 
                                    또한 <strong>철저한 출결 관리 덕분에 규칙적으로 생활하는 데에 큰 도움</strong>이 되었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/52011545')">
                                    <strong>2024학년도<br>경희대학교 치의예과 합격</strong>
                                    <span>러셀 분당 윤ㅇㅇ</span>
                                </a>
                                <p>
                                    “바자관 바로 앞에 담임선생님이 계셔서 궁금한 점이 생기면 편하게 상담을 신청할 수 있었습니다. 
                                    매달 시험을 본 후 진행하는 성적 상담에서는 <strong>저에게 맞는 학습 방향을 설계해 주셔서 남은 기간 동안 어떻게 공부해야 할지 큰 도움</strong>을 받았습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/52011510')">
                                    <strong>2024학년도<br>단국대학교 약학과 합격</strong>
                                    <span>러셀 분당 우ㅇㅇ</span>
                                </a>
                                <p>
                                    “<strong>바자관의 가장 큰 장점은 개방형 구조와 좋은 면학분위기</strong>라고 생각합니다. 
                                    장시간 공부를 하다 집중이 안 되고 지칠 때 주변에 열심히 하는 친구들을 보면서 긍정적인 자극을 받을 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/49013191')">
                                    <strong>2024학년도<br>연세대학교 천문우주학과 합격</strong>
                                    <span>러셀 분당 김ㅇㅇ</span>
                                </a>
                                <p>
                                    “러셀에서 달마다 메가X대성
                                    더 프리미엄 모의고사를 응시하였던 것이 큰 도움이 되었습니다. 
                                    <strong>시간에 맞추어 푸는 연습을 통하여, 수능장에서도 시간 관리</strong>를 잘할 수 있었던 것 같습니다. 
                                    또한, <strong>객관적인 제 위치를 매달 볼 수 있어서 나태해지지 않을 수 있었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/52010243')">
                                    <strong>2024학년도<br>고려대학교 컴퓨터학과 합격</strong>
                                    <span>러셀 분당 김ㅇㅇ</span>
                                </a>
                                <p>
                                    “러셀의 장점은 실전, 압박 모의고사, 단과 수업, 특강 등 <strong>필요한 시간을 자유롭게 쓸 수 있는 유동성</strong>에 있는 것 같습니다. 
                                    또한 <strong>강의실, 바자관, 식당 간의 이동 거리가 짧아서 빠르게 공부에 복귀</strong>할 수 있다는 것도 좋았습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/52012120')">
                                    <strong>2024학년도<br>성균관대학교 자연과학계열 합격</strong>
                                    <span>러셀 분당 민ㅇㅇ</span>
                                </a>
                                <p>
                                    “<strong>벌점과 승강반 제도를 통해 학생들은 바른 공부 습관</strong>을 들일 수 있었는데, 저 같은 경우는 <strong>두 번 연속 승반하여 더욱 공부에 매진하게 되는 긍정적인 효과</strong>를 얻었습니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:alert('추후 공개 예정입니다.')">
                                    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2025/regular/thumb_01.jpg" alt="" /></div>
                                    <div class="thumb-txt">
                                        <strong>2025학년도<br>성균관대 의예과 합격</strong>
                                        <span>러셀 대구 HS반 서혜리</span>
                                    </div>
                                </a>
                                <p>
                                    혼자 공부를 하다 보면 비균형적인 학습을 하게 될 가능성이 높은데, 러셀을 다니면서 <strong>학원에서 제공하는 컨텐츠를 최대한 활용하면 알아서 학습의 균형</strong>이 잡히는 것 같아서 편했습니다.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:alert('추후 공개 예정입니다.')">
                                    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2025/regular/thumb_02.jpg" alt="" /></div>
                                    <div class="thumb-txt">
                                        <strong>2025학년도<br>성균관대 의예과 합격</strong>
                                        <span>러셀 대구  HS반 이정빈</span>
                                    </div>
                                </a>
                                <p>
                                    <strong>공부 외의 사이트를 들어갈 수 없는 제한된 와이파이</strong>입니다. 자제력이 부족한 터라 전자기기가 있으면 공부 외의 것들에 얽매여 집중력을 잃기 부지기수였는데 바자관은 공부에 필요한 사이트 외의 것들은 원천 차단되어 오로지 공부에만 집중할 수 있어서 좋았습니다.

                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:alert('추후 공개 예정입니다.')">
                                    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2025/regular/thumb_03.jpg" alt="" /></div>
                                    <div class="thumb-txt">
                                        <strong>2025학년도<br>고려대 의예과 합격</strong>
                                        <span>러셀 대구 서의치대반 송지안</span>
                                    </div>
                                </a>
                                <p>
                                    <strong>책상이 넓어 모의고사를 풀기에 용이</strong>했고, <strong>바로 옆의 개인 책장을 이용</strong>할 수 있어서 책을 찾기 위해 사물함까지 이동해야 하는 번거로움이 없었습니다.

                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:alert('추후 공개 예정입니다.')">
                                    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2025/regular/thumb_04.jpg" alt="" /></div>
                                    <div class="thumb-txt">
                                        <strong>2025학년도<br>경북대 의예과 합격</strong>
                                        <span>러셀 대구 HS반 강유현</span>
                                    </div>
                                </a>
                                <p>
                                    <strong>담임선생님과 1:1 상담을 하며 현재 자신의 학습 상태와 보완해야 할 부분을 객관적으로 분석</strong>할 수 있었습니다. 담임선생님께서는 성적은 물론이고 학습 태도와 같은 일상적인 부분에 대해서도 함께 고민하고 조언해 주셨습니다.

                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:alert('추후 공개 예정입니다.')">
                                    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2025/regular/thumb_05.jpg" alt="" /></div>
                                    <div class="thumb-txt">
                                        <strong>2025학년도<br>성균관대 약학과 합격</strong>
                                        <span>러셀 대구 HS반 신윤</span>
                                    </div>
                                </a>
                                <p>
                                    모의고사를 보고나면 지쳐서 피드백을 안하고 넘어가는 경우가 많은데, <strong></strong>총평노트를 작성하고 담임선생님과 피드백하는 시간을 가지면서 지난 시험보다 더 나아진 점, 부족한 점을 정리</strong>할 수 있어 좋았습니다.

                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:alert('추후 공개 예정입니다.')">
                                    <div><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2025/regular/thumb_06.jpg" alt="" /></div>
                                    <div class="thumb-txt">
                                        <strong>2025학년도<br>경북대 수의예과 합격</strong>
                                        <span>러셀 대구 연고대반 안준영</span>
                                    </div>
                                </a>
                                <p>
                                    <strong>다양한 특강이 개설되어서 도움</strong>이 많이 되었습니다. 입시 전형에 관한 특강을 들었는데 합격한 사례들을 구체적으로 알 수 있어 합격사례와 비교했을 때 내가 어떤 부분에서 부족한지 알 수 있었고 그것을 바탕으로 <strong>앞으로의 공부계획을 세우는 데에도 많은 도움</strong>이 됐습니다.

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
            <div class="review-wrap">
                <div class="review-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50967610')">
                                    <strong>2024학년도<br>서울대학교 인문계열 합격</strong>
                                    <span>러셀CORE 광주 김효원</span>
                                </a>
                                <p>
                                    “<strong>라이브 수업 수강을 통해 받을 수 있었던 현강 자료들이 도움이 되었습니다.</strong> 높은 퀄리티의 자료들을 통해 실력을 향상시킬 수 있었고 질의응답을 통해 어려웠거나 헷갈렸던 개념들을 확인하고 바로잡을 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50967672')">
                                    <strong>2024학년도<br>조선대 의예과 합격</strong>
                                    <span>러셀CORE 광주 김나연</span>
                                </a>
                                <p>
                                    “수업에는 따로 조교 선생님들이 계셔서 <strong>질문이나 상담을 할 수 있었는데 이 점이 가장 만족스러웠습니다.</strong> 덕분에 실전에 도움이 되는 팁들을 많이 얻을 수 있었고 수능 때도 유용하게 쓸 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48188348')">
                                    <strong>2024학년도<br>동국대 한의예과 합격</strong>
                                    <span>러셀CORE 광주 권태완</span>
                                </a>
                                <p>
                                    “바른공부 자습전용관과 가까운 거리에 강의실이 있다는 점은 확실한 장점으로 다가왔습니다. <strong>이동에 낭비하는 시간이 없도록 도움을 주었습니다.</strong> 또한 검증된 강사진의 퀄리티 높은 콘텐츠는 실력 향상에 큰 도움을 주었습니다.”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50967638')">
                                    <strong>2024학년도<br>한양대학교 의예과 합격</strong>
                                    <span>러셀CORE 광주 엄태옥</span>
                                </a>
                                <p>
                                    “부족하다고 생각하는 과목을 찾아 듣다 보니 강제로 불필요한 수업을 들을 때와 달리 집중력 있게 수업을 들을 수 있었고 <strong>자습시간 확보에도 도움이 되었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/48188913')">
                                    <strong>2024학년도<br>연세대 화공생명공학과 합격</strong>
                                    <span>러셀CORE 광주 이석준</span>
                                </a>
                                <p>
                                    “담임선생님께서 언제나 친절하게 고민이 있으면 상담해 주시고, 고민이 없어도 주기적으로 학생들을 불러 원내 생활이 괜찮은지 물어보며 <strong>학생들을 진지하게 케어해 주셔서 힘든 수험기간 동안 큰 힘이 되었습니다.</strong>”
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="review-card">
                                <a href="javascript:CastPopup('https://tv.naver.com/v/50967562')">
                                    <strong>2024학년도<br>조선대학교 의예과 합격</strong>
                                    <span>러셀CORE 광주 김시영</span>
                                </a>
                                <p>
                                    “혼자서 모의고사를 보면 현장감이 떨어져서 긴장이 되지 않는데 매달마다 <strong>학원생들 전체가 모의고사를 응시하여 현장감을 느낄 수 있었습니다.</strong> 함께 본 모의고사 덕분에 실제 수능 날에는 긴장하지 않고 시험에 응시할 수 있었습니다.”
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
            <% End If %>
        </div>

    </div>
</div>