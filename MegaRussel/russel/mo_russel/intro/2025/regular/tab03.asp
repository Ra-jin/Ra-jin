<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont08 js-cont">
        <% If campus_code = "CD0257" OR campus_code = "CD0341" Then '중계/대전 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont08_tit.png" alt=""></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont08_tit.png" alt=""></p>
        <% End If %>
        <div class="inner">
            <div class="program-wrap">
                <!-- program-navi -->
                <div class="program-navi swiper-container <%=campusName%>">
                    <% If campus_code = "CD0257" Then '중계 %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">OMEGA<br>
                        시리즈</div>
                        <div class="swiper-slide mr0">집체 모의고사<br>
                        시리즈</div>
                        <div class="swiper-slide mr0">학습계획<br>
                        콘텐츠</div>
                    </div>
                    <% Else %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide mb10">OMEGA 시리즈</div>
                        <div class="swiper-slide mr0 mb10">집체 모의고사 시리즈</div>
                        <div class="swiper-slide">수학 전용 실전 콘텐츠</div>
                        <div class="swiper-slide mr0">학습계획 콘텐츠</div>
                    </div>
                    <% End If %>
                </div>

                <!-- program-slide -->
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">처음부터 끝까지 가장 완벽한 수능 플랜<br>
                                    <strong>O<span>ptimum</span> MEGA 실전 모의고사 시리즈</strong></p>
                                <div class="pro-slide pro02 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>OMEGA</strong><br>
                                                수능 실전 대비 전 과목 FULL 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img01.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>실제 수능과 비슷한 난이도의 문제 구성
                                                </li>
                                                <li>신유형 포함 및 평가원 트렌드를 반영한 문제로<br>
                                                수능 출제 패턴 체화
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>OMEGA link</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img02.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>복습 최적화 OMEGA 준 연계 하프 모의고사
                                                </li>
                                                <li>10지 선다형, OX 문제 등 과목별 맞춤 문항으로<br>
                                                섬세한 실력 보완
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>

                                        <% If campus_code = "CD0343" Then '코어원주 %>
                                        <% ElseIf campus_code = "CD0257" Then '중계 %>
                                        <div class="swiper-slide">
                                            <label>수학/사탐/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA black</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/pro01_img03.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>고득점을 위한 고난도 실전 모의고사
                                                </li>
                                                <li>고난도 문항 완전 정복
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>
                                        <% Else %>
                                        <div class="swiper-slide">
                                            <label>수학/사탐/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA black</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img03.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>최상위권을 결정짓는 고난도 실전 모의고사
                                                </li>
                                                <li>1등급을 넘어 만점을 향한 고난도 문항 완전 정복
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>
                                        <% End If %>

                                        <% If campus_code <> "CD0343" and campus_code <> "CD0250" and campus_code <> "CD0257" Then '코어원주/부천/중계 제외 %>
                                        <div class="swiper-slide">
                                            <label>수학/과탐Ⅰ</label>
                                            <p class="tit"><strong>OMEGA blue</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img04.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>안정적인 상위권 성적 확보를 위한 실전 모의고사
                                                </li>
                                                <li>상수 문제 집중 훈련으로 실수 완벽 방어
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>
                                        <% End If %>


                                        <div class="swiper-slide">
                                            <% If campus_code = "CD0250" Then '부천 %>
                                            <label>국/수/영</label>
                                            <% Else %>
                                            <label>국/수/영/사탐/과탐Ⅰ&middot;Ⅱ</label>
                                            <% End If %>
                                            <p class="tit"><strong>OMEGA weekly</strong></p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img05.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매주 제공되는 하프 문항 연습 문제로<br>
                                                실전 감각 유지 
                                                </li>
                                                <li>빠른 정답 확인을 위한 표지 날개 구성으로<br>
                                                학습 시간 단축
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/omega_intro/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro02"></div>
                                </div>
                                <p class="r-txt">* 학원별로 콘텐츠는 상이할 수 있습니다.</p>
                            </div>
                        </div>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">
                                    성적 향상을 위한 핵심 발판,<br>‘나의 위치 파악’<br>
                                    <strong>전국 집체 모의고사 시리즈</strong>
                                </p>
                                <div class="pro-slide pro01 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>전국 대단위 실전 모의고사</strong><br>
                                                ‘전국 수험생’과 경쟁하는 수능 실전 시뮬레이션
                                            </p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img06.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>6월 모평&middot;수능 출제 범위를 반영한 전 과목<br>
                                                실전 모의고사
                                                </li>
                                                <li>개인 성적 분석 리포트를 통한 섬세한 성적 분석
                                                </li>
                                                <li>메가스터디 과목별 대표 강사진의 해설 및<br>부가 
                                                콘텐츠 제공
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/event/2025/jdsm/index.asp">자세히 보기</a>
                                        </div>
                                        <div class="swiper-slide">
                                            <label>전 과목</label>
                                            <p class="tit"><strong>메가X대성 더 프리미엄 모의고사</strong><br>
                                                전국 단위 전 과목 실전 모의고사</p>
                                            <p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img07.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>러셀X메가스터디학원, 대성학원 재원생 전체<br>
                                                응시로 상세 성적 비교 분석 및 실력 파악
                                                </li>
                                                <li>과목별 전체 출제진의 다 회차 검토를 거친<br>
                                                고퀄리티 문항
                                                </li>
                                            </ul>
                                            <a class="pr-btn" href="/intro/2022/premium/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro01"></div>
                                </div>
                                <p class="r-txt">* 학원별로 콘텐츠는 상이할 수 있습니다.</p>
                            </div>
                        </div>
                        
                        <% If campus_code <> "CD0257" Then '중계 제외 %>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">수능 수학 실력 향상을 위한<br>
                                    <strong>수학 전용 실전 콘텐츠</strong></p>
                                <div class="pro-slide pro03 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <label>수학 공통+선택</label>
                                            <p class="tit"><strong>ALPHA</strong></p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img08.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>수능 수학 기출 및 신유형 동시 연습으로<br>
                                                취약점 보완
                                                </li>
                                                <li>서초 메가스터디학원 전임 강사 직접 출제 및<br>
                                                SKY&middot;의치대 등 멘토 출신들의 전문적인 검토로<br>
                                                탄생한 고퀄리티 문항
                                                </li> 
                                            </ul>
                                            <a class="pr-btn" href="/event/2025/alpha/index.asp">자세히 보기</a>
                                        </div>
                                    </div>
                                    <!-- <div class="swiper-pagination pro03"></div> -->
                                </div>
                                <p class="r-txt mt0">* ALPHA는 재원생 대상으로 ‘전액 지원’되며,<br>
                                학원별로 콘텐츠는 상이할 수 있습니다.</p>
                            </div>
                        </div>
                        <% End If %>
                        <div class="swiper-slide">
                            <div class="program-wrap">
                                <p class="pro-tit">규칙적인 학습 습관 형성을 위한<br>
                                    <strong>학습계획 콘텐츠</strong></p>
                                <div class="pro-slide pro04 swiper-container">
                                    <div class="swiper-wrapper">
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 학습 플래너</strong><br>
                                                학습 목표 수립 및 자기주도학습 훈련</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img09.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 시간별&middot;과목별 목표 학습량과<br>
                                                실제 학습량 비교
                                                </li>
                                                <li>담임 선생님의 피드백을 통해 학습 상황 점검
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 일일수학 30제
                                            </strong><br>
                                                매일 일정한 양의 수학 문제풀이</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img10.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>매일 일정량의 수학 문제 학습으로<br>
                                                문제 풀이 습관 형성
                                                </li>
                                                <li>지속적인 문제 풀이 훈련으로 실수 방지
                                                </li>
                                            </ul>
                                        </div>
                                        <div class="swiper-slide">
                                            <p class="tit"><strong>러셀 총평노트</strong><br>
                                                시험 성적 누적 관리 및 자기 평가</p>
                                            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/pro01_img11.png" alt=""></p>
                                            <ul class="list-dot">
                                                <li>기록을 통해 성적 변화를 확인하고 향후<br>
                                                목표 설정 및 보완
                                                </li>
                                                <li>실수&middot;오답을 바탕으로 자기 평가를 진행해<br>
                                                취약점 개선
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="swiper-pagination pro04"></div>
                                </div>
                                <p class="r-txt">* 학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’되며,<br>
                                학원별로 콘텐츠는 상이할 수 있습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- //program-slide -->
            </div>
        </div>
    </div>
    <div class="cont09 js-cont">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/cont09_tit.jpg" alt="재학생 맞춤 실전 콘텐츠 과목별 시행 일정"></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont09_tit.jpg" alt="최상위권 맞춤 실전 콘텐츠 과목별 시행 일정"></p>
        <% End If %>
        
        <div class="inner">
            <a href="javascript:void(0);" class="program_link" alt=""><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/regular/cont09_img_v2.png" alt=""></a>
            <div class="layer-tt02">
                <% If campus_code = "CD0250" Then '부천 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width:240%">
                        <colgroup>
                            <col style="width:83px">
                            <col style="width:9%">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th class="sticky3">과목</th>
                                <th>총 회차</th>
                                <th>3월</th>
                                <th>4월</th>
                                <th>5월</th>
                                <th>6월</th>
                                <th>7월</th>
                                <th>8월</th>
                                <th>9월</th>
                                <th>10월</th>
                                <th>11월</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- OMEGA -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA link -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA<br>link</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA black -->
                            <tr>
                                <th class="bg-sky" rowspan="3">OMEGA<br>black</th>
                                <td class="sticky3">수학</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA weekly -->
                            <tr>
                                <th class="bg-sky" rowspan="3">OMEGA<br>weekly</th>
                                <td class="sticky3">국어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 전대실모 -->
                            <tr>
                                <th class="bg-sky">전국 대단위<br>실전 모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>2회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 메가X대성 -->
                            <tr>
                                <th class="bg-sky">메가X대성<br>더 프리미엄<br>모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>6회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                            </tr>
                            <!-- ALPHA -->
                            <tr>
                                <th class="bg-sky">ALPHA</th>
                                <td class="sticky3">수학</td>
                                <td>7회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width:240%">
                        <colgroup>
                            <col style="width:83px">
                            <col style="width:9%">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th class="sticky3">과목</th>
                                <th>총 회차</th>
                                <th>3월</th>
                                <th>4월</th>
                                <th>5월</th>
                                <th>6월</th>
                                <th>7월</th>
                                <th>8월</th>
                                <th>9월</th>
                                <th>10월</th>
                                <th>11월</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- OMEGA -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA link -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA<br>link</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA weekly -->
                            <tr>
                                <th class="bg-sky" rowspan="6">OMEGA<br>weekly</th>
                                <td class="sticky3">국어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 전대실모 -->
                            <tr>
                                <th class="bg-sky">전국 대단위<br>실전 모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>2회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 메가X대성 -->
                            <tr>
                                <th class="bg-sky">메가X대성<br>더 프리미엄<br>모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>6회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                            </tr>
                            <!-- ALPHA -->
                            <tr>
                                <th class="bg-sky">ALPHA</th>
                                <td class="sticky3">수학</td>
                                <td>7회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width:240%">
                        <colgroup>
                            <col style="width:83px">
                            <col style="width:9%">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th class="sticky3">과목</th>
                                <th>총 회차</th>
                                <th>3월</th>
                                <th>4월</th>
                                <th>5월</th>
                                <th>6월</th>
                                <th>7월</th>
                                <th>8월</th>
                                <th>9월</th>
                                <th>10월</th>
                                <th>11월</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- OMEGA -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA link -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA<br>link</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA black -->
                            <tr>
                                <th class="bg-sky" rowspan="3">OMEGA<br>black</th>
                                <td class="sticky3">수학</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA weekly -->
                            <tr>
                                <th class="bg-sky" rowspan="6">OMEGA<br>weekly</th>
                                <td class="sticky3">국어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 전대실모 -->
                            <tr>
                                <th class="bg-sky">전국 대단위<br>실전 모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>2회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 메가X대성 -->
                            <tr>
                                <th class="bg-sky">메가X대성<br>더 프리미엄<br>모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>6회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% Else %>
                <div class="tbl-scroll-x">
                    <table class="tbl-type01" style="width:240%">
                        <colgroup>
                            <col style="width:83px">
                            <col style="width:9%">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                            <col style="width:auto">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>구분</th>
                                <th class="sticky3">과목</th>
                                <th>총 회차</th>
                                <th>3월</th>
                                <th>4월</th>
                                <th>5월</th>
                                <th>6월</th>
                                <th>7월</th>
                                <th>8월</th>
                                <th>9월</th>
                                <th>10월</th>
                                <th>11월</th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- OMEGA -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA link -->
                            <tr>
                                <th class="bg-sky" rowspan="7">OMEGA<br>link</th>
                                <td class="sticky3">국어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>19회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>5회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>3회</td>
                                <td>2회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">한국사</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>3회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA black -->
                            <tr>
                                <th class="bg-sky" rowspan="3">OMEGA<br>black</th>
                                <td class="sticky3">수학</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>15회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>3회</td>
                                <td>4회</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA blue -->
                            <tr> 
                                <th class="bg-sky" rowspan="2">OMEGA<br>blue</th>
                                <td class="sticky3">수학</td>
                                <td>10회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>3회</td>
                                <td>3회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>10회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>3회</td>
                                <td>3회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- OMEGA weekly -->
                            <tr>
                                <th class="bg-sky" rowspan="6">OMEGA<br>weekly</th>
                                <td class="sticky3">국어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">수학</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">영어</td>
                                <td>16회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>4회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">사탐</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅰ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <tr>
                                <td class="sticky3">과탐Ⅱ</td>
                                <td>4권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>1권</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 전대실모 -->
                            <tr>
                                <th class="bg-sky">전국 대단위<br>실전 모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>2회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                            <!-- 메가X대성 -->
                            <tr>
                                <th class="bg-sky">메가X대성<br>더 프리미엄<br>모의고사</th>
                                <td class="sticky3">전 과목</td>
                                <td>6회</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>1회</td>
                                <td>1회</td>
                            </tr>
                            <!-- ALPHA -->
                            <tr>
                                <th class="bg-sky">ALPHA</th>
                                <td class="sticky3">수학</td>
                                <td>7회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>2회</td>
                                <td>1회</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                                <td>-</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <% End If %>
                <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라<br>변경 및 조정될 수 있습니다.</p>
                <p class="bt-close-tt"><img src="https://russeldata.megastudy.net/campus/images/russel/m_russel/btn/btn_close_b.png" alt=""></p>
            </div>

            <div class="box">
                <p class="tit">
                    실전 대비 훈련을 위해 정기적으로 <br>
                    <span>집체 모의고사 시행</span>
                </p>
                <div class="mock-slide swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/mock_img01.jpg" alt=""></p>
                        </div>
                        <div class="swiper-slide">
                            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/regular/mock_img02.jpg" alt=""></p>
                        </div>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </div>
    </div>
    <div class="btm-banner">
        <% If campus_code = "CD0249" Then '영통 %>
        <%=txtCampus%> 재수정규반에서 <br>
        <strong>최상위권 대입성공을 위한 <br>
        경쟁력</strong>이 높아집니다.
        <% ElseIf campus_code = "CD0257" Then '중계 %>
        <%=txtCampus%> N수 정규반에서 <br>
        <strong>성적 향상 및 목표 대학 합격을 위한 <br>
        경쟁력</strong>이 높아집니다.
        <% Else %>
        <%=txtCampus%> N수 정규반에서 <br>
        <strong>최상위권 대입성공을 위한 <br>
        경쟁력</strong>이 높아집니다.
        <% End If %>
    </div>
</div>