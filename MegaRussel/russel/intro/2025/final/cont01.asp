<div class="cont js-cont <%=campusName%>">
    <% If sCampusCode = "INTRO"  Then '인트로 %>
    <div class="cont01">
        <div class="cont01-bg-wrap">
            <div class="inner">
                <div class="left-con">
                    <p>
                        러셀 <br>
                        2025학년도 <br>
                        수능 만점자<sup>1)</sup> <br>
                        <strong>3명 배출!</strong>
                    </p>
                    <a href="<%=btn_result%>" class="btn-black"><span>자세히 보기</span></a>
                </div>
                <div class="right-con">
                    <div class="m-tit">
                        <div>
                            <p>역대 최다 배출<sup>2)</sup></p>
                        </div>
                    </div>
                    <div class="result-list">
                        <li>
                            <dl>
                                <dt>메이저 의대</dt>
                                <dd><strong class="counter" data-count="115">0</strong><span>명</span></dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>전국 의예과</dt>
                                <dd><strong class="counter" data-count="1269">0</strong><span>명</span></dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>의&middot;치&middot;한&middot;약&middot;수</dt>
                                <dd><strong class="counter" data-count="2220">0</strong><span>명</span></dd>
                            </dl>
                        </li>
                        <li>
                            <dl>
                                <dt>서&middot;연&middot;고</dt>
                                <dd><strong class="counter" data-count="1224">0</strong><span>명</span></dd>
                            </dl>
                        </li>
                    </div>
                    <div class="info-stxt">
                        <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/final/ico_info.png" alt="i" /></i></span>
                        <div class="data-view">
                            ※ 최종 업데이트 : 2025-03-25 기준｜2025학년도 대입에 합격한 러셀 재원생의 결과 (단과 수강생 제외/복수 대학 합격자 포함) <br>
                            ※ 본 결과는 최상위권 전문관(구. 양지 기숙), 자연계 전문관(구. 서초 기숙), 서의치관, 남-의대관, 여-의대관, 안성 기숙 입결 결과가 포함되어 있습니다. <br> <br>
    
                            1) 2024. 12. 06. 2025 수능 실채점 기준(국/수/탐2 만점 및 영/한 1등급 기준) <br>
                            2) 2020-2025학년도 러셀에서 배출한 메이저 의대, 전국 의예과, 의학과, 의과대학, 의·치·한·약·수(석학사 통합과정 포함), 서울대, 연세대, 고려대 합격자 수 2025학년도 최다 배출(단과 수강생 제외/복수 대학 합격자 포함) <br>
                            - 2025학년도 메이저 의대(서울대 13명, 연세대 16명, 가톨릭대 18명, 성균관대 22명, 고려대 22명, 울산대 24명) <br>
                            - 서울대 243명, 연세대 418명, 고려대 563명
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <% End If %>

    <div class="cont02">
        <div data-aos="fade-up" class="ico-dday">
            <p><strong class="dday"></strong></p>
        </div>
        <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2025/final/cont02_tit.png" alt="2026학년도 대입, 더 높은 목표 달성을 위한 LAST CHANCE!" /></h3>
        <div class="inner">
            <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/cont02_img01.png" alt="" /></p>
            <p class="r-txt">
                * OMEGA, 전국 대단위 실전 모의고사, 메가X대성 더 프리미엄 모의고사 <br>
                <% If sCampusCode = "INTRO"  Then '인트로 %>
                ※설명회 및 모의고사 일정은 학원별 홈페이지에서 확인할 수 있으며,학원 운영에 따라 변경될 수 있습니다.
                <% Else %>
                ※설명회 및 모의고사 일정은 학원 운영에 따라 변경될 수 있습니다.
                <% End If %>
            </p>
            <p class="mt80"><img src="<%=Application("img_path_russel")%>/intro/2025/final/cont02_img02.jpg" alt="" /></p>
        </div>
    </div>

    <div class="cont03">
        <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/cont03_tit.png" alt="빈틈없는 전략이 필요한 타이밍! 러셀 파이널 정규반 프로그램으로 최상위권 대입 성공 COMPLETE!" /></h3>
        <div class="inner">
            <h3 class="pt150">
                <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2025/final/txt_num01.png" alt="01" /></div>
                <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2025/final/cont03_txt.png" alt="실전에 최적화된 파이널 집체 모의고사&실전 콘텐츠" />
            </h3>
            <div class="r-contents">
                <div class="r-wrap type-one-line">
                    <p>
                        강도 있는 실전 수능 훈련! <br>
                        <strong>집체 실전 모의고사</strong>
                    </p>
                    <% If sCampusCode = "INTRO"  Then '인트로 %>
                    <div class="r-box">
                        <div class="r-li" data-aos="flip-left">
                            <div>
                                <p class="desc">전 과목</p>
                                <strong>전국 대단위 <br> 실전 모의고사</strong>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img01.png" alt="전대실모" /></p>
                            </div>
                            <ul class="list-03">
                                <li>전국 수험생과 경쟁하는 수능 대비 실전 모의고사</li>
                                <li>성적 분석 리포트, 메가스터디 강사진의 해설 강의로 학습 효과 극대화</li>
                            </ul>
                        </div>
                        <div class="r-li" data-aos="flip-left" data-aos-delay="500">
                            <div>
                                <p class="desc">전 과목</p>
                                <strong>메가X대성 <br> 더 프리미엄 모의고사</strong>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img02.png" alt="더프리미엄" /></p>
                            </div>
                            <ul class="list-03">
                                <li>
                                    러셀X메가스터디학원, 대성학원 재원생 전체가 응시하는 실전 모의고사
                                </li>
                                <li>
                                    과목별 전체 출제진의 다 회차 검토를 거친 고퀄리티 문항
                                </li>
                            </ul>
                        </div>
                        <div class="r-li" data-aos="flip-left" data-aos-delay="1000">
                            <div>
                                <p class="desc">학원별 상이</p>
                                <strong>학원 <br> 실전 모의고사</strong>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img03.png" alt="실전모의고사" /></p>
                            </div>
                            <ul class="list-03">
                                <li>
                                    전국 단위 집체 모의고사 외 강도 있는 수능 대비 실전 훈련
                                </li>
                                <li>강사 모의고사 또는 학원 자체<br>모의고사를 통한 실전 훈련</li>
                            </ul>
                        </div>
                    </div>
                    <% Else %>
                    <div class="r-box type02">
                        <div class="r-li" data-aos="flip-left">
                            <div>
                                <p class="desc">전 과목</p>
                                <strong>전국 대단위 <br> 실전 모의고사</strong>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img01.png" alt="전대실모" /></p>
                            </div>
                            <ul class="list-03">
                                <li>전국 수험생과 경쟁하는 수능 대비 실전 모의고사</li>
                                <li>성적 분석 리포트, 메가스터디 강사진의 해설 강의로 학습 효과 극대화</li>
                            </ul>
                        </div>
                        <div class="r-li" data-aos="flip-left" data-aos-delay="500">
                            <div>
                                <p class="desc">전 과목</p>
                                <strong>메가X대성 <br> 더 프리미엄 모의고사</strong>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img02.png" alt="더프리미엄" /></p>
                            </div>
                            <ul class="list-03">
                                <li>
                                    러셀X메가스터디학원, 대성학원 재원생 전체가 응시하는 실전 모의고사
                                </li>
                                <li>
                                    과목별 전체 출제진의 다 회차 검토를 거친 고퀄리티 문항
                                </li>
                            </ul>
                        </div>
                    </div>
                    <% End If %>
                </div>
                <div class="r-wrap type-two-line">
                    <p>
                        평가원 트렌드&middot;신유형 완벽 반영!<br>
                        <strong>OMEGA 모의고사</strong>
                    </p>
                    <div class="r-box">
                        <p class="ico-infinite"><img data-aos="fade" data-aos-delay="300" src="<%=Application("img_path_russel")%>/intro/2025/final/ico_infinite.png" alt="아이콘 인피니트" /></p>
                        <div class="r-li active" data-aos="flip-left">
                            <div>
                                <p class="desc">전 과목</p>
                                <strong>OMEGA</strong>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img04.png" alt="오메가" /></p>
                                <ul class="list-03 terms">
                                    <li>실제 수능과 비슷한 난이도의 전 과목 FULL 모의고사</li>
                                    <li>신유형 포함 및 평가원 트렌드를 반영한 문제로 <br> 수능 출제 패턴 체화</li>
                                </ul>
                            </div>
                        </div>
                        <div class="r-li" data-aos="flip-right">
                            <div>
                                <p class="desc">전 과목</p>
                                <strong>OMEGA link</strong>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img05.png" alt="오메가 링크" /></p>
                                <ul class="list-03">
                                    <li>복습 최적화 OMEGA 준 연계 하프 모의고사</li>
                                    <li>
                                        10지 선다형, OX 문제 등 과목별 맞춤 문항으로 <br>
                                        섬세한 실력 보완
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="r-li horizontal" data-aos="flip-up">
                            <div>
                                <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/r_box_img06.png" alt="오메가 블랙" /></p>
                                <div>
                                    <% If sCampusCode = "CD0250"  Then '부천 %>
                                    <p class="desc">수학/과탐I</p>
                                    <% Else %>
                                    <p class="desc">수학/사탐/과탐I</p>
                                    <% End If %>
                                    <strong>OMEGA black</strong>
                                    <% If sCampusCode = "CD0257"  Then '중계 %>
                                    <ul class="list-03">
                                        <li>고득점을 위한 고난도 실전 모의고사</li>
                                        <li>고난도 문항 완전 정복</li>
                                    </ul>
                                    <% Else %>
                                    <ul class="list-03">
                                        <li>최상위권을 결정짓는 고난도 실전 모의고사</li>
                                        <li>1등급을 넘어 만점을 향한 고난도 문항 완전 정복</li>
                                    </ul>
                                    <% End If %>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <p class="r-txt txt01">* 해당 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 운영 상황에 따라 변경 및 조정될 수 있습니다.</p>
                
                <a href="javascript:void(0);" id="openPopup" class="btn-black"><span>콘텐츠 시행 일정 확인하기</span></a>
                <!-- 레이어 팝업 -->
                <div id="popup" class="popup-container">
                    <div class="popup-content">
                        <span class="popup-close-btn" id="closePopup">×</span>
                        <h2>콘텐츠 시행 일정</h2>
                        <div style="overflow-y: auto;">
                            <table class="tbl-01 type02">
                                <colgroup>
                                    <col style="width: 10%;">
                                    <col style="width: 10%;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                    <col style="width: %;">
                                </colgroup>
                                <thead>
                                    <tr>
                                        <th rowspan="2" colspan="2">구분</th>
                                        <th colspan="4" style="height: 30px;">9월</th>
                                        <th colspan="5" style="height: 30px;">10월</th>
                                        <th colspan="3" style="height: 30px;">11월</th>
                                    </tr>
                                    <tr>
                                        <th>1주차</th>
                                        <th>2주차</th>
                                        <th>3주차</th>
                                        <th>4주차</th>
                                        <th>1주차</th>
                                        <th>2주차</th>
                                        <th>3주차</th>
                                        <th>4주차</th>
                                        <th>5주차</th>
                                        <th>1주차</th>
                                        <th>2주차</th>
                                        <th>3주차</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th colspan="2">평가원</th>
                                        <td class="bg-01">9평</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="bg-01">수능</td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" class="two-line">전국 대단위 실전<br>모의고사</th>
                                        <td></td>
                                        <td></td>
                                        <td class="bg-02">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th colspan="2" class="two-line">메가X대성 더 프리미엄<br>모의고사</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="bg-03">O</td>
                                        <td></td>
                                        <td class="bg-03">O</td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">OMEGA</th>
                                        <th class="two-line">국어/수학/영어/<br>사탐/과탐 I</th>
                                        <td></td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04" colspan="2">O</td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th class="borderLeftGray">과탐 II</th>
                                        <td></td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td></td>
                                        <td></td>
                                        <td class="bg-04">O</td>
                                        <td></td>
                                        <td class="bg-04">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th class="borderLeftGray">한국사</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td></td>
                                        <td class="bg-04">O</td>
                                        <td class="bg-04">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th rowspan="3">OMEGA<br>link</th>
                                        <th class="two-line">국어/수학/영어/<br>사탐/과탐 I</th>
                                        <td></td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05" colspan="2">O</td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th class="borderLeftGray">과탐 II</th>
                                        <td></td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td></td>
                                        <td></td>
                                        <td class="bg-05">O</td>
                                        <td></td>
                                        <td class="bg-05">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th class="borderLeftGray">한국사</th>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td></td>
                                        <td class="bg-05">O</td>
                                        <td class="bg-05">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <th class="two-line">OMEGA <br> black</th>
                                        <% If sCampusCode = "CD0250"  Then '부천 %>
                                        <th>수학/과탐I</th>
                                        <% Else %>
                                        <th>수학/사탐/과탐I</th>
                                        <% End If %>
                                        <td></td>
                                        <td class="bg-06">O</td>
                                        <td class="bg-06">O</td>
                                        <td class="bg-06">O</td>
                                        <td class="bg-06" colspan="2">O</td>
                                        <td class="bg-06">O</td>
                                        <td class="bg-06">O</td>
                                        <td class="bg-06">O</td>
                                        <td></td>
                                        <td></td>
                                        <td></td>
                                    </tr>
                                    <% If sCampusCode = "INTRO"  Then '인트로 %>
                                    <tr>
                                        <th colspan="2" class="two-line">학원 실전 <br> 모의고사</th>
                                        <td colspan="12">학원 자체적으로 개별 시행</td>
                                    </tr>
                                    <% End If %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <% If sCampusCode = "INTRO"  Then '인트로 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_jb.png" alt="전북대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                매월 메가X대성 더 프리미엄 모의고사를 보는 것이 <strong>저의 실력과 전국적인 위치를 파악하는 데에 도움이 되었습니다.</strong> <br>
                                또한 파이널 시기 OMEGA 모의고사*를 풀며 검증된 퀄리티의 모의고사로 실력을 늘릴 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 전북대학교 의예과 합격 <br>
                                러셀 강남 이예원
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf  sCampusCode = "CD0247"  Then '강남 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_dg.png" alt="대구한의대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                매달 응시하는 메가x대성  더 프리미엄 모의고사뿐 아니라 6평 전 매주 실시한 OMEGA weekly 덕분에 <strong>실전에 대한 두려움을 경감시킬 수 있었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 대구한의대학교 한의예과 합격 <br>
                                러셀 강남 이홍지
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0257"  Then '중계 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_gy.png" alt="건양대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                매달 시행되었던 집체 모의고사를 통해 진지하게 실전 연습을 해 볼 수 있었고, 성적표가 자세하게 나와서 <strong>취약한 부분들을 메꾸는 데에 큰 도움이 되었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 건양대학교 의학과 합격 <br>
                                러셀 중계 김나은
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0248"  Then '평촌 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                다양한 실전 모의고사를 제공하여 <strong>학생 스스로가 실력을 꾸준히 점검해 나갈 수 있도록 도와줍니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 고려대학교 경영학과 합격 <br>
                                러셀 평촌 김윤서
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0246"  Then '센텀 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_jeonbuk.png" alt="전북대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                매월 집체 모의고사를 보는 것이 <strong>저의 실력과 전국적인 위치를 파악하는 데에 도움이 되었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 전북대학교 의예과 합격 <br>
                                러셀 재원생
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0346"  Then '코어청주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                러셀에서는 매달 집체 모의고사를 실시했는데, 평가원 모의고사가 없는 달에도 <strong>실력을 점검할 수 있어 좋았습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 연세대학교 정치외교학과 합격<br>
                                러셀CORE 청주 김화랑
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0345"  Then '코어창원 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_busan.png" alt="부산대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                집체 모의고사를 통해 실력을 점검하고 <strong>성적표 분석을 통해 목표를 명확하게 설정</strong>할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 부산대학교 의예과 합격<br>
                                러셀CORE 창원 김용준
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ajou.png" alt="아주대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                한 달마다 실시하는 <strong>메가X대성 더 프리미엄 모의고사가 실력의 가늠자 역할</strong>을 해 주어 큰 도움이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 아주대학교 의예과 합격<br>
                                러셀 대구 김규진
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0341"  Then '대전 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chungnam.png" alt="충남대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                집체 모의고사를 통해 <strong>학습 계획을 세우며 해이해지지 않고 열심히 공부할 수 있었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 충남대학교 의예과 합격<br>
                                러셀 대전 김효주
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0249"  Then '영통 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chungnam.png" alt="충남대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                매달 보았던 메가X대성 더 프리미엄 모의고사가 큰 도움이 되었던 것 같습니다. <strong>시험 문제가 다채로워서 제가 부족한 부분이 어디인지 알 수 있었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 충남대학교 의예과 합격<br>
                                러셀 영통 송민근
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0344"  Then '코어전주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_kyunghee.png" alt="경희대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>혼자서는 전 과목 모의고사를 실전처럼 풀 수 있는 환경을 만들기 어려운데, 러셀에서는 실전 경험을 쌓을 수 있어</strong> 좋았습니다.
                            </p>
                            <p class="tit">
                                2025학년도 경희대학교 의예과 합격<br>
                                러셀CORE 전주 김하연
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0250"  Then '부천 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_jeonbuk.png" alt="전북대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                매월 집체 모의고사를 보는 것이 <strong>저의 실력과 전국적인 위치를 파악하는 데에 도움이 되었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 전북대학교 의예과 합격<br>
                                러셀 재원생
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0244"  Then '분당 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                메가x대성 더 프리미엄 모의고사가 도움이 되었습니다.
                                <strong>많은 학생들의 성적 표본을 통해 자신의 위치를 확인</strong>하며 목표를 더 구체적으로 설정할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 성균관대학교 의예과 합격<br>
                                러셀 분당 최준영
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ajou.png" alt="아주대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                학원에서 모의고사 콘텐츠는 <strong>실전과 같은 환경에서 수능을 대비</strong>하는 데 도움이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 아주대학교 의예과 합격<br>
                                러셀 울산 손O명
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0340"  Then '코어광주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chonnam.png" alt="전남대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                실제 수능 시간에 맞춰 풀면서 <strong>좋은 예행연습을 할 수 있었고, 실전 경험도 많이 쌓을 수 있었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 전남대학교 의예과 합격<br>
                                러셀CORE 광주 심형주
                            </p>
                        </div>
                    </div>
                </div>
                <% End If %>

                <% If sCampusCode = "INTRO"  Then '인트로 %>
                <p class="r-txt txt02">
                    * 구 QUEL 모의고사 <br>
                    ※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌
                </p>
                <% ElseIf sCampusCode = "CD0246" or sCampusCode = "CD0250" Then '센텀/부천 %>
                <p class="r-txt txt02">
                    ※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌
                </p>
                <% Else %>
                <p class="r-txt txt02">
                    ※ 2025학년도 합격생 후기 중 일부 발췌
                </p>
                <% End If %>
            </div>
        </div>
    </div>

    <div class="cont04">
        <h3>
            <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2025/final/txt_num02.png" alt="02" /></div>
            <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2025/final/cont04_tit.png" alt="메가스터디 온오프라인 수능 전문 강사진의 최상위권 수준별 맞춤 단과" />
        </h3>
        <div class="inner">
            <ul class="class-list">
                <li>
                    <p>메가스터디 온&middot;오프라인<br>
                        <strong>수능 전문 강사진 </strong>
                    </p>                        
                </li>                
                <li>
                    <p><%=program_box02%></p>
                </li>
                <li>
                    <p>최신 출제 경향이 반영된<br>
                        수능 대비 <strong>파이널 모의고사</strong>
                    </p>
                </li>
                <li>
                    <p>자신의 약점을 보완해 줄<br>
                        <strong>꼭 필요한 수업만 선택 수강</strong>
                    </p>
                </li>
            </ul>
        </div>
        
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/final/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->

        <div class="inner">
            <!-- 단과 특강 -->
            <div class="danka-wrap">
                <div class="danka-btn">
                    <p class="txt"><%=danka_txt01%></p>
                    <p class="stit"><%=regular_txt%></p>
                    <a href="<%=regular_url%>">바로가기</a>
                </div>
                <% If sCampusCode <> "CD0341" and sCampusCode <> "CD0340"  Then '대전/코어광주 제외 %>
                <div class="danka-btn">
                    <span>N수 <br> 전용</span>
                    <p class="txt"><%=danka_txt02%></p>
                    <p class="stit"><%=am_txt%></p>
                    <a href="<%=am_url%>">바로가기</a>
                </div>
                <% End If %>
                <div class="danka-btn">
                    <p class="txt"><%=danka_txt03%></p>
                    <p class="stit">대학별<br>논술 특강</p>
                    <a href="<%=non_url%>">바로가기</a>
                </div>       
            </div>
            <% If sCampusCode = "INTRO"  Then '인트로 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            러셀 단과는 <strong>검증된 강사진이 체계적인 커리큘럼으로 양질의 수업을 제공</strong>한다는 점에서 큰 장점이 있는 것 같습니다.
                            파이널 기간에 영역별 팁과 학습 방법을 많이 배울 수 있었고 특히 파이널 강의를 듣고 학습하며 실력에 대한 자신감을 많이 얻을 수 있었던 것 같습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 의과대학 합격<br>
                            러셀 대구 배승현
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf  sCampusCode = "CD0247"  Then '강남 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            러셀 단과는 <strong>수준 및 진도별 세심하게 커리큘럼이 나누어져 있어 제 상황에 꼭 필요한 수업을 수강</strong>할 수 있다는 장점이 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 정치외교학과 합격<br>
                            러셀 강남 최원녕
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0257"  Then '중계 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>온라인 좌석 예약 시스템</strong>을 통해 미리 가서 기다리지 않고 앞자리에 앉아 수업을 들을 수 있는 점이 좋았고, <strong>풍부한 수업 자료로 수능 대비</strong>를 할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 의예과 합격<br>
                            러셀 중계 동나영
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0248"  Then '평촌 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            특히 <strong>파이널 강의를 듣고 학습하며 실력에 대한 자신감</strong>을 많이 얻을 수 있었던 것 같습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 의예과 합격<br>
                            러셀 재원생
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0246"  Then '센텀 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            특히 <strong>파이널 강의를 듣고 학습하며 실력에 대한 자신감</strong>을 많이 얻을 수 있었던 것 같습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 의예과 합격<br>
                            러셀 재원생
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0346"  Then '코어청주 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_eulji.png" alt="을지대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            파이널 시즌에는 단과 수강생들 다 같이 실모를 치르면서 <strong>현장감을 기르기도 하였습니다.</strong>
                        </p>
                        <p class="tit">
                            2025학년도 을지대학교 의예과 합격<br>
                            러셀CORE 청주 김이담
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0345"  Then '코어창원 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chungnam.png" alt="충남대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>과목별/수준별로 나에게 필요한 선생님의 강의</strong>를 한 건물 내에서 수강할 수 있는 점이 좋았습니다.
                        </p>
                        <p class="tit">
                            2024학년도 충남대학교 수의예과 합격<br>
                            러셀CORE 창원 백지훈
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            파이널 기간, <strong>매주 국어, 수학 모의고사 풀이 연습을 수없이 했던 실모반</strong>이 저에게 많은 도움이 되었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 성균관대학교 의예과 합격<br>
                            러셀 대구 이정빈
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0341"  Then '대전 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chungnam.png" alt="충남대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            현장 단과 선생님의 수준별 클리닉 시간이 <strong>안정적인 성적을 얻는 데 아주 큰 도움이 되었습니다.</strong>
                        </p>
                        <p class="tit">
                            2025학년도 충남대학교 수의예과 합격<br>
                            러셀 대전 주원호
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0249"  Then '영통 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            파이널 기간부터는 매주 진행되는 현장 모의고사와 과제로 나오는 모의고사가 <strong>실전 감각을 올리는 데에 도움</strong>이 많이  되었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 연세대학교 정치외교학과 합격<br>
                            러셀 영통 신수빈
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0344"  Then '코어전주 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_jeonbuk.png" alt="전북대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            현장에 가지 않고도 <strong>현장에서만 받을 수 있는 양질의 자료나  교재를 제공받을 수 있어</strong> 좋았습니다.
                        </p>
                        <p class="tit">
                            2025학년도 전북대학교 의예과 합격<br>
                            러셀CORE 전주 박준서
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0250"  Then '부천 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            특히 <strong>파이널 강의를 듣고 학습하며 실력에 대한 자신감</strong>을 많이 얻을 수 있었던 것 같습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 의예과 합격<br>
                            러셀 재원생
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0244"  Then '분당 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            바자관과 가까이에 있는 교실에서 듣기 때문에 <strong>이동 시간도 단축되었고, 인강에서만 볼 수 있었던 선생님들의 강의를 직접</strong> 들을 수 있어서 좋았습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 공과대학 합격<br>
                            러셀 분당 장민서
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            수업 이전이나 이후에 <strong>질의응답을 편하게 할 수 있어 좋았고</strong>, 공부법이나 성적에 대한 부분도 상담할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 연세대학교 의류학과 합격<br>
                            러셀 울산 안예원
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0340"  Then '코어광주 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chosun.png" alt="조선대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            강의를 실시간으로 본다는 점뿐만 아니라 <strong>현강 자료가 그대로 전달된다는 게 좋았습니다.</strong>
                        </p>
                        <p class="tit">
                            2025학년도 조선대학교 약학과 합격<br>
                            러셀CORE 광주 김희준
                        </p>
                    </div>
                </div>
            </div>
            <% End If %>

            <% If sCampusCode = "INTRO" or sCampusCode = "CD0248" or sCampusCode = "CD0246" or sCampusCode = "CD0250"  Then '인트로/평촌/센텀/부천 %>
            <p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
            <% ElseIf sCampusCode = "CD0345"  Then '코어창원 %>
            <p class="r-txt">※ 2024학년도 합격생 후기 중 일부 발췌</p>
            <% Else %>
            <p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
            <% End If %>
        </div>
    </div>

    <div class="cont05">
        <h3>
            <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2025/final/txt_num03.png" alt="03" /></div>
            <% If sCampusCode = "CD0257"  Then '중계 %>
            <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/cont05_tit.png" alt="입시 전문 담임 선생님의 파이널 맞춤 관리" />
            <% Else %>
            <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2025/final/cont05_tit.png" alt="최상위권 전문 입시 담임 선생님의 파이널 맞춤 관리" />
            <% End If %>
        </h3>
        <div class="inner">
            <div class="m-contents">
                <div class="m-wrap">
                    <div class="m-box">
                        <div class="m-li" data-aos="flip-left">
                            <div>
                                <p class="desc">입시 관리</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img01.png" alt="입시관리" /></p>
                                <strong>개인별 수시/정시 <br> 맞춤 지원 전략 제시</strong>
                            </div>
                            <ul class="list-03">
                                <li>9월 모의평가 성적 분석을 통한 <strong>수시 컨설팅</strong> 및 수능 성적 예측으로 <strong>정시 지원 대학 파악</strong></li>
                                <li>
                                    수능 이후 가채점/실채점 성적 분석을 통해 <strong>개인별 맞춤 정시 컨설팅 진행</strong>
                                </li>
                            </ul>
                        </div>
                        <div class="m-li" data-aos="flip-left" data-aos-delay="500">
                            <div>
                                <p class="desc">학습 관리</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img02.png" alt="학습관리" /></p>
                                <strong>개인 성적 분석을 통한<br>최종 학습 전략 수립</strong>
                            </div>
                            <ul class="list-03">
                                <li>
                                    재원 시작부터 9월 모의평가까지의 성적 <br>
                                    분석 등 <strong>수능 고득점을 위한 학습 상담 진행</strong>
                                </li>
                                <li>
                                    <strong>실전과 유사한 환경에서 집체 모의고사<br> 진행</strong>으로 실전 감각 극대화
                                </li>
                            </ul>
                        </div>
                        <div class="m-li" data-aos="flip-left" data-aos-delay="1000">
                            <div>
                                <p class="desc">생활 관리</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img03.png" alt="생활관리" /></p>
                                <strong>마지막까지 흐트러지지 않는<br>철저한 관리</strong>
                            </div>
                            <ul class="list-03">
                                <li>
                                    마지막까지 면학 분위기가 유지될 수 있도록
                                    <strong>강력한 관리 및 태도 점수 운영</strong>
                                </li>
                                <li>
                                    수능까지 최상의 컨디션을 유지할 수 있도록
                                    <strong>1:1 정신적 멘토링 진행</strong>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <% If sCampusCode = "INTRO"  Then '인트로 %>
                <p class="r-txt">※ 학원별 관리 프로그램 내용은 상이하므로 학원별 페이지를 확인하시기 바랍니다.</p>
                <% End If %>

                <% If sCampusCode = "INTRO"  Then '인트로 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_seoul.png" alt="서울대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>담임 선생님은 원서 접수 시즌에 정말 큰 도움이 되었습니다.<br>
                                평소 모의고사 성적 등을 통해 제 특성을 파악</strong>하여 저에게 적격인 6장의 논술 카드를 추천해 주셨습니다.<br>
                                평소에도 칭찬을 많이 해 주시는 등 <strong>수험 생활 동안 자칫 떨어질 수 있는 자존감을 채워 주셨습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 서울대학교 재료공학부 합격 <br>
                                러셀 부천 이유나
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf  sCampusCode = "CD0247"  Then '강남 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                담임 선생님이 매 모의고사 이후 <strong>1:1 상담을 통해 학습 방향에 대해 조언해 주시고, 다양한 입시 정보를 제공해 주셔서</strong> 원서접수에 도움이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 연세대학교 통합디자인과 합격<br>
                                러셀 강남 신재윤
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0257"  Then '중계 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_gacheon.png" alt="가천대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                담임 선생님께서는 꾸준히 생활 관리를 할 수 있도록 연락을 주시며 신경을 써 주셨습니다. 또한 <strong>입시 상담을 진행해 주시며 모르는 점을 해결할 수 있었고 목표를 구체화</strong>할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 가천대학교 의예과 합격<br>
                                러셀 중계 임건빈
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0248"  Then '평촌 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_hanyang.png" alt="한양대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                담임 선생님께서 입시 상황에 맞는 알맞은 상담으로 <strong>수시 전략과 앞으로 공부의 방향성에 대해 설정</strong>할 수 있게 되어 좋았습니다.
                            </p>
                            <p class="tit">
                                2025학년도 한양대학교 약학과 합격<br>
                                러셀 평촌 정민재
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0246"  Then '센텀 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_seoul.png" alt="서울대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>담임 선생님은 원서 접수 시즌에 정말 큰 도움이 되었습니다. 
                                평소 성적 등을 파악</strong>하여 논술 카드를 추천해 주셨습니다.
                            </p>
                            <p class="tit">
                                2025학년도 서울대학교 재료공학부 합격<br>
                                러셀 재원생
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0346"  Then '코어청주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                담임 선생님께서 저에게 유리한 전형을 <strong>객관적인 지표를 통해 추천</strong>해 주셨고, 목표하던 대학에 합격할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 고려대학교 철학과 합격<br>
                                러셀CORE 청주 최승연
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0345"  Then '코어창원 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_dongah.png" alt="동아대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                학습 계획을 짜는 데 어려움이 있었는데, <strong>담임 선생님과의 상담을 통해 체계적인 공부 방향을 설정</strong>할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2024학년도 동아대학교 의예과 합격<br>
                                러셀CORE 창원 제현수
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_kyunghee.png" alt="경희대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                공부가 힘들어질 때쯤 <strong>담임 선생님께서 그에 대해 알고 조언을 해 주셔서 마음을 다잡는 데</strong> 도움이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 경희대학교 치의예과 합격<br>
                                러셀 대구 김수현
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0341"  Then '대전 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_gy.png" alt="건양대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>담임 선생님의 정신적인 지지</strong> 덕분에 <strong>수능 전까지 멘탈을 잘 유지하며 끝까지 집중</strong>할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 건양대학교 의예과 합격<br>
                                러셀 대전 이채린
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0249"  Then '영통 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                모의고사 성적이 나올 때마다 <strong>담임 선생님과 1:1 상담</strong>을 통해서 <strong>현재 상태에 대한 분석과 학습 방향을 교정</strong>해 주셔서 수능 때 더 좋은 성적을 얻을 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 연세대학교 의예과 합격<br>
                                러셀 영통 임희수
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0344"  Then '코어전주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_wonkwang.png" alt="원광대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>지칠 때마다 힘이 돼 주던 담임 선생님의 따뜻한 말들이</strong> 아직도 기억에 오래 남습니다.
                            </p>
                            <p class="tit">
                                2025학년도 원광대학교 의예과 합격<br>
                                러셀CORE 전주 임석민
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0250"  Then '부천 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_seoul.png" alt="서울대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>담임 선생님은 원서 접수 시즌에 정말 큰 도움이 되었습니다. 평소 성적 등을 파악</strong>하여 논술 카드를 추천해 주셨습니다.
                            </p>
                            <p class="tit">
                                2025학년도 서울대학교 재료공학부 합격<br>
                                러셀 재원생
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0244"  Then '분당 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_seoul.png" alt="서울대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>심리적인 부분에 있어서까지 고민을 들어주시고 항상 친절하게 답변해 주셔서</strong> 수험생활 동안 많은 도움을 받았습니다.
                            </p>
                            <p class="tit">
                                2025학년도 서울대학교 의예과 합격<br>
                                러셀 분당 김기민
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                수능 이후 원서 지원까지 <strong>담임 선생님께서 끝까지 합격하기를 도와주셔서,</strong> 정보가 중요한 원서접수에 큰 도움이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 고려대학교 전기전자공학부 합격<br>
                                러셀 울산 OOO
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0340"  Then '코어광주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chonnam.png" alt="전남대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관 앞에 담임 선생님이 계셔서 어려움이나 고민이 생기면 <strong>친절하게 상담해 주셔서 수험 기간 중 의지가 <br> 많이 됩니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 전남대학교 약학과 합격<br>
                                러셀CORE 광주 강성현
                            </p>
                        </div>
                    </div>
                </div>
                <% End If %>

                <% If sCampusCode = "INTRO" or sCampusCode = "CD0246" or sCampusCode = "CD0250"  Then '인트로/센텀/부천 %>
                <p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
                <% ElseIf sCampusCode = "CD0345"  Then '코어창원 %>
                <p class="r-txt">※ 2024학년도 합격생 후기 중 일부 발췌</p>
                <% Else %>
                <p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
                <% End If %>
            </div>
        </div>
    </div>

    <div class="cont06">
        <h3>
            <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2025/final/txt_num04.png" alt="04" /></div>
            <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2025/final/cont06_tit.png" alt="면학 분위기로 소문난 바른공부 자습전용관" />
            <% If russelCore = "1" or sCampusCode = "CD0342" or sCampusCode = "CD0250" or sCampusCode = "CD0244" or sCampusCode = "CD0349" or sCampusCode = "CD0249" Then '코어/대구/부천/분당/울산/영통 %>
            <a data-aos="fade-down" href="/info/schoolBus.asp" class="school-bus"><img src="<%=Application("img_path_russel")%>/intro/2025/final/ico_bus.png" alt=""></a>
            <% End If %>
        </h3>
        <div class="inner">
            <div class="m-contents">
                <div class="m-wrap">
                    <% If sCampusCode = "CD0248" or sCampusCode = "CD0346" or sCampusCode = "CD0345" or sCampusCode = "CD0342" or sCampusCode = "CD0341" or sCampusCode = "CD0344" or sCampusCode = "CD0244" or sCampusCode = "CD0349" or sCampusCode = "CD0340" Then '평촌/코어청주/코어창원/대구/대전/전주/분당/울산/코어광주 %>
                    <div class="m-box type02">
                        <div class="m-li" data-aos="flip-left">
                            <div>
                                <p class="desc">집단적인 면학 분위기</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img04.png" alt="집단적인 면학 분위기" /></p>
                                <strong>최상위권이 모여 경쟁하는<br>집단적인 면학 분위기</strong>
                                <ul class="list-03">
                                    <li>
                                        <strong>담임 선생님의 관리가 이루어지는 환경 속
                                        개방형 구조</strong>로 재원생들의 학구열이 학습
                                        동기로 부여
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="m-li" data-aos="flip-left" data-aos-delay="500">
                            <div>
                                <p class="desc">충분한 자습 시간</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img05.png" alt="충분한 자습 시간" /></p>
                                <strong>수능 시간표와 동일한<br>표준 시간표 운영</strong>
                                <ul class="list-03">
                                    <li>
                                        수능 시간표와 동일한 표준 시간표로 <strong>실전
                                        감각을 극대화하고 충분한 자습 시간을 확보</strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="m-li" data-aos="flip-left">
                            <div>
                                <p class="desc">학습 동선 최소화</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img06.png" alt="학습 동선 최소화" /></p>
                                <strong>낭비하는 시간 없이<br>학습 동선 최소화</strong>
                                <ul class="list-03">
                                    <li>
                                        한 건물 내에서 <%=baja_txt01%>
                                        한 번에 해결하여 <strong>이동에 낭비되는 시간
                                        최소화</strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="m-li" data-aos="flip-left" data-aos-delay="500">
                            <div>
                                <% If sCampusCode = "CD0344"  Then '코어전주 %>
                                <p class="desc">급식실 운영</p>
                                <% Else %>
                                <p class="desc">자체 식당 운영</p>
                                <% End If %>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img07.png" alt="자체 식당 운영" /></p>
                                <% If sCampusCode = "CD0344"  Then '코어전주 %>
                                <strong>건강과 안전을 위한<br>급식실 운영</strong>
                                <% Else %>
                                <strong>건강과 안전을 위한<br>자체 식당 운영</strong>
                                <% End If %>
                                <ul class="list-03">
                                    <li>
                                        <% If sCampusCode = "CD0344"  Then '코어전주 %>급식실<% Else %>자체 식당<% End If %> 운영으로 <strong>균형 잡힌 식단 유지 및 외부와의 접촉
                                        최소화</strong>하여 학습에 몰입
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <% Else %>
                    <div class="m-box">
                        <div class="m-li" data-aos="flip-left">
                            <div>
                                <p class="desc">집단적인 면학 분위기</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img04.png" alt="집단적인 면학 분위기" /></p>
                                <% If sCampusCode = "CD0257"  Then '중계 %>
                                <strong>학생들이 모여 경쟁하는<br>집단적인 면학 분위기</strong>
                                <% Else %>
                                <strong>최상위권이 모여 경쟁하는<br>집단적인 면학 분위기</strong>
                                <% End If %>
                                <ul class="list-03">
                                    <li>
                                        <strong>담임 선생님의 관리가 이루어지는 환경 속
                                        개방형 구조</strong>로 재원생들의 학구열이 학습
                                        동기로 부여
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="m-li" data-aos="flip-left" data-aos-delay="500">
                            <div>
                                <p class="desc">충분한 자습 시간</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img05.png" alt="충분한 자습 시간" /></p>
                                <strong>수능 시간표와 동일한<br>표준 시간표 운영</strong>
                                <ul class="list-03">
                                    <li>
                                        수능 시간표와 동일한 표준 시간표로 <strong>실전
                                        감각을 극대화하고 충분한 자습 시간을 확보</strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="m-li" data-aos="flip-left" data-aos-delay="1000">
                            <div>
                                <p class="desc">학습 동선 최소화</p>
                                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/m_box_img06.png" alt="학습 동선 최소화" /></p>
                                <strong>낭비하는 시간 없이<br>학습 동선 최소화</strong>
                                <ul class="list-03">
                                    <li>
                                        한 건물 내에서 <%=baja_txt01%><br>
                                        한 번에 해결하여 <strong>이동에 낭비되는 시간
                                        최소화</strong>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <% End If %>
                </div>

                <% If sCampusCode = "INTRO"  Then '인트로 %>
                <p class="r-txt">※ 각 학원별로 시간표, 시설 및 운영 방법은 상이할 수 있습니다.</p>
                <% End If %>

                <% If sCampusCode = "INTRO"  Then '인트로 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                수능 시간표대로 공부를 하여서 실전 모의고사에 집중하기 쉬웠고, <strong>공부 리듬을 형성하는 데 큰 도움</strong>이 되었습니다.
                                또한 집단적인  면학 분위기가 좋아 <strong>공부에 집중하는 것을 방해하는 요소가 현저하게 적었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 연세대학교 의예과 합격 <br>
                                러셀 영통 임희수
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf  sCampusCode = "CD0247"  Then '강남 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_seoul.png" alt="서울대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관 자습 시간이 수능 시간표에 맞추어져 있어서 <strong>수능 리듬을 형성하는 데에 도움이 되었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 서울대학교 첨단융합학부 합격<br>
                                러셀 강남 원재희
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0257"  Then '중계 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_dankuk.png" alt="단국대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관의 장점은 <strong>학습 환경이 다 갖춰져 있다는 점</strong>입니다.
                                책상도 넓고 수능 시간대로 시간표도 형성돼 있고 주변에 공부하는 사람들이 있어서 자극도 받을 수 있습니다.
                            </p>
                            <p class="tit">
                                2025학년도 단국대학교 의예과 합격<br>
                                러셀 중계 김태형
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0248"  Then '평촌 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_inha.png" alt="인하대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관은 <strong>개방형 구조이기에 열심히 공부하는 모습이 바로 보였기 때문에</strong> 저도 같이 집중하여 공부할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 인하대학교 의예과 합격<br>
                                러셀 평촌 선현우
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0246"  Then '센텀 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                수능 시간표대로 공부를 하여서 실전 모의고사에 집중하기 쉬웠고, <strong>공부 리듬을 형성하는 데 큰 도움</strong>이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 연세대학교 의예과 합격<br>
                                러셀 재원생
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0346"  Then '코어청주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_daejeon.png" alt="대전대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관에서 학업에 열중하는 친구들을 보며 저 또한 매일 <strong>꾸준함을 가지고 공부에만 집중</strong>할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 대전대학교 한의예과 합격<br>
                                러셀CORE 청주 김경진
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0345"  Then '코어창원 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_sch.png" alt="순천향대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                학원 분위기 및 출석 등에 대한 관리를 통해 <strong>공부할 수 있는 환경이 잘 조성</strong>되어서 좋았습니다.
                            </p>
                            <p class="tit">
                                2025학년도 순천향대학교 의예과 합격<br>
                                러셀CORE 창원 신현우
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                혼자 공부하다 보면 해이해질 수도 있었을 텐데 학원을 다니다 보니 <strong>공부하는 습관이 잡혀서 좋았던 것 같습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 성균관대학교 의예과 합격<br>
                                러셀 대구 서혜리
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0341"  Then '대전 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ajou.png" alt="아주대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관의 집단적인 면학 분위기 덕분에 <strong>항상 집중할 수 있는 공부 리듬을 형성</strong>할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 아주대학교 의학과 합격<br>
                                러셀 대전 신유찬
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0249"  Then '영통 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_seoul.png" alt="서울대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관의 장점은 <strong>좋은 면학 분위기</strong>이며, <strong>매일 표준 시간표로 운영되어 실제 수능날처럼 공부 리듬을 형성</strong>하는 데 큰 도움이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 서울대학교 약학계열 합격<br>
                                러셀 영통 심지윤
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0344"  Then '코어전주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_inje.png" alt="인제대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바자관에는 공부를 하고자 하는 친구들로 가득 차 있습니다. <strong>주위를 보며 자극을 받고 공부를 이어갈 수 있었습니다.</strong>
                            </p>
                            <p class="tit">
                                2025학년도 인제대학교 의예과 합격<br>
                                러셀CORE 전주 구정모
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0250"  Then '부천 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                수능 시간표대로 공부를 하여서 실전 모의고사에 집중하기 쉬웠고, <strong>공부 리듬을 형성하는 데 큰 도움</strong>이 되었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 연세대학교 의예과 합격<br>
                                러셀 재원생
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0244"  Then '분당 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                매주 같은 시간에 공부를 하면서 한 주에 할 공부의 양을 정할 수 있었고, <strong>이를 통해 공부 루틴을 형성</strong>할 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 고려대학교 의예과 합격<br>
                                러셀 분당 조한준
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_busan.png" alt="부산대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                <strong>다같이 공부를 열심히 하는 분위기</strong>라서 같이 공부하게 되는 효과가 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 부산대학교 약학과 합격<br>
                                러셀 울산 김OO
                            </p>
                        </div>
                    </div>
                </div>
                <% ElseIf sCampusCode = "CD0340"  Then '코어광주 %>
                <div class="stu-box">
                    <div>
                        <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_catholic.png" alt="가톨릭대학교 로고" /></p>
                        <div>
                            <p class="txt">
                                바른공부 자습전용관에서 <strong>규칙적으로 오랜 시간 집중하며</strong> 중요한 기간을 보람차게 쓸 수 있었습니다.
                            </p>
                            <p class="tit">
                                2025학년도 가톨릭대학교 의예과 합격<br>
                                러셀CORE 광주 김도윤
                            </p>
                        </div>
                    </div>
                </div>
                <% End If %>

                <% If sCampusCode = "INTRO" or sCampusCode = "CD0246" or sCampusCode = "CD0250" Then '인트로/센텀/부천 %>
                <p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
                <% Else %>
                <p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
                <% End If %>
            </div>
        </div>
    </div>

    <% If  sCampusCode <> "CD0247" and sCampusCode <> "CD0249" and sCampusCode <> "CD0244" and sCampusCode <> "CD0250"  Then '강남/영통/분당/부천 제외 %>
    <div class="cont07">
        <h3>
            <div class="tit-num"><img data-aos="flip-right" src="<%=Application("img_path_russel")%>/intro/2025/final/txt_num05.png" alt="05" /></div>
            <img data-aos="fade-up" src="<%=Application("img_path_russel")%>/intro/2025/final/cont07_tit.png" alt="수능까지 강도 있는 실전 훈련을 위한 수능 실전 모의 훈련장" />
        </h3>
        <div class="inner">
            <div class="s-box">
                <p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/final/s_box_img01.png" alt="" /></p>
                <div>
                    <ul class="list-03">
                        <li>
                            <strong>감독관 배치, OMR 마킹, 타종 등 현장감 있는 고사장</strong>에서 <br>
                            학원 자체 모의고사 제공 또는 개인별 풀 모의고사 지참하여 실전 훈련 진행
                        </li>
                        <li>
                            9월 모의평가 대비 사전 훈련장 진행 및 <strong>9월 모의평가 이후 <br>
                            수능까지 정규 훈련장 운영</strong>
                        </li>
                        <li>
                            N수생뿐만 아니라 <strong>고3 재학생을 위해 주말 훈련장 운영</strong>
                        </li>
                    </ul>
                </div>
            </div>
            
            <% If sCampusCode = "INTRO"  Then '인트로 %>
            <p class="r-txt">※  해당 프로그램은 학원 운영 상황에 따라 미운영될 수 있으므로, 학원별 페이지에서 확인하시기 바랍니다.</p>
            <% End If %>

            <% If sCampusCode = "INTRO"  Then '인트로 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            실전 모의고사를 통해 <strong>전 과목을 실제 수능 시간에 맞춰 다 같이 풀면서 실전 감각을 유지</strong>할 수 있었습니다.<br>
                            또한 각자 원하는 모의고사를 정해 <strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감 있게 실전 연습을 할 수 있어서</strong><br>불안함을 해소할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 성균관대학교 의예과 합격<br>
                            러셀 분당 권인경
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0257"  Then '중계 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_dongkuk.png" alt="동국대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            전 과목을 실제 수능 시간에 맞춰 풀면서 <strong>실전 경험을 쌓을 수 있었을 뿐만 아니라 시간 관리를 어떻게 해야 하는지, 시험 전반적인 컨디션 관리를 어떻게 해야 하는지</strong>를 익힐 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 동국대학교 의예과 합격<br>
                            러셀 중계 정지안
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0248"  Then '평촌 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            모의고사를 보는 것이 <strong>실제 수능과 동일한 시간, 분위기로 실시되기 때문에 실전 연습에 도움</strong>이 되었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 연세대학교 의예과 합격<br>
                            러셀 평촌 유현우
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0246"  Then '센텀 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감 있게 실전 연습</strong>을 할 수 있어서 불안함을 해소할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 성균관대학교 의예과 합격<br>
                            러셀 재원생
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0346"  Then '코어청주 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_ys.png" alt="연세대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>실전과 같은 환경</strong>에서 모의고사를 풀고, 시험 운영 과정을 복기하며 <strong>시간을 줄이는 연습</strong>을 할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 연세대학교 화학과 합격<br>
                            러셀CORE 청주 신혁준
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0345"  Then '코어창원 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감 있게 실전 연습</strong>을 할 수 있어서 불안함을 해소할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 성균관대학교 의예과 합격<br>
                            러셀 재원생
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0342"  Then '대구 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>매달 모의고사를 진행해 풀 모의고사의 실전 감각을 유지</strong>할 수 있어 좋았습니다.
                        </p>
                        <p class="tit">
                            2025학년도 성균관대학교 약학과 합격<br>
                            러셀 대구 신윤
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0341"  Then '대전 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_chungnam.png" alt="충남대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>수능과 유사한 환경에서 풀어 보는 경험</strong>을 통해 <strong>수능장에서 실수 없이 실력을 충분히 발휘</strong>할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 충남대학교 의예과 합격<br>
                            러셀 대전 권민준
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0344"  Then '코어전주 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감 있게 실전 연습</strong>을 할 수 있어서 불안함을 해소할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 성균관대학교 의예과 합격<br>
                            러셀 재원생
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0349"  Then '울산 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_korea.png" alt="고려대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            학원에서 실전 모의고사를 <strong>수능과 유사한 고사장에서 경험할 수 있다는 점</strong>이 도움이 되었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 고려대학교 경제학과 합격<br>
                            러셀 울산 OOO
                        </p>
                    </div>
                </div>
            </div>
            <% ElseIf sCampusCode = "CD0340"  Then '코어광주 %>
            <div class="stu-box">
                <div>
                    <p><img src="<%=Application("img_path_russel")%>/intro/2025/final/logo_skku.png" alt="성균관대학교 로고" /></p>
                    <div>
                        <p class="txt">
                            <strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감 있게 실전 연습</strong>을 할 수 있어서 불안함을 해소할 수 있었습니다.
                        </p>
                        <p class="tit">
                            2025학년도 성균관대학교 의예과 합격<br>
                            러셀 재원생
                        </p>
                    </div>
                </div>
            </div>
            <% End If %>

            <% If sCampusCode = "CD0346" or sCampusCode = "CD0248" or sCampusCode = "CD0349" or sCampusCode = "CD0257" or sCampusCode = "CD0342" or sCampusCode = "CD0341" Then '코어 청주/평촌/울산/중계/대구/대전 %>
            <p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
            <% Else %>
            <p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
            <% End If %>
        </div>
    </div>
    <% End If %>

    <!-- 하단 띠배너 -->
    <% If sCampusCode = "CD0257"  Then '중계 %>
    <div class="bottom-bar">
        <p>
            <%=txtCampus%> 파이널 정규반에서 <br>
            최종 목표를 향한 마지막 기회를 잡으세요!
        </p>
    </div>
    <% ElseIf sCampusCode = "CD0246"  Then '센텀 %>
    <div class="bottom-bar">
        <p>
            <%=txtCampus%> 파이널 N수 정규반에서 <br>
            최상위권 목표를 향한 마지막 기회를 잡으세요!
        </p>
    </div>
    <% Else %>
    <div class="bottom-bar">
        <p>
            <%=txtCampus%> 파이널 정규반에서 <br>
            최상위권 목표를 향한 마지막 기회를 잡으세요!
        </p>
    </div>
    <% End If %>
    <!-- //하단 띠배너 -->
</div>