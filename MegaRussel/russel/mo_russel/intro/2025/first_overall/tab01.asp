<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont01 js-cont <%=campusName%>">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont01_tit.png" alt="러셀 재수종합반은 런칭 첫해부터 탁월한 입결로 최상위권의 선택을 증명했습니다."></p>
        <div class="inner">
            <% If campus_code = "CD0249" Then '영통' %>
            <div class="result-wrap">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first_overall/cont01_txt.png" alt="러셀CORE 광주 2024학년도 합격자 현황"></p>
                <div class="result-list">
                    <ul>
                        <li>
                            <div>
                                <p>의&middot;치&middot;한&middot;수&middot;약</p>
                                <p><strong>219</strong>명</p>
                            </div>
                        </li>
                    </ul>
                    <ul>
                        <li>
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
                        <li class="mb0">
                            <div>
                                <p>교대&middot;경대사관&middot;<br>
                                    특성화대</p>
                                <p><strong>81</strong>명</p>
                            </div>
                        </li>
                        <li class="mb0">
                            <div>
                                <p>주요 15개 대</p>
                                <p><strong>795</strong>명</p>
                            </div>
                        </li>
                    </ul>
                    <p class="r-txt">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준<br>
                        (2024.02.29 기준)</p>
                </div>
            </div>
            <% ElseIf campus_code = "CD0340" Then '코어광주' %>
            <div class="result-wrap">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont01_txt.png" alt="러셀CORE 광주 2024학년도 합격자 현황"></p>
                <div class="result-list">
                    <ul class="type05">
                        <li class="mt0">
                            <div>
                                <p>서울대 의예</p>
                                <p><strong>2</strong>명</p>
                            </div>
                        </li>
                    </ul>
                    <ul class="type05">
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
                        <li class="mb0">
                            <div>
                                <p>메디컬<br>(의/치/한/수/약)</p>
                                <p><strong>119</strong>명</p>
                            </div>
                        </li>
                        <li class="mb0">
                            <div>
                                <p>서연고</p>
                                <p><strong>28</strong>명</p>
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
                    *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준)<br>
                    (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                    *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                    *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                </div>
            </div>
            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
            <div class="result-wrap">
                <div class="result-list">
                    <ul class="type06">
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
                                    메이저 의예</p>
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
                    <ul class="gold04">
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
                        <li class="m0">
                            <div>
                                <p>SKY/포항공대/<br>
                                    카이스트</p>
                                <p><strong>26</strong>명</p>
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
                    ※ 최종 업데이트 : 2024-03-05 기준<br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                    ※ 최상위권: 메디컬(의/치/한/약/수) + SKY<br>
                    ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예<br>
                    ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                    (홈페이지 대입 실적 기준/2024-03-05 기준)

                </div>
            </div>
            <% ElseIf campus_code = "CD0342" Then '대구' %>
            <div class="result-wrap">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/first/cont01_txt.png" alt="러셀CORE 창원 2024학년도 합격생 현황"></p>
                <div class="result-list">
                    <ul class="type09">
                        <li>
                            <div>
                                <p>서울대 의예</p>
                                <p><strong>4</strong>명</p>
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
                        <li>
                            <div>
                                <p>치&middot;한&middot;수&middot;약학</p>
                                <p><strong>116</strong>명</p>
                            </div>
                        </li>
                        <li>
                            <div>
                                <p>서&middot;연&middot;고</p>
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
            </div>
            <!-- 데이터 산출기준 -->
            <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_info.png" alt=""></span></a>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    *2023년 러셀 대구 바른공부 자습전용관 재원생 기준<br>
                    (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)
                </div>
            </div>
            <% Else %>
            <div class="graph-wrap">
                <p class="ico"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont01_ico01.png" alt=""></p>
                <p class="ico"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont01_ico02.png" alt=""></p>
                <p class="arr"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont01_arr_top.png" alt=""></p>
                <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont01_img.jpg" alt=""></p>
            </div>
            <!-- 데이터 산출기준 -->
            <a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/ico_info.png" alt=""></span></a>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    * 2022~2024년 러셀 전체 학원 바른공부 자습전용관 HS반 8월 인원 기준 ( HS반 입학 기준 : 수능 국수영 또는 국수탐(1) 4등급 이내 )<br>
                    * 학원마다 입학 기준은 상이하며, 각 학원 홈페이지에서 확인하실 수 있습니다.

                </div>
            </div>

            <!-- 입결부분 -->
            <div class="result-wrap">
                <p class="pt40"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont01_txt.png" alt=""></p>
                <div class="result-box">
                    <ul>
                        <li>
                            <div>
                                <p>서울대 의예과</p>
                                <p><strong class="counter" data-count="19">0</strong>명<sup>1)</sup></p>
                                <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/top_label.png" alt="" /></span>
                            </div>
                            <div>
                                <p>메이저 의대</p>
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
                                <p>서울대 경영대학 11명,<br>서울대 경제학부 17명</p>
                                <span class="badge"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first/top_label.png" alt="" /></span>
                            </div>
                            <div>
                                <p>서울대/<br>
                                    연세대/고려대</p>
                                <p><strong class="counter" data-count="1053">0</strong>명<sup>6)</sup></p>
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
                    1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29기준)<br>
                    2024학년도 서울대 의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀 대전 3명 배출)<br>
                    2) 2020-2024학년도 러셀에서 배출한 메이저 의대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                        2024학년도 메이저 의대 (서울대 의예과 19명, 연세대(서울) 의예과 23명, 성균관대 의예과 7명, 가톨릭대(성의) 의예과 21명, 울산대 의예과 6명, 고려대 의과대학 20명)<br>
                    3) 2020-2024학년도 러셀에서 배출한 전국 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    4) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-06-11 기준)<br>
                    5) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    6) 2020-2024학년도 러셀에서 배출한 서울대/연세대/고려대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                    * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024-02-29 기준)<br>
                    ※  본 결과는 최종 합격자를 기준으로 집계하였습니다.
                </div>
            </div>
            <a class="first-btn" href="https://mrussel.megastudy.net/perfect/2024/susi/index.asp">2024학년도 대입 결과 더보기</a>
            <% End If %>
        </div> 
        
    </div>

    <!-- cont02 -->
    <div class="cont02 js-cont">
        <% If campus_code = "CD0349" Then '울산 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont02_tit02.jpg" alt="빠른 시작이 만들어낸 놀라운 결과 재수생 우선선발반 선배들이 증명합니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/first_overall/cont02_tit.jpg" alt="빠른 시작이 만들어낸 놀라운 결과 재수생 우선선발반 선배들이 증명합니다."></p>
        <% End If %>
        <div class="inner">
            <!-- 후기영역 -->
            <!-- #include virtual = "/intro/2025/first_overall/review_slide.asp" -->
            <!-- //후기영역 -->

            <% If campus_code = "CD0349" Then '울산 %>
            <a class="first-btn bk mt15"href="javascript:void(0)" onclick="alert('PC 페이지에서 이용 가능합니다.'); location.href='https://russel.megastudy.net/russel/entinfo/notice/2020/success/index.asp'"><%=review_btn%></a>
            <% Else %>
            <a class="first-btn bk mt15"href="<%=review_btn_url%>"><%=review_btn%></a>
            <% End If %>
        </div>
    </div>
</div>