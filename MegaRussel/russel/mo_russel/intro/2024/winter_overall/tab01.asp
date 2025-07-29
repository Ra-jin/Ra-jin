<div class="js-cont-wrap <%=campusName%>">
    <!-- cont01 -->
    <div class="cont01">
        <% If campus_code = "CD0349" Then '울산 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont02_tit.png" alt="러셀 2024학년도 대입 주요 대학 합격자 역대 최다 배출*"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter/cont02_tit02.png" alt="러셀 2024학년도 대입 주요 대학 합격자 역대 최다 배출*"></p>
        <% End If %>
        <div class="inner">
            <% If campus_code = "CD0342" Then '대구 %>
            <div class="result_list">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/winter_overall/cont01_txt.png" alt="2023 개원 첫 해, 놀라운 입시 결과로 최상위권을 증명하다!"></p>
                <ul>
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
                        <span style="bottom:-30%">(*의약학계열 44명)</span>
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
                    2024학년도 서울대의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀CORE 대전 3명 배출)<br>
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

    <!-- cont02 -->
    <div class="cont02">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/winter_overall/cont02_tit.jpg" alt="러셀 윈터스쿨에서 치열하게 겨울방학을 보낸 선배들은 자랑스러운 최상위권 대학 합격생이 되었습니다."></p>
        <div class="inner">
            <!-- 후기영역 -->
            <!-- #include virtual = "/intro/2024/winter_overall/review_slide.asp" -->
        </div>
    </div>
</div>