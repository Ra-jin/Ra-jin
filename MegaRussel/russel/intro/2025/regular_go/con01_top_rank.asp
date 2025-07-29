<div class="cont js-cont <%=campusName%>">
    <% If sCampusCode = "INTRO" Then '인트로 %>
    <div class="cont01">
        <h3 data-aos="fade-down" data-aos-offset="100"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont01_tit.png" alt="최상위권이 집결하는 러셀에서 목표하는 최상위권 대입성공이 가능합니다."></h3>
        <div class="inner">
            <h4 data-aos="flip-down" data-aos-duration="500" style="margin-top: 115px;"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont01_tit02.png" alt="6개년 수능 만점자 배출 2025 수능 전 과목 만점자 3명 배출"></h4>
            <div class="perfect-list">
                <ul>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_01.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_02.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_03.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_04.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_05.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_06.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_07.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_08.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_09.jpg" alt=""></li>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_10.jpg" alt="2022">
                        <span class="flag-gold"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/pass_label.png" alt="전국유일"></span>
                    </li>
                </ul>
                <p class="r-txt">
                    * 2018-2022, 2025학년도 수능 실채점(국/수/탐2 만점 및 영/한 1등급) 기준 : 러셀 강남, 러셀 대치, 러셀 분당, 러셀 영통, 최상위권 전문관(구. 양지 기숙) 배출 <br>
                    *2021학년도 수능 만점자와 2025학년도 수능 만점자 중 1명은 개인정보 활용에 동의하지 않아, 인터뷰가 제공되지 않습니다.
                </p>
            </div>
        </div>
    </div>
    <% end if %>
    <div class="cont02">
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_tit.png" alt="최근 5년, 가장 어려운 수능에서 역대 가장 탁월한 입결을 달성하였습니다."></h3>
        
    <% If sCampusCode = "INTRO" Then '인트로 %>
        <div class="inner">
            <!-- 입결 카운팅 -->
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt><span style="font-weight: 700;">메이저 의대</span></dt>
                        <dd><strong class="counter" data-count="115">0</strong><span>명<sup>1)</sup></span></dd>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/top_label02.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dt><span style="font-weight: 700;">전국 의예과</span></dt>
                        <dd><strong class="counter" data-count="1269">0</strong><span>명<sup>2)</sup></span></dd>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/top_label02.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dt><span style="font-weight: 700;">의&middot;치&middot;한&middot;약&middot;수</span></dt>
                        <dd><strong class="counter" data-count="2220">0</strong><span>명<sup>3)</sup></span></dd>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/top_label02.png" alt="" /></span>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt><span style="font-weight: 700;">서울대 의예과</span></dt>
                        <dd><strong class="counter" data-count="13">0</strong><span>명<sup>4)</sup></span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt><span style="font-weight: 700;">서울대</span></dt>
                        <dd><strong class="counter" data-count="243">0</strong><span>명<sup>5)</sup></span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt><span style="font-weight: 700;">서울대&middot;연세대&middot;고려대</span></dt>
                        <dd><strong class="counter" data-count="1224">0</strong><span>명<sup>6)</sup></span></dd>
                    </dl>
                    <span class="badge bdg02"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/top_label02.png" alt="" /></span>
                </li>
            </ul>
            <!-- //입결 카운팅 -->
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
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
        </div>
        <a href="<%=pass_url%>" class="btn-black"><%=pass_btn%></a>
    <% Else %>
        <% If sCampusCode = "CD0001" Then '대치 %>
        <div class="inner">
            <div class="result-box style01">
                <p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀 대치 최상위권 입시 결과"></p>
                <ul class="num-list tp02">
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img01.png" alt=""></p>
                        <p class="stu-tit">2018 <i>1)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img02.png" alt=""></p>
                        <p class="stu-tit">2020 <i>2)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img03.png" alt=""></p>
                        <p class="stu-tit">2021 <i>3)</i><br>
                            <strong>수능 전국 수석 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img04.png" alt=""></p>
                        <p class="stu-tit">2025 <i>4)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img05.png" alt=""></p>
                        <p class="stu-tit">2025 <i>4)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                    </li>
                </ul>
    
                <p class="mt70"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt03.png" alt="2025 최상위권 수시 입시 결과"></p>
                <ul class="num-list ver01">
                    <li>
                        <p class="stu-num">2025 대입<br>메이저 의예과<i>4)</i></p>
                        <p class="stu-tit"><strong>총 21명 합격</strong></p>
                    </li>
                    <li>
                        <p class="stu-num">2025 대입<br>전국 의예과<i>4)</i></p>
                        <p class="stu-tit"><strong>총 130명 합격</strong></p>
                    </li>
                    <li>
                        <p class="stu-num">2025 대입<br>의/치/한/수/약<i>4)</i></p>
                        <p class="stu-tit"><strong>총 216명 합격</strong></p>
                    </li>
                    <li>
                        <p class="stu-num">2025 대입<br>서/연/고<i>4)</i></p>
                        <p class="stu-tit"><strong>총 210명 합격</strong></p>
                    </li>
                </ul>
            </div>
            <div class="info-wrap">
                <div class="info-stxt">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        1) 2018학년도 수능 실성적 기준<br>
                        2) 2020학년도 수능 실성적 기준<br>
                        3) 2021학년도 수능 실성적 기준 (*표준점수/백분위 합 기준)<br>
                        4) 2025학년도 러셀 대치 재원생의 합격자 기준(*복수대학 합격자 및 중복 합격자 포함)
                    </div>
                </div>
            </div>
        </div>




        <!-- <div class="inner">
            <div class="result-box style01">
                <p class="tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/cont02_stit.png" alt="" /></p>
                <ul class="num-list tp01">
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu01.png" alt="" /></p>
                        <p class="stu-tit">2018<i>1)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu02.png" alt="" /></p>
                        <p class="stu-tit">2020<i>2)</i><br>
                            <strong>수능 만점자 배출</strong></p>
                        
                    </li>
                    <li>
                        <p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu03.png" alt="" /></p>
                        <p class="stu-tit">2021<i>3)</i><br>
                            <strong>수능 전국 수석 배출</strong>
                        </p>                        
                    </li>
                </ul>
                <ul class="num-list mt60 tp02">
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
                        <p class="mt10">2024 대입<i>4)</i><br>
                        서/연/고<br>
                        <strong>총 230명 합격</strong></p>
                        <ol class="s-num-list">
                            <li>서울대 총 <strong>74명</strong></li>
                            <li>연세대 총 <strong>83명</strong></li>
                            <li>고려대 총 <strong>73명</strong></li>
                        </ol>
                    </li>
                </ul>
                <div class="info-stxt" style="position:absolute;top:auto; bottom: 70px; right:96px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="" /></i></span>
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
        </div> -->
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p class="tit mb60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp06">
                        <li>
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>102</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">치한수</p>
                            <p class="stu-num"><strong>60</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">약학과</p>
                            <p class="stu-num"><strong>62</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">과학기술원</p>
                            <p class="stu-num"><strong>18</strong>명</p>
                            <span class="txt">*카이스트 8명 포함*</span>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp06" style="width: 1060px;margin-left: -10px;">
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>34</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">연세대</p>
                            <p class="stu-num"><strong>89</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">고려대</p>
                            <p class="stu-num"><strong>105</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">교대 외<br>특수 대학</p>
                            <p class="stu-num"><strong>59</strong>명</p>
                        </li>
                        <li style="width: 140px;">
                            <p class="stu-tit">최상위권<br>주요대학</p>
                            <p class="stu-num"><strong>1,389</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 80px; right:100px;">
                    <span class="info-color">*러셀 목동 2022-2025학년도 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 포함, 단과 수강생 미포함)</span>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont01_txt01.png" alt="5년 연속 인천부천 지역 최상위권 입결 1위, 러셀 부천" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp10">
                        <li>
                            <p class="stu-tit">
                                2025학년도<br>
                                의치한수약 합격       
                            </p>
                            <p class="stu-num"><strong class="fz50">48</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">
                                2025학년도 <br>
                                서울대 합격
                            </p>
                            <p class="stu-num"><strong class="fz50">14</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">
                                2025학년도<br>
                                연고대 합격
                                
                            </p>
                            <p class="stu-num"><strong class="fz50">50</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 106px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        2024년 러셀 부천 바른공부 자습전용관 재원생 기준 (중복합격자 포함/2025.02.21 기준)
                             
                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/cont01_txt01.png" alt="러셀 영통 2020~2024학년도 합격자 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp05">
                        <li style="width:164px;">
                            <p class="stu-tit">의&middot;치&middot;한&middot;수&middot;약</p>
                            <p class="stu-num"><strong>299</strong><span>명</span></p>
                        </li>
                        <li style="width:164px;">
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>76</strong><span>명</span></p>
                        </li>
                        <li style="width:164px;">
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>327</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt50 tp08">
                        <li>
                            <p class="stu-tit">서&middot;성&middot;한&middot;이</p>
                            <p class="stu-num"><strong>282</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                            <p class="stu-num"><strong>284</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit pt5">교대&middot;경대사관&middot;<br>
                                특성화대</p>
                            <p class="stu-num"><strong>97</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">주요 15개 대</p>
                            <p class="stu-num"><strong>1,059</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 70px; right:100px;">
                    <span class="info-color">※ 2020~2025학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2025.03.04 기준)
                    </span>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont01_txt01.png" alt="러셀CORE 대전은 결과로 증명합니다! 2024학년도 합격생 현황" /></p>
                <div class="style02-inner mt50">
                    <ul class="num-list tp09">
                        <li>
                            <p class="stu-tit">2025학년도 최종 합격
                            </p>
                            <p class="stu-num"><span>서울대학교 의예과</span> <strong>4명</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2025학년도 최종 합격
                            </p>
                            <p class="stu-num"> <span>전국 의예 
                            </span> <strong>92명</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2025학년도 최종 합격
                            </p>
                            <p class="stu-num"><span>의/치/한/약/수 
                            </span> <strong>126명</strong></p>
                        </li>
                        <li>
                            <p class="stu-tit">2025학년도 최종 합격
                            </p>
                            <p class="stu-num"><span>SKY / KAIST 
                            </span> <strong>21명</strong></p>
                        </li>
                    </ul>
                </div>
                <div class="style02-inner mt60">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">서울대 의예</p>
                            <p class="stu-num"><strong>4</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의예</p>
                            <p class="stu-num"><strong>6</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">전국 의예과</p>
                            <p class="stu-num"><strong>92</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt40 tp05">
                        <li>
                            <p class="stu-tit">메디컬 <br><span>(의/치/한/약/수)</p>
                            <p class="stu-num"><strong>126</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY/KAIST</p>
                            <p class="stu-num"><strong>21</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 70px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-02-28 기준<br>
                        ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                        (단과 수강생 제외/복수대학 합격자 포함)<br>
                        ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예
                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont01_txt01.png" alt="2025학년도 합격생 현황" /></p>
                <div class="style02-inner mt50">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">전국 의예</p>
                            <p class="stu-num"><strong>29</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메디컬 <br><span>(의/치/한/수/약)</p>
                            <p class="stu-num"><strong>50</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt40 tp05">
                        <li>
                            <p class="stu-tit">서/연/고</p>
                            <p class="stu-num"><strong>9</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">주요<br>
                            15개 대학</p>
                            <p class="stu-num"><strong>70</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">교대</p>
                            <p class="stu-num"><strong>8</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 70px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 데이터 산출 기준<br>
                        ※ 2024년 러셀CORE 원주 바른공부 자습전용관 재원생 중
                        수시&middot;정시 합격자 기준<br>
                        ※ 복수 대학 합격자 포함<br>
                        ※ 주요 15개 대학: 서울/연세/고려/서강/성균관/한양/이화/중앙/
                        경희/외대/시립/건국/동국/홍익/숙명

                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="서울대 의예과 4년 연속 배출 2024 러셀 평촌 대입 합격 현황" /></p>
                <div class="style02-inner mt60">
                    <ul class="num-list tp07">
                        <li>
                            <p class="stu-tit"><span>메이저 의예</span></p>
                            <p class="stu-num"><strong>2</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>의약학계열</span></p>
                            <p class="stu-num"><strong>58</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>서울대</span></p>
                            <p class="stu-num"><strong>16</strong><span>명</span></p>
                        </li>
                    </ul>      
                    <ul class="num-list tp08">
                        <li>
                            <p class="stu-tit"><span>연고대</span></p>
                            <p class="stu-num"><strong>62</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>서&middot;성&middot;한&middot;이</span></p>
                            <p class="stu-num"><strong>103</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>중&middot;경&middot;외&middot;시</span></p>
                            <p class="stu-num"><strong>79</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>건&middot;동&middot;홍&middot;숙</span></p>
                            <p class="stu-num"><strong>63</strong><span>명</span></p>
                        </li>
                    </ul> 
                </div>
                <div class="info-stxt" style="position:absolute;top:auto; bottom: 100px; right:117px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        최종 업데이트: 2025.02.28 기준 <br>
                        2025학년도 수시, 정시 합격 기준/ 러셀 평촌 바른공부 자습전용관 재원생 합격생 기준(단과 수강생 제외/ 복수대학 합격자 포함) <br>
                        메이저 의예 : 서울대, 연세대(서울), 성균관대, 가톨릭대, 울산대, 고려대 <br>
                        의약학계열 : 전국 의예과/ 의학과/ 의과대학, 전국 치의예과, 전국 한의예과, 전국 약학과/약학부, 전국 수의예과 모든 대학                         
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0247" Then '강남 %>
        <div class="inner">
            <!-- style03 --> 
            <div class="result-box style03">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/cont01_txt01.png" alt="러셀 강남 최상위권 대학 합격자 현황" /></p>
                <div class="style03-inner">
                    <ul class="num-list">
                        <li>
                            <p>5개년 연속<br>
                                <strong>서울대 의예과</strong> 합격
                            </p>
                        </li>
                        <li>
                            <p>의학계열 누적합격생<br>
                                <strong>711명</strong> 배출
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
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/img_stu01.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2023학년도 김OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2022학년도 서OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2021학년도 김OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_m.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2020학년도 양지헌 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/img_stu02.png" alt="" /></p>
                                </li>
                                <li>
                                    <p class="stu-num">2019학년도 이OO 학생</p>
                                    <p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></p>
                                </li>
                            </ul>
                        </div>
                        <div>
                            <ul class="second-list silver">
                                <li>
                                    <p>의예과 <strong>388명</strong></p>
                                </li>
                                <li>
                                    <p>치의예과 <strong>81명</strong></p>
                                </li>
                                <li>
                                    <p>한의예과 <strong>117명</strong></p>
                                </li>
                                <li>
                                    <p>수의예과 <strong>35명</strong></p>
                                </li>
                                <li>
                                    <p>약학과 <strong>90명</strong></p>
                                </li>
                            </ul>
                        </div>    
                        <div>
                            <ul class="third-list silver">
                                <li>
                                    <p>의치한수약 <strong>711명</strong></p>
                                </li>
                            </ul>
                            <p class="info-txt">의예과 388명, 치의예과 81명, <br> 한의예과 117명, 수의예과 35명, 약학과 90명</p>
                            <ul class="third-list silver">
                                <li>
                                    <p>서연고 <strong>694명</strong></p>
                                </li>
                            </ul>
                            <p class="info-txt">서울대 132명, 연세대 271명, <br> 고려대 291명</p>
                            <ul class="third-list silver">
                                <li class="p0">
                                    <p>서성한이중경외시 <br>
                                        + 카이스트, 포항공대<br>
                                        <strong>1,414명</strong>
                                    </p>
                                </li>
                            </ul>
                        </div>
                    </div>       
                </div>
                <div class="info-stxt" style="position:absolute;top:auto; bottom: 70px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        2018-2025학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함)(2025-03-07 기준)
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont01_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp07">
                        <li>
                            <p class="stu-tit"><span>의예과</span></p>
                            <p class="stu-num"><strong>26</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>의치한수약</span></p>
                            <p class="stu-num"><strong>52</strong><span>명</span></p>
                        </li>
                    </ul>       
                    <ul class="num-list tp08">
                        <li>
                            <p class="stu-tit"><span>서연고</span></p>
                            <p class="stu-num"><strong>58</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>서성한이</span></p>
                            <p class="stu-num"><strong>55</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit"><span>중경외시</span></p>
                            <p class="stu-num"><strong>48</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 90px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        *2025학년도 러셀 중계 바른공부 자습전용관 재원생 기준<br>
                        (복수 대학 합격자 중복 포함, 단과 수강생 미포함(2025-05-11 기준))
                    </div>
                </div> 
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="2024학년도 대입 합격자 현황" /></p>
                <div class="style02-inner mt80">
                    <ul class="num-list tp05">
                        <li style="min-width:160px;">
                            <p class="stu-tit">의예과</p>
                            <p class="stu-num"><strong>71</strong><span>명</span></p>
                        </li>
                        <li style="min-width:160px;">
                            <p class="stu-tit">치한수약</p>
                            <p class="stu-num"><strong>35</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp05">
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>32</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서성한이</p>
                            <p class="stu-num"><strong>56</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">중경외시</p>
                            <p class="stu-num"><strong>41</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp05">
                        <li>
                            <p class="stu-tit fz20">이공계특성화대/<br>
                            사관학교/교대</p>
                            <p class="stu-num"><strong>11</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">부산대/경북대</p>
                            <p class="stu-num"><strong>62</strong><span>명</span></p>
                        </li>
                        <li class="gold">
                            <p class="stu-tit">주요 대학 합격</p>
                            <p class="stu-num"><strong>331</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 80px; right:155px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        * 2025 의&middot;치&middot;한&middot;약&middot;수 합격자. 24년 러셀 센텀 바른공부 자습전용관 11월 재원생 기준 <br>
                        * 2025 주요 15개 대학 수시/정시 입결. 24년 러셀 센텀 바른공부 자습전용관 재원생 기준 (복수 합격자 포함)<br>
                        *홈페이지 대입 실적 기준, 2025.03.19 기준
                        

                    </div>
                </div>    
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p class="tit mb60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont01_txt01.png" alt="" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp06">
                        <li>
                            <p class="stu-tit">메이저 의예</p>
                            <p class="stu-num"><strong>3</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">전국 의예과</p>
                            <p class="stu-num"><strong>36</strong>명</p>
                        </li>
                    </ul>
                    <ul class="num-list mt40 tp06">
                        <li>
                            <p class="stu-tit">치한약수</p>
                            <p class="stu-num"><strong>32</strong>명</p>
                        </li>
                        <li>
                            <p class="stu-tit">주요대학+ <br> 교대,과기원</p>
                            <p class="stu-num"><strong>51</strong>명</p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 80px; right:166px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-02-28 기준 <br>
                        ※ 2025학년도 수시/정시 최종 합격 기준/ 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 (홈페이지 대입실적기준)                        
                    </div>
                </div>
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="" /></p>
                
                <div class="style02-inner mt50">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">서울대 의예과
                            </p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의대
                            </p>
                            <p class="stu-num"><strong>11</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">전국 의예과
                            </p>
                            <p class="stu-num"><strong>44</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt40 tp05">
                        <li>
                            <p class="stu-tit">의치한약수</p>
                            <p class="stu-num"><strong>63</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY/KAIST</p>
                            <p class="stu-num"><strong>12</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 90px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-03-07 기준 ｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다. <br>
                        ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준 (단과 수강생 제외/복수 대학 합격자 포함)<br>
                        ※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예, 고려대 의예
                        
                    </div>
                </div>   
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="러셀CORE 청주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">의예</p>
                            <p class="stu-num"><strong>14</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">치의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">한의예</p>
                            <p class="stu-num"><strong>5</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt70 tp05">
                        <li>
                            <p class="stu-tit">수의예</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">약학</p>
                            <p class="stu-num"><strong>5</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">SKY</p>
                            <p class="stu-num"><strong>15</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 80px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 2024년 러셀CORE 청주 바른공부 자습전용관 재원 이력이 있는 학생  (복수 대학 합격자 포함, 단과 수강생 제외) <br>
                        ※ 2025-02-10 기준, 지속적으로 업데이트 예정

                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0244" Then '분당 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="러셀 분당 2024학년도 대입 합격 현황" /></p>
                
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
                            <p class="stu-tit">수능 만점자</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서울대 의예</p>
                            <p class="stu-num"><strong>9</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의예<sup>3)</sup></p>
                            <p class="stu-num"><strong>44</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">의예</p>
                            <p class="stu-num"><strong>231</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp07">
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
                <p class="mt80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit02.png" alt="2024학년도 대입 합격 현황" /></p>
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
                    </ul>
                    <ul class="num-list mt20 tp03">
                        <li>
                            <p class="stu-tit">약학</p>
                            <p class="stu-num"><strong>32</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">수의예</p>
                            <p class="stu-num"><strong>15</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서울대</p>
                            <p class="stu-num"><strong>31</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">카이스트</p>
                            <p class="stu-num"><strong>6</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt20 tp03">
                        <li>
                            <p class="stu-tit">연세대</p>
                            <p class="stu-num"><strong>48</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">고려대</p>
                            <p class="stu-num"><strong>45</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서&middot;성&middot;한&middot;이</p>
                            <p class="stu-num"><strong>98</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">중&middot;경&middot;외&middot;시</p>
                            <p class="stu-num"><strong>104</strong><span>명</span></p>
                        </li>
                    </ul>
                    <div class="info-stxt" style="position:absolute;bottom:100px;right:75px;">
                        <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                        <div class="data-view">
                            러셀 분당 20~24학년도 바른공부 자습전용관 재원생만을 대상으로 한 결과 (단과만 수강생 미포함, 중복 대학 합격자 포함)<br>
                            
                            1) 홈페이지에 입시 결과를 공개한 분당 지역 학원 중 의치한약수+SKY 합격생 수 기준<br>
                            2) 최상위권 대학(의예, 치의예, 한의예, 약학, 수의예, 서울대, 연세대, 고려대)<br>
                            3) 메이저 의예(서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대)
        
                        </div>
                    </div>
                </div>
            </div>    
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont01_txt01.png" alt="2023 개원 첫 해, 놀라운 입시 결과로 최상위권을 증명하다!" /></p>
                <div class="style02-inner">
                    
                    <ul class="num-list tp06">
                        <li>                  
                            <p class="stu-tit">전국 의예</p>
                            <p class="stu-num"><strong>216</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의예</p>
                            <p class="stu-num"><strong>13</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">치&middot;한&middot;수&middot;약학</p>
                            <p class="stu-num"><strong>134</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt70 tp06">
                        <li>
                            <p class="stu-tit">서&middot;연&middot;고</p>
                            <p class="stu-num"><strong>87</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서성한이 <br>과학기술원 <br> 중경외시</p>
                            <p class="stu-num"><strong>186</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">경북대</p>
                            <p class="stu-num"><strong>131</strong><span>명</span></p>
                            <span class="txt">(*의약학계열 71명)</span>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt tar" style="position:absolute; bottom: 60px; right:100px;">
                    <span class="info-color">
                        *2024년 러셀 대구 바른공부 자습전용관 재원생 기준(복수 대학 합격자 및 정시/수시 합격자 중복 포함, 단과 수강생 미포함) <br>
                        *메이저 의예: 서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대
                    </span>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0349" Then '울산 %>
        <div class="inner">
            <div class="prove-box">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="2023 개원 첫 해, 놀라운 입시 결과로 최상위권을 증명하다!" /></p>
                <ul class="prove-list">
                    <li>
                        <dl>
                            <dt>개원 첫 해</dt>
                            <dd>
                                9월 평가원 모의고사<br>
                                만점자 배출<sup>1)</sup>
                            </dd>
                        </dl>
                        <p>
                            실력 있는 학생들이 많이 있다 보니 공부할 때 스스로 돌아보며 더 공부를 하게 됩니다.<br>
                            또 학교를 다니면서 입시 정보까지 신경 쓰는 것이 많이 힘든데 주기적으로 생기부 특강이나 입시 관련 설명회, 약사 간담회 등으로 제 진로를 설정하고 고민하는 데 도움이 많이 되었습니다.<br>
                            <br>
                            <span>2024 재학생 정규반 김○○</span>
                        </p>
                    </li>
                    <li>
                        <dl>
                            <dt>내신 관리도 탄탄하게 !</dt>
                            <dd>
                                국&middot;수&middot;영&middot;과<br>
                                전교1등 배출<sup>2)</sup>
                            </dd>
                        </dl>
                        <p>
                            시험 기간에는 담임선생님과 내신 선생님들께서 새벽까지 남아서 질문도 받아주시고 도와주신 덕분에 내신 성적을 관리하는 데 도움이 되었습니다. <br>
                            심야자습도 학원에 자습 감독해 주시는 조교쌤들이 딴짓하거나 졸면 주의를 주셔서 시간을 낭비하지 않을 수 있다는 점이 좋았습니다.<br>
                            <br>
                            <span>2024 재학생 정규반 김○○ </span>
                        </p>
                    </li>
                    <li>
                        <dl>
                            <dt>재원생 만족도 1위</dt>
                            <dd>
                                바른공부<br>
                                자습전용관<sup>3)</sup>
                            </dd>
                        </dl>
                        <p>
                            학원 면학분위기가 잘 잡혀있어서 공부하는데 많은 도움이 되었습니다. <br>
                            담임선생님께서 상담을 잘해주시고, 방향을 잘 잡게 도와주십니다. 지난 상담 이후로 꾸준히 오답노트를 쓰기 시작했는데, 오답노트를 함으로써 수학 성적이 많이 올랐던 것 같습니다.<br>
                            <br>
                            <span>2024 재학생 정규반 이○○</span>
                        </p>
                    </li>
                </ul>
                <div class="info-stxt" style="position:absolute; bottom: 90px; right:40px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        1) 2024년 9월 평가원 모의고사 러셀 울산 학원 재원생의 결과<br>
                        2) 2024년 1학기 바른공부 자습전용관 수강생 학기말 성적 취합 결과<br>
                        3) 2024 바자관 만족도 조사 (2024년 5월 시행 기준) 결과 내 발췌
                    </div>
                </div>   
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont02_stit.png" alt="러셀CORE 광주는 결과로 증명합니다! 2024학년도 개원 첫 해 대입 합격 현황" /></p>
                <div class="style02-inner">
                    <ul class="num-list tp05">
                        <li>
                            <p class="stu-tit">서울대 의예</p>
                            <p class="stu-num"><strong>1</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메이저 의예</p>
                            <p class="stu-num"><strong>10</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">연세대 의예</p>
                            <p class="stu-num"><strong>3</strong><span>명</span></p>
                        </li>
                    </ul>
                    <ul class="num-list mt60 tp05">
                        <li>
                            <p class="stu-tit">전국 의예</p>
                            <p class="stu-num"><strong>86</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">메디컬<br>
                                <span>(의/치/한/수/약)</span></p>
                            <p class="stu-num"><strong>155</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">서연고</p>
                            <p class="stu-num"><strong>33</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 90px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        * 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2025.02.27 기준) <br>
                        (복수 대학 합격자 포함/단과 수강생 제외)<br>
                        * 25학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                        * 메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준                    
                    </div>
                </div>        
            </div>
        </div>
        <% End If %>
        <% If sCampusCode = "CD0250" Then '부천 %>
        <a href="<%=entrance_url%>" class="btn-black"><%=pass_btn%></a>
        <% End If %>
    <% End If %>
    </div>
    <div class="cont03">
        <% If sCampusCode = "CD0244" OR sCampusCode = "CD0257" Then '분당/중계 %>
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont03_tit.png" alt="재학생(고3) 맞춤 시스템으로 공부한 선배들은 최상위권 대입성공의 꿈을 이뤘습니다."></h3>
        <% Else %>
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont03_tit.png" alt="재학생 맞춤 시스템으로 공부한 선배들은 최상위권 대입성공의 꿈을 이뤘습니다."></h3>
        <% End if %>
        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0349" Then '인트로/울산 %>
        <div class="inner">
            <div class="swiper-container review-slide type03" style="padding-bottom: 0;">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72645714')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_01.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>서울대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀 대치 | 권수현
                                </dd>
                            </dl>
                            <p>
                                바른공부 자습전용관의 장점은 개방형 구조로 다른  학생들이 열심히 공부하는 모습을 볼 수 있다는  점입니다. 넓은 책상과 넉넉한 책장 수납공간 덕분에  시험지가 큰 모의고사를 풀 때도 불편함이 없었고,  급식이 제공되어 학습 동선을 최소화하는 데 도움이  되었습니다. 선택적으로 심야 자습을 할 수 있어서  컨디션을 조절하면서 공부량을 늘릴 수 있었던 점도  수능 공부에 도움이 되었습니다. 

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72832595')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_02.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>연세대학교 의예과  합격</p>
                                </dt>
                                <dd>
                                    러셀 영통 | 임희수
                                </dd>
                            </dl>
                            <p>
                                매월 꾸준히 진행했던 메가x대성 더 프리미엄 
                                모의고사는 수험생활에 큰 도움이 되었습니다. 매번 
                                모의고사를 치르며 실제 시험과 같은 현장감을 느낄 수 있었고, 자신의 객관적인 위치와 함께 취약한 과목이나 단원을 명확히 파악할 수 있었습니다. 또한, 합격예측 
                                서비스를 통해 부족한 점을 인지하고 더 열심히 
                                공부해야겠다는 동기부여를 얻을 수 있었던 점도 매우 유익했습니다.

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72645446')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_03.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>연세대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 광주 | 박채은
                                </dd>
                            </dl>
                            <p>
                                바른공부 자습전용관의 장점은 쾌적한 환경입니다.  광주 봉선동에서 많은 학원, 독서실, 스터디 카페를  다녀 봤지만 러셀의 바른공부 자습전용관만큼 공부하기 적합한 환경은 없었습니다. 저에게는 러셀 바른공부  자습전용관의 높은 층고, 탁 트인 책상과 책장 배치, 넓은 통유리 창 등이 오랜 시간 높은 효율로 집중하는 데 큰 도움을 주었습니다. 

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/68536539')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_04.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>가톨릭대학교 의예과  합격</p>
                                </dt>
                                <dd>
                                    러셀 대구 | 장서윤
                                </dd>
                            </dl>
                            <p>
                                대치동 현장 강의를 서울에 가지 않고도 들을 수 있는 
                                것과 대치동과 동일한 현강 수업 자료를 받을 수 있는 
                                것이 라이브 수업의 가장 큰 장점인 것 같습니다. 특히 조정식 선생님의 The day is Your day 시즌2 수업이 
                                가장 도움이 되었습니다. 매주 시험을 응시하고 조정식 선생님의 풀이를 들으며 부족한 부분을 메꿀 수 
                                있었습니다.

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72235913')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_05.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>가톨릭대학교 의예과  합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 전주 | 박성민
                                </dd>
                            </dl>
                            <p>
                                바른공부 자습전용관의 장점은 좋은 면학 분위기와 
                                학습 시간 확보에 있는 것 같습니다. 옆에서 집중하는  
                                친구들을 보며 더 집중할 수 있었고, 시간표에 따라  
                                공부하며 불필요한 시간 없이 효율적으로 시간 관리를 할 수 있었습니다.

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72313864')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_06.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>가톨릭대학교 의예과  합격</p>
                                </dt>
                                <dd>
                                    러셀 강남 | 이예은
                                </dd>
                            </dl>
                            <p>
                                바른공부 자습전용관의 장점은 개방형 구조를 통한 
                                긍정적인 경쟁심 자극입니다. 저는 자습관 안에서 가장 열심히 공부하는 학생이 되겠다는 목표가 있었습니다. 
                                개방형으로 탁 트여 있어 제가 공부하는 모습을 다른 
                                학생들이 볼 수 있다고 의식하니 더 열심히 하게 됐습니다.

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72604689')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_07.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>성균대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀 센텀 | 이재성
                                </dd>
                            </dl>
                            <p>
                                공부에 집중하다 보면 면접 일정이나 원서 접수 등 공부 외적인 부분을 잊을 때가 많은데, 담임 선생님께서 
                                자습이 끝나면 해당 일정을 공지해 주셨기에 제때 챙길 수 있었습니다. 또 학습에 어려움이 있을 때 진행하는 
                                상담에서도 위로가 많이 되었습니다.

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/73090623')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_08.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>울산대학교 의예과  합격</p>
                                </dt>
                                <dd>
                                    러셀 울산 | 이예빈
                                </dd>
                            </dl>
                            <p>
                                저는 러셀에서 진행한 OMEGA(구, QUEL 모의고사),  메가X대성 더 프리미엄 모의고사 등 실전 모의고사가  가장 도움이 됐습니다. 수능은 오후 4시 37분까지  집중력을 잃지 않아야 하는 시험이기 때문에, 실전처럼 모의고사를 여러 번 풀어보는 게 중요합니다. 또한,  모의고사 이후 성적표를 통해서 내 위치가 어느  정도인지 객관적으로 알 수 있어 좋았습니다.

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72855787')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_09.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>울산대학교 의예과  합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 창원 | 김태희
                                </dd>
                            </dl>
                            <p>
                               담임 선생님과의 1:1 상담을 통해 정확한 목표를 세우고 공부해나갈 수 있었습니다. 입시 경력이 많으신 담임  선생님께서 알려주시는 팁은 질적인 차이가 있습니다.  담임 선생님과 한 달에 한 번씩 상담을 한 덕분에  1월부터 구체적인 대학과 전형에 선택과 집중을 할 수  있었습니다. 또한 학습 방법에 대해서도 많은 질문을  드렸고 안 좋은 학습 습관들을 고쳐나갈 수 있었습니다.

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72605104')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_10.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>고려대학교 의과대학  합격</p>
                                </dt>
                                <dd>
                                    러셀 중계 | 동나영
                                </dd>
                            </dl>
                            <p>
                                러셀 총평노트가 큰 도움이 되었습니다. 기존에는  모의고사를 보고 나서 오답노트도 거의 하지 않고 넘어가기 일쑤였는데 러셀 총평노트를 쓰면서 꼼꼼히 오답을 정리하고 앞으로 계획의 방향성을 잡을 수 있었습니다. 또한 학습 동선 최소화로 자습관에서 단과 수업으로  이동하는 데 1~2분밖에 걸리지 않기 때문에 시간  낭비 없이 공부할 수 있었던 점이 좋았습니다. 

                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72746446')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/stu_11.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2025학년도</div>
                                    <p>가톨릭관동대학교 의예과  합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 원주 | 김민솔
                                </dd>
                            </dl>
                            <p>
                                멘탈이 흔들릴 때 많은 도움을 받았습니다. 9월 모의고사 이후에 기대했던 성적이 나오지 않고, 앞으로 어떤  공부를 해야 할지 감이 잡히지 않았을 때 담임  선생님과의 상담을 통해 지금 해야 할 공부를 파악하고 다시 마음을 다잡아 열심히 공부할 수 있었습니다. 

                            </p>
                        </div>
                    </li>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>
            <% If sCampusCode = "CD0349" Then '울산 %>
            <a href="<%=result_url%>" class="btn-black mt50"><%=result_btn%></a>
            <% End if %>
        </div>
        <% ElseIf sCampusCode = "CD0247" Then '강남 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        전기정보공학부 합격</strong>
                                </dt>
                                <dd>러셀 강남 유상원</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ysw.jpg" alt=""></div>
                        </div>
                        <p>
                            바자관을 다니며 <strong>아침부터 밤까지 규칙적으로 공부하는 생활 습관</strong>이 생겼습니다. 수능 공부를 할 때에는 규칙적인 생활 습관이 아주 중요하다고 생각합니다.  또한 <strong>입시 관련 상담을 해주시며 면학분위기 조성을 해주시는 담임선생님</strong>이 계신다는 점이 바자관의 최대 장점 중 하나라고 생각합니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>연세대학교<br>
                                        시스템반도체공학과 합격</strong>
                                </dt>
                                <dd>러셀 강남 임재윤</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ljy.jpg" alt=""></div>
                        </div>
                        <p>
                            <strong>러셀 학습 플래너</strong>가 가장 큰 도움이 되었습니다. 플래너를 작성한 이후에는 주마다 공부의 현황을 점검하고 저만의 루틴과 학습 분위기를 만들었습니다. <strong>1:1 상담을 통한 입시관리 및 학습관리</strong>를 통해 보다 다양한 입시 정보를 얻을 수 있었고, 선생님과 입시 전략을 조정해 가면서 적절하게 원서를 넣을 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>고려대학교<br>
                                        지리교육과 합격</strong>
                                </dt>
                                <dd>러셀 강남 손무경</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_smk.jpg" alt=""></div>
                        </div>
                        <p>
                            바자관의 장점은 공부를 위한 <strong>쾌적한 환경과 시간표</strong>입니다. <br>
                            수능에 맞춰진 시간표를 통해 몸을 수능 패턴에 맞출 수 있었고 <strong>실제 수능을 치는 느낌을 받으며 공부를 할 수 있었습니다.</strong> 또한 바자관 바로 앞이라는 근접성을 통해 언제든 상담을 진행할 수 있었으며 개개인에게 맞춰 <strong>다양한 상담을 진행</strong>해 주셨습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>고려대학교<br>
                                        행정학과 합격</strong>
                                </dt>
                                <dd>러셀 강남 장서윤</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_jsy.jpg" alt=""></div>
                        </div>
                        <p>
                            일정한 시간에 집중하고, 쉬고, 밥 먹는 <strong>루틴을 지키면서 공부</strong>하니까 공부 습관을 형성하는데 큰 도움이 되었습니다. 주변에 열심히 공부하는 수험생분들을 보면서 자극도 받을 수 있었습니다.<br>
                            바자관과 강의실이 한 건물에 있어서 <strong>이동 시간을 최소한으로</strong> 줄일 수 있는 게 가장 큰 장점이라고 생각합니다.

                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 강남 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0244" Then '분당 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>가톨릭대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 분당 김수현</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ksh.jpg" alt=""></div>
                        </div>
                        <p>
                            저에게 <strong>바자관의 가장 큰 장점은 좋은 면학분위기</strong>였습니다. 매일 수능 공부 루틴을 반복해야 하는 고3 때는 일상이 너무나 단조롭고 고독하다는 기분이 드는 때가 많았는데, <strong>바자관 개방형 구조로 인해 열심히 공부하는 많은 학생들의 모습을 보는 것만으로도 수험생활로 인한 외로움이 덜했던 것 같습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>충남대학교<br>
                                        수의예과 합격</strong>
                                </dt>
                                <dd>러셀 분당 김준희</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_kjh.jpg" alt=""></div>
                        </div>
                        <p>
                            <strong>바자관의 장점은 수능에 맞춘 학습 시간표와 담임선생님들의 체계적인 관리</strong>였습니다. 타종을 울리면서 학습 시간표를 수능과 유사하게 구현하여 수능 공부 리듬을 만드는 데 큰 도움이 되었습니다. 담임선생님께서는 앞으로의 <strong>목표 설정이나 수시 지원 전략도 지도해 주시면서 꾸준히 관리해 주셔서 마음이 안정되고 좋았습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        수학교육과 합격</strong>
                                </dt>
                                <dd>러셀 분당 오인경</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_oik.jpg" alt=""></div>
                        </div>
                        <p>
                            <strong>바자관의 장점은 공부 리듬을 형성</strong>할 수 있다는 것입니다. 바자관 시간표는 수능과 비슷하게 맞추어져 있어 <strong>오래 집중하는 습관을 들이고 수능과 같은 패턴으로 공부하기에 유리</strong>합니다. 또한 철저한 출결  관리 덕분에 <strong>규칙적으로 생활하는 데에 큰 도움</strong>이 되었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>고려대학교<br>
                                        바이오시스템의과학부<br>
                                        합격</strong>
                                </dt>
                                <dd>러셀 분당 송지후</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_sjh.jpg" alt=""></div>
                        </div>
                        <p>
                            <strong>꾸준히 진행되었던 메가X대성 더 프리미엄 모의고사가 큰 도움</strong>이 되었습니다. 퀄리티 좋은 모의고사들을 실제 시간에 맞춰 풀면서 실전 같은 경험을 하고 앞으로의 공부 계획의 방향을 잡아볼 수 있었습니다. 또한 <strong>공부 방향을 간단히 기록하고, 날짜별 계획을 세세히 작성하는 게 모두 가능한 러셀 학습 플래너가 도움</strong>이 되었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 분당학원 재학생 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl class="full">
                                <dt>
                                    <span>2025학년도
                                    </span><br>
                                    <strong>인제대학교 의예과 합격</strong>
                                </dt>
                                <dd>러셀 부천 도유빈</dd>
                            </dl>
                            <div class="label">
                                <p><span>의예과</span><br>합격</p>
                            </div>
                        </div>
                        <p>
                            <span class="tit">학생들을 배려하는 공부환경이 인상적이었습니다.</span><br>
                            <strong>러셀 부천학원 바자관의 장점은 충분한 자습시간이 보장된다는 점입니다.</strong>
                            오전 8시부터 오후 10시까지 자율학습이 가능했기 때문에 <strong>과목별 공부량을 자유롭게 조절할 수 있었습니다.</strong>
                            또한 2층에 마련된 프린터기 덕분에 멀리 나갈 필요 없이 원할 때마다 학습 자료를 출력할 수 있어 유용했습니다.
                            바자관 책상은 넓고 깨끗했으며 의자는 푹신해서 장시간 앉아있어도 허리가 아프지 않아 오래 공부하는 데 좋았습니다.
                            또한 관마다 공기청정기가 비치되어 있어 <strong>쾌적한 환경 속에서 공부에 집중할 수 있었습니다.</strong>
                            
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl class="full">
                                <dt>
                                    <span>2025학년도
                                    </span><br>
                                    <strong>인제대학교 의예과 합격</strong>
                                </dt>
                                <dd>러셀 부천 박승균</dd>
                            </dl>
                            <div class="label">
                                <p><span>의예과</span><br>합격</p>
                            </div>
                        </div>
                        <p>
                            <span class="tit">매월 진행하는 바자관 전용 콘텐츠가 큰 도움이 되었습니다. 
                            </span><br>
                            <strong>전 과목을 실제 수능 시간에 맞춰 풀고 여러 분석이 포함된 성적표를 통해 나의 부족한 부분을 확인하고 보완할 수 있었습니다. </strong>
                            또한 바자관 담임 선생님께서 매월 메대프 모의고사나 E-QUEL모의고사가 끝난 뒤 개인별로 상담해 주셔서 현재 나의 공부 상황이나 부족한 과목 등을 확인할 수 있도록 도와주셨고 이후 <strong>공부 방향성에 대한 조언 덕분에 질 좋은 학습을 이어나갈 수 있었습니다. </strong>
                            또한 수시 원서 접수를 할 때 입시 관련 도움을 많이 주셔서 의지가 많이 되었고, 덕분에 좋은 결과를 얻을 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl class="full">
                                <dt>
                                    <span>2025학년도
                                    </span><br>
                                    <strong>가톨릭대학교 약학과 합격</strong>
                                </dt>
                                <dd>러셀 부천 홍이현</dd>
                            </dl>
                            <div class="label">
                                <p><span>약학과</span><br>합격</p>
                            </div>
                        </div>
                        <p>
                            <span class="tit">바자관은 공부에만 집중하는 것을 쉽게 해 주는데 가장 적합한 환경입니다.
                            </span><br>
                            평소 자제력이 부족하던 저에게, 휴대폰 제출이나 와이파이 제한으로 공부 외의 불필요한 인터넷 활동을 방지해 주는 것이 큰 도움이 되었습니다. 또한 <strong>철저한 바자관 감독과 집단적인 면학분위기로 인해 오로지 공부에만 집중할 수 있는 환경이기에 이전보다 배에 달하는 학습시간을 확보할 수 있었습니다.</strong> 또한 수능시간표대로 하루가 진행된다는 점이 만족스러웠습니다. 
                            실제 수능처럼 모의고사 연습을 할 수도 있고 <strong>수능에 맞는 생체리듬을 형성하는 데에도 큰 도움이 되었습니다. </strong>
                            매달 치르는 더 프리미엄 모의고사를 통해서는 승강반 제도를 도입하고 있기에 <strong>학습에 동기부여가 되어 더 열심히 공부할 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2025학년도
                                    </span><br>
                                    <strong>아주대학교 의예과 합격
                                    </strong>
                                </dt>
                                <dd>러셀 부천 이세빈
                                </dd>
                            </dl>
                            <div class="label">
                                <p><span>의예과</span><br>합격</p>
                            </div>
                        </div>
                        <p>
                            <span class="tit">바자관에서는 체계적인 관리를 통해 효율적인 공부를 위한 습관을 가질 수 있었습니다.
                            </span><br>
                            <strong>공부하는 학생의 입장에서 바라보고 학습 환경을 준비했다는 것이 온몸으로 느껴질 만큼 세심했습니다.</strong>
                            학생들을 위해 단순히 공부하는 데 필요한 것들 뿐만 아니라 공부하는 환경을 제대로 조성하기 위해 학생에게 필요한 물품까지 구비해 두어 학원 생활에 불편함이 없었습니다.
                            또한 <strong>엄격한 교육점수 제도를 통해 공부에 방해되는 습관을 바로잡을 수 있다는 점이 좋았습니다.</strong>


                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 부천학원 2024년 재원생 후기 중 일부 발췌</p>
            <!-- <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a> -->
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        인문계열 합격</strong>
                                </dt>
                                <dd>러셀CORE 광주 김효원</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_khw.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://www.youtube.com/embed/jKcs1gP33hk?si=higdwm60u7GEziGM')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>바자관의 장점은 학습에 집중할 수 있는 면학분위기입니다.</strong><br>
                            바자관은 개방형 구조로 되어 있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>조선대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 광주 김나연</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_kny.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://www.youtube.com/embed/-O8X0j4OH5U?si=TC5YzW9AsaGo7kUX')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            담임선생님은 마라톤에서의 페이스메이커 같은 분이십니다.<br>
                            <strong>담임선생님께서는 1:1로 상담</strong>해 주셔서 대화하면서 앞으로의 계획이나 부족한 부분에 대해 스스로 생각해 볼 수 있도록 도와주셨습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>동국대학교<br>
                                        한의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 광주 권태완</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ktw.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://www.youtube.com/embed/ETk8HFa0Wjw?si=8xjXhJhs4m48_MBF')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            이동에 낭비하는 시간이 없도록 도움을 주었습니다. <br>
                            바른공부 자습전용관과 가까운 거리에 강의실이 있다는 점은 확실한 장점으로 다가왔습니다. 검증된 <strong>강사진의 퀄리티 높은 콘텐츠</strong>는 실력 향상에 큰 도움을 주었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>한양대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 광주 엄태옥</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_uto.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/50967638')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            공부 외에 것들은 최대한 신경을 안 쓰게 관리를 해줘서 좋았습니다.<br>
                            바자관의 장점은 <strong>단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다.</strong> 불필요한 수업을 들을 때와 달리 집중력 있게 수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.

                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀CORE 광주 학원 재학생 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0001" Then '대치 %>
        <div class="inner">
            <div class="box-slide swiper-container">
                <div class="swiper-wrapper p2">
                    <div class="swiper-slide">
                        <p class="info-txt">
                            <span class="year">2025</span>
                            <strong>연세대 치의예과 합격</strong>
                        </p>
                        <div class="review-txt">
                            <p class="tit">바자관의 장점은<br>
                                좋은 면학 분위기와 시설입니다.</p>
                            <p>넓은 책상과 책꽂이 덕분에 공부할 때에 불편하지 않을 수 
                                있었습니다. 또한 <strong>공간이 탁 트여있기 때문에 답답함이 없었고, 
                                    시간표에 맞게 공부 계획을 짤 수 있어 쾌적한 환경에서 
                                    효율적으로 공부할 수 있었습니다.</strong> 마지막으로 점심시간 종료 
                                    직후에 나오는 스트레칭 방송을 통해 오래 앉아있음에도 매일 
                                    스트레칭을 할 수 있어 도움이 되었습니다.</p>
                        </div>
                        <dl class="stu-info">
                            <dt>러셀 대치 정민지</dt>
                            <dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_jmj.png" alt=""></dd>
                        </dl>
                    </div>
                    <div class="swiper-slide">
                        <p class="info-txt">
                            <span class="year">2025</span>
                            <strong>을지대 의예과 합격</strong>
                        </p>
                        <div class="review-txt">
                            <p class="tit">러셀의 장점은 담임선생님입니다.</p>
                            <p>저는 이전까지 공부는 당연히 혼자 해야 하는 것이라고 
                                생각했습니다. 그러나 러셀에서 만나게 된 담임선생님께서는 
                                저의 성취에 같이 기뻐해 주시고, 힘들 때 위로도 해주시며 
                                단순한 멘토 이상의 역할을 해주셨습니다. <strong>누군가가 옆에서 
                                    지켜봐 주고 있다는 사실만으로도 매일 14시간씩의 끝이 없어 
                                    보이던 공부도 해나갈 수 있었습니다.</strong> 혼자였더라면 절대 이룰 수 
                                    없을 결과를 얻게 된 가장 큰 이유는 러셀에 다니며 담임선생님을 만나게 된 것이라고 생각합니다.</p>
                        </div>
                        <dl class="stu-info">
                            <dt>러셀 대치 박찬서</dt>
                            <dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_pcs.png" alt=""></dd>
                        </dl>
                    </div>
                </div>
            </div>
            <p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
        </div>
        <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>

        <!-- <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        국어교육과 합격</strong>
                                </dt>
                                <dd>러셀 대치 송해눈</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_shn.jpg" alt=""></div>
                        </div>
                        <p>
                            담임선생님께서 저의 생기부를 기반으로 학기 초부터 수시 카드를 추천해 주셔서 이후 <strong>비교과 활동 과정과 수시 지원 과정에서 많은 도움을 받았습니다.</strong> 또 선생님께서 계속해서 <strong>전형별, 시기별 입시 정보</strong>를 알려주셔서, 필요한 것이 있을 때 헤매지 않고 좋은 정보를 얻을 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>경희대학교<br>
                                        한의예과 합격</strong>
                                </dt>
                                <dd>러셀 대치 유영준</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_yyj.jpg" alt=""></div>
                        </div>
                        <p>
                            바자관의 장점은 <strong>표준 시간표대로 공부를 하다</strong> 보면 공부 리듬이 형성이 되고, 이 덕분에 <strong>수능시험장에서도 집중력을 유지</strong>할 수 있었다는 것입니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        경제학부 합격</strong>
                                </dt>
                                <dd>러셀 대치 이태규</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ltk.jpg" alt=""></div>
                        </div>
                        <p>
                            <strong>바자관의 장점은 집단적인 면학분위기입니다.</strong><br>
                            수능이라는 목표를 위해 노력하는 사람이 이렇게 많다는 것을 체감하고 또 그것에 자극을 받을 수 있었습니다. 

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                    의예과 합격</strong>
                                </dt>
                                <dd>러셀 대치 전서연</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_jsy.jpg" alt=""></div>
                        </div>
                        <p>
                            담임선생님과 일주일에 한 번씩 플래너 검사를 진행하면서 지난주의 나를 선생님과 함께 돌아보고, 개선점을 논의하며, 그 개선점을 다음 주 공부에 반영하면서 선의의 순환이 계속 반복되었던 거 같습니다.<br>
                            <strong>선생님과 다음 주 목표를 함께 설정하고, 실제로 지켜 나가며 점점 공부습관이 자리 잡혀갔습니다. </strong>
                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 대치학원 재학생 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div> -->
        <% ElseIf sCampusCode = "CD0257" Then '중계 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2025학년도</span><br>
                                    <strong>고려대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 중계 동나영</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_dny.jpg" alt="">
                                <!-- <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49515163')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a> -->
                            </div>
                        </div>
                        <p>
                            바자관 내부는 대화 금지여서 <strong>조용한 분위기에서 공부에 몰입할 수 있으며, 개방형 구조와 통유리 창으로 탁 트여 있는 구조</strong>이기 때문에 옆에서 공부하는 친구들을 봐서라도 딴짓을 할 수 없어서 좋았습니다. 
                            또한 바자관은 개인 스케줄을 제외하고는 오전 8시부터 밤 10시까지 의무 자습이기 때문에 <strong>훨씬 많은 공부량을 확보할 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2025학년도</span><br>
                                    <strong>아주대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 중계 이예준</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_lyj.jpg" alt="">
                                <!-- <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/52067105')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a> -->
                            </div>
                        </div>
                        <p>
                            <strong>모의고사를 본 후 시간관리나 부족한 개념등 정리해보는 러셀 총평노트가 도움이 되었습니다.</strong> 
                            직접 손으로 써놓지 않으면 자신의 약점을 안다고 생각하다가 어느 순간 휘발될 수 있기 때문에 이걸 방지할 수 있다는 점이 마음에 들었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2025학년도</span><br>
                                    <strong>단국대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 중계 김태형</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_kth.jpg" alt="">
                                <!-- <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49515174')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a> -->
                            </div>
                        </div>
                        <p>
                            <strong>러셀 시스템의 강점은 파이널 기간에 진행하는 실전 모의고사라 생각합니다.</strong> 
                            평소 경험해보지 못했던 유형의 문제들도 볼 수 있어서 좋고 모의고사를 채점한 뒤에 내가 무슨 과목, 
                            어떤 파트에 결함이 있구나를 <strong>객관적으로 파악하고 자신을 보완할 수 있는 기회</strong>를 만들 수 있어서 더 좋은 것 같습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2025학년도</span><br>
                                    <strong>순천향대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 중계 신미나</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_smn.jpg" alt="">
                                <!-- <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48574470')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a> -->
                            </div>
                        </div>
                        <p>
                            <strong>담임 선생님께서 주기적으로 1:1 상담을 해 주셨는데</strong> 러셀에서 공부한 선배들이 실제로 어떻게 공부했는지 알려 주셔서 저의 공부 방향을 잡아나가는 데 참고할 수 있었습니다. 
                            또 6장의 수시 원서를 어떻게 쓸지에 대해 담임 선생님과 여러 번의 상담을 통해 결정에 도움을 받았습니다. 
                            <strong>선생님들께서 항상 웃으며 인사해 주시고 많이 응원해 주셔서 힘내서 공부할 수 있었습니다.</strong>
                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 중계학원 재학생 재원생 후기 중 일부 발췌

            </p>
            <!-- <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a> -->
        </div>
        <% ElseIf sCampusCode = "CD0245" Then '목동 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>고려대학교<br>
                                        국어교육과 합격</strong>
                                </dt>
                                <dd>러셀 목동 윤지효</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_yjh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48230985')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            바자관의 장점은 면학분위기입니다. <strong>저 같은 경우에는 학교에서 아침부터 공부를 하다가 학교 끝나고 온 경우</strong>였습니다. 학교에서 쭉 공부를 하고 바자관에 오면 집중이 안 될 법도 하지만 <strong>열심히 공부하는 다른 학생들의 모습을 보며 자극을 받아 의욕을 잃지 않았습니다.</strong> 또한 <strong>공부환경이 쾌적</strong>해서 오래 집중을 할 수 있었던 거 같습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>연세대학교<br>
                                        기계공학과 합격</strong>
                                </dt>
                                <dd>러셀 목동 손정훈</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_sjh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49402904')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            바른공부 자습전용관은 <strong>수능 시험의 시간표와 유사하게 구성된 표준 시간표</strong>를 이용하여 1년 동안 <strong>몸의 리듬을 수능시험에 맞게 유지시킬 수 있었습니다.</strong> 특히 파이널 기간 때 표준 시간표 덕분에 <strong>모의고사 시간 관리에 큰 도움이 되었습니다.</strong>

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>연세대학교<br>
                                        원주의과대학 합격</strong>
                                </dt>
                                <dd>러셀 목동 윤서환</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ysh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48230736')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>담임선생님과의 1:1 상담</strong>이 큰 도움이 되었습니다. 모두가 입시로 인해 스트레스를 받고 있기에 친한 친구라도 서로 고민을 털어놓기 힘들었는데, 담임선생님께서 수험생활의 여러 고충을 들어주시고 함께 고민해 주셔서 <strong>정신적으로 한계에 달한 상황에서도 스스로를 믿고 나아갈 수 있었습니다.</strong>

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        첨단융합학부 합격</strong>
                                </dt>
                                <dd>러셀 목동 채준영</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_cjy.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48230982')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            면학분위기에 방해되는 <strong>휴대폰 제출과 학습 외 활동 제한으로 인해 알게 모르게 낭비되던 시간을 줄이고 오로지 공부에만 집중</strong>할 수 있었습니다. 이로 인해 바자관을 다니기 전보다 <strong>훨씬 더 많은 공부시간을 확보</strong>할 수 있었고, <strong>자연스럽게 집중하는 시간과 학습량도 늘어났습니다.</strong>

                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 목동학원 재학생 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>고려대학교<br>
                                        의과대학 합격</strong>
                                </dt>
                                <dd>러셀 영통 오서준</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_osj.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48584694')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다.</strong> 모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 더 <strong>현장감 있기에, 러셀의 표준 시간표에 맞추어 공부하였습니다.</strong>
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        치의학학석사통합과정<br>
                                        합격</strong>
                                </dt>
                                <dd>러셀 영통 최지원</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_cjw.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48964346')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>학습 동선을 최소화하는 것</strong>이 큰 도움이 되었습니다.  또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다.</strong> 모의고사 이후 성적 분석을 토대로 한 상담은 학습 방향을 잡는 데에 도움이 되었습니다. 또한 정확한 수치를 근거로 입시에 대한 구체적인 정보를 알려주셔서 원서 접수에도 도움이 되었습니다. 

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>전북대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 영통 오준학</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ojh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48584747')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            바자관의 장점은 <strong>표준 시간표와 전용 와이파이</strong>입니다. 항상 자습시간이 정해져 있다 보니 딴 곳으로 잘 새지 않고 <strong>자습시간을 확보할 수 있으며 자습시간 동안에도 딴짓하지 않고 공부에만 집중</strong>할 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>영남대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 영통 박우영</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_pwy.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/50089650')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            바자관의 장점은 <strong>개방형 구조</strong>라고 생각합니다. 다른 학생들과 적당한 거리로 떨어져 있어서 부담스럽지도 않았고, <strong>집중이 안 될 때 주변 학생들이 공부하고 있는 모습을 보면 ‘나도 다시 열심히 해야겠다.</strong>’라는 생각이 들어서 좋았습니다. 또한 <strong>시간표가 수능 시간표와 비슷한 것이 습관 형성</strong>에 좋았습니다.

                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 영통학원 재원생 후기 중 일부 발췌

            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2023학년도</span><br>
                                    <strong>서울대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 대전 이상후
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_lsh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/34136621')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>러셀 대전은 흠잡을 곳이 없는 대입 최적의 공간입니다.</strong><br>
                            공부에만 집중할 수 있는 좋은 면학분위기, 전문적인 관리와 학생 중심의 담임선생님, 순공시간을 최대화할 수 있는 체계적인 시간표, 다양한 모의고사를 통한 실전 훈련 등 어느 한 쪽에 치우쳐져 있지 않은 완벽한 육각형이라는 인상을 받았습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>순천향대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 대전 하태솔
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_hts.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48232680')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>규칙적으로 수능 시간에 맞춰 공부할 수 있는 습관을 들일 수 있어서 좋았습니다.</strong> 바자관의 장점은 어느 정도 강제성 확보라고 생각합니다. 담임선생님들의 꾸준한 관리 덕분에 수험생활 동안 마음이 풀어지지 않을 수 있어서 좋았습니다. 또한, 매달 응시하는 모의고사를 통해 실전에서의 시간 관리를 연습할 수 있어 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2023학년도</span><br>
                                    <strong>을지대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 대전 김우찬
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_kwc.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/34135695')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>담임선생님께서 각종 입시 상담은 물론 조언과 격려를 많이 해주셔서 힘든 수험생활 동안 지치지 않고 공부할 수 있었습니다.</strong> 러셀 대전의 장점은 담임선생님의 꼼꼼한 관리와 체계적인 학원 시스템입니다. 바른공부 자습전용관 앞 상담부스에서 수시로 상담하며 철저한 관리를 받을 수 있어서 좋았습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>고려대학교(세종)<br>
                                        약학과 합격</strong>
                                </dt>
                                <dd>러셀 대전 나호찬
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_nhc.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49682508')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>바자관의 면학분위기와 시설이 가장 좋았던 것 같습니다.</strong> 공부할 때 환경이 정말 중요하다고 생각하는데 열심히 하는 친구들이 주변에 많아서 자연스럽게 스스로 더 열심히 할 수 있게 동기부여되었고, 시설이 좋아서 공부할 때 집중을 잘할 수 있었습니다. 또한 매달 보는 모의고사가 실전 연습에 도움이 많이 되었습니다.

                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 대전 학원 재학생 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>부산대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 센텀 최서경
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_csk.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48252940')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">수능 시간표에 맞춘 바자관 표준 시간표가 규칙적인 생활을 할 수 있게 해줘 공부시간 확보에 큰 도움이 되었습니다.
                            </span><br>
                            바자관의 리듬에 맞는 규칙적인 생활을 통해 많은 공부시간을 확보할 수 있었습니다. 또한 단과 수업을 들은 후 바자관에서 자습을 할 수 있는 효과적인 시스템을 구축하고 있어 시간을 절약하고, 학습의 효율을 높일 수 있었습니다. 

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>부산대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 센텀 허윤행</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_hyh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48253022')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">탁 트인 개방형 구조로 공부에 방해되는 행동들을 스스로 자제할 수 있었으며 학습 동선의 최소화로 인하여 공부시간을 충분히 확보할 수 있었습니다.
                            </span><br>
                            바자관은 개방형 구조로 되어있어 공부하는 도중에 약간 집중력이 떨어질 때 주변에서 열심히 공부하는 친구들을 보며 자극을 받아 다시 공부에 집중할 수 있었습니다. 또한 자습 공간과 수업 공간 그리고 식사 공간 간의 동선이 최소화되어 시간 낭비 없이 공부를 할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>부산대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 센텀 이호준</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_lhj.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48252983')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">최고의 면학분위기와 실전 모의고사 등이 수험생활에서 큰 도움이 되었습니다.

                            </span><br>
                            저는 독서실, 스터디카페, 학교 등 많은 장소에서 자습을 해보았지만, 바자관의 분위기가 수능 시험장과 가장 흡사하였고 수능장에서도 분위기에 압도당하지 않고 익숙한 느낌을 가지고 시험을 칠 수 있었습니다. 실전 모의고사를 통해서 공부에 대한 중간 점검을 할 수 있어서 좋았습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>서울대학교<br>
                                        경영학과 합격</strong>
                                </dt>
                                <dd>러셀 센텀 정일인</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_jii.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48252904')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">러셀 학습 플래너와 담임선생님의 피드백이 입시 전반에 가장 큰 도움이 되었다고 생각합니다. 

                            </span><br>
                            윈터스쿨 기간 동안 러셀 학습 플래너를 작성하면서 스터디 플래너를 작성하는 습관을 만들 수 있었고, 과목별로 균형 있게 공부하며 평소 좋아하지 않았던 과목도 점차 공부시간을 늘려나갈 수 있었습니다. 또한 담임선생님에게 점검을 받으면서 부족한 부분들을 채워나갈 수 있었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 센텀학원 재학생 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>영남대<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀 평촌 이진석
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ljs.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/34250708')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">“학생을 가장 우선적으로 생각하는 러셀”
                            </span><br>
                            훌륭한 선생님들의 커리큘럼과 1:1 질의응답 시스템이 좋았습니다. 철저한 출결 관리 시스템이 마음에 들었고 외부의 방해 요소를 차단해 주어 공부에만 몰입할 수 있는 러셀을 선택하게 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>고려대<br>
                                        행정학과 합격</strong>
                                </dt>
                                <dd>러셀 평촌 이정원</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ljw.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/34250844')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">“지속적으로 관리를 받을 수 있다는 부분이 좋았습니다.”</span><br>
                            러셀의 장점은 스스로 안주하지 않고 끊임없이 나아가게 한다는 것입니다. 특히 수시 접수를 끝낸 고3들은 스스로 풀어지기 굉장히 쉬운데, 수시 접수 이후에도 러셀을 다니면서 풀어지지 않도록 다잡을 수 있었습니다. 

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>서울대<br>
                                        건축학과 합격</strong>
                                </dt>
                                <dd>러셀 평촌 이지흔</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ljh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/34254932')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">“러셀 평촌에는 최상위권 학생들이 모여 있어, 면학분위기가 우수했습니다.”
                            </span><br>
                            모두가 열심히 공부하는 면학분위기가 조성되어 있어, 공부가 안될 때도 잘 조성된 면학분위기 속에서 다시 공부에 집중할 수 있었습니다. 그리고 학교 방과 후나 주말에는 학원으로 등원하는 것이 귀찮고 힘들 때도 있었지만 담임선생님의 체계적인 출결 관리 덕분에 성실하게 등원할 수 있었던 것 같습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <strong>연세대<br>
                                        간호학과 합격</strong>
                                </dt>
                                <dd>러셀 평촌 이채연</dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_lcy.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/34255455')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <span class="tit">“개방형 구조로 되어 있어 긴장감을 가진 채로 공부할 수 있었습니다.”
                            </span><br>
                            러셀의 장점은 면학분위기입니다. 깔끔하게 정돈된 바자관에서 적당한 긴장감을 가진 채로 공부하여 공부 효율을 높일 수 있었기 때문입니다.

                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀 평촌학원 재학생 재원생 후기 중 일부 발췌
            </p>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <ul class="review-list">
                <li data-aos="flip-left">
                    <div class="i-box">
                        <p class="info-txt">
                            <span class="year">2025</span> <br>
                            <strong>가톨릭 의예과 합격</strong>
                            <span class="name">러셀 대구 HS1반 장서윤</span>
                            <b class="sub">재원기간 24년 5월~수능까지</b>
                        </p>
                        <div>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_jsy.jpg" alt="">
                            <a href="javascript:void(0)" onclick="alert('추후 공개 예정입니다.')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt="" /></a>
                        </div>
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
                                <th><span>2025 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                        </tbody>
                    </table>
                </li>
                <li data-aos="flip-left">
                    <div class="i-box">
                        <p class="info-txt">
                            <span class="year">2025</span> <br>
                            <strong>인하대 의예과 합격</strong>
                            <span class="name">러셀 대구 HS1반 지예손</span>
                            <b class="sub">재원기간 24년 3월~수능까지</b>
                        </p>
                        <div>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_jys.jpg" alt="">
                            <a href="javascript:void(0)" onclick="alert('추후 공개 예정입니다.')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt="" /></a>
                        </div>
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
                                <th><span>2025 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                            </tr>
                        </tbody>
                    </table>
                </li>
                <li data-aos="flip-left">
                    <div class="i-box">
                        <p class="info-txt">
                            <span class="year">2025</span> <br>
                            <strong>경북대 의예과 합격</strong>
                            <span class="name">러셀 대구 HS1반 한승윤</span>
                            <b class="sub">재원기간 24년 1월~수능까지</b>
                        </p>
                        <div>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_hsy.jpg" alt="">
                            <a href="javascript:void(0)" onclick="alert('추후 공개 예정입니다.')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt="" /></a>
                        </div>
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
                                <th><span>2025 수능</span></th>
                                <td><span>2</span></td>
                                <td><span>3</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                        </tbody>
                    </table>
                </li>
                <li data-aos="flip-left">
                    <div class="i-box">
                        <p class="info-txt">
                            <span class="year">2025</span> <br>
                            <strong>경북대 의예과 합격</strong>
                            <span class="name">러셀 대구 HS2반 이효섭</span>
                            <b class="sub">재원기간 24년 3월~수능까지</b>
                        </p>
                        <div>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_lhs.jpg" alt="">
                            <a href="javascript:void(0)" onclick="alert('추후 공개 예정입니다.')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt="" /></a>
                        </div>
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
                                <th><span>2025 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>2</span></td>
                            </tr>
                        </tbody>
                    </table>
                </li>
                <li data-aos="flip-left">
                    <div class="i-box">
                        <p class="info-txt">
                            <span class="year">2025</span> <br>
                            <strong>영남대 약학과 합격</strong>
                            <span class="name">러셀 대구 HS2반 권민재</span>
                            <b class="sub">재원기간 24년 1월~수능까지</b>
                        </p>
                        <div>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_kmj.jpg" alt="">
                            <a href="javascript:void(0)" onclick="alert('추후 공개 예정입니다.')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt="" /></a>
                        </div>
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
                                <th><span>2025 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                                <td><span>1</span></td>
                                <td><span>2</span></td>
                            </tr>
                        </tbody>
                    </table>
                </li>
                <li data-aos="flip-left">
                    <div class="i-box">
                        <p class="info-txt">
                            <span class="year">2025</span> <br>
                            <strong>고려대 경영학과 합격</strong>
                            <span class="name">러셀 대구 HS1반 정효섭</span>
                            <b class="sub">재원기간 24년 3월~수능까지</b>
                        </p>
                        <div>
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_jhs.jpg" alt="">
                            <a href="javascript:void(0)" onclick="alert('추후 공개 예정입니다.')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt="" /></a>
                        </div>
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
                                <th><span>2025 수능</span></th>
                                <td><span>1</span></td>
                                <td><span>4</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                                <td><span>1</span></td>
                            </tr>
                        </tbody>
                    </table>
                </li>
            </ul>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        치의학학석사통합과정<br>
                                         합격</strong>
                                </dt>
                                <dd>러셀CORE 원주 윤은서
                                </dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_yes.jpg" alt=""></div>
                        </div>
                        <p>
                            바른공부 자습전용관의 장점은 <strong>절대적인 학습시간이 확보</strong>된다는 점입니다. 지켜야 하는 의무자습 시간이 있기 때문에 핑계 대지 않고 <strong>매일매일 일정 시간 이상을 공부할 수 있었고, 쉬는 시간과 자습시간이 철저하게 분리되어 있기 때문에 해이해지는 일 없이 꾸준한 공부</strong>를 할 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        물리천문학부 합격</strong>
                                </dt>
                                <dd>러셀CORE 원주 이민성</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_lms.jpg" alt=""></div>
                        </div>
                        <p>
                            <strong>입시 전문 담임선생님과의 1:1 상담을 통해 정확한 입시 정보를 얻을 수</strong> 있어, 시간이 부족한 수험생 입장에서 많은 도움이 되었습니다. <br>
                            상담을 통해 제가 몰랐던 전형들에 대해서도 알게 되어서 <strong>원서를 쓸 때에도 저에게 유리한 전형으로 선택하여 접수할 수 있었습니다.</strong>

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>강원대학교<br>
                                        수의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 원주 윤지혜</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_yjh.jpg" alt=""></div>
                        </div>
                        <p>
                            바자관, 식당, 강의실 등이 모두 한 건물에 위치해 있어서 <strong>동선을 최소화하여 낭비되는 시간 없이 공부에만 집중</strong>할 수 있었습니다.<br>
                            또, <strong>수능 시간표와 동일하게 표준 시간표가 짜여 있어 실전 경험</strong>을 쌓기 좋았고, 인강 외 다른 사이트는 차단한 와이파이가 있어 학습에만 집중할 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>연세대학교<br>
                                        건축공학과 합격</strong>
                                </dt>
                                <dd>러셀CORE 원주 심태엽</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_sty.jpg" alt=""></div>
                        </div>
                        <p>
                            바자관에서 특히 좋았던 것은 <strong>개방형 구조</strong>라는 점이었습니다. 공부를 하다가 집중력이 흐트러졌을 때 주변 친구들을 보며 자극을 받아 다시 공부에 집중할 수 있었습니다.<br>
                            매주 진행되는 <strong>모의고사도 큰 도움이 되었습니다.  한 주 동안 공부한 내용을 점검할 수 있었고 부족한 부분을 다시 채울 수 있었습니다. </strong>
                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀CORE 원주학원 재학생 재원생 후기 중 일부 발췌
            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl class="full">
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>울산대학교 의예과 합격
                                    </strong>
                                </dt>
                                <dd>러셀CORE 창원 송연후
                                </dd>
                            </dl>
                        </div>
                        <p>
                            <span class="tit">러셀CORE 창원은<br>대입 준비에 최적화된 장소입니다.
                                </span><br>
                                N수생과 같이 면학분위기가 조성된 환경에서 공부할 수 있어 또래 친구들과 있을 때보다 더욱 집중할 수 있었습니다. 또한 학생만을 생각하는 담임선생님, 수능 시간에 맞춰진 학원 시간표, 다양한 모의고사 등 수능 준비를 러셀CORE 창원에서 다 할 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl class="full">
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>부산대학교 의예과 합격
                                    </strong>
                                </dt>
                                <dd>러셀CORE 창원 장호준
                                </dd>
                            </dl>
                        </div>
                        <p>
                            <span class="tit">러셀CORE 창원에서 담임선생님의 도움으로 원하는 학교를 선택해서 갈 수 있었습니다.
                            </span><br>
                            담임선생님께서 고3 수험생 생활에 많은 도움을 주셨습니다. 3학년 1학기 시작 전 생활기록부를 점검하여 지금 시점에서 합격을 확실하게 준비할 수 있는 대학 리스트를 결정해 주셔서 3학년 내신 준비에 부담을 덜고 수능 공부에 시간을 더 투자할 수 있었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl class="full">
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>동국대학교 의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 창원 김지원
                                </dd>
                            </dl>
                        </div>
                        <p>
                            <span class="tit">러셀CORE 창원에서 공부하면서 고3도 현역으로 원하는 학교에 갈 수 있다는 확신을 얻었습니다.
                            </span><br>
                            고2까지 내신 공부에 집중하여 수능 공부를 어떻게 준비해야 할지 막막한 상황에서 러셀CORE 창원 담임선생님과 상담하게 되었고 담임선생님이 학습 계획을 월별, 주간별, 일별 순으로 나눠 구체적으로 잡아주시고 러셀 학습 플래너 검사를 통해서 피드백을 해주셨습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>고려대학교 경제학부 합격

                                    </strong>
                                </dt>
                                <dd>러셀CORE 창원 백서윤
                                </dd>
                            </dl>
                        </div>
                        <p>
                            <span class="tit">학교에서 진행되는 모의고사 이외에도 다양한 모의고사를 풀어볼 수 있어서 실전 대비에 효과적이었습니다.
                            </span><br>
                            교육청 모의고사, 평가원 모의고사도 중요하지만 학원에서 진행되는 재원생 전용 콘텐츠를 통해 혼자서 모의고사 풀 때 연습할 수 없는 실전 대비 연습에 더욱 효율적으로 준비할 수 있었습니다.
                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀CORE 창원학원 재학생 재원생 후기 중 일부 발췌

            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>연세대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 전주 김경환
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_kkh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49173559')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>멀리 가지 않아도 대치동의 현장강의를 전주에서 실시간으로 들을 수 있다는 점이 좋았습니다.</strong> 강의뿐 아니라 실제 현장에서 사용하는 자료들도 제공받을 수 있었고, 수강생들이 함께 테스트를 보는 시간이 있어 긴장감도 유지할 수 있었습니다. 또한 테스트 종료 후 실시간으로 채점되는 성적표를 통해 나의 수준을 바로 확인할 수 있어 학습에 큰 도움이 되었습니다

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>중앙대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 전주 김민준
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_kmj.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48138941')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            <strong>바자관의 장점은 넓은 책상과 수납공간입니다. 실제 모의고사 2개를 펼쳐놔도 되는 크기의 책상 덕분에 쾌적하게 공부할 수 있었습니다.</strong>  또한 담임선생님께서 항상 매의 눈으로 관찰하시고 지도를 해주시기에 불필요한 수면시간을 줄일 수 있었고,  모든 선생님께서 친절한 상담과 응원을 해주신 덕분에 재밌는 학원생활을 보낼 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>경희대학교<br>
                                        의예과 합격</strong>
                                </dt>
                                <dd>러셀CORE 전주 서현
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_sh.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48138951')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            저는 <strong>러셀CORE 전주를 통해 수능 공부를 하는 방법을 익히며 하루 13시간의 학습 루틴을 잡을 수 있었습니다.</strong>  또한 지방이기 때문에 항상 수도권 친구들과는 다른 출발선에서 시작할 수밖에 없다고 생각했는데, 러셀에서는 수능 모의체험 및 메가X대성 더 프리미엄 모의고사 등 실전 경험을 쌓을 기회를 제공해 주기에 현장과 다름없는 큰 혜택을 누릴 수 있어 좋았습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        컴퓨터공학과 합격</strong>
                                </dt>
                                <dd>러셀CORE 전주 임태빈
                                </dd>
                            </dl>
                            <div>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_ltb.jpg" alt="">
                                <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49515983')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_play.png" alt=""></a>
                            </div>
                        </div>
                        <p>
                            러셀CORE 전주의 바자관에는 넓은 책상과 책꽂이, 공기 정화 식물과 편한 의자 등 좋은 시설이 마련되어있습니다. <strong>쾌적한 환경 덕분인지 온전히 공부에만 집중할 수 있었고, 규칙적인 등하원 시간을 지키며 수능시간표에 맞춘 생활을 하다보니 수험생활의 틀을 잡아가는 데도 큰 도움을 받았습니다.</strong>
                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀CORE 전주학원 재원생 후기 중 일부 발췌

            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
        
        <div class="inner">
            <ul class="review-slide type02">
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>충북대학교<br>
                                        의예과 수석 합격</strong>
                                </dt>
                                <dd>러셀CORE 청주 김하민
                                </dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_khm.jpg" alt=""></div>
                        </div>
                        <p>
                            저는 <strong>쾌적한 환경</strong>이 가장 좋았습니다. 넓은 책상과 개인 책장이 있어 편했고 히터나 에어컨도 신경 쓰지 않도록 잘 되어 있어서 좋았습니다. <strong>개방형 구조</strong>이다 보니 주위 친구들을 보며 <strong>긍정적인 자극을 받을 수 있었고, 저 또한 더 열심히 공부에 몰입</strong>하게 되었습니다.
                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>서울대학교<br>
                                        경영학과 합격</strong>
                                </dt>
                                <dd>러셀CORE 청주 김하진</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_khj.jpg" alt=""></div>
                        </div>
                        <p>
                            강의실이 바자관 바로 위층에 위치하고 있어서 거리상 시간상 손실이 없었던 것이 가장 좋았습니다. 대치동 LIVE 수업을 학원에서 실시간으로 수강하며, <strong>현강 자료도 똑같이 제공</strong>받을 수 있었습니다. LIVE 수업을 통해 시간과 체력을 많이 아끼고, <strong>그만큼 공부에 더 투자할 수 있어 좋은 결과를 얻을 수 있었다고 생각합니다. </strong>

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>연세대학교<br>
                                        철학과 합격</strong>
                                </dt>
                                <dd>러셀CORE 청주 김화랑</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_khr.jpg" alt=""></div>
                        </div>
                        <p>
                            저의 수험생활에는 <strong>러셀 담임선생님</strong>께서 큰 도움이 되어 주셨습니다. 담임선생님께서 상담을 자주 진행해 주셔서 보완할 점이나 주의해야 할 점을 찾으며 <strong>학습방향을 설정해 나가는 것이 수월했고</strong>, 상담을 할 때 학습에 대한 이야기뿐만 아니라 <strong>동기부여</strong>도 같이 해 주셨기에 수험생활에 힘이 될 수 있었습니다.

                        </p>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <div>
                        <div>
                            <dl>
                                <dt>
                                    <span>2024학년도</span><br>
                                    <strong>덕성여자대학교<br>
                                        약학과 합격</strong>
                                </dt>
                                <dd>러셀CORE 청주 박예은</dd>
                            </dl>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/stu_pye.png" alt=""></div>
                        </div>
                        <p>
                            러셀에서 볼 수 있는 <strong>실전 모의고사</strong>가 큰 도움이 되었습니다. 저에게 꼭 필요한 필요한 모의고사를 다 같이 모여 응시하면서 <strong>수능 분위기를 미리 체험</strong>해 볼 수 있었고, <strong>퀄리티 높은 문제들을 자주 접할 수 있었습니다.</strong> 모의고사를 본 후에는 러셀 총평노트를 작성하며 스스로를 돌아보았고, <strong>저의 약점을 파악해 보강</strong>할 수 있었습니다.

                        </p>
                    </div>
                </li>
            </ul>
            <p class="r-txt">* 러셀CORE 청주 재원생 후기 중 일부 발췌

            </p>
            <a href="<%=result_url%>" class="btn-black"><%=result_btn%></a>
        </div>
        <% end if %>
    </div>
</div>