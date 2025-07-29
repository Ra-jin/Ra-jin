<div class="cont js-cont-wrap">
    <!-- cont03 -->
    <div class="cont03 <%=campusName%>">
        <h2><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont01-1_tit.jpg" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
        <div class="inner">
            <% If campus_code = "CD0340" Then '코어광주 %>
            <div class="result-box">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont01-1_stit.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대 의예<br>
                            <strong>2</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            메이저 의예<br>
                            <strong>9</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            전국 의예<br>
                            <strong>69</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold">
                    <li>
                        <p>
                            <i style="font-style: normal;" class="f10">메디컬(의/치/한/수/약)</i><br>
                            <strong>119</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서연고<br>
                            <strong>28</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <div class="info-stxt">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준)<br>
                        (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                        *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                        *메이저 의예  : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                  
                    </div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="result-box">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular_overall/cont01-1_stit.jpg" alt="결과로 증명하는 러셀 목동 러셀 목동 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            의 &middot; 치 &middot; 한 &middot; 수 &middot; 약<br>
                            <strong>219</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대<br>
                            <strong>63</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            SKY<br>
                            <strong>250</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold type02">
                    <li>
                        <p>
                            서 &middot; 성 &middot; 한 &middot; 이<br>
                            <strong>210</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중 &middot; 경 &middot; 외 &middot; 시<br>
                            <strong>212</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold type02">
                    <li>
                        <p>
                            교대 &middot; 경대사관 <br> &middot; 특성화대<br>
                            <strong>81</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            주요 15개대<br>
                            <strong>795</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준<br>
                (2024.02.29 기준)
                </p>
            </div>
            <% ElseIf campus_code = "CD0349" Then '울산 %>
            <div class="graph-wrap mt0">
                <h3><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_stit01.jpg" alt="매년 러셀을 선택하는 최상위권 N수생이 계속 증가하고 있습니다." /></h3>
                <ul>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph01.jpg" alt="HS반 유입률" /></div>
                        <span class="arrow01">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/ico_arrow01.png" alt="" />
                        </span>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph02.jpg" alt="서울대, 의치대반 유입률" /></div>
                        <span class="arrow01">
                            <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/ico_arrow01.png" alt="" />
                        </span>
                    </li>
                </ul>
            </div>
            <!-- 데이터 산출 기준-->
            <div class="l-pop">
                <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
            </div>
            <div class="layer-wrap">
                <div class="bg-mask"></div>
                <div class="layer-in">
                    <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                    <ul class="list-bullet">
                        <li>2021년, 2022년, 2023년 러셀 전체 학원 바자관 3월 N수 재원생의 반명 기준 수강료 완납&분납 수강인원 비교</li>
                        <li>반별 입학 기준<br>
                            <p> - HS반 : 수능 국수영 또는 국수탐(1) 4등급 이내,<br> 서울대·의치대반 : 국수영 또는 국수탐(1) 5등급 이내<br>
                                - 학원마다 반별 입학 기준은 상이하며, <br>각 학원 홈페이지에서 확인하실 수 있습니다.</p>
                        </li>
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            
            <div class="graph-wrap">
                <h3><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_txt02_n.jpg" alt="" /></h3>
                <ul class="mb15 award">
                    <li>
                        <div class="banner-balloon"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular/banner_balloon.png" alt="" /></div>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph10.jpg" alt="" /></div>
                        <span class="award-arrow"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/ico_arrow02.png" alt="" /></span>
                    </li>
                </ul>
                <ul class="award-box">
                    <li>
                        2018~2021 <span>4년 연속 </span><sup>3)</sup>
                        <p><strong>수능 만점자& 전국 수석 배출</strong></p>
                    </li>
                    <li>
                        2024학년도 <span>메이저 의대 </span><sup>4)</sup>
                        <p><strong>96</strong>명</p>
                    </li>
                    <li>
                        2024학년도 <span>전국 의예과</span> <sup>5)</sup>
                        <p><strong>745</strong>명</p>
                    </li>
                </ul>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data mb20">데이터 산출 기준 <span>i</span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <p>
                            1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                            2) 2024학년도 결과 (러셀 대치 7명,러셀 부천 1명,러셀 분당 1명,러셀 평촌 1명,러셀 대구 4명,러셀CORE 광주 2명,러셀CORE 대전 3명) <br>
                            3) 수능 만점자 및 전국 수석 (표준점수/백분위 합 기준) : 러셀 전체 학원 재원생의 2018~2021학년도 수능 실채점 기준) (러셀 강남 1명,러셀 대치 3명,러셀 분당 2명) <br>
                            4) 2024학년도 러셀 전체 학원에서 배출한 메이저 의대 합격자 수 (서울대의예과19명, 연세대(서울)의예과23명, 성균관대의예과7명, 가톨릭대(성의)의예과21명, 울산대의예과6명, 고려대의과대학 20명) (2024-02-29 기준)  <br>
                            5) 2024학년도 러셀 전체 학원에서 배출한 전국 의대 합격자 수 (2024-02-29 기준) <br>
                            
                            * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                            ※ 단과 수강생은 제외하였으며 복수 대학 합격자를 포함합니다. <br>
                            ※ 본 결과는 최종 합격자를 기준으로 집계하였으며 지속적으로 업데이트될 예정입니다.                                                    
                        </p>
                    </div>
                </div>
                <div class="graph-swiper g01 swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph03.jpg" alt="백분위 성적 상승" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph04.jpg" alt="백분위 성적 상승" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph05.jpg" alt="백분위 성적 상승" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph06.jpg" alt="서울대 의예과 역대 최다 배출" /></div>
                    </div>
                    <div class="swiper-pagination gp01"></div>
                </div>
                <!-- 데이터 산출 기준-->
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <ul class="list-star">
                            <li>2022년 러셀 전체 학원 바자관 N수 정규반 재원생 중 2022~2023학년도 수능 성적/등급(국수탐(2)) 확인이 가능한 재원생의 성적 비교</li>
                        </ul>
                    </div>
                </div>
                <!-- //데이터 산출 기준 -->
            </div>
            
            <!-- <div class="graph-wrap">
                <h3><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_stit02.jpg" alt="러셀의 집단적인 면학분위기에서 성적 상승과 최상위권 대입 성공을 이루었습니다." /></h3>
                <div class="graph-swiper g01 swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph03.jpg" alt="백분위 성적 상승" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph04.jpg" alt="백분위 성적 상승" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph05.jpg" alt="백분위 성적 상승" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph06.jpg" alt="서울대 의예과 역대 최다 배출" /></div>
                    </div>
                    <div class="swiper-pagination gp01"></div>
                </div>
                <div class="l-pop">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <ul class="list-star">
                            <li>2022년 러셀 전체 학원 바자관 N수 정규반 재원생 중 2022~2023학년도 수능 성적/등급(국수탐(2)) 확인이 가능한 재원생의 성적 비교</li>
                        </ul>
                    </div>
                </div>

                <div class="graph-swiper g02 swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph07.jpg" alt="서울대 의예과 역대 최다 배출" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph08.jpg" alt="서울대 의예과 역대 최다 배출" /></div>
                        <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/cont01_graph09.jpg" alt="서울대 의예과 역대 최다 배출" /></div>
                    </div>
                    <div class="swiper-pagination gp02"></div>
                </div>
                <div class="l-pop mb0">
                    <a href="javascript:void(0)" class="gr-data">데이터 산출 기준 <span>i</span></a>
                </div>
                <div class="layer-wrap">
                    <div class="bg-mask"></div>
                    <div class="layer-in">
                        <p class="js-close-mask"><a href="javascript:void(0);"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
                        <ul class="list-star">
                            <li>2020-2023학년도 러셀에서 배출한 서울대 의예과 <br>합격자 수 2023학년도 최다 배출 <br> 
                                (단과 수강생 제외/복수대학 합격자 포함) <br>(2023-02-28 기준)</li>
                            <li>2018-2023학년도 러셀에서 배출한 메이저 의대, <br> 
                                전국 의예과 합격자 수 2023학년도 최다 배출<br>(단과 수강생 제외/복수대학 합격자 포함)<br>(2023-02-28 기준)</li>
                        </ul>
                    </div>
                </div>
            </div>     -->
     
            
            <% ElseIf campus_code = "CD0257" Then '중계 %>
            <div class="result-box">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first/cont01-1_stit.png" alt="결과로 증명하는 러셀 목동 러셀 목동 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대<br>
                            <strong>의예과</strong>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대<br>
                            <strong>14</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            의치한수약<br>
                            <strong>40</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서연고<br>
                            <strong>61</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서성한이<br>
                            <strong>63</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중경외시<br>
                            <strong>40</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">
                    ※ 2023학년도 러셀 중계 바른공부자습전용관 재원생 기준<br>
                    중복대학 합격자수 포함 (2023년 2월 16일 기준)
                </p>
            </div>
            <% ElseIf campus_code = "CD0342" Then '대구 %>
            <div class="result-box">
                <p class="tit m-img60"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/regular/cont01_txt.png" alt="대입성공을 위한 최선의 선택! 러셀 평촌 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            <strong>4</strong><br>
                            서울대 의예
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>3</strong><br>
                            연세대 의예
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold">
                    <li>
                        <p>
                            <strong>9</strong><br>
                            메이저 의예
                        </p>
                        <span class="txt">(서울대, 연세대, 성균관대, 가톨릭대, 울산대 기준)</span>
                    </li>
                    <li>
                        <p>
                            <strong>116</strong><br>
                            전국 의예
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold type02">
                    <li>
                        <p>
                            <strong>116</strong><br>
                            치&middot;한&middot;수&middot;약학
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>73</strong><br>
                            서&middot;연&middot;고
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold type02">
                    <li>
                        <p>
                            <strong>88</strong><br>
                            서성한이<br>
                            과학기술원
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>117</strong><br>
                            경북대
                        </p>
                        <span class="txt">(*의약학계열 44명)</span>
                    </li>
                </ul>
                <p class="r-txt">*2023년 러셀 대구 바른공부 자습전용관 재원생 기준 <br>
                (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)<br>
                *2024.3.15 기준이며, 지속적으로 업데이트 될 예정입니다
                </p>
            </div>
            <div class="review-v-list">
                <div class="pf-info">
                    <div>
                        <span><img src="<%=Application("img_path_russel")%>/m_russel/russel_dg/2024/regular/stu_jhh.png" alt="조현호" /></span>
                        <a href="javascript:CastPopup('https://tv.naver.com/v/45182079');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/regular_overall/ico_play.png" alt="" /></a>
                    </div>
                    <dl>
                        <dt><div>2024</div>
                        </dt>
                        <dd>러셀 대구 HS반 조현호
                            <br>
                            <span>재원기간 23년 8월~수능까지</span>
                        </dd>
                    </dl>
                </div>
                <div class="p-review">
                    <p class="tit">“1타 강사님의 즉각적인 피드백을 통해 <br>&nbsp;올바른 공부 방향을 잡을 수 있었습니다.”
                    </p>
                    <p class="txt">
                        담임선생님께서 최상위 면학분위기를 조성 해주셨습니다. 
                        적당한 긴장감을 유지해주고, 시기에 맞는 입시정보를 제공해주셔서 큰 도움이 되었습니다. 
                        또 개개인에 맞는 조언과 충고로 내 상태를 되돌아보고 개선하는데 큰 도움이 되었습니다.                    
                    </p>
                </div>
                <div class="p-box">
                    <div class="b-info">
                        <div>
                            <ul>
                                <li><strong>2024학년도</strong> 296점</li>
                                <li>2023학년도 280점</li>
                            </ul>
                            <p>백분위 80% 상승</p>
                        </div>
                    </div>
                </div>
                <table class="tbl-type01 tb-info">
                    <colgroup>
                        <col style="width:20%" />
                        <col style="width:20%" />
                        <col style="width:20%" />
                        <col style="width:20%" />
                        <col style="width:20%" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>구분</th>
                            <th>국어</th>
                            <th>수학</th>
                            <th>탐구</th>
                            <th>총합</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td class="key-color">2024 수능</td>
                            <td class="key-color">97</td>
                            <td class="key-color">100</td>
                            <td class="key-color">99</td>
                            <td class="key-color">296</td>
                        </tr>
                        <tr>
                            <td>2023 수능</td>
                            <td>96</td>
                            <td>100</td>
                            <td>84</td>
                            <td>280</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="s-slide swiper-container type04">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 HS반 김예진<br>
                                            <strong>가천대/이화여대 약학과 합격</strong>
                                            <br>
                                            <span>재원기간 23년 2월~수능까지
                                            </span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong> 292.5점</li>
                                            <li>2023학년도 275.5점</li>
                                        </ul>
                                        <p>백분위 <strong> 69% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>1</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 서의치반 조혜린<br>
                                            <strong>성균관대 약학과/ 계명대 의예과 합격</strong>
                                            <br>
                                            <span>재원기간 23년 1월~수능까지</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong>291.5점</li>
                                            <li>2023학년도 276점</li>
                                        </ul>
                                        <p>백분위 <strong> 65% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
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
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 서의치반 이시훈 <br>
                                            <strong>연세대 언더우드학부 합격</strong>
                                            <br>
                                            <span>재원기간 22년 12월~수능까지</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong>284점</li>
                                            <li>2023학년도 210.5점</li>
                                        </ul>
                                        <p>백분위 <strong> 82% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">2</td>
                                        <td class="key-color">2</td>
                                        <td class="key-color">2</td>
                                        <td class="key-color">1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>7</td>
                                        <td>5</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 HS반 이인우<br>
                                            <strong>서울대 지리학과 합격</strong>
                                            <br>
                                            <span>재원기간 23년 8월~수능까지</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong>291.5점</li>
                                            <li>2023학년도 265점</li>
                                        </ul>
                                        <p>백분위 <strong> 76% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">2</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>1</td>
                                        <td>4</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 HS반 정지원<br>
                                            <strong>경북대/영남대/계명대 의예과 합격</strong>
                                            <br>
                                            <span>재원기간 23년 9월~수능까지</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong>296점</li>
                                            <li>2023학년도 290.5점</li>
                                        </ul>
                                        <p>백분위 <strong> 58% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>2</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 서의치반 권OO <br>
                                            <strong>동아대/원광대/<br>
                                                대구가톨릭대 의예과 합격</strong>
                                            <br>
                                            <span>재원기간 23년 6월~수능까지</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong>293점</li>
                                            <li>2023학년도 270.5점</li>
                                        </ul>
                                        <p>백분위 <strong> 76% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>1</td>
                                        <td>2</td>
                                        <td>3</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 서의치반 박OO <br>
                                            <strong>경북대/순천향대 의예과 합격</strong>
                                            <br>
                                            <span>재원기간 23년 2월~수능까지</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong>277점</li>
                                            <li>2023학년도 216점</li>
                                        </ul>
                                        <p>백분위 <strong> 73% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">2</td>
                                        <td class="key-color">2</td>
                                        <td class="key-color">2</td>
                                        <td class="key-color">1</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>2</td>
                                        <td>6</td>
                                        <td>4</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="review-v-list s-box">
                            <div class="p-box">
                                <div class="pf-info">
                                    <dl>
                                        <dt><div>2024</div>
                                        </dt>
                                        <dd>러셀 대구 연고대반 허OO <br>
                                            <strong>경북대 약학과 합격</strong>
                                            <br>
                                            <span>재원기간 23년 1월~수능까지</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="b-info">
                                    <div>
                                        <ul>
                                            <li><strong>2024학년도</strong>289점</li>
                                            <li>2023학년도 233점</li>
                                        </ul>
                                        <p>백분위 <strong> 84% 상승</strong></p>
                                    </div>
                                </div>
                            </div>
                            <table class="tbl-type01 tb-info">
                                <colgroup>
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
                                    <col style="width:20%" />
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
                                        <td class="key-color">2024 수능</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">1</td>
                                        <td class="key-color">2</td>
                                        <td class="key-color">2</td>
                                    </tr>
                                    <tr>
                                        <td>2023 수능</td>
                                        <td>3</td>
                                        <td>3</td>
                                        <td>4</td>
                                        <td>3</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="swiper-pagination p-type04"></div>
            </div>
            <% End If %>
        </div>
    </div>
    <!-- //cont03 -->
    <% If campus_code <> "CD0342" Then '대구제외 %>
    <!-- cont04 -->
    <div class="cont04">
        <div class="inner">
            <div class="review-wrap">
                <div class="swiper swiper-container">
                    <% If campus_code = "CD0340" Then '코어광주 %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>서울대 인문계열 합격</strong></p>
                                    </dt>
                                    <dd>러셀CORE 광주 김효원</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong> 295점</li>
                                        <li>2023학년도 255.5점</li>
                                    </ul>
                                    <p>88.8% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    바자관의 장점은  <br>
                                    학습에 집중할 수 있는 면학분위기입니다.
                                </p>
                                <p>
                                    바자관은 개방형 구조로 되어 있어  <br>
                                    집중력이 떨어질 때 앞, 옆에서  <br>
                                    치열하게 공부하고 있는 친구들을 보며  <br>
                                    자극을 받을 수 있었습니다.                                     
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>조선대 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀CORE 광주 김나연</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong> 291.5점</li>
                                        <li>2023학년도 257점</li>
                                    </ul>
                                    <p>80.2% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    담임 선생님은  <br>
                                    마라톤에서의 페이스메이커 같은 분이십니다.                                    
                                </p>
                                <p>
                                    담임 선생님께서는 1:1로 상담해 주셔서  <br>
                                    대화하면서 앞으로의 계획이나 부족한 부분에 대해  <br>
                                    스스로 생각해 볼 수 있도록 도와주셨습니다.  <br>
                                    마라톤에서의 페이스메이커 같은 분이십니다.                                    
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>동국대 한의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀CORE 광주 권태완</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong> 289점</li>
                                        <li>2023학년도 270점</li>
                                    </ul>
                                    <p>63.3% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    이동에 낭비하는 시간이 없도록 도움을 주었습니다.
                                </p>
                                <p>
                                    바른공부 자습전용관과 가까운 거리에 강의실이  <br>
                                    있다는 점은 확실한 장점으로 다가왔습니다.  <br>
                                    검증된 강사진의 퀄리티 높은 콘텐츠는  <br>
                                    실력 향상에 큰 도움을 주었습니다.                                    
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2024</p>
                                        <p><strong>한양대 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀CORE 광주 엄태옥</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2024학년도</strong> 297점</li>
                                        <li>2023학년도 292.5점</li>
                                    </ul>
                                    <p>60% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">
                                    공부 외에 것들은 최대한 신경을 안 쓰게 <br>
                                    관리를 해줘서 좋았습니다.                                    
                                </p>
                                <p>
                                    바자관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다. <br>
                                    불필요한 수업을 들을 때와 달리 집중력 있게  <br>
                                    수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.                                    
                                </p>
                            </div>
                        </div>
                    </div>
                    <% ElseIf campus_code = "CD0249" Then '영통 %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>서울대학교 생명과학부 합격</strong></p>
                                    </dt>
                                    <dd>러셀 영통 김태현</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">바자관의 좋은 면학분위기와 자습시간을 많이 확보할 수 있다는 장점 때문에 러셀을 선택하게 되었습니다.</p>
                                <p>수능이라는 같은 시험을 준비하고 있는 학생들이 바로 옆에서 열심히 <strong>공부하고 있는 장면</strong>을 볼 수 있기 때문에 더 집중하려고 노력하게 되는 것 같습니다. 또한 핸드폰을 수거하기 때문에 최대한 <strong>공부 외적인 것의 유혹을 떨쳐 내고 공부에만 집중</strong>할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>이화여자대학교 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 영통 조윤주</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">자습시간을 효율적으로 관리해주기 때문에 저에게 주어진 한정적인 시간을 공부에 충분히 투자할 수 있었습니다.</p>
                                <p>러셀의 장점은 <strong>철저한 관리와 공부하기 좋은 시설, 수능 시간표</strong>에 맞춰진 시간표입니다. 학생들이 공부에 완전히 집중할 수 있도록 <strong>담임선생님들께서 철저하게 관리</strong>해주셔서 불편함 없이 공부에만 집중할 수 있었습니다. 
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>이화여자대학교 약학과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 영통 김채연</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">의지가 약한 편이라 학습관리를 철저히 해주는<br>
                                    러셀학원을 등록하였습니다.</p>
                                <p><strong>러셀의 장점은 학생들이 공부를 잘할 수 있도록 관리를 잘해준다는 것입니다.</strong> 우선, 늘어지지 않고 표준 시간표대로 규칙적으로 공부할 수 있었던 점이 좋았고, 선생님들께서 바자관 안을 계속 점검하면서 공부에 방해되는 요소들은 해결해 주셔서 좋았습니다.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>세명대학교 한의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 영통 정인지</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">저같이 본인이 통제가 되지 않는 학생들을 위하여 적절한 통제를 걸어 주시는 것이 정말 좋았습니다.</p>
                                <p>바자관의 장점은 선생님들과 조교님들의 면학분위기 조성이라고 생각합니다. <strong>졸 때마다 깨워 주시고 학습 지도</strong>도 해 주시고 아침에 졸린 아이들을 모아 두고 스트레칭을 시키는 여러 이벤트나 생활관리 강화 기간의 도입으로 <strong>면학분위기가 조성되는 공간</strong>이라는 것이 러셀에 계속 남게 만든 메리트라고 생각합니다.
                                </p>
                            </div>
                        </div>
                    </div>
                    <% ElseIf campus_code = "CD0257" Then '중계 %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_chungnam.png" alt="충남대" /></span>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>충남대학교 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 중계 박준우</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">바자관 면학분위기도 좋고 담임선생님의 관리도<br>꾸준히 받을 수 있어서 선택하게 되었습니다.</p>
                                <p>개방형 구조로 되어 있어서 답답한 느낌 없이 공부할 수 있었고, 졸릴때에도 다른 학생들이 열심히 공부하고 있는 모습을 보고 정신차리고 다시 공부할 수 있었습니다.
                                </p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="고려대" /></span>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>고려대학교 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 중계 김민재</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">바자관 학습 분위기가 매우 좋았고, 학원에서 자습 시간을
                                    강제적으로 해야한다는 점이 마음에 들었습니다.</p>
                                <p>쾌적환 환경, 철저한 관리, 표준시간표 그리고 체계적인 출결관리가 습관 유지와 면학분위기 조성에 큰 도움이 되었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_snu03.png" alt="서울대" /></span>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>서울대학교 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 중계 노현지</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">담임선생님의 관리를 받으면서 끈기있게 공부하고 싶어
                                    러셀을 선택하게 되었습니다.</p>
                                <p>바자관 환경과 표준시간표가 가장 좋았습니다. 바자관 분위기가 편안하게 느껴졌고, 의자도 매우 편해서 공부에 집중할 수 있었습니다. 그리고 수능 시간표에 맞춰서 계획을 세우니 과목별로 균형을 맞춰서 규칙적으로 공부 할 수 있었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_ds.png" alt="서강대" /></span>
                                </div>
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>덕성여자대학교 약학과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 중계 민지우</dd>
                                </dl>
                            </div>
                            <div class="p-review">
                                <p class="tit">정해진 의무 자습시간 외에도 아침 일찍 등원하거나
                                    심야자습을 할 수 있어서 러셀학원을 선택하였습니다.</p>
                                <p>수능처럼 하루 종일 모의고사를 볼 수 있는 기회가 많지 않은데, 러셀은 메대프 뿐만 아니라 퀄 모의고사를 1~2주에 한번씩 그런 기회를 마련해 주어서 좋았습니다. 
                                </p>
                            </div>
                        </div>
                    </div>
                    <% Else %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>서울대학교 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 강남 이윤서</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 298점</li>
                                        <li>2022학년도 270점</li>
                                    </ul>
                                    <p>93.3% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">학원에 공부를 잘하고,<br>
                                    열심히 하는 친구들이 많아 면학분위기가<br>
                                    잘 조성되어 있어 선택하게 되었습니다.</p>
                                <p><strong>러셀의 장점은 면학분위기입니다.</strong> 주변 학생들이 열심히 공부하니
                                    자극도 받고, 생활패턴을 보고 배울 수 있어서 좋았습니다. 또한, <strong>수능
                                    시간표에 맞춰서 생활할 수 있게 지도</strong>해주는 것이 가장 좋았습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>고려대학교(안암) 전기전자공학부 합격</strong></p>
                                    </dt>
                                    <dd>러셀 대치 양선호</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 294.5점</li>
                                        <li>2022학년도 205점</li>
                                    </ul>
                                    <p>94.2% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">단과 강의실과 바른공부 자습전용관의<br>
                                    거리가 가까웠고 개인의 자습시간이<br>
                                    보장되는 곳이었기 때문입니다.</p>
                                <p><strong>러셀의 장점은 자습시간입니다.</strong> 개인적으로 공부란 
                                    혼자서 하는 것이 중요하다고 생각하는 편인데, 
                                    러셀은 다른 곳보다 <strong>시간의 자율성이 높아서 
                                    자습시간을 늘릴 수 있었기 때문입니다.</strong></p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>서울대학교 인문계열 합격</strong></p>
                                    </dt>
                                    <dd>러셀 목동 최은영</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 291.5점</li>
                                        <li>2022학년도 227.5점</li>
                                    </ul>
                                    <p>88.3% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">원하는 만큼의 수업만 들을 수 있다는 점에서<br>
                                    러셀을 선택하게 되었습니다.</p>
                                <p>저는 수업을 듣기보다 <strong>자습을 선호하는 편인데 
                                    자습시간을 확보할 수 있어서 좋았습니다.</strong><br> 
                                    하루를 능동적으로 구성할 수 있어서 
                                    그때그때 제게 필요한 학습을 충분히 할 수 있었고 
                                    <strong>수능까지 효율적으로 공부할 수 있었습니다.</strong></p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>연세대학교(서울) 건축공학과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 부천 김도현</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 285점</li>
                                        <li>2022학년도 271.5점</li>
                                    </ul>
                                    <p>47.4% 상승</p> 
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">면학분위기와 장학혜택 등을 전반적으로 
                                    고려했을 때, 어느 한 부분 부족한 것이 없어 
                                    선택하게 되었습니다.</p>
                                <p>바자관은 개방형 구조로 되어 있어 딴짓을 덜하게 되어 
                                    좋았습니다. <strong>책상과 의자가 넓고 좋아 모의고사를 
                                    올려놓고도 자리가 부족하지 않은 점도 큰 장점입니다.</strong> 
                                    시설만큼은 스트레스 하나도 안 받도록 세심하게 배려한 부분이 보였습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>중앙대학교 의학부 합격</strong></p>
                                    </dt>
                                    <dd>러셀 분당 김상범</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 296점</li>
                                        <li>2022학년도 286점</li>
                                    </ul>
                                    <p>71.4% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">러셀은 가장 높은 성적대의 학생들이 
                                    모여 있는 곳이라 선택하게 되었습니다.</p>
                                <p><strong>탁 트인 책상 구조 덕분에 옆자리 친구가 바로 보이는 점이 
                                    매우 좋았습니다.</strong> 같은 반 친구가 옆자리에 앉아 열심히 
                                    공부하는 모습이 실시간으로 노출되어 집중력이 
                                    흐트러지거나 졸릴 때 옆자리 친구를 보며 자극을 받을 수 있었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>이화여자대학교 약학과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 영통 김채연</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 292점</li>
                                        <li>2022학년도 281점</li>
                                    </ul>
                                    <p>57.9% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">의지가 약한 편이라 학습 관리를 철저히 해주는 
                                    러셀학원을 등록하였습니다.</p>
                                <p><strong>러셀의 장점은 학생들이 공부를 잘할 수 있도록 관리를 
                                    잘해준다는 것입니다.</strong> 우선, 늘어지지 않고 
                                    표준 시간표대로 규칙적으로 공부할 수 있었던 점이 
                                    좋았고, 선생님들께서 바자관 안을 계속 점검하면서 
                                    공부에 방해되는 요소들을 해결해 주셔서 좋았습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info"> 
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>원광대학교 한의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 중계 민지우</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 291.5점</li>
                                        <li>2022학년도 280.5점</li>
                                    </ul>
                                    <p>56.4% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">러셀은 정해진 의무 자습시간 외에도 아침에 
                                    일찍 등원하거나 심야자습을 할 수 있어서 
                                    러셀학원을 선택했습니다.</p>
                                <p>수능처럼 하루 종일 모의고사를 볼 수 있는 기회가 
                                    많지 않은데, <strong>러셀은 메대프 뿐만 아니라 
                                    퀄 모의고사 등으로 1, 2주에 한 번씩 그런 기회를 
                                    마련해 주어서 좋았습니다.</strong>  또 제가 속했던 HS반의 
                                    장학 제도 조건 덕분에 수험생활이 지칠 때 다시금 의욕을 되찾았습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>건국대학교 수의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 평촌 강민석</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 289.5점</li>
                                        <li>2022학년도 276점</li>
                                    </ul>
                                    <p>56.3% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">최상위권 학생들에게 단과수강과 자습시간을 
                                    자기주도적으로 분배할 수 있게 해준다는 점이 
                                    마음에 들어 선택하게 되었습니다.</p>
                                <p><strong>담임선생님께서 바자관 바로 옆에 위치하고 계셔서 
                                    편하게 궁금한 것이나 입시 상담을 받을 수 있었고</strong> 
                                    무엇보다 편하게 대해 주셔서 좋았습니다. 
                                    또한 <strong>HS 장학혜택 덕에 경제적 부담 없이</strong> 
                                    수능을 한 번 더 볼 수 있었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide gtop">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>연세대학교(서울) 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀 센텀 김민재</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 299.5점</li>
                                        <li>2022학년도 282.5점</li>
                                    </ul>
                                    <p>97.1% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">고등학교 친구의 추천으로 알게 되었고, 
                                    부산에서 대입 결과가 가장 좋은 학원이라 선택했습니다.</p>
                                <p><strong>바자관 바로 앞에 담임선생님께서 상주해 계시기 때문에</strong> 
                                    마음이 좀 불편하거나 공부가 잘 안 될 때 <strong>담임선생님과 
                                    상담하며 큰 도움을 받았습니다.</strong> 
                                    선생님의 조언뿐만 아니라 전년도 합격 선배들의 이야기를 들으며 안정감을 얻을 수 있었습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>서울대학교 자유전공학부 합격</strong></p>
                                    </dt>
                                    <dd>러셀CORE 광주 백장운</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 296점</li>
                                        <li>2022학년도 259.5점</li>
                                    </ul>
                                    <p>90.1% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">재수를 위해 타지로 나가는 것이 큰 부담이었는데 
                                    러셀CORE가 생겨서 다행히 광주에서 재수생활을 할 수 있었습니다.</p>
                                <p><strong>모의고사 후 스스로 총평을 작성하도록 한 것이, 실수 노트 
                                    정리 시에 아주 도움이 되었습니다.</strong> 
                                    또한 급식이 맛있었고, 단과 수업이 아주 가까워 좋았습니다.
                                    <strong>승강반 제도 또한 도움이 되었습니다.</strong> 
                                    학습 중반, 동기부여를 살짝 잃으려고 할 때 승반을 향한 욕구가 그것을 대체했습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>충남대학교 의예과 합격</strong></p>
                                    </dt>
                                    <dd>러셀CORE 대전 박보근</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 293.5점</li>
                                        <li>2022학년도 275점</li>
                                    </ul>
                                    <p>74.0% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">메이저 의대를 배출한 학원인 것에는 
                                    마땅한 이유가 있을 것이라고 생각되어 러셀을 선택했습니다.</p>
                                <p><strong>대치동 현강 자료를 그대로 받아 볼 수 있다는 것이 
                                    큰 장점입니다.</strong> 지방 학생들의 경우 거리상의 이유로 
                                    대치동까지 가서 현장 수업에 참여하기 어려운 경우가 
                                    많은데, 러셀코어 라이브 현장강의를 수강할 경우 
                                    대치동까지 가지 않더라도 현강 자료를 그대로 
                                    받아 볼 수 있어서 좋았습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="p-info">
                                <dl>
                                    <dt>
                                        <p class="year">2023</p>
                                        <p><strong>울산대학교 의예과 합격</strong></p>
                                    </dt>
                                    <dd>최상위권 남학생 의대전문관 오세욱</dd>
                                </dl>
                                <div>
                                    <ul>
                                        <li><strong>2023학년도</strong> 295.5점</li>
                                        <li>2022학년도 280점</li>
                                    </ul>
                                    <p>77.5% 상승</p>
                                </div>
                            </div>
                            <div class="p-review">
                                <p class="tit">원터스쿨 바자관의 분위기가 좋아서 공부에 
                                    몰입할 수 있었고 강사진도 뛰어났기 때문에 
                                    러셀학원을 선택했습니다.</p>
                                <p><strong>철저한 관리로 학업에 방해되는 요소들을 전부 제거하고 
                                    학업에만 집중할 수 있도록 분위기가 조성</strong>되어
                                    공부하는 데 많은 도움이 되었습니다. 러셀 기숙의 경우
                                    숙소가 1층 침대로 되어있어 편안하고 화장실의
                                    수용인원이 많아 <strong>생활면에서 불편함 없이 학업에만
                                    열중할 수 있었습니다.</strong></p>
                            </div>
                        </div>
                    </div>
                    <% End If %>
        
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </div>
    <% End If %>
    <!-- //cont04 -->
</div>