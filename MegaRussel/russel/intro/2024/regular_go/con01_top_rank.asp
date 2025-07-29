<div class="cont js-cont <%=campusName%>">
    <!-- cont01 -->
    <% If sCampusCode = "INTRO" or sCampusCode = "CD0346" or sCampusCode = "CD0349" Then '인트로/코어청주/울산 %>
    <div class="cont01">
        <div class="inner">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01_tit_1.png" alt="" /></h2>
            <% Else %>
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <% End if %>
            <% If sCampusCode = "CD0346" Then '코어청주 %>
            <div class="inner">
                <div class="result-box bg-type02 mb40">
                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="" /></p>
                    <div class="passing-status gold big mt80">
                        <span class="box">
                            의예<br>
                            <strong>8</strong><span>명</span>
                        </span>
                        <span class="box">
                            치의예<br>
                            <strong>1</strong><span>명</span>
                        </span>
                        <span class="box">
                            한의예<br>
                            <strong>4</strong><span>명</span>
                        </span>
                    </div>
                    <div class="passing-status gold big mt80">
                        <span class="box">
                            수의예 <br>
                            <strong>1</strong><span>명</span>
                        </span>
                        <span class="box">
                            약학<br>
                            <strong>3</strong><span>명</span>
                        </span>
                        <span class="box">
                            SKY<br>
                            <strong>9</strong><span>명</span>
                        </span>
                    </div>
                    <div class="info-stxt" style="bottom: 80px;right:159px;top: unset;">
                        <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                        <div class="data-view">
                            &middot; 2023년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생 (복수 대학 합격자 포함, 단과 수강생 제외) <br>

                            &middot; 2024.02.29 기준, 지속적으로 업데이트 예정                                               
                        </div>
                    </div>
                </div>
            </div>
            <% end if %>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <ul class="graph-list">
                <li><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/graph01.jpg" alt="" />
                    <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span><span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/top_label.png" alt="" /></span>
                </li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/graph02.jpg" alt="" />
                    <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span>
                </li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/graph03.jpg" alt="" />
                    <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span>
                </li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/graph04.jpg" alt="" />
                    <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span>
                </li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/graph05.jpg" alt="" />
                    <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span><span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/top_label.png" alt="" /></span>
                </li>
                <li><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/graph06.jpg" alt="" />
                    <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span>
                </li>
            </ul>
            
            <div class="info-stxt">
                <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/regular/ico_info02.png" alt="i" /></span>
                <div class="data-view">
                    1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    2024학년도 서울대 의예과 (러셀 대치 7명, 러셀 부천 1명, 러셀 분당 1명, 러셀 평촌 1명, 러셀 대구 4명, 러셀CORE 광주 2명, 러셀CORE 대전 3명 배출)<br>
                    2) 2020-2024학년도 러셀에서 배출한 메이저 의대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    2024학년도 메이저 의대 (서울대 의예과19명, 연세대(서울) 의예과23명, 성균관대 의예과7명, 가톨릭대(성의) 의예과21명, 울산대 의예과6명, 고려대 의과대학 20명)<br>
                    3) 2020-2024학년도 러셀에서 배출한 전국 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    4) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    5) 2020-2024학년도 러셀에서 배출한 서울대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준)<br>
                    6) 2020-2024학년도 러셀에서 배출한 서울대/연세대/고려대 합격자 수 2024학년도 최대 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                    * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 / 서울대 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                    ※ 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 예정입니다.
           
                </div>
            </div>
            <% end if %>
            <div class="graph-wrap">
                <div class="js-box">
                    <h3>전국의 <strong>최상위권 재학생</strong>은 러셀로 모이고 있습니다.</h3>
                    <ul class="align type01">
                        <li>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont01_graph01.jpg" alt="" />
                            <p>
                                HS반, 서울대&middot;의치대반 <br>
                                <strong>최상위권 재학생 증가</strong> <sup>1)</sup><br>
                                <span>*HS반, 서울대&middot;의치대반은 러셀 모집반 중 최상위권반입니다.</span>
                            </p>
                            <div class="circle">
                                <p><span>51.3%</span> <br> 증가</p>
                            </div>
                            <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span>
                        </li>
                        <li>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont01_graph02.jpg" alt="" />
                            <p>
                                수능 국수탐(2) 합 4~5등급<br>
                                <strong>수능 고득점자 증가</strong> <sup>2)</sup>
                            </p>
                            <div class="circle">
                                <p><span>34.1%</span> <br> 증가</p>
                            </div>
                            <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow01.png" alt="" /></span>
                        </li>
                    </ul>
                    <p class="l-list">
                        1)  2022년, 2023년 러셀 전체 바자관 3월 재학생 재원생의 반명 기준 수강료 완납&분납 수강인원 비교 시 증가율 <br>
                        - 반별 입학 기준  :  HS반 - 전국 모의고사  전 과목 1등급(한국사, 제2외국어 제외),  서울대&middot;의치대반 - 국수영 또는 국수탐(1) 3등급 이내 <br>
                        - 학원마다 반별 입학 기준은 상이하며,  상세 내용은 각 학원 홈페이지에서 확인하실 수 있습니다. <br>
                        2) 2021년, 2022년 러셀 전체 바자관 고3 재원생 중 수능 성적 확인이 가능한 인원의 국수탐(2) 등급 합 비교 시 인원 증가율                        
                    </p>
                </div>
                <% If sCampusCode <> "INTRO" Then '인트로 제외 %>
                <div class="js-box">
                    <h3>러셀에서 <strong>최상위권 대입성공의 목표</strong>를 이루었습니다.</h3>
                    <p class="sub-tit">2024학년도 대입 결과는 지속적으로 업데이트될 예정입니다.</p>
                    <ul class="align type02">
                        <li>
                            <span class="banner-balloon"><img src="<%=Application("img_path_russel")%>/intro/2024/regular/banner_balloon.png" alt="" /></span>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/cont01_graph03_02.jpg" alt="" />
                            <p>
                                2024학년도 대입 <br>
                                <strong>서울대 의예과 역대 최다 배출</strong><sup>1)&nbsp;&nbsp;2)</sup>
                            </p>
                            <div class="num">
                                <p>19명</p>
                            </div>
                            <div class="num-box">
                                <p>19</p>
                                <!-- <p>
                                    <strong>수시</strong> <br>
                                    [정시 결과 <br> 집계 전]
                                </p> -->
                            </div>
                            <span class="arrow01"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow02.png" alt="" /></span>
                        </li>
                    </ul>
                    <div class="consult-wrap">
                        <ul>
                            <li>
                                <p>
                                    2018~2021 <sup>3)</sup> <br>
                                    <strong>4년 연속</strong>
                                </p>
                                <p>
                                    수능 만점자& <br>
                                    전국 수석 배출
                                </p>
                            </li>
                            <li>
                                <p>
                                    2024학년도 <sup>4)</sup> <br>
                                    <strong>메이저 의대</strong>
                                </p>
                                <p>
                                    96<span>명</span>
                                </p>
                            </li>
                            <li>
                                <p>
                                    2024학년도 <sup>5)</sup> <br>
                                    <strong>전국 의예과</strong>
                                </p>
                                <p>
                                    745<span>명</span>
                                </p>
                            </li>
                        </ul>
                    </div>
                    <p class="data-txt">데이터 산출 기준</p>
                    <div class="data-cont">
                        1) 2020-2024학년도 러셀에서 배출한 서울대 의예과 합격자 수 2024학년도 최다 배출(단과 수강생 제외/복수대학 합격자 포함) (2024-02-29 기준) <br>
                        2) 2024학년도 결과 (러셀 대치 7명,러셀 부천 1명,러셀 분당 1명,러셀 평촌 1명,러셀 대구 4명,러셀CORE 광주 2명,러셀CORE 대전 3명) <br>
                        3) 수능 만점자 및 전국 수석 (표준점수/백분위 합 기준) : 러셀 전체 학원 재원생의 2018~2021학년도 수능 실채점 기준) (러셀 강남 1명,러셀 대치 3명,러셀 분당 2명) <br>
                        4) 2024학년도 러셀 전체 학원에서 배출한 메이저 의대 합격자 수 (서울대의예과19명, 연세대(서울)의예과23명, 성균관대의예과7명, 가톨릭대(성의)의예과21명, 울산대의예과6명, 고려대의과대학 20명) (2024-02-29 기준)  <br>
                        5) 2024학년도 러셀 전체 학원에서 배출한 전국 의대 합격자 수 (2024-02-29 기준) <br>
                        * 전국 1위_수능 업계 오프라인 학원_2024학년도 대입 서울대학교 의예과 합격자 수 홈페이지 노출 기준 (2024.02.29 기준)<br>
                        ※ 단과 수강생은 제외하였으며 복수 대학 합격자를 포함합니다. <br>
                        ※ 본 결과는 최종 합격자를 기준으로 집계하였으며 지속적으로 업데이트될 예정입니다.                        
                    </div>
                </div>
                <% end if %>
            </div>
        </div>
    </div>
    <% Else %>
    <div class="cont01-1">
        <div class="inner">
            <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01_tit.png" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
            <% If sCampusCode = "CD0247" Then '강남 %>
            <div class="result-box bg-type01">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
                <div class="info-stxt">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        2018-2024학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함) (2024-02-27 기준)                       
                    </div>
                </div>
                <ul class="list-wrap">
                    <li>
                        <div>
                            <p>5개년 연속<br>
                            <strong>서울대 의예과</strong> 합격</p>
                        </div>
                        <ul class="stu-list">
                            <li>
                                <p>2023학년도 <strong>이윤서 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_lys.jpg" alt="이윤서" /></div>
                            </li>
                            <li>
                                <p>2023학년도 <strong>김OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_w.jpg" alt="김OO" /></div>
                            </li>
                            <li>
                                <p>2022학년도 <strong>서OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_w.jpg" alt="서OO" /></div>
                            </li>
                            <li>
                                <p>2021학년도 <strong>김OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_m.jpg" alt="김OO" /></div>
                            </li>
                            <li>
                                <p>2020학년도 <strong>양지헌 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_yjh.jpg" alt="양지헌" /></div>
                            </li>
                            <li>
                                <p>2019학년도 <strong>이OO 학생</strong></p>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01-1_stu_w.jpg" alt="이OO" /></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div>
                            <p>의약학계열 누적합격생<br>
                            <strong>619명</strong> 배출</p>
                        </div>
                        <ul class="stu-number">
                            <li>
                                <div><p>의예과 <strong>327명</strong></p></div>
                            </li>
                            <li>
                                <div><p>치의예과 <strong>79명</strong></p></div>
                            </li>
                            <li>
                                <div><p>한의예과 <strong>110명</strong></p></div>
                            </li>
                            <li>
                                <div><p>수의예과 <strong>31명</strong></p></div>
                            </li>
                            <li>
                                <div><p>약학과 <strong>72명</strong></p></div>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <div>
                            <p>최상위권 대학<br>
                                누적 합격 현황</p>
                        </div>
                        <ul class="stu-number">
                            <li>
                                <div><p>의치한수약 <strong>619명</strong></p></div>
                                <p>의예과 327명, 치의예과 79명,<br>
                                한의예과 110명, 수의예과 31명, 약학과 72명</p>
                            </li>
                            <li>
                                <div><p>서연고 <strong>585명</strong></p></div>
                                <p>서울대 113명, 연세대 237명,<br>
                                    고려대 235명
                                </p>
                            </li>
                            <li>
                                <div><p>서성한이중경외시<br>
                                    + 카이스트, 포항공대<br>
                                        <strong>1,215명</strong></p>
                                </div>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
            <div class="result-box bg-type02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 2023학년도 대입 합격 현황" /></p>
                <!-- <p class="mt60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont01-1_img01.png" alt="" /></p> -->
                <ul class="passing-status gold big">
                    <li class="box">
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_stu01.png" alt="" /></p>
                        <p class="mt10">2018<sup>1)</sup><br>
                            <strong style="font-size: 30px;">수능 만점자 배출</strong></p>
                    </li>
                    <li class="box">
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_stu02.png" alt="" /></p>
                        <p class="mt10">2020<sup>2)</sup><br>
                            <strong style="font-size: 30px;">수능 만점자 배출</strong></p>
                    </li>
                    <li class="box">
                        <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/half/cont01_stu03.png" alt="" /></p>
                        <p class="mt10">2021<sup>3)</sup><br>
                            <strong style="font-size: 30px;">수능 전국 수석 배출</strong></p>
                    </li>                    
                </ul>
                <ul class="passing-status gold big">
                    <li class="box">
                        <p>2024 대입<sup>4)</sup><br>
                            메이저 의예과 <br>
                            <strong>총 35명 합격</strong></p>

                        <ol class="s-list">
                            <li>서울대 <strong>7명</strong></li>
                            <li>연세대 <strong>6명</strong></li>
                            <li>성균관대 <strong>5명</strong></li>
                            <li>가톨릭대 <strong>11명</strong></li>
                            <li>고려대 <strong>6명</strong></li>
                        </ol>
                    </li>
                    <li class="box">
                        <p>2024 대입<sup>4)</sup><br>
                            전국 의예과<br>
                            <strong>총 119명 합격</strong></p>

                        <ol class="s-list">
                            <li>가천대 <strong>2명</strong></li>
                            <li>경희대 <strong>7명</strong></li>
                            <li>아주대 <strong>4명</strong></li>
                            <li>이화여대 <strong>1명</strong></li>
                            <li>인하대 <strong>8명</strong></li>
                            <li>한양대 <strong>5명</strong></li>
                            <li>이외 의예과 총 <strong>92명</strong></li>
                        </ol>
                    </li>
                    <li class="box">
                        <p>2024 대입<sup>4)</sup><br>
                            의/치/한/수/약 <br>
                            <strong>총 199명 합격</strong></p>

                        <ol class="s-list">
                            <li>의예과 총 <strong>119명</strong></li>
                            <li>치의예과 총 <strong>9명</strong></li>
                            <li>한의예과 총 <strong>7명</strong></li>
                            <li>수의예과 총 <strong>11명</strong></li>
                            <li>약학과  총 <strong>53명</strong></li>
                        </ol>
                    </li>
                    <li class="box">
                        <p>2024 대입<sup>4)</sup><br>
                            서/연/고 <br>
                            <strong>총 230명 합격</strong></p>

                        <ol class="s-list">
                            <li>서울대 총 <strong>74명</strong></li>
                            <li>연세대  총 <strong>83명</strong></li>
                            <li>고려대  총 <strong>73명</stro></li>
                        </ol>
                    </li>
                </ul>                 
                <div class="info-stxt" style="top:910px; right:70px;">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
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
            <div class="result-box no-bg">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 2023학년도 대입 합격 현황" /></p>
                <div class="passing-status gold">
                    <span class="box">
                        의예과<br>
                        <strong>68</strong><span>명</span>
                    </span>
                    <span class="box">
                        치한수<br>
                        <strong>42</strong><span>명</span>
                    </span>
                    <span class="box">
                        약학과<br>
                        <strong>44</strong><span>명</span>
                    </span>
                    <span class="box">
                        과학기술원<br>
                        <strong>13</strong><span>명</span><br>
                    </span>
                </div>
                <span class="fz14">*카이스트 6명 포함*</span>
                <div class="passing-status gold">
                    <span class="box">
                        서울대<br>
                        <strong>21</strong><span>명</span>
                    </span>
                    <span class="box">
                        연세대<br>
                        <strong>54</strong><span>명</span>
                    </span>
                    <span class="box">
                        고려대<br>
                        <strong>64</strong><span>명</span>
                    </span>
                    <span class="box">
                        교대 외 <br> 특수 대학<br>
                        <strong>43</strong><span>명</span>
                    </span>
                    <span class="box">
                        최상위권 <br> 주요대학
                        <strong>926</strong><span>명</span>
                    </span>
                </div>                
                <p class="r-txt">* 러셀 목동 2022-2024학년도 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 포함, 단과 수강생 미포함)</p>
            </div>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <div class="result-box bg-type03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular/cont01-1_stit.png" alt="" /></p>
                <div class="passing-status gold big mt80">
                    <span class="box">
                        서울대<br>
                        <strong class="subject-txt">의예과</strong>
                    </span>
                    <span class="box">
                        서울대<br>
                        <strong>14</strong><span>명</span>
                    </span>
                    <span class="box">
                        의치한수약<br>
                        <strong>40</strong><span>명</span>
                    </span>
                </div>
                <div class="passing-status gold big mt80">
                    <span class="box">
                        서연고<br>
                        <strong>61</strong><span>명</span>
                    </span>
                    <span class="box">
                        서성한이<br>
                        <strong>63</strong><span>명</span>
                    </span>
                    <span class="box">
                        중경외시<br>
                        <strong>40</strong><span>명</span>
                    </span>
                </div>
                <p class="r-txt">※ 2023학년도 러셀 중계 바른공부자습전용관 재원생 기준, 중복대학 합격자수 포함 <br>
                    (2023년 2월 16일 기준)
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <div class="result-box bg-type03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list silver03">
                    <li>
                        <p>
                            2024학년도 최종합격<br>
                            서울대학교 <strong>3명</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            2024학년도 <strong>메이저 의예</strong><br>
                            <strong><가톨릭대></strong> 합격생 배출
                        </p>
                    </li>
                    <li>
                        <p>
                            2024학년도 최종합격<br>
                            의/치/한/약/수 <strong>46명</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            2024학년도 최종합격<br>
                            SKY <strong>17명</strong>
                        </p>
                    </li>
                </ul>
                <div class="passing-status gold big mt80">
                    <span class="box">
                        의예과<br>
                        <strong>25</strong><span>명</span>
                    </span>
                    <span class="box">
                        치의예<br>
                        <strong>4</strong><span>명</span>
                    </span>
                    <span class="box">
                        한의예<br>
                        <strong>4</strong><span>명</span>
                    </span>
                </div>
                <div class="passing-status gold big">
                    <span class="box">
                        수의예<br>
                        <strong>10</strong><span>명</span>
                    </span>
                    <span class="box">
                        약학과<br>
                        <strong>3</strong><span>명</span>
                    </span>
                    <span class="box">
                        SKY<br>
                        <strong>17</strong><span>명</span>
                    </span>
                </div>         
                <p class="r-txt txt_left">
                    ※ 2023년 러셀CORE 원주학원 바른공부 자습전용관 재원생 합격자 기준 <br>
                    ※ 메이저 의예 기준 : 서울대/연세대/성균관대/가톨릭대(성의)/울산대 기준 <br>
                    ※ 최종 업데이트 : 2024-02-28
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
            <div class="result-box bg-type02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 2023학년도 대입 합격 현황" /></p>
                <div class="passing-status gold big mt80">
                    <span class="box">
                        연세대 의예<br>
                        <strong>3</strong><span>명</span>
                    </span>
                    <span class="box">
                        고려대 의예<br>
                        <strong>1</strong><span>명</span>
                    </span>
                    <span class="box">
                        의예과<br>
                        <strong>46</strong><span>명</span>
                    </span>
                </div>
                <div class="passing-status gold big">
                    <span class="box">
                        치&middot;한&middot;수&middot;약<br>
                        <strong>37</strong><span>명</span>
                    </span>
                    <span class="box">
                        SKY<br>
                        <strong>18</strong><span>명</span>
                    </span>
                    <span class="box">
                        서성한이 <br> 과기원<br>
                        <strong>31</strong><span>명</span>
                    </span>
                </div>                
                <p class="list-02">
                    ※ 최종 업데이트 : 2024-02-26 기준 (지속적으로 업데이트할 예정입니다.) <br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 <br>
                    (홈페이지 대입 실적 기준)
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <div class="result-box bg-type03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit_1.png" alt="대입성공을 위한 최선의 선택! 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list silver03">
                    <li>
                        <p>
                            2년 연속<br>
                            <strong>서울대학교 의예과 </strong><span> 합격생 배출</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            2년 연속<br>
                            대전 지역 <strong>최상위권 입결 1위</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            2024학년도 <br>
                            메이저의예 <strong>7명</strong>
                        </p>
                    </li>
                    <li>
                        <p>
                            2024학년도 최종합격<br>
                            <span>의/치/한/약/수 </span><strong>74명</strong>
                        </p>
                    </li>
                </ul>
                <div class="passing-status gold big">
                    <span class="box">
                        의예과<br>
                        <strong>41</strong><span>명</span>
                    </span>
                    <span class="box">
                        치의예<br>
                        <strong>4</strong><span>명</span>
                    </span>
                    <span class="box">
                        약학과<br>
                        <strong>10</strong><span>명</span>
                    </span>
                </div>
                <div class="passing-status gold big">
                    <span class="box">
                        한의예<br>
                        <strong>13</strong><span>명</span>
                    </span>
                    <span class="box">
                        수의예<br>
                        <strong>4</strong><span>명</span>
                    </span>
                    <span class="box">
                        SKY<br>
                        <strong>23</strong><span>명</span>
                    </span>
                </div>                
                <p class="r-txt txt_left" style="bottom:40px">
                    ※ 최종 업데이트 : 2024-03-08 기준 / 매주 업데이트 예정<br>
                    ※ 2024학년도 수시/정시 최종 합격 기준 / 러셀CORE 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                    ※ 최상위권: 메디컬(의/치/한/약/수) + SKY<br>
                    ※ 대전 지역 단과학원_2023학년도, 2024학년도 의치한수약+서연고 최종 합격자 수 비교 기준<br>
                    (홈페이지 대입 실적 기준/2024-03-08 기준)
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <div class="result-box bg-type03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="" /></p>
                <div class="box-wrap">
                    <p class="r-stit mt50">러셀CORE 광주 2024학년도 합격생 현황</p>
                    <p class="r-tit mt5">광주지역 재학생 <strong>수석 배출</strong></p>
                    <div class="passing-status gold big">
                        <span class="box">
                            서울대 의예<br>
                            <strong>2</strong><span>명</span>
                        </span>
                        <span class="box">
                            메이저 의예<br>
                            <strong>9</strong><span>명</span>
                        </span>
                        <span class="box">
                            전국 의예<br>
                            <strong>69</strong><span>명</span>
                        </span>
                    </div>
                    <div class="passing-status gold big">
                        <span class="box">
                            메디컬<b>(의/치/한/수/약)</b><br>
                            <strong>119</strong><span>명</span>
                        </span>
                        <span class="box">
                            서연고<br>
                            <strong>28</strong><span>명</span>
                        </span>
                    </div>
                    <div class="info-stxt">
                        <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first/ico_info.png" alt="i" /></span>
                        <div class="data-view">
                            *러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2024.02.27 기준)<br>
                            (복수 대학 합격자 포함 / 단과 수강생 제외)<br>
                            *24학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                            *메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                        </div>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <div class="result-box bg-type03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 러셀 평촌 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대<br>
                            <strong>15</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold06">
                    <li>
                        <p>
                            의약학계열<br>
                            <strong>59</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver02">
                    <li>
                        <p>
                            연세대<br>
                            <strong>25</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            고려대<br>
                            <strong>30</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver02">
                    <li>
                        <p>
                            서강대<br>
                            <strong>17</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            성균관대<br>
                            <strong>32</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            한양대<br>
                            <strong>18</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list silver02">
                    <li>
                        <p>
                            중앙대<br>
                            <strong>40</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            한국외대<br>
                            <strong>9</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            경희대<br>
                            <strong>26</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            특성화대<br>
                            <strong>11</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">* 2022년 러셀 평촌 바른공부 자습전용관 재원생 기준</p>
            </div>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <div class="result-box bg-type03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="" /></p>
                <ul class="num-list gold07">
                    <li>
                        <p>
                            의 &middot; 치 &middot; 한 &middot; 수 &middot; 약<br>
                            <strong>219</strong><span>명</span>
                        </p>
                    </li>
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
                <ul class="num-list gold06">
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
                <ul class="num-list gold06">
                    <li>
                        <p>
                            교대 &middot; 경대사관 &middot; 특성화대<br>
                            <strong>81</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            주요 15개 대<br>
                            <strong>795</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">※ 2020~2024학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2024.02.29 기준)

                </p>
            </div>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <div class="result-box no-bg">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="최상위권의 선택! 러셀 센텀 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            의예과<br>
                            <strong>67</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            치/한/약/수<br>
                            <strong>39</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서연고<br>
                            <strong>38</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서성한이<br>
                            <strong>43</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중경외시<br>
                            <strong>55</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            건동홍숙<br>
                            <strong>17</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            이공계특성화<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            경찰대&middot;사관학교<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            교원&middot;교육대<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            부산대&middot;경북대<br>
                            <strong>75</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">
                    ※ 러셀 센텀학원 바른공부 자습전용관 재학생 23학년도 합격자 기준 <br>
                    (단과 수강생 제외, 복수대학 합격자 포함)
                </p>
            </div>
            <div class="result-box graph js-box no-bg mt30">
                <ul class="align">
                    <li>
                        <p>
                            4개년 <br>
                            <strong>의/치/한/약/수 배출</strong>
                        </p>
                        <img src="<%=Application("img_path_russel")%>/russel_ct/2024/regular_go/cont01-1_graph01.png" alt="" />
                        <div class="num">
                            <p>106명</p>
                        </div>
                        <ul class="txt-wrap">
                            <li>
                                <div>2023</div>
                                <p>서의 1명 / 연·성·카의 1명 / 울의 3명 포함</p>
                            </li>
                            <li>
                                <div>2022</div>
                                <p>성의 1명 / 카의 2명 포함</p>
                            </li>
                            <li>
                                <div>2021</div>
                                <p>서의 2명 / 성의 1명 / 카의 1명 포함</p>
                            </li>
                        </ul>
                        <span class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow03.png" alt="" /></span>
                    </li>
                    <li>
                        <p>
                            4개년 <br>
                            <strong>서/연/고 배출</strong>
                        </p>
                        <img src="<%=Application("img_path_russel")%>/russel_ct/2024/regular_go/cont01-1_graph02.png" alt="" />
                        <div class="num">
                            <p>38명</p>
                        </div>
                        <ul class="txt-wrap">
                            <li>
                                <div>2023</div>
                                <p>서울대 9명 / 연세대 19명 / 고려대 10명</p>
                            </li>
                            <li>
                                <div>2022</div>
                                <p>서울대 3명 / 연세대 15명 / 고려대 16명</p>
                            </li>
                            <li>
                                <div>2021</div>
                                <p>서울대 4명 / 연세대 12명 / 고려대 15명</p>
                            </li>
                        </ul>
                        <span class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow03.png" alt="" /></span>
                    </li>
                    <li class="last">
                        <p>
                            4개년 <br>
                            <strong>주요 상위권 대학 배출</strong>
                        </p>
                        <img src="<%=Application("img_path_russel")%>/russel_ct/2024/regular_go/cont01-1_graph03.png" alt="" />
                        <div class="num">
                            <p>262명</p>
                        </div>
                        <span class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_arrow03.png" alt="" /></span>
                    </li>
                </ul>
            </div>
            <div class="result-box no-bg mt30">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit02.png" alt="최상위권의 선택! 러셀 센텀 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            의예과<br>
                            <strong>176</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            치/한/약/수<br>
                            <strong>125</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서연고<br>
                            <strong>127</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            서성한이<br>
                            <strong>165</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중경외시<br>
                            <strong>168</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold02">
                    <li>
                        <p>
                            건동홍숙<br>
                            <strong>75</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            이공계특성화<br>
                            <strong>20</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            경찰대&middot;사관학교<br>
                            <strong>13</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            교원&middot;교육대<br>
                            <strong>39</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            부산대&middot;경북대<br>
                            <strong>234</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">
                    ※ 러셀 센텀학원 바른공부 자습전용관 재학생 20-23학년도 합격자 기준 <br>
                    (단과 수강생 제외, 복수대학 합격자 포함)
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <div class="result-box no-bg">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 러셀 평촌 2023학년도 대입 합격 현황" /></p>
                <div class="passing-status gold mt62">
                    <span class="box">
                        의예과<br>
                        <strong>57</strong><span>명</span>
                        <span class="txt">서울대 의예과 <br> 1명 포함</span>
                    </span>
                    <span class="box">
                        치의예과<br>
                        <strong>4</strong><span>명</span>
                    </span>
                    <span class="box">
                        한의예과<br>
                        <strong>5</strong><span>명</span>
                    </span>
                    <span class="box">
                        수의예과<br>
                        <strong>7</strong><span>명</span>
                    </span>
                    <span class="box">
                        약학대<br>
                        <strong>14</strong><span>명</span>
                    </span>
                </div>
                <div class="passing-status gold">
                    <span class="box">
                        서울대<br>
                        <strong>20</strong><span>명</span>
                    </span>
                    <span class="box">
                        연 &middot; 고대<br>
                        <strong>84</strong><span>명</span>
                    </span>
                    <span class="box">
                        서 &middot; 성 &middot; 한 &middot; 이<br>
                        <strong>105</strong><span>명</span>
                    </span>
                    <span class="box">
                        중 &middot; 경 &middot; 외 &middot; 시<br>
                        <strong>118</strong><span>명</span>
                    </span>
                </div>
                <p class="r-txt">
                    *러셀 분당 바른공부 자습전용관 재원생 기준 <br>
                    (복수 대학 합격자 및 수시/정시 중복 합격자 포함, 단과 수강생 미포함)
                </p>
            </div>
            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
            <div class="result-box no-bg">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="" /></p>
                <ul class="num-list gold02">
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
                    <li>
                        <p>
                            <strong>9</strong><br>
                            메이저 의예 <br>
                            <span>(서울대, 연세대, 성균관대, <br> 가톨릭대, 울산대 기준)</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>116</strong><br>
                            전국 의예
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold02">
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
                    <li>
                        <p>
                            <strong>88</strong><br>
                            서성한이 <br> 과학기술원
                        </p>
                    </li>
                    <li>
                        <p>
                            <strong>117</strong><br>
                            경북대 <br>
                            <span>(*의약학계열 44명)</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">
                    *2023년 러셀 대구 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)<br>*2024.3.15 기준이며, 지속적으로 업데이트 될 예정입니다
                </p>
            </div>
            <div class="stu-review-wrap">
                <div class="stu-review-box">
                    <div>
                        <div class="left-con">
                            <div class="top-con">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jjh.png" alt="장재훈" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/45182289');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                                </div>
                                <dl>
                                    <dt>
                                        <div>2024</div>
                                        <p><strong>러셀 대구 2024 수능 고득점자 <br> HS반 장재훈</strong></p>
                                    </dt>
                                    <dd>재원 기간 23년 1월~수능까지</dd>
                                </dl>
                            </div>
                            <div class="btm-con">
                                <strong>“고3이 학교에서 공부하는 집중력과 <br> 시간의 한계를 극복하다.”</strong>
                                <p>
                                    담임선생님께서 최상위 면학분위기를 조성해주셨습니다. 
                                    적당한 긴장감을 유지해주고, 시기에 맞는 입시정보를 제공해주셔서 큰 도움이 되었습니다. <br>
                                    또 개개인에 맞는 조언과 충고로 내 상태를 되돌아보고 개선하는데 큰 도움이 되었습니다.                                    
                                </p>
                            </div>
                        </div>
                        <div class="right-con">
                            <div>
                                <div class="txt-con">
                                    <p><strong>2024학년도</strong> 297</p>
                                    <span>6평 / 9평 290</span>
                                </div>
                                <p class="up-con">
                                    백분위 70% 상승
                                </p>
                            </div>
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
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
                                        <td><strong>2024 수능</strong></td>
                                        <td><strong>100</strong></td>
                                        <td><strong>99</strong></td>
                                        <td><strong>98</strong></td>
                                        <td><strong>297</strong></td>
                                    </tr>
                                    <tr>
                                        <td>6평</td>
                                        <td>99</td>
                                        <td>96</td>
                                        <td>95</td>
                                        <td>290</td>
                                    </tr>
                                    <tr>
                                        <td>9평</td>
                                        <td>100</td>
                                        <td>99</td>
                                        <td>91</td>
                                        <td>290</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="stu-review-box">
                    <div>
                        <div class="left-con">
                            <div class="top-con">
                                <div>
                                    <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jjw.png" alt="장준우" /></span>
                                    <a href="javascript:CastPopup('https://tv.naver.com/v/45181964');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                                </div>
                                <dl>
                                    <dt>
                                        <div>2024</div>
                                        <p><strong>연세대 경영학과 합격 <br> HS반 장준우</strong></p>
                                    </dt>
                                    <dd>재원 기간 23년 2월~수능까지</dd>
                                </dl>
                            </div>
                            <div class="btm-con">
                                <strong>“쾌적한 환경과 긍정적인 경쟁심을 갖게 해줍니다.”</strong>
                                <p>
                                    독서실처럼 칸막이가 아닌 개방형 구조로 설계된 바른공부 자습전용관은 주위 열심히 공부하는 학생들의 모습이 보이는 점이 좋았습니다.
                                    이는 긍정적인 경쟁심을 갖게 만들어주었습니다.
                                </p>
                            </div>
                        </div>
                        <div class="right-con">
                            <div>
                                <div class="txt-con">
                                    <p><strong>2024학년도</strong> 288</p>
                                    <span>9평 265</span>
                                </div>
                                <p class="up-con">
                                    백분위 65.7% 상승
                                </p>
                            </div>
                            <table class="tbl-01">
                                <colgroup>
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
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
                                        <td><strong>2024 수능</strong></td>
                                        <td><strong>98</strong></td>
                                        <td><strong>93</strong></td>
                                        <td><strong>97</strong></td>
                                        <td><strong>288</strong></td>
                                    </tr>
                                    <tr>
                                        <td>9평</td>
                                        <td>91</td>
                                        <td>88</td>
                                        <td>86</td>
                                        <td>265</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <div class="result-box bc">
                <p>
                    실력 향상을 넘어 최상위권으로! <br>
                    <strong>러셀 부천</strong> 재원생들은 <strong>최상위권의 목표</strong>를 <strong>현실</strong>로 만들었습니다.
                </p>
                <ul>
                    <li>
                        <div class="txt-wrap">
                            <div>2023</div>
                            <strong>수시 6관왕</strong>
                            <p>서울대, 연세대, 고려대, 서강대, 한양대 합격</p>
                        </div>
                        <div class="logo-wrap">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_seoul.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_ys.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_gr.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_sg.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_hy.png" alt="" />
                        </div>
                        <div class="stu-wrap">
                            <p>러셀 부천 HS반 강수민</p>
                            <span>* 서강대 2개 전형 합격</span>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/review_stu_ksm.png" alt="" />
                        </div>
                    </li>
                    <li>
                        <div class="txt-wrap">
                            <div>2023</div>
                            <strong>수시 3관왕</strong>
                            <p>연세대, 고려대, 서강대 합격</p>
                        </div>
                        <div class="logo-wrap">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_ys.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_gr.png" alt="" />
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_sg.png" alt="" />
                        </div>
                        <div class="stu-wrap">
                            <p>러셀 부천 HS반 박성은</p>
                            <span class="none">*</span>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/review_stu_pse.png" alt="" />
                        </div>
                    </li>
                    <li>
                        <div class="txt-wrap">
                            <div>2024</div>
                            <strong>서울대 의예과 합격</strong>
                            <p class="none">*</p>
                        </div>
                        <div class="logo-wrap">
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/logo_seoul_big.png" alt="" />
                        </div>
                        <div class="stu-wrap">
                            <p>러셀 부천 HS반 유**</p>
                            <span class="none">*</span>
                            <img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/review_stu_woman.png" alt="" />
                        </div>
                    </li>
                </ul>
            </div>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <div class="result-box bg-type02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont01-1_stit.png" alt="대입성공을 위한 최선의 선택! 2023학년도 대입 합격 현황" /></p>
                <div class="passing-status silver">
                    <span class="box">
                        개원 첫해 <br>
                        <strong>메이저 의대</strong> 합격생 배출
                    </span>
                    <span class="box">
                        개원 첫해  <br>
                        전국 의예과 합격생 <strong>21명</strong> 배출                        
                    </span>
                    <span class="box">
                        2024학년도 최종합격 <br>
                        의/치/한/약/수 <strong>42명</strong>                        
                    </span>
                    <span class="box">
                        2024학년도 최종합격 <br>
                        SKY <strong>10명</strong>                        
                    </span>
                </div>
                <div class="passing-status gold big mt80">
                    <span class="box">
                        울산대 의예<br>
                        <strong>1</strong><span>명</span>
                    </span>
                    <span class="box">
                        서울대 치의예<br>
                        <strong>1</strong><span>명</span>
                    </span>
                    <span class="box">
                        전국 의예<br>
                        <strong>21</strong><span>명</span>
                    </span>
                </div>
                <div class="passing-status gold big">
                    <span class="box">
                        메디컬<span class="fz15">(의/치/한/약/수)</span><br>
                        <strong>42</strong><span>명</span>
                    </span>
                    <span class="box">
                        SKY<br>
                        <strong>10</strong><span>명</span>
                    </span>
                    <span class="box">
                        서성한이<br>
                        <strong>33</strong><span>명</span>
                    </span>
                </div>                
                <p class="list-02">
                    ※ 최종 업데이트 : 2024-03-07 <br>
                    ※ 2024학년도 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준(복수 대학 합격자 포함, 단과 수강생 미포함) <br>
                    ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예                    
                </p>
            </div>
            <% end if %>
        </div>
    </div>
    <% end if %>
    <!-- //cont01 -->

    <!-- cont02 -->
    <% If sCampusCode <> "CD0342" Then '대구 제외 %>
    <% If sCampusCode = "INTRO" or sCampusCode = "CD0344" or sCampusCode = "CD0346" or sCampusCode = "CD0349" Then '인트로/코어전주/코어청주/울산 %>
    <div class="cont02">
        <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont02_tit.png" alt="러셀의 재학생 맟춤 시스템으로 최상위권 대학 진학에 성공했습니다." /></h2>
        <!--수능 전 과목 1등급-->
        <p class="sub-tit">
            <strong>수능 전 과목 1등급</strong>으로 <strong>최상위권 대학 합격</strong> <br>
            <span>*한국사, 제2외국어 제외</span>
        </p>
        <div class="card-swiper swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>서울대 의예과 합격</p>
                            </dt>
                            <dd class="name">러셀 대치 홍석우</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_hsw.png" alt="홍석우" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33616782');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            최상위권이 모여 있어 <br>
                            면학분위기가 좋았습니다.
                        </p>
                        <p class="txt">
                            러셀 바른공부 자습전용관의 장점은 <strong>좋은 면학분위기</strong>입니다. <br>
                            <strong>최상위권 학생들이 모여 있는 만큼 열심히 하는 분위기</strong>가 잡혀 있어 <br>
                            주변을 보며 자극을 받을 수 있었습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>서울대 의예과 합격</p>
                            </dt>
                            <dd class="name">러셀 분당 이주연</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ljy.png" alt="이주연" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34794025');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            담임선생님 덕분에 <br>
                            좋은 면학분위기가 유지되었습니다.
                        </p>
                        <p class="txt">
                            학습에 집중할 수 있는 환경을 만들기 위해 <strong>관리 감독을 해 주시는 <br>
                            담임선생님들 덕분에 좋은 면학분위기가 유지</strong>되었고, <br>
                            공부를 하다 지칠 때 고개를 들고 다른 친구들의 공부하는 모습을 <br>
                            보며 마음을 다잡기도 했습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>중앙대 의학부 합격</p>
                            </dt>
                            <dd class="name">러셀 목동 이수현</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_lsh.png" alt="이수현" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34800672');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            수능 시간표에 맞춘 <br>
                            표준 시간표가 도움이 되었습니다.
                        </p>
                        <p class="txt">
                            <strong>체계적인 표준 시간표대로 공부하여 자습시간에 더욱 집중</strong>할 수 있었고 <br>
                            모의고사를 치를 때에는 방해받지 않고 시험을 치를 수 있었습니다. <br>
                            또한 책상이 넓어 모의고사를 풀더라도 좁지 않고 쾌적하게 <br>
                            풀 수 있었습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>중앙대 의학부 합격</p>
                            </dt>
                            <dd class="name">러셀 중계 임유찬</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_iyc.png" alt="임유찬" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35058233');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            다양한 모의고사로 <br>
                            실전 경험을 쌓을 수 있었습니다.
                        </p>
                        <p class="txt">
                            퀄 모의고사와 메대프 모의고사 등 <strong>다양한 모의고사</strong>를 응시할 수 있어 <br>
                            좋았습니다. <strong>실제 수능 시간표에 맞춰서 시험을 볼 수 있는 기회</strong>가 되어 <br>
                            수능 때 일어날 수 있는 돌발 상황을 대비하고, 실전 연습을 할 수 <br>
                            있었습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>충남대 의예과 합격</p>
                            </dt>
                            <dd class="name">러셀 강남 신호영</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_shy.png" alt="신호영" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35106640');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            개방형 구조로 되어 있어 <br>
                            더 집중할 수 있었습니다.
                        </p>
                        <p class="txt">
                            <strong>바자관은 넓고 탁 트인 개방형 구조</strong>여서 주변 학생들이 잘 보입니다. <br>
                            그렇기에 <strong>혼자가 아니라 같이 공부한다는 생각이 들었고,</strong>  혼자서 공부 <br>
                            할 때보다 잡생각도 줄고 같이 공부에 매진할 수 있었습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>이화여대 의예과 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 광주 최정윤</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_cjy.png" alt="최정윤" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35703169');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            규칙적인 생활이 필수인 <br>
                            재학생에게 적합한 시스템!
                        </p>
                        <p class="txt">
                            러셀에서 가장 좋았던 점은 <strong>좋은 면학분위기</strong>였습니다. 주변 친구들이 <br>
                            열심히 하다 보니 저도 좋은 자극을 받아 더 열심히 할 수 있었습니다.  <br>
                            그리고 <strong>시간표가 정해져 있다는 것</strong>도 규칙적인 생활이 필수인 <br>
                            <strong>고등학교 3학년에게 적합</strong>했던 것 같습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>제주대 의예과 합격</p>
                            </dt>
                            <dd class="name">러셀 부천 이민형</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_lmh.png" alt="이민형" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35512053');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            필요한 수업만 들을 수 있어 <br>
                            효율적인 학습이 가능했습니다.
                        </p>
                        <p class="txt">
                            러셀에서는 본인이 <strong>필요로 하는 시간에 원하는 단과를 자유롭게 선택</strong>하여 <br>
                            수강할 수 있다는 점이 좋았습니다. 바자관과 단과 강의실이 한 건물에 <br>
                            위치한 덕분에 시간을 절약하며 효율적으로 공부할 수 있어서 좋았습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수능 전 과목 1등급</div>
                                <p>서울대 전기정보공학부 합격</p>
                            </dt>
                            <dd class="name">러셀 분당 강민혁</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kmh.png" alt="강민혁" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35557708');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            담임선생님의 꼼꼼한 관리로 <br>
                            오롯이 공부에만 집중했어요.
                        </p>
                        <p class="txt">
                            <strong>담임선생님과 매번 모의고사 후에 학습상담</strong>을 하였는데, 공부방향과 보완 <br>
                            점을 잘 잡아주신 점이 좋았습니다. 입결이나 과목별 반영비율, 전형 등 <br>
                            <strong>복잡한 입시 체제를 꼼꼼히 챙겨주셔서 오롯이 공부에만 집중</strong>할 수 있었습니다.
                        </p>
                    </div>
                </div>
            </div>
            <div class="btn-wrap">
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <!--//수능 전 과목 1등급-->

        <!--수시 다관왕-->
        <p class="sub-tit tit02">
            <strong>수시 다관왕</strong>으로 <strong>최상위권 대학 합격</strong>
        </p>
        <div class="card-swiper swiper-container card-swiper-02">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수시 7관왕</div>
                                <p>서울대 재료공학과 합격</p>
                            </dt>
                            <dd class="school">서울대 / 연세대(2) / 고려대(2) / KAIST / 한양대</dd>
                            <dd class="name">러셀 영통 김경원</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kkw.png" alt="김경원" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33401359');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            바른공부 자습전용관의 장점은 <br>
                            시간관리입니다.
                        </p>
                        <p class="txt">
                            의미 없이 보낼 수도 있는 <strong>아침 시간, 심야 시간을 철저한 관리 속에서 공부</strong>할 수 있고,
                            <strong>급식, 강의실, 바자관이 한 건물에 있어</strong> 이동시간을 획기적으로 줄일 수 있기 때문입니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수시 6관왕</div>
                                <p>서울대 자유전공학부 합격</p>
                            </dt>
                            <dd class="school">서울대 / 연세대 / 고려대 / 서강대(2) / 한양대</dd>
                            <dd class="name">러셀 부천 강수민</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ksm.png" alt="강수민" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33594834');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            온전히 공부에만 집중할 수 있는 <br>
                            환경이 좋았습니다.
                        </p>
                        <p class="txt">
                            <strong>휴대폰 제출과 자습시간 수면 금지</strong>와 같은 조항이 온전히 공부에만 집중할 <br> 수 있도록 해 준다고 생각합니다.
                            <strong>학생들이 온전히 공부에 집중하며 유지되<br>는 면학분위기 덕분에</strong> 점점 더 집중할 수 밖에 없는 분위기가 형성되는<br>
                            선순환이 있는 것 같습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수시 5관왕</div>
                                <p>서울대 건축학과 합격</p>
                            </dt>
                            <dd class="school">서울대 / 고려대 / 성균관대 / 한양대 / 홍익대</dd>
                            <dd class="name">러셀 평촌 이지흔</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ljh.png" alt="이지흔" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34254932');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            최상위권 학생들과 선의의 경쟁을 하며 <br>
                            긴장감을 유지했어요.
                        </p>
                        <p class="txt">
                            바른공부 자습전용관은 <strong>개방형 구조로 사방이 탁 트여있어 개방감이
                            좋았습니다.</strong> 또한 <strong>최상위권이 모여 만든 면학분위기 속에서 선의의
                            경쟁</strong>을 할 수 있었고, 느슨해질 수 있는 긴 수험생활에 긍정적인
                            긴장감을 느낄 수 있었습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수시 5관왕</div>
                                <p>서울대 사회복지학과 합격</p>
                            </dt>
                            <dd class="school">서울대 / 연세대(2) / 고려대 / 성균관대</dd>
                            <dd class="name">러셀 평촌 조안나</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jan.png" alt="조안나" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34253498');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            담임선생님의 학습관리로 <br>
                            효율적으로 공부할 수 있었습니다.
                        </p>
                        <p class="txt">
                            <strong>담임선생님께서 플래너를 함께 체크해 주시고 피드백</strong> 해 주시는 것이 좋았 <br> 습니다.
                            학교 시험과 모의고사 <strong>성적을 보고 취약한 과목을 더 공부할 수 있 <br> 도록 자세하게 피드백</strong> 해주셔서 효율적으로 공부할 수 있었습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수시 5관왕</div>
                                <p>덕성여대 약학과 합격</p>
                            </dt>
                            <dd class="school">덕성여대 약학과 / 동덕여대 약학과 / <br>
                                조선대 약학과 / 서울교대 / 경인교대
                            </dd>
                            <dd class="name">러셀 부천 김희진</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_khj.png" alt="김희진" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33595424');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            원하는 과목과 선생님을 <br>
                            직접 선택할 수 있었어요.
                        </p>
                        <p class="txt">
                            <strong>바자관과 단과 강의실이 한 건물에 있기 때문에 이동시간을 크게 줄여 시간을 효율적으로 관리</strong>할 수 있었습니다.
                            또한 <strong>필요한 수업만 선택할 수 있어 취약한 과목 단과 수업만 들으며 집중적으로 보완</strong>할 수 있었습니다.
                        </p>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="p-info">
                        <dl>
                            <dt><div>2023 수시 5관왕</div>
                                <p>고려대<span>(안암)</span> 불어불문학과 합격</p>
                            </dt>
                            <dd class="school">고려대 / 서강대 / 성균관대 / 한양대 / 이화여대</dd>
                            <dd class="name">러셀 평촌 김선영</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ksy.png" alt="김선영" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34255227');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play02.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            학습동선이 짧아 학습 흐름을 <br>
                            유지할 수 있었습니다.
                        </p>
                        <p class="txt">
                            <strong>단과와 자습을 한 건물에서 진행</strong>하는 시스템이 <strong>시간을 절약하고 흐름을 깨지 않아 좋았습니다.</strong>
                            또한 <strong>심야 자습 제도</strong>를 통해서 늦게까지 자습을 하면서 조용한 환경에서 충분히 오랜 시간 공부를 할 수 있어 좋았습니다.
                        </p>
                    </div>
                </div>
            </div>
            <div class="btn-wrap">
                <div class="swiper-button-next"></div>
                <div class="swiper-button-prev"></div>
            </div>
        </div>
        <!--//수시 다관왕-->
    </div>
    <% Else %>
    <div class="cont02-2">
        <% If sCampusCode <> "CD0247" Then '강남 제외 %>
        <h2 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/cont02_tit.png" alt="러셀의 재학생 맟춤 시스템으로 최상위권 대학 진학에 성공했습니다." /></h2>
        <% end if %>
        <div class="inner">
            <% If sCampusCode = "CD0247" Then '강남 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <p><strong>충남대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 강남 신호영</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_shy.png" alt="신호영" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35106640');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            개방형 구조로 되어 있어
                            더 집중할 수 있었습니다.
                        </p>
                        <p class="txt">
                            <strong>바자관은 넓고 탁 트인 개방형 구조</strong>여서 주변 학생들이 잘 보입니다. <br>
                            그렇기에 <strong>혼자가 아니라 같이 공부한다는 생각이 들었고,</strong> <br> 혼자서 공부 
                            할 때보다 잡생각도 줄고 같이 공부에 매진할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <p><strong>서울대 언론정보학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 강남 표혜림</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_phr02.png" alt="표혜림" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34801844');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            바자관의 학습 환경은
                            최고입니다.
                        </p>
                        <p class="txt">
                            조용한 분위기에서 체계적인 표준 시간표대로 공부하니, <br>
                            공부시간이 많이 늘었습니다. <br>
                            또한, <strong>수능형 리듬에 맞추어서 규칙적인 생활</strong>을 하도록 
                            도와주어 <br> <strong>수능날과 유사한 분위기에서 공부</strong>할 수 있습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <p><strong>서울대 경제학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 강남 이다현</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ldh.png" alt="이다현" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33690751');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            입시와 관련하여 많은 정보를
                            가지고 계신 담임선생님
                        </p>
                        <p class="txt">
                            <strong>담임선생님과 일대일로 상담</strong>할 수 있어 좋았습니다. <br>
                            9평이 끝나고 수시 원서를 접수하기 전에<br>
                            담임선생님과 함께 모의고사 성적을 기반으로<br>
                            <strong>정시와 수시 지원 전략</strong>을 짜며 큰 도움을 받았습니다.                                
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <p><strong>경상국립대 약학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 강남 김태은</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kte.png" alt="김태은" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33690807');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            일요일마다 진행한 실전 모의고사가 <br>
                            많은 도움이 되었습니다.
                        </p>
                        <p class="txt">
                            수능 한 달 전부터 학원에서 일요일마다 실전 모의고사 훈련장을 <br>
                            운영해 주었던 것이 좋았습니다.<br> <strong>매주 모의고사 결과를 확인하고
                            반성</strong>한 뒤 <br>다음 주의 <strong>계획을 수정</strong>해가면서 <strong>약점을 보완</strong>해 나갈 수 있었습니다.                                                              
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>경희대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 대치 서지원</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_sjw.png" alt="서지원" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34828444');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            원하는 수업만 선택하여 수강할 수 있기 때문에, <br>
                            단과와 자습 일정을 개인이 설계하여 더욱 효율적이었습니다.                            
                        </p>
                        <p class="txt">
                            <strong>단과와 자습을 한 건물에서 병행</strong>할 수 있어 <strong>편리하고 시간 절약</strong>이 많이 되었습니다.
                            또한 내가 원하지 않는 메뉴의 급식이 나오는 날에는 외식이 가능하여 만족스러웠고 <strong>고퀄리티의 모의고사를 매달 집체로 응시</strong>할 수 있어 큰 도움이 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>건양대 의학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 대치 변우성</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_bws.png" alt="변우성" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34828471');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            러셀 대치의 장점은 항상 내 편이 되어주는 담임선생님과 <br>
                            쾌적한 환경입니다.                            
                        </p>
                        <p class="txt">
                            <strong>자체 모의고사 이후 총평노트</strong>를 적었는데 <strong>담임선생님과 천천히
                            복습해 보며 <br> 잘못된 풀이를 점검하는 시간</strong>을 가질 수 있어서 좋았습니다. <br>담임선생님들께서 항상 옆에서 관리해 주셔서 너무 감사했습니다.                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>연세대 생활디자인학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 대치 강세인</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ksi.png" alt="강세인" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34828407');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            나에게 러셀은 길었던 수험생활의 동반자이다. <br>
                            수능 전날까지 많은 도움을 받았기 때문이다.                            
                        </p>
                        <p class="txt">
                            러셀 대치는 <strong>듣고 싶은 선생님의 강의가 여러 타임에 편성</strong>되어 있어<br> <strong>원하는 요일, 시간에 맞춰 수업 일정을 짤 수 있었습니다.</strong><br>
                            또한 <strong>담임선생님의 철저한 관리</strong>를 받으며 공부할 수 있는 점이<br>
                            러셀 대치의 가장 큰 장점이었습니다.                                                         
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>고려대 전기전자공학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 대치 양선호</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ysh.png" alt="양선호" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34828423');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            수업을 듣다가 자습하러 가는 이동 시간이 매우 짧아서 <br>
                            더욱 좋았습니다.                            
                        </p>
                        <p class="txt">
                            개인적으로 공부란 혼자서 하는 것이 중요하다고 생각하는 편인데,<br> 러셀 대치는 다른 곳보다 <strong>시간의 자율성이 높아<br> 자습시간을 늘릴 수 있었습니다.</strong>                                                           
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>한양대학교 의예과 합격</strong></p>
                            </dt>
                            <dd class="name">러셀 목동 한유진</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_hyj.png" alt="한유진" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48230990');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            입시 전문가인 담임선생님과 상담으로 많은 정보를 얻고, 멘탈 관리도 할 수 있었습니다.
                        </p>
                        <p class="txt">
                            입시와 관련하여 다양한 정보를 얻기가 어려웠는데 수시, 정시 모두 전문가이신 담임선생님과의 상담을 통해 신뢰성 있는 정보를 얻을 수 있었습니다. 또한 1:1 상담을 통해 격려와 조언을 얻어 멘탈 관리도 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>서울대학교 첨단융합학부 합격</strong></p>
                            </dt>
                            <dd class="name">러셀 목동 채준영</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_cjy02.png" alt="채준영" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48230982');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            공부에만 집중할 수 있는 환경이 조성되어서 집중력과 학습량을 극대화할 수 있었습니다.
                        </p>
                        <p class="txt">
                            휴대폰 제출과 학습 외 활동 제한으로 인해 낭비되던 시간을 줄이고 오로지 공부에 집중할 수 있었습니다. 바자관을 다니기 전보다 훨씬 많은 공부시간을 확보할 수 있었고 집중력과 학습량도 늘어났습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>이화여자대학교 의예과 합격</strong></p>
                            </dt>
                            <dd class="name">러셀 목동 임세린</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_isr.png" alt="임세린" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49403069');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            충분한 학습이 보장되고, 표준 시간표를 활용해 수능 감각을 익힐 수 있도록 모의고사를 풀 수 있었습니다.
                        </p>
                        <p class="txt">
                            바자관을 이용하면서 단과 수업은 원하는 과목만 수강할 수 있어 충분한 학습을 할 수 있었습니다. 표준 시간표 덕분에 수능이 가까워질 때 수능 당일처럼 모의고사를 풀어볼 수 있는 점도 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>연세대학교 기계공학과 합격</strong></p>
                            </dt>
                            <dd class="name">러셀 목동 손정훈</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_sjh.png" alt="손정훈" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/49402904');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            자습관의 개방형 구조가 규칙적인 생활 및 자습 습관 형성에 큰 도움이 되었습니다.                       
                        </p>
                        <p class="txt">
                            주변 분위기에 크게 매몰되는 편인데 개방된 바른공부 자습관의 형태로 주변 친구들과 경쟁한다는 마인드로 규칙적인 삶을 습관화하고 자습을 집중해서 할 수 있었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 중계 노현지</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_nhj.png" alt="노현지" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34060532');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            <strong>쾌적한 환경과 표준 시간표가 가장 좋았습니다.</strong> 자리마다 식물이 있어서  분위기가 편안하게 느껴졌고, 의자도 매우 편해서 공부에 집중할 수 있었습니다. <br>
                            그리고 수능 시간표에 맞춰서 계획을 세우고 과목별로 균형을 맞춰서 규칙적으로 공부할 수 있는 것이 큰 도움이 되었습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 생물교육과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 중계 김태홍</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kth.png" alt="김태홍" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34060856');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            <strong>바른공부 자습전용관 앞에서 담임선생님과 편하게 상담</strong>할 수 있다는 점이 좋았습니다.
                            자습전용관에서 공부하다가 바로 담임선생님과 상담을 할 수 있어서 시간도 절약되었고, <strong>제 생기부와 입시 결과 등의 정보를 참고해서 질 높은 상담</strong>을 해주셔서 도움이 많이 되었습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>고려대 의과대학</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 중계 김민재</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kmj02.png" alt="김민재" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34060660');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            <strong>바른공부 자습전용관의 쾌적한 환경, 담임선생님의 철저한 관리<br>
                            그리고 체계적인 출결 관리</strong>가 학생의 습관 유지와 면학분위기 조성에<br> 큰 도움이 되었다고 생각합니다.                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>충남대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 중계 박준우</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_pjw.png" alt="박준우" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34061175');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            <strong>바른공부 자습전용관 개방형 구조</strong> 덕분에 잠깐 쉬고 있다는 유혹이 들 때에<br> <strong>다른 학생들이 열심히 공부하고 있는 모습을 볼 수 있어서<br> 조금 더 힘을 내어 집중할 수 있었던 점</strong>이 가장 좋았습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 대전 이상후</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_lsh02.png" alt="이상후" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34136621');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            러셀CORE 대전은 흠잡을 곳이 없는 <br>
                            대입 최적의 공간입니다.
                        </p>
                        <p class="txt">
                            공부에만 집중 할 수 있는 좋은 <strong>면학분위기, 전문적인 관리와
                            학생 중심의 담임선생님, 자습시간을 최대화 할 수 있는 체계적인 시간표, 다양한 모의고사를 통한 실전 훈련</strong> 등 어느 한 쪽에 치우쳐져 있지 않은 완벽한 육각형이라는 인상을 받았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>순천향대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 대전 이O안</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_lya.png" alt="이O안" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34136726');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            러셀CORE 대전에서 공부한 덕에 수능에서  <br>
                            만족스러운 성적을 거둘 수 있었습니다.
                        </p>
                        <p class="txt">
                            담임선생님께서는 <strong>수험생활 전반적인 부분에서 많은 도움</strong>을 주셨습니다.
                            원서 접수 기간에는 제가 놓치고 있었던 <strong>입시 정보</strong>를 알려주시고, <strong>전략적으로 어느 대학에 지원을 해야 할지 전문적인 관리</strong>를 해주셔서 성공적으로 입시를 마무리할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 자유전공학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 대전 김해솔</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_khs.png" alt="김해솔" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34136900');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            러셀CORE 대전에서 공부하니 올바른 공부 습관이 잡혔고,  <br>
                            시간 관리를 효율적으로 할 수 있게 되었습니다.
                        </p>
                        <p class="txt">
                            <strong>담임선생님께서 매주 플래너 검사</strong>를 해주셔서 잘못된 공부 습관이였던 한 과목에 치중하여 공부하는 것을 줄일 수 있었고, 풀이/채점/오답의 삼박자를 이루어 체계적으로 공부할 수 있었습니다.                         
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>연세대</strong>(서울) <strong>의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 대전 조한혁</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jhh02.png" alt="조한혁" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/35185389');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            다양한 집체 모의고사로 <br>
                            실전 감각을 기를 수 있었습니다.                                                      
                        </p>
                        <p class="txt">
                            <strong>실제 수험장과 유사하게 구현하여 응시했던 다양한 집체 모의고사</strong> 
                            덕분에 수능날 발생 할 수 있는 일을 시뮬레이션해 볼 수 있었고, 
                            수능장에서 해야 할 루틴을 미리 테스트 해볼 수 있어서 좋았습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>서울대 치의학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 윤은서</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/stu01.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48184723');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            해이해지는 일 없이 꾸준한 공부를 할 수 있어서 좋았습니다.
                        </p>
                        <p class="txt">
                            바른공부 자습전용관의 장점은 절대적인 학습시간이 확보된다는 점입니다. 지켜야 하는 의무 자습 시간이 있기 때문에 핑계 대지 않고 매일매일 일정 시간 이상을 공부할 수 있었고, 쉬는 시간과 자습시간이 철저하게 분리되어 있기 때문에 해이해지는 일 없이 꾸준한 공부를 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>서울대학교 물리천문학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 이민성</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/stu02.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48184714');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            실전과 유사한 환경과 다양한 모의고사를 통해 <br>
                            부족한 점을 발견하고 보완할 수 있었습니다.                            
                        </p>
                        <p class="txt">
                            러셀 실전 콘텐츠 (다양한 모의고사)가 큰 도움이 되었습니다. 모의고사를 통해 공부 방향을 정할 수 있었습니다. 특히 수능 실전 환경에 적응할 수 있었고, 부족한 점을 발견하고 보완하는데 모의고사가 큰 도움이 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>서울대학교 공과대학 광역</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 정혜인</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/stu03.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/51775633');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            학습에 최적화된 바른공부 자습전용관의 쾌적한 환경과<br>
                            학습 동선을 최소화할 수 있다는 점이 마음에 들었습니다.
                        </p>
                        <p class="txt">
                            바른공부 자습전용관의 책상이 넓어 실전 모의고사를 연습하기 좋았고, 책꽂이가 있어 많은 책을 보관할 수 있어 좋았습니다. 또한, 개방형 구조로 하루 종일 내부에서 공부해도 답답하지 않았습니다. 화장실, 급식실이 가까워서 하루 중 버리는 시간을 최소화할 수 있다는 점에서 효율적으로 공부할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024</div>
                                <p><strong>연세대학교(미래) 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀CORE 원주 박성환</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/regular_go/stu04.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/48184705');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            입시전문 담임선생님과의 1:1 상담을 통해<br>최신 입시 정보를 빠르게 얻을 수 있어 좋았습니다.                                                                     
                        </p>
                        <p class="txt">
                            입시전문 담임선생님과의 1:1 상담을 통해 최신 입시 정보를 빠르게 얻을 수 있어, 시간이 부족한 수험생 입장에서 많은 도움이 되었습니다. 정확한 데이터를 기반으로 자세하고 심도 있게 상담을 해주셔서 수시 카드를 쓸 때에 정말 좋았습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
            <ul class="review-list type02">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <div class="d-flex">
                            <div class="year">2024</div>
                            <p><strong>서울대 인문계열 합격</strong> <span>러셀CORE 광주 김효원</span></p>
                        </div>
                        <div class="box">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_left.png" alt=""></span>
                            <div class="score">
                                <p><strong>2024학년도 <span>295점</span></strong></p>
                                <p>2023학년도 255.5점</p>
                            </div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_up.png" alt=""></span>
                            <span class="percent">88.8% 상승</span>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_right.png" alt=""></span>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            바자관의 장점은 <br> 
                            학습에 집중할 수 있는 면학분위기입니다.
                        </p>
                        <p class="txt">
                            바자관은 개방형 구조로 되어 있어 <br>
                            집중력이 떨어질 때 앞, 옆에서  <br>
                            치열하게 공부하고 있는 친구들을 보며  <br>
                            자극을 받을 수 있었습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <div class="d-flex">
                            <div class="year">2024</div>
                            <p><strong>조선대 의예과 합격</strong> <span>러셀CORE 광주 김나연</span></p>
                        </div>
                        <div class="box">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_left.png" alt=""></span>
                            <div class="score">
                                <p><strong>2024학년도 <span>291.5점</span></strong></p>
                                <p>2023학년도 257점</p>
                            </div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_up.png" alt=""></span>
                            <span class="percent">80.2% 상승</span>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_right.png" alt=""></span>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            담임선생님은 <br>
                            마라톤에서의 페이스메이커 같은 분이십니다.
                        </p>
                        <p class="txt">
                            담임선생님께서는 1:1로 상담해 주셔서 <br>
                            대화하면서 앞으로의 계획이나 부족한 부분에 대해  <br>
                            스스로 생각해 볼 수 있도록 도와주셨습니다.  <br>
                            마라톤에서의 페이스메이커 같은 분이십니다.                                
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <div class="d-flex">
                            <div class="year">2024</div>
                            <p><strong>동국대 한의예과 합격</strong> <span>러셀CORE 광주 권태완</span></p>
                        </div>
                        <div class="box">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_left.png" alt=""></span>
                            <div class="score">
                                <p><strong>2024학년도 <span>289점</span></strong></p>
                                <p>2023학년도 270점</p>
                            </div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_up.png" alt=""></span>
                            <span class="percent">63.3% 상승</span>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_right.png" alt=""></span>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            이동에 낭비하는 시간이 없도록 도움을 주었습니다.
                        </p>
                        <p class="txt">
                            바른공부 자습전용관과 가까운 거리에 강의실이 <br>
                            있다는 점은 확실한 장점으로 다가왔습니다.  <br>
                            검증된 강사진의 퀄리티 높은 콘텐츠는  <br>
                            실력 향상에 큰 도움을 주었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-info">
                        <div class="d-flex">
                            <div class="year">2024</div>
                            <p><strong>한양대 의예과 합격</strong> <span>러셀CORE 광주 엄태옥</span></p>
                        </div>
                        <div class="box">
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_left.png" alt=""></span>
                            <div class="score">
                                <p><strong>2024학년도 <span>297점</span></strong></p>
                                <p>2023학년도 292.5점</p>
                            </div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_up.png" alt=""></span>
                            <span class="percent">60% 상승</span>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_baytree_right.png" alt=""></span>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            공부 외에 것들은 최대한 신경을 안 쓰게 <br>
                            관리를 해줘서 좋았습니다.                                
                        </p>
                        <p class="txt">
                            바자관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다. <br>
                            불필요한 수업을 들을 때와 달리 집중력 있게  <br>
                            수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.                                
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 분당 이OO</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ljy.png" alt="이주연" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/gVP68GeTDvE?si=NiSxQ39U3-HoFF4p');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            좋은 면학분위기, 바자관의 개방형 구조가 가장 좋았습니다.                           
                        </p>
                        <p class="txt">
                            담임선생님은 바자관 바로 앞에 계셔서 언제나 고민이 생기면
                            편하게 문의드릴 수 있어 좋았습니다. 또한, 공부뿐만 아니라
                            학생 개개인에게도 관심을 가져주어서 상담 시 자세하고 진심 어린
                            조언을 주셔서 큰 도움이 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>연세대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 분당 정OO</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jjs.png" alt="정준서" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/oWMPaVfDbv4?si=RaOx-KyjL4pwwgjU');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            학생들을 지속적으로 관리해 주는 것이 좋았습니다.                        
                        </p>
                        <p class="txt">
                            상담도 자유롭게 원하는 시간대에 신청할 수 있었고, 선배와의 만남이 있어서 원하는 학교 및 과의 선배들로부터 여러 조언을 얻을 수 있었습니다.
                            또한, 담임선생님은 제가 자신감을 가질 수 있도록 격려해주고 항상 학생을 존중해 주셔서 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>경희대 한의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 분당 신OO</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_she.png" alt="신현의" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/S8Yksidr5Ws?si=IQR7Nk1gZjw_PJK4');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            유명한 선생님의 수업을 실제로 들을 수 있어서 좋았습니다.
                        </p>
                        <p class="txt">
                            시간표를 학생이 원하는 대로 짤 수 있어 학생의 자율성 및 선택을 존중한다는 생각이 들었습니다.
                            또한, 출강하시는 모든 선생님들이 뛰어난 분이셨다는 점도 마음에 들었습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 경제학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 분당 정OO</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jcy.png" alt="정찬영" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/hM7ArxDrITQ?si=9TSFjBomcxEhgn2L');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            학교 선배들과 친구들의 강력한 추천을 받았습니다.                     
                        </p>
                        <p class="txt">
                            바자관과 강의실이 붙어있다는 점이 큰 장점이었습니다. 시간을 효율적으로 활용할 수 있었고,
                            자리 예약 시스템이 잘 잡혀 있어서 수업을 들을 때 혼란을 겪는 일이 없었습니다. 또한,  바자관 책상이 넓어서 공간이 부족하지 않아서 편하게 학습할 수 있었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 영통 이정우</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ljw.png" alt="이정우" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33402064');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            바른공부 자습전용관의 장점은 공부시간 확보라고 생각합니다.
                        </p>
                        <p class="txt">
                            방해 요소가 제거된 환경에서 <strong>꼼꼼한 스케줄 관리</strong>를 통해 효율적인 공부가 가능했기 때문입니다.
                            그리고, <strong>심야자습제도를 통해 늦은 시간까지도 집중해서 공부</strong>할 수 있어서 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 재료공학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 영통 김경원</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kgw.png" alt="김경원" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33401359');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            바른공부 자습전용관의 장점은 시간 관리입니다.
                        </p>
                        <p class="txt">
                            의미 없이 보낼 수도 있는 <strong>아침 시간, 심야 시간을 철저한 관리 속에서 공부</strong>할 수 있고, <strong>급식, 강의실, 바자관이 한 건물에 있어</strong>
                             이동시간을 획기적으로 줄일 수 있기 때문입니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 경영대학</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 영통 김수환</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ksh.png" alt="김수환" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33401796');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            담임선생님들께서 좋은 공부환경을 조성해 주십니다.
                        </p>
                        <p class="txt">
                            <strong>겨울방학 동안 수능 공부에만 매진</strong>하여 기초를 다져 놓은 덕분에 모든 학생부 활동이 끝난 이후 다시 <strong>여유롭게 수능 공부</strong>를 할 수 있었습니다.
                            그리고 담임선생님께서 <strong>수시 상담을 해 주시며 생기부</strong>에서 무엇이 부족한지 알려 주셨습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 기계공학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 영통 문인하</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_mih.png" alt="문인하" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33401039');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            매 교시 출석체크로 철저하게 학생들의  스케줄을 관리합니다.                    
                        </p>
                        <p class="txt">
                            학생들의 <strong>공부 환경을 철저히 관리</strong>해 주신다는 점과 담임선생님께서 <strong>친절하고 전문적으로 상담</strong>해 주신 점이 좋았습니다.
                            <strong>수시, 정시 등 정말 다방면</strong>으로 많은 조언을 해 주셨습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>영남대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 평촌 이진석</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ljs.png" alt="이진석" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34250708');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            학생을 가장 우선적으로 생각하는 러셀
                        </p>
                        <p class="txt">
                            <strong>훌륭한 선생님들의 커리큘럼과 1:1 질의응답 시스템</strong>이 좋았습니다. 바른공부 자습전용관의 <strong>철저한 출결 관리 시스템</strong>이 마음에 들었고,
                            외부의 방해 요소를 차단해 주어 공부에만 몰입할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>고려대</strong>(안암) <strong>행정학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 평촌 이정원</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ljw02.png" alt="이정원" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34250844');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            지속적으로 관리를 받을 수 있다는 부분이 좋았습니다.
                        </p>
                        <p class="txt">
                            <strong>러셀의 장점은 스스로 안주하지 않고 끊임없이 나아가게 한다는 것</strong>입니다.
                            특히 수시 접수를 끝낸 고3들은 스스로 풀어지기 굉장히 쉬운데, 수시 접수 이후에도 러셀을 다니면서 풀어지지 않도록 다잡을 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>서울대 건축학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 평촌 이지흔</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ljh.png" alt="이지흔" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34254932');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            러셀 평촌에는 최상위권 학생들이 모여 있어, <br> 면학분위기가 우수했습니다.
                        </p>
                        <p class="txt">
                            <strong>모두가 열심히 공부하는 면학분위기가 조성</strong>되어 있어, 공부가 안 될 때도 다시 공부에 집중할 수 있었습니다.
                            방과 후나 주말에는 학원으로 등원하는 것이 귀찮고 힘들 때도 있었지만 <strong>담임선생님의 체계적인 출결 관리</strong> 덕분에 성실하게 등원할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>연세대</strong>(서울) <strong>간호학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 평촌 이채연</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_lcy.png" alt="이채연" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/34255455');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            개방형 구조로 되어 있어 긴장감을 가진 채로 공부할 수 있었습니다.
                        </p>
                        <p class="txt">
                            러셀의 장점은 <strong>좋은 면학분위기</strong>입니다. 깔끔하게 정돈되어 있는 바른공부 자습전용관은 <strong>개방형 구조</strong>로 되어 있어 다른 친구들의 공부하는 모습을 보며
                            <strong>적당한 긴장감을 가진 채로 공부하여 공부 효율을 높일 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0250" Then '부천 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_wonkwang.png" alt="" /></div>
                                <p><strong>2024 원광대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 부천 홍서연</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_hsy.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/4Z1dLAU6TPE?si=OS5otJjmfDi99fvr');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            유연한 공부 환경이 만족스러웠습니다.
                        </p>
                        <p class="txt">
                            집중이 되지 않을 때 자습관 내의 스탠딩 책상을 이용하였고,
                            선생님들께서 수시로 자습관 내의 온도와 공기 질을 체크하고 개선해 주셔서 쾌적한 환경에서 공부할 수 있었습니다.
                            그리고 담임선생님과의 수차례 상담을 통해서 외부의 컨설팅 없이도 성공적인 수시 원서 접수를 하여 좋은 결과를 얻을 수 있었습니다.                            
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_jn.png" alt="" /></div>
                                <p><strong>2024 전남대 수의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 부천 강석준</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ksj.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/HC2N4oBpRsQ?si=J8ts2HnCZYDLXPh7');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            공부하기에 완벽했던 학습환경이 좋았습니다.
                        </p>
                        <p class="txt">
                            개방형 구조, 집단적인 면학분위기, 학습시간 확보, 쾌적한 환경, 잡담 금지 등 제 생각에는 공부하기에 너무 완벽했던 환경이었습니다.
                            특히 밝은 조명에서 공부한 것이 멘탈적인 부분에서 좋았습니다.
                            또한 점심 직후, 영어 듣기 평가를 항상 참여했었는데 실전적인 느낌으로 영어 듣기에 임한 결과 실전에서도 실력 발휘가 잘 된 것 같습니다.
                            담임선생님이 옆에서 정신적으로 힘들 때 친절하게 해결책을 알려주셔서 큰 도움이 되었고, 학업 관련해서 질문을 드렸을 때도 적극적으로 조언해 주셔서 감사했습니다.                                                  
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_yonsei02.png" alt="" /></div>
                                <p><strong>2024 연세대 정치외교학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 부천 김승태</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kst.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/O4KEhpJyMyo?si=6Zx6g2T_anWysLAr');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            규칙적인 생활 패턴과 <br>
                            공부하는 습관을 만들 수 있었습니다.                      
                        </p>
                        <p class="txt">
                            자습시간이 수능 시간표와 동일하기 때문에 규칙적인 생활 패턴과 공부하는 습관을 만들 수 있었습니다.
                            그리고 담임선생님의 플래너 작성 조언은 바른 생활 태도와 성적을 올리는데 바탕이 되었습니다. 생활기록부 상담 덕분에 고등학교 3학년 때 진로와 관련하여 심화 탐구할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2023/uni_logo/logo_korea04.png" alt="" /></div>
                                <p><strong>2024 고려대 사회학과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 부천 노은수</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_nes.png" alt="" /></span>
                            <a href="javascript:CastPopup('https://www.youtube.com/embed/BtNqMrNJAR4?si=aaNu1oFT40qdecJa');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            학습 동선을 최소화할 수 있어 좋았습니다.                   
                        </p>
                        <p class="txt">
                            이동 시간을 최소화하여 낭비되는 시간과 에너지를 줄이고, 공부에 최대의 시간과 에너지를 투자할 수 있다는 점이 좋았습니다.
                            그리고 담임선생님께서 학생 개개인을 세심하게 신경써주십니다.
                            학업 계획이나 공부 습관뿐만 아니라 정신적인 부분이나 컨디션까지도 꼼꼼하게 신경을 써주시고, 입시정보나 학습에 대해 궁금증이 생겨 질문을 드리거나 상담을 요청할 때마다 친절하게 응해주셨습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">
                    <div class="p-review">
                        <p class="tit">
                            러셀CORE 창원은 <br>
                            대입 준비에 최적화된 장소입니다.              
                        </p>
                    </div>                 
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024학년도</div>
                                <p><strong>울산대학교 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 CORE 창원 송연후</dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            N수생과 같이 면학 분위기가 조성된 환경에서 공부할 수 있어
                            또래 친구들과 있을 때보다 더욱 집중할 수 있었습니다. 또한 학생만을
                            생각하는 담임선생님, 수능 시간에 맞춰진 학원 시간표, 다양한 모의고사 등 수능 준비를 러셀CORE 창원에서 다 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-review">
                        <p class="tit">
                            러셀CORE 창원에서 담임선생님의 도움으로 <br>
                            원하는 학교를 선택해서 갈 수 있었습니다.        
                        </p>
                    </div>                 
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024학년도</div>
                                <p><strong>부산대학교 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 CORE 창원 장호준</dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            담임선생님께서 고3 수험생 생활에 많은 도움을 주셨습니다.
                            3학년 1학기 시작 전 생활기록부를 점검하여 지금 시점에서 합격을
                            확실하게 준비할 수 있는 대학 리스트를 결정해 주셔서 3학년 내신 준비에
                            부담을 덜고 수능 공부에 시간을 더 투자할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-review">
                        <p class="tit">
                            러셀CORE 창원에서 공부하면서 고3도 현역으로 <br>
                            원하는 학교에 갈 수 있다는 확신을 얻었습니다.
                        </p>
                    </div>                 
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024학년도</div>
                                <p><strong>동국대학교 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 CORE 창원 김지원</dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            고2까지 내신 공부에 집중하여 수능 공부를 어떻게 준비해야 할지 막막한
                            상황에서 러셀CORE 창원 담임선생님과 상담하게 되었고 담임선생님이
                            학습 계획을 월별, 주간별, 일별 순으로 나눠 구체적으로 잡아주시고
                            플래너 검사를 통해서 피드백을 해주셨습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <div class="p-review">
                        <p class="tit">
                            학교에서 진행되는 모의고사 이외에도 다양한 모의고사를 <br>
                            풀어 볼 수 있어서 실전 대비에 효과적이었습니다.
                        </p>
                    </div>                 
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2024학년도</div>
                                <p><strong>고려대학교 경제학부</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 CORE 창원 백서윤</dd>
                        </dl>
                    </div>
                    <div class="p-review">
                        <p class="txt">
                            교육청 모의고사, 평가원 모의고사도 중요하지만 매주 진행되는 WEEKLY
                            모의고사, 매월 진행되는 더 프리미엄 모의고사, 월간 장영진 모의고사 등을
                            응시하면서 혼자서 모의고사 풀 때 연습할 수 없는 실전 대비 연습에
                            더욱 효율적으로 준비할 수 있었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
            <ul class="review-list">
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>울산대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 센텀 윤성혁</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_ysh02.png" alt="윤성혁" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33008617');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            최상위권 학생들과 경쟁하면서 나도 성장했다
                        </p>
                        <p class="txt">
                            <strong>부산에서 최상위권 학생들이 모여있는 곳이라 러셀 센텀을 선택</strong>하였습니다.
                            학생들의 공부하는 모습을 보면서 많은 자극을 받았고 열심히 할 수 있는 동기부여가 되었습니다. 그로 인하여 저 또한 성장을 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>동아대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 센텀 장승현</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_jsh.png" alt="장승현" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33008744');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            끊임없는 담임선생님과의 소통이 큰 힘
                        </p>
                        <p class="txt">
                            <strong>담임선생님은 수험생활 동안 저의 멘토</strong>가 되어 주셨습니다.
                            공부나 학교생활을 함에 있어 어렵거나 고민되는 부분에 대해 상담을 요청하면 잘 들어주시고 저에게 맞는 적절한 해결책도 제시해 주셔서
                            수험생활을 하는 동안 든든한 힘이 되었던 것 같습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>부산대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 센텀 김가을</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_kge02.png" alt="김가을" /></span>
                            <a href="javascript:CastPopup('https://tv.naver.com/v/33008775');"><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/ico_play.png" alt="" /></a>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            최고의 면학분위기&개방형 구조가 큰 장점
                        </p>
                        <p class="txt">
                            바른공부 자습전용관의 장점은 <strong>좋은 면학분위기</strong>입니다.
                            모두가 열심히 공부하는 면학분위기가 조성되어 러셀에서는 공부에만 집중할 수 있었습니다. 
                        </p>
                    </div>
                </li>
                <li data-aos="zoom-in-up">                    
                    <div class="p-info">
                        <dl>
                            <dt>
                                <div>2023</div>
                                <p><strong>인제대 의예과</strong> 합격</p>
                            </dt>
                            <dd class="name">러셀 센텀 이O원</dd>
                        </dl>
                        <div>
                            <span><img src="<%=Application("img_path_russel")%>/intro/2024/regular_go/stu_woman.png" alt="실루엣" /></span>
                        </div>
                    </div>
                    <div class="p-review">
                        <p class="tit">
                            실전 연습을 통한 수능 완벽 대비
                        </p>
                        <p class="txt">
                            퀄 모의고사와 더 프리미엄 모의고사를 통해 <strong>수능 실전 연습을 할 수 있어서 좋았으며</strong>
                            수능 전 수능모의체험과 같은 시험장 분위기 조성을 통하여 대비를 잘할 수 있었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <% end if %>
        </div>
    </div>
    <% end if %>
    <% end if %>
    <!-- //cont02 -->
</div>


