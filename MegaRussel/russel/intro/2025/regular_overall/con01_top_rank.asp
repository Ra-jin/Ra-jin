<div class="cont js-cont <%=campusName%>">
    <% If sCampusCode = "CD0349" Then '울산 %>
    <div class="cont01">
        <h3 data-aos="fade-down" data-aos-offset="100"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont01_tit.png" alt="최상위권이 집결하는 러셀에서 목표하는 최상위권 대입성공이 가능합니다."></h3>
        <div class="inner">
            <h4 data-aos="flip-down" data-aos-duration="500" style="margin-top: 115px;"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/cont01_tit02.png" alt=""></h4>
            <div class="perfect-list">
                <ul>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_01.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_02.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_03.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_04.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_05.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_06.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_07.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_08.jpg" alt=""></li>
                    <li><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_09.jpg" alt=""></li>
                    <li>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_10.jpg" alt="2022">
                        <span class="flag-gold"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/pass_label.png" alt="전국유일"></span>
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
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont02_tit.png" alt="최근 5년, 가장 어려운 수능에서 역대 가장 탁월한 입결을 달성하였습니다."></h3>
    <% If sCampusCode = "CD0349" Then '울산 %>
        <div class="inner">
            <!-- 입결 카운팅 -->
            <ul class="achieve-box">
                <li>
                    <dl>
                        <dt>메이저 의대</dt>
                        <dd><strong class="counter" data-count="2">0</strong><span>명</span></dd>
                    </dl>
                    <!-- <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/top_label.png" alt="" /></span> -->
                </li>
                <li>
                    <dl>
                        <dt>전국 의예과
                        </dt>
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
                    <!-- <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/top_label.png" alt="" /></span> -->
                </li>
                <li>
                    <dl>
                        <dt>KAIST</dt>
                        <dd><strong class="counter" data-count="2">0</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <!-- //입결 카운팅 -->
            <div class="data-wrap">
                <div class="info-stxt">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2024/winter/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-03-10｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다. <br>
                        ※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함) <br>
                        ※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과
                    </div>
                </div> 
            </div>
        </div>
    <% Else %>
        <% If sCampusCode = "CD0250" Then '부천 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont02_stit.png" alt="5년 연속 인천부천 지역 최상위권 입결 1위, 러셀 부천" /></p>
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
                                2025학년도
                                <br>
                                서울대 합격
                            </p>
                            <p class="stu-num"><strong class="fz50">14</strong><span>명</span></p>
                        </li>
                        <li>
                            <p class="stu-tit">
                                2025학년도 <br>
                                연고대 합격
                            </p>
                            <p class="stu-num"><strong class="fz50">50</strong><span>명</span></p>
                        </li>
                    </ul>
                </div>
                <div class="info-stxt" style="position:absolute; bottom: 106px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_info.png" alt="i" /></i></span>
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
                <div class="style02-inner">
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
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-02-28 기준<br>
                        ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준<br>
                        (단과 수강생 제외/복수대학 합격자 포함)<br>
                        ※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예
                                
                    </div>
                </div>        
            </div>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <ul class="review-report">
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">성균관대 의예과 합격</p>
                            <p class="stu-info">
                                러셀 대구 HS반 이정빈
                                <span>재원기간 24년 7월~수능까지</span>
                            </p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 297점</strong></p>
                                <p class="before">2024학년도 271점</p>
                            </div>
                            <p class="up">백분위 <strong>89.5% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">성균관대 의예과 합격</p>
                            <p class="stu-info">러셀 대구 HS반 서혜리 <span>재원기간 24년 6월~수능까지</span></p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 298점</strong></p>
                                <p class="before">2024학년도 288점</p>
                            </div>
                            <p class="up">백분위 <strong>83.3% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">계명대 의예과 합격</p>
                            <p class="stu-info">러셀 대구 서의치대반 정은아 <span>재원기간 24년 3월~수능까지</span></p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 293.5점</strong></p>
                                <p class="before">2024학년도 244점</p>
                            </div>
                            <p class="up">백분위 <strong>88.4% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>2</td>
                                    <td>4</td>
                                    <td>2</td>
                                    <td>4</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">고려대 의예과 합격</p>
                            <p class="stu-info">러셀 대구 서의치대반 송지안 <span>재원기간 24년 2월~수능까지</span></p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 297.5점</strong></p>
                                <p class="before">2024학년도 289점</p>
                            </div>
                            <p class="up">백분위 <strong>77.3% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>2</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">경북대 약학과 합격</p>
                            <p class="stu-info">러셀 대구 연고대반 홍승주 <span>재원기간 24년 1월~수능까지
                            </span></p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 292.5점</strong></p>
                                <p class="before">2024학년도 246.5점</p>
                            </div>
                            <p class="up">백분위 <strong>86% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>3</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>3</td>
                                    <td>5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">경희대 한의예과 합격</p>
                            <p class="stu-info">러셀 대구 서의치대반 유병철
                            <span>재원기간 24년 2월~수능까지</span></p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 287.5점</strong></p>
                                <p class="before">2024학년도 257.5점</p>
                            </div>
                            <p class="up">백분위 <strong>70.6% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>4</td>
                                    <td>1</td>
                                    <td>3</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <!-- style02 -->
            <div class="result-box style02">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont02_stit02.png" alt="러셀CORE 광주 2025학년도 합격생 현황" /></p>
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
                <div class="info-stxt" style="position:absolute; bottom: 50px; right:100px;">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular_overall/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        * 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2025.02.27 기준) <br>
                        (복수 대학 합격자 포함/단과 수강생 제외)<br>
                        * 25학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
                        * 메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준

                    </div>
                </div>        
            </div>
            
            <ul class="review-report">
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">러셀CORE 광주 HS 종합반 <span>윤OO</span></p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 297.5점</strong></p>
                                <p class="before">2024학년도 284.5점</p>
                            </div>
                            <p class="up">백분위 <strong>83.9% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">러셀CORE 광주 서의치대 종합반 <span>공OO</span>
                            </p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 282점</strong></p>
                                <p class="before">2024학년도 204.5점</p>
                            </div>
                            <p class="up">백분위 <strong>81.2% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>5</td>
                                    <td>4</td>
                                    <td>3</td>
                                    <td>4</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">러셀CORE 광주 블루 종합반 <span>정OO</span>
                            </p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 267점</strong></p>
                                <p class="before">2024학년도 185.5점</p>
                            </div>
                            <p class="up">백분위 <strong>71.2% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>4</td>
                                    <td>2</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>4</td>
                                    <td>3</td>
                                    <td>3</td>
                                    <td>5</td>
                                    <td>5</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
                <li data-aos="zoom-in-up">
                    <dl>
                        <dt>
                            <div>2025</div>
                            <p class="name">러셀CORE 광주 HS 종합반 <span>홍OO</span>
                            </p>
                        </dt>
                        <dd>
                            <div>
                                <p class="after"><strong>2025학년도 285점</strong></p>
                                <p class="before">2024학년도 253점</p>
                            </div>
                            <p class="up">백분위 <strong>68.1% 상승</strong></p>
                        </dd>
                    </dl>
                    <div class="review-box">
                        <table class="tbl-01 stu-tbl">
                            <colgroup>
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                                <col style="width:auto;">
                            </colgroup>
                            <thead>
                                <tr class="low">
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
                                    <th>2025 수능</th>
                                    <td>2</td>
                                    <td>1</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>1</td>
                                </tr>
                                <tr>
                                    <th>2024 수능</th>
                                    <td>4</td>
                                    <td>1</td>
                                    <td>2</td>
                                    <td>2</td>
                                    <td>3</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </li>
            </ul>
        </div>
        <% End If %>
    <% End If %>
        <% If sCampusCode <> "CD0349" Then '울산 제외 %>
        <a href="<%=pass_url%>" class="btn-black"><%=pass_btn%></a>
        <% End If %>
    </div>
    <div class="cont03">
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_overall/cont03_tit.png" alt="러셀에서 만들어낸 놀라운 결과, N수 정규반 재원생 선배들이 증명합니다."></h3>
        <% If sCampusCode = "CD0349" Then '울산 %>
        <div class="inner">
            <div class="swiper-container review-slide">
                <ul class="swiper-wrapper">
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49909017')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_ket.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 인문계열 합격</p>
                                </dt>
                                <dd>
                                    러셀 강남ㅣ김은태
                                </dd>
                            </dl>
                            <p>
                                “저는 입학할 때에 서울대/의치대 반으로 입학했습니다. 처음에는 HS반으로 <strong>승반하고 장학혜택을 받기 위해서, 승반하고 나서는 강반 되지 않고 제 자리를 유지해 나가기 위해서</strong> 더욱 공부를 열심히 할 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/52179794')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_pjm_v2.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 경영학과 합격</p>
                                </dt>
                                <dd>
                                    러셀 대치ㅣ박정민
                                </dd>
                            </dl>
                            <p>
                                “두 번의 평가원 시험만으로는 수능을 대비하기가 조금 부족하다고 생각했는데, <strong>메가X대성 더 프리미엄 모의고사를 매달 치르면서 실전 감각을 키우고 실력 점검</strong>도 할 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/52179428')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_lyj.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 언론정보학과 합격</p>
                                </dt>
                                <dd>
                                    러셀 대치ㅣ이연주
                                </dd>
                            </dl>
                            <p>
                                “바자관 담임선생님이 <strong>항상 저의 상태를 확인해 주시고, 저의 학습 상황을 봐주셔서 수험 기간 중 의지가 많이 됐고,</strong> 제가 고민인 부분들에 대해 말씀드리면 언제나 잘 들어주시고 그에 맞는 피드백을 주셔서 실질적인 도움도 많이 됐습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49403069')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_lsl.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>이화여자대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀 목동ㅣ임세린
                                </dd>
                            </dl>
                            <p>
                                “<strong>원하는 단과 수업을 수강할 수 있고, 한 건물 내에 있어 이동시간이 많이 필요하지 않아 제가 원하는 만큼의 충분한 학습</strong>을 할 수 있었습니다. 표준 시간표 덕분에 수능이 가까워질 때, 수능 당일처럼 모의고사를 풀 수 있었던 것도 좋았습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48573125')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_lke.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>강원대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀 부천ㅣ이가은
                                </dd>
                            </dl>
                            <p>
                                “<strong>메가X대성 더 프리미엄 모의고사를 비롯한 여러 실전 모의고사를
                                    주기적으로 실제 시간에 맞춰 푸는 연습</strong>을 했기 때문에 6모, 9모는 물론 수능까지 감을 잃지 않을 수 있었습니다. 또한 시험을 보고 난 후 <strong>담임선생님과의 빠른 피드백을 통해 문제들을 빠르게 보완</strong>할 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/52010239')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_bhe.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 자유전공학부 합격</p>
                                </dt>
                                <dd>
                                    러셀 분당ㅣ방하은
                                </dd>
                            </dl>
                            <p>
                                “<strong>공부 외의 시설까지 쾌적하고 잘 갖춰져 있어 공부에 방해받지 않고 집중</strong>할 수 있었습니다. 식당이 있는 점도 규칙적인 공부 루틴을 세워 실행하는 데 있어서 큰 도움이 되었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/50089672')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_bjm.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 첨단융합학부 합격</p>
                                </dt>
                                <dd>
                                    러셀 영통ㅣ방준모
                                </dd>
                            </dl>
                            <p>
                                “<strong>바른공부 자습전용관의 장점은 수능 몇 주 전부터 수능 시간표대로 타종이 울린다는 것입니다.</strong> 이를 통해 각 과목에 맞춰 과목별 공부뿐만 아니라 모의고사 <strong>실전시간 감각을 기르기에도 굉장히 효율적이라고 생각</strong>합니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49515163')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_kkr.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 약학과 합격</p>
                                </dt>
                                <dd>
                                    러셀 중계ㅣ김규리
                                </dd>
                            </dl>
                            <p>
                                “<strong>제가 직접 스케줄을 짠 뒤에 그 스케줄을 잘 이행할 수 있도록 담임선생님들께서 매시간 출석 체크</strong>를 해 주십니다. 또한 바자관의 시간표는 수능과 유사하게 짜여 있어 <strong>수능 시간표에 제 바이오리듬을 맞출 수 있고, 하반기에 실전 모의고사를 푸는 연습을 하기에도 용이</strong>하였습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/51938468')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_whw.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 인문계열 합격</p>
                                </dt>
                                <dd>
                                    러셀 평촌ㅣ왕휘웅
                                </dd>
                            </dl>
                            <p>
                                “여러 시험들을 보면서 <strong>담임선생님이 저의 장단점을 면밀히 파악해 주신 후 학습계획을 수립하는 데에 근거를 가지고 조언</strong>을 주셔서 공부 방향을 잡는 것이 수월했고, <strong>공감을 바탕으로 멘탈 관리</strong>를 해 주셔서 무사히 시험장까지 최고의 멘탈 상태로 입실할 수 있었던 것 같습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/49741488')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_liw.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 지리학과 합격</p>
                                </dt>
                                <dd>
                                    러셀 대구ㅣ이인우
                                </dd>
                            </dl>
                            <p>
                                “<strong>바자관의 장점은 주변의 학생들이 모두 공부에 집중하고 있기 때문에 그 분위기에 따라 나 역시 공부에 집중</strong>을 하게 됩니다. 또한 공기청정기와 숯 가습기 등을 통해 쾌적한 환경을 조성해 주어 공부를 하면서 불편한 점이 없습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/51651760')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_ljm.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 경제학부 합격</p>
                                </dt>
                                <dd>
                                    러셀 센텀ㅣ이준명
                                </dd>
                            </dl>
                            <p>
                                “<strong>러셀 시스템의 장점은 한 건물에서 식사와 강의, 자습을 다 할 수 있다는 것</strong>입니다. 밥 먹는 시간을 아낄 수 있었고, 마지막 파이널에는 실전과 거의 동일한 분위기 속에서 모의고사를 칠 수 있어서 수능 당일 긴장을 덜 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/50967610')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_khw.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 인문계열 합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 광주ㅣ김효원
                                </dd>
                            </dl>
                            <p>
                                “<strong>담임선생님께서 학습에 대한 고민이나 어려움이 생길 때 상담을 통해 좋은 방향으로 이끌어 주셨습니다.</strong> 또한 학습에 대한 의지를 잃지 않도록 용기를 심어주고 북돋아 주셨으며 유대감이 쌓임으로써, 마음에 안정이 되었다고 생각합니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48592152')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_yhs.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>가톨릭대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 대전ㅣ윤훈석
                                </dd>
                            </dl>
                            <p>
                                “다른 학원들과 달리 <strong>통유리 창 덕분에 본인의 호실 외에 다른 방도 볼 수 있어 답답하지 않습니다.</strong> 반면 공부할 때는 수납공간과 책상의 아크릴 격벽이 <strong>본인의 공간을 확실히 구분해 줘서 방해받지 않고 학습에 집중</strong>할 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48184708')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_ljw.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>연세대학교(미래) 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 원주ㅣ이지우
                                </dd>
                            </dl>
                            <p>
                                “서울로 학원을 다닐 땐 왕복에 4시간 가까이 걸리는 데다 체력적인 소모도 심했지만, 러셀에서는 국영수는 물론이고 선택과목도 강의를 해 주기에 <strong>이동에 시간을 소모할 필요 없이 자습시간을 확보할 수 있고 동시에 좋은 강의를 들을 수 있다는 점이 큰 도움</strong>이 되었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48138912')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_sjw.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>고려대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 전주ㅣ서진원
                                </dd>
                            </dl>
                            <p>
                                “<strong>수능 시간표대로 공부하고, 목요일마다 모의고사를 실시하여 수능 리듬에 최적화되게끔 반복 연습했던 부분은 실제로 수능을 더욱더 익숙하게 느끼는 데 큰 도움</strong>을 주었습니다. 또한 개방적인 분위기도 수능 시험 도중 집중력을 잃고 부정적인 생각들이 밀려올 때마다 빠르게 다시 집중할 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/52000696')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_csy.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>인제대학교 약학과 합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 창원ㅣ최서윤
                                </dd>
                            </dl>
                            <p>
                                “<strong>담임선생님께서 주기적으로 상담을 진행</strong>해 주셨는데, 멘탈을 다잡는데 많은 도움이 됐던 것 같습니다. 혼자 공부할 때는 항상 불안함을 안고 가는 기분이었는데, <strong>선생님께서 해주신 조언과 격려 덕분에 공부에 더 집중</strong>할 수 있었습니다. 플래너 검사도 과목 비중이나 커리큘럼을 정하는 데 많은 도움이 됐습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/51834051')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_jhj.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>덕성여자대학교 약학과 합격</p>
                                </dt>
                                <dd>
                                    러셀CORE 청주ㅣ조현지
                                </dd>
                            </dl>
                            <p>
                                “인강보다는 현강으로 듣는 것이 더 집중이 잘되는 편인데, <strong>매번 서울까지 올라가지 않더라도 집 근처에서 바로 수업을 들을 수 있다는 것이 매우 좋았습니다.</strong> 강의실 내 화면이 크다 보니, 온라인 실시간이어도 현장에서 듣는 것 같기도 했습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/47959955')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_smj_v2.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>연세대학교 의예과 합격</p>
                                </dt>
                                <dd>
                                    남학생 전문관 러셀 기숙ㅣ심민준

                                </dd>
                            </dl>
                            <p>
                                “<strong>실전 모의고사가 가장 마음에 들었습니다.</strong> 문제의 퀄리티 자체도 준수하고, 사설 모의고사의 경우 실제 평가원 난이도보다 어렵게 출제되는 경우가 있는데 <strong>실전 모의고사는 적당한 난이도로 출제되어 제 실력을 확인할 수 있는 좋은 모의고사</strong>였습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/48592114')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_lyl.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>연세대학교 행정학과 합격</p>
                                </dt>
                                <dd>
                                    최상위권 여학생 의대전문관 러셀 기숙ㅣ이유림

                                </dd>
                            </dl>
                            <p>
                                “<strong>러셀 기숙학원은 여학생과 남학생이 분리되어 있어 더더욱 남의 시선에 구애받지 않고 공부에만 집중</strong>할 수 있어서 좋았던 것 같습니다. 기숙사 생활이 처음이었는데, <strong>넓은 숙소 공간과 청결한 시설 덕에 집과 다를 바 없어 최상의 컨디션을 유지</strong>할 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                    <li class="swiper-slide">
                        <div>
                            <a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/47815572')"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/stu_cms.jpg" alt="" /></a>
                            <dl>
                                <dt>
                                    <div>2024학년도</div>
                                    <p>서울대학교 사회학과 합격</p>
                                </dt>
                                <dd>
                                    서연고&middot;의치대 전문관 러셀 기숙ㅣ최문성
                                </dd>
                            </dl>
                            <p>
                                “<strong>라이브 수업을 통해 대치동에서 진행되는 제가 듣고 싶은 선생님의 수업을 마음껏 들을 수 있어 수험생활의 큰 도움</strong>이 되었습니다. 대형 TV 덕분에 사각지대 없이 시청이 가능했고 현장감 있는 수업이 진행될 수 있었습니다. 또 <strong>현강에서 나누어주는 자료 역시 모두 수령이 가능하였기에 부족함 없는 학습</strong>을 진행할 수 있었습니다.”
                            </p>
                        </div>
                    </li>
                </ul>
                <div class="swiper-pagination type01"></div>
            </div>
            <a class="btn-black" href="https://russel.megastudy.net/russel/entinfo/notice/2020/success/index.asp"><span>러셀 대입성공 Story 자세히 보기</span></a>
        </div>
        <% ElseIf sCampusCode = "CD0250" Then '부천 %>
        <div class="inner">
            <ul class="review-center">
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>인제대학교 의예과</strong>
                            <span>도유빈 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_dyb.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/o8fh-Rb-QG4')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/regular_overall/ico_play_bc.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>인제대학교 의예과</strong>
                            <span>박승균 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_psg.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/QJtkbWa-5QU')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/regular_overall/ico_play_bc.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>아주대학교 약학과</strong>
                            <span>이세빈 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_lsb.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/VrwaIysNcwY')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/regular_overall/ico_play_bc.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>서울대학교 재료공학부</strong>
                            <span>이유나 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_lyn.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/dpc6mbssGMU?si=-wxwVVdE9CNVDI6J')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/regular_overall/ico_play_bc.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>인하대학교 의예과</strong>
                            <span>박정우 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_pjw.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/KBE_r1K_hFc?si=CYwVZqEXqYjEbcbq')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/regular_overall/ico_play_bc.png" alt=""></a>
                    </div>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
        <div class="inner">
            <ul class="review-card">
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/50967610')">
                        <dt>2024학년도<br>서울대학교 인문계열 합격

                        </dt>
                        <dd>러셀CORE 광주 김효원 

                        </dd>
                    </dl>
                    <p>
                        <strong>라이브 수업 수강을 통해 받을 수 있었던 현강 자료들이 도움이 되었습니다.</strong> 높은 퀄리티의 자료들을 통해 실력을 향상시킬 수 있었고 질의응답을 통해 어려웠거나 헷갈렸던 개념들을 확인하고 바로잡을 수 있었습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/50967672')">
                        <dt>2024학년도<br>조선대 의예과 합격

                        </dt>
                        <dd>러셀CORE 광주  김나연

                        </dd>
                    </dl>
                    <p>
                        수업에는 따로 조교 선생님들이 계셔서 <strong>질문이나 상담을 할 수 있었는데 이 점이 가장 만족스러웠습니다.</strong> 덕분에 실전에 도움이 되는 팁들을 많이 얻을 수 있었고 수능 때도 유용하게 쓸 수 있었습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48188348')">
                        <dt>2024학년도<br>동국대 한의예과 합격

                        </dt>
                        <dd>러셀CORE 광주  권태완

                        </dd>
                    </dl>
                    <p>
                        바른공부 자습전용관과 가까운 거리에 강의실이 있다는 점은 확실한 장점으로 다가왔습니다. <strong>이동에 낭비하는 시간이 없도록 도움을 주었습니다.</strong> 또한 검증된 강사진의 퀄리티 높은 콘텐츠는 실력 향상에 큰 도움을 주었습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/50967638')">
                        <dt>2024학년도<br>한양대학교 의예과 합격

                        </dt>
                        <dd>러셀CORE 광주 엄태옥

                        </dd>
                    </dl>
                    <p>
                        부족하다고 생각하는 과목을 찾아 듣다 보니 강제로 불필요한 수업을 들을 때와 달리 집중력 있게 수업을 들을 수 있었고 <strong>자습시간 확보에도 도움이 되었습니다.</strong>

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48188913')">
                        <dt>2024학년도<br>연세대 화공생명공학과 합격

                        </dt>
                        <dd>러셀CORE 광주  이석준

                        </dd>
                    </dl>
                    <p>
                        담임선생님께서 언제나 친절하게 고민이 있으면 상담해 주시고, 고민이 없어도 주기적으로 학생들을 불러 원내 생활이 괜찮은지 물어보며 <strong>학생들을 진지하게 케어해 주셔서 힘든 수험기간 동안 큰 힘이 되었습니다.</strong>

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/50967562')">
                        <dt>2024학년도<br>조선대학교 의예과 합격

                        </dt>
                        <dd>러셀CORE 광주 김시영

                        </dd>
                    </dl>
                    <p>
                        혼자서 모의고사를 보면 현장감이 떨어져서 긴장이 되지 않는데 매달마다 <strong>학원생들 전체가 모의고사를 응시하여 현장감을 느낄 수 있었습니다.</strong> 함께 본 모의고사 덕분에 실제 수능 날에는 긴장하지 않고 시험에 응시할 수 있었습니다.

                    </p>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0249" Then '영통 %>
        <div class="inner">
            <ul class="review-card">
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48584694')">
                        <dt>2024학년도<br>고려대학교 의과대학 합격

                        </dt>
                        <dd>러셀 영통 오서준</dd>
                    </dl>
                    <p>
                        <strong>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다.</strong> 모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 더 <strong>현장감 있기에, 러셀의 표준 시간표에 맞추어 공부하였습니다.</strong>
                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48964346')">
                        <dt>2024학년도<br>서울대학교 치의학학석사통합과정 합격

                        </dt>
                        <dd>러셀 영통 최지원

                        </dd>
                    </dl>
                    <p>
                        <strong>학습 동선을 최소화하는 것</strong>이 큰 도움이 되었습니다.  또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다.</strong> 모의고사 이후 성적 분석을 토대로 한 상담은 학습 방향을 잡는 데에 도움이  되었고, 정확한 수치를 근거로 입시에 대한 구체적인 정보를 알려주셨습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48584747')">
                        <dt>2024학년도<br>전북대학교 의예과 합격
                        </dt>
                        <dd>러셀 영통 오준학
                        </dd>
                    </dl>
                    <p>바자관의 장점은 <strong>표준 시간표와 전용 와이파이</strong>입니다. 항상 자습시간이 정해져 있다보니 딴 곳으로 잘 새지 않고 <strong>자습시간을 확보할 수 있으며 자습시간 동안에도 딴짓 하지 않고 공부에만 집중</strong>할 수 있었습니다.
                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/50089650')">
                        <dt>2024학년도<br>영남대학교 의예과 합격

                        </dt>
                        <dd>러셀 영통 박우영

                        </dd>
                    </dl>
                    <p>
                        바자관의 장점은 <strong>개방형 구조</strong>라고 생각합니다.  <strong>집중이 안될 때 주변 학생들이 공부하고 있는 모습을 보면 ‘나도 다시 열심히 해야겠다.’</strong>라는 생각이 들어서 좋았습니다. 또한 <strong>시간표가 수능 시간표와 비슷한 것이 습관 형성</strong>에 좋았습니다.
                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48964415')">
                        <dt>2024학년도<br>전북대학교 치의예과 합격

                        </dt>
                        <dd>러셀 영통 우태현
                        </dd>
                    </dl>
                    <p>바자관의 장점은 <strong>개방형 구조</strong>입니다. 또한, <strong>러셀의 체조 시스템, 바자관 내에 공기청정기과 온도계를 상시 가동</strong>하여 쾌적한 환경에서 공부를 할 수 있었던 것도 좋았습니다. <strong>재수 초반에 멘탈적으로 지칠 대로 지쳐있었고</strong> 이런 상황에 <strong>가장 큰 힘이 되어주셨던 건 담임선생님</strong>이라고 생각합니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48584485')">
                        <dt>2024학년도<br>원광대학교 치의예과 합격

                        </dt>
                        <dd>러셀 영통 이수민

                        </dd>
                    </dl>
                    <p><strong>심야자습제도가 가장 좋았습니다. </strong>10시에 학원이 끝나고 바로 바자관에 가서 복습하면 집중력이 흐트러지지 않고 12시까지 공부를 할 수 있었습니다. 또한 <strong>벌점제도를 통해 나태해지지 않고 끝까지 달릴 수 있었던 것 같습니다. </strong>
                    </p>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
        <div class="inner">
            <ul class="review-card">
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/49682721')">
                        <dt>2024학년도<br>충남대학교 의예과 합격
                        </dt>
                        <dd>러셀 대전 허관훈
                        </dd>
                    </dl>
                    <p>
                        <strong>러셀 대전에서는 오로지 수능 공부에만 집중할 수 있어서 좋았습니다.</strong> 수능시간에 최적화된 표준 시간표, 정말 열심히 수능 공부에 임하는 친구들 그리고 진심으로 대해주시는 선생님들 덕분에 최고의 수험생활을 보냈습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48592152')">
                        <dt>2024학년도<br>가톨릭대학교 의예과 합격
                        </dt>
                        <dd>러셀 대전 윤훈석
                        </dd>
                    </dl>
                    <p><strong>개방감과 폐쇄성의 적절한 조화가 바자관의 큰 장점입니다.</strong> 바자관의 통유리창 덕분에 다른 친구들이 공부하는 모습을 보고 동기부여를 받을 수 있었고, 수납공간과 책상의 격벽이 본인의 공간을 확실히 구분해 주어 방해받지 않고 학습에 집중할 수 있었습니다.


                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl class="non">
                        <dt>2024학년도<br>충남대학교 의예과 합격

                        </dt>
                        <dd>러셀 대전 OOO</dd>
                    </dl>
                    <p><strong>바자관의 면학분위기가 좋았습니다.</strong> 혼자 공부하거나 집에서 공부하게 되면 집중도가 떨어집니다. 러셀 대전에서는 공부에만 집중할 수 있는 환경을 만들어 주어 자연스레 공부 습관이 잡히게 되었습니다. 절제력이 부족한 저에겐 최고의 학습 환경이었습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/35186151')">
                        <dt>2023학년도<br>서울대학교 전기정보공학부 합격

                        </dt>
                        <dd>러셀 대전 노유찬

                        </dd>
                    </dl>
                    <p>
                        <strong>불필요한 수업은 줄이고 자습시간은 극대화할 수 있어서 좋았습니다.</strong> 탁 트인 개방형 구조의 바자관에서 공부하면서 최상위권 학생들에게 동기부여 받을 수 있었고, 최적의 면학분위기를 위해 항상 노력해주시는 담임선생님 덕분에 쾌적하게 공부할 수 있었습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48232680')">
                        <dt>2024학년도<br>순천향대학교 의예과 합격

                        </dt>
                        <dd>러셀 대전 하태솔
                        </dd>
                    </dl>
                    <p><strong>규칙적으로 시간에 맞춰 공부할 수 있는 습관을 들일 수 있어서 좋았습니다.</strong> 더불어 담임선생님께서 꾸준히 관리해 주시는 덕분에 마음이 풀어지지 않고 수능까지 열심히 공부할 수 있었습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="CastPopup('https://tv.naver.com/v/48232686')">
                        <dt>2024학년도<br>세명대학교 한의예과 합격

                        </dt>
                        <dd>러셀 대전 임장원

                        </dd>
                    </dl>
                    <p><strong>모의고사를 풀 때에 수능 시험장과 비슷한 환경을 조성해 주셔서 많이 도움이 되었습니다.</strong> 또한, 조회시간이나 종례시간에 담임선생님께서 항상 동기 부여가 되는 말씀을 해 주셔서 더 열심히 할 수 있도록 이끌어주셔서 감사했습니다.
                    </p>
                </li>
            </ul>
        </div>
        <% ElseIf sCampusCode = "CD0342" Then '대구 %>
        <div class="inner">
            <ul class="review-card">
                <li data-aos="flip-left">
                    <dl onclick="javascript:alert('추후 공개 예정입니다.')">
                        <dt>2025학년도<br>성균관대 의예과 합격

                        </dt>
                        <dd>러셀 대구 HS반 서혜리

                        </dd>
                    </dl>
                    <p>
                        혼자 공부를 하다 보면 비균형적인 학습을 하게 될 가능성이 높은데, 러셀을 다니면서 <strong>학원에서 제공하는 컨텐츠를 최대한 활용하면 알아서 학습의 균형</strong>이 잡히는 것 같아서 편했습니다.


                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="javascript:alert('추후 공개 예정입니다.')">
                        <dt>2025학년도<br>성균관대 의예과 합격

                        </dt>
                        <dd>러셀 대구 HS반 이정빈

                        </dd>
                    </dl>
                    <p>
                        <strong>공부 외의 사이트를 들어갈 수 없는 제한된 와이파이</strong>입니다. 자제력이 부족한 터라 전자기기가 있으면 공부 외의 것들에 얽매여 집중력을 잃기 부지기수였는데 바자관은 공부에 필요한 사이트 외의 것들은 원천 차단되어 오로지 공부에만 집중할 수 있어서 좋았습니다.

                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="javascript:alert('추후 공개 예정입니다.')">
                        <dt>2025학년도<br>고려대 의예과 합격

                        </dt>
                        <dd>러셀 대구 서의치대반 송지안

                        </dd>
                    </dl>
                    <p>
                        <strong>책상이 넓어 모의고사를 풀기에 용이</strong>했고, <strong>바로 옆의 개인 책장을 이용</strong>할 수 있어서 책을 찾기 위해 사물함까지 이동해야 하는 번거로움이 없었습니다.
                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="javascript:alert('추후 공개 예정입니다.')">
                        <dt>2025학년도<br>경북대 의예과 합격

                        </dt>
                        <dd>러셀 대구 HS반 강유현

                        </dd>
                    </dl>
                    <p>
                        <strong>담임선생님과 1:1 상담을 하며 현재 자신의 학습 상태와 보완해야 할 부분을 객관적으로 분석</strong>할 수 있었습니다. 담임선생님께서는 성적은 물론이고 학습 태도와 같은 일상적인 부분에 대해서도 함께 고민하고 조언해 주셨습니다.
                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="javascript:alert('추후 공개 예정입니다.')">
                        <dt>2025학년도<br>성균관대 약학과 합격

                        </dt>
                        <dd>러셀 대구 HS반 신윤

                        </dd>
                    </dl>
                    <p>
                        모의고사를 보고나면 지쳐서 피드백을 안하고 넘어가는 경우가 많은데, <strong>총평노트를 작성하고 담임선생님과 피드백하는 시간을 가지면서 지난 시험보다 더 나아진 점, 부족한 점을 정리</strong>할 수 있어 좋았습니다.


                    </p>
                </li>
                <li data-aos="flip-left">
                    <dl onclick="javascript:alert('추후 공개 예정입니다.')">
                        <dt>2025학년도<br>경북대 수의예과 합격

                        </dt>
                        <dd>러셀 대구 연고대반 안준영

                        </dd>
                    </dl>
                    <p>
                        <strong>다양한 특강이 개설되어서 도움</strong>이 많이 되었습니다. 입시 전형에 관한 특강을 들었는데 합격한 사례들을 구체적으로 알 수 있어 합격사례와 비교했을 때 내가 어떤 부분에서 부족한지 알 수 있었고 그것을 바탕으로 <strong>앞으로의 공부계획을 세우는 데에도 많은 도움</strong>이 됐습니다.
                    </p>
                </li>
            </ul>
        </div>
        <% end if %>
    </div>
</div>