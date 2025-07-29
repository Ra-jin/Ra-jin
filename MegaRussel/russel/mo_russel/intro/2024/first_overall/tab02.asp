<div class="cont js-cont-wrap <%=graph_con%>">
    <!-- cont03 -->
    <div class="cont03 <%=campusName%>">
        <h2><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont01-1_tit.jpg" alt="최상위권이 선택하고 만족하는 러셀, 매해 더 나은 입결과 후기가 입증하고 있습니다." /></h2>
        <div class="inner">
            <% If campus_code = "CD0340" Then '코어광주 %>
            <div class="result-box">
                <p class="tit"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont01-1_stit.png" alt="러셀 2023학년도 최상위권 입시 결과" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            의예과<br>
                            <strong>48</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            치의예<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            약학과<br>
                            <strong>30</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold">
                    <li>
                        <p>
                            한의예<br>
                            <strong>4</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            수의예<br>
                            <strong>6</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            SKY<br>
                            <strong>35</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="result-txt">
                    상위 11개 대학 96명 합격, 최종 합격자 190명<br>
                    <span>* 2023학년도 수능응시 262명 기준</span>
                </p>
                <div class="info-stxt">
                    <span>데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/ico_info.png" alt="i" /></span>
                    <div class="data-view">
                        1) 2023학년도 러셀CORE 광주 재원생의 합격 결과 기준(복수 대학 합격자 포함, 단과 수강생 미포함)<br>
                        2) 러셀CORE 광주 의치한수약 배출 94명(연의 2명, 고의 3명, 중복 합격자 포함)<br>
                        3) 러셀CORE 광주 재원생  서울대, 연세대, 고려대 최종 합격자 35명 기준(의예과 5명 중복 합격자 포함)<br>
                        (2023. .02. 28 기준)
                    </div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="result-box">
                <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont01-1_stit.png" alt="결과로 증명하는 러셀 목동 러셀 목동 2023학년도 대입 합격 현황" /></p>
                <ul class="num-list gold">
                    <li>
                        <p>
                            의 &middot; 치 &middot; 한 &middot; 수 &middot; 약<br>
                            <strong>165</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold">
                    <li>
                        <p>
                            서울대<br>
                            <strong>52</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            SKY<br>
                            <strong>204</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold type02">
                    <li>
                        <p>
                            서 &middot; 성 &middot; 한 &middot; 이<br>
                            <strong>155</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            중 &middot; 경 &middot; 외 &middot; 시<br>
                            <strong>163</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <ul class="num-list gold type02">
                    <li>
                        <p>
                            교대 &middot; 경대사관 <br> &middot; 특성화대<br>
                            <strong>60</strong><span>명</span>
                        </p>
                    </li>
                    <li>
                        <p>
                            주요 15개대<br>
                            <strong>608</strong><span>명</span>
                        </p>
                    </li>
                </ul>
                <p class="r-txt">* 2020~2023 러셀 영통 바른공부 자습전용관 재원생 기준(2023.03.24 기준)
                </p>
            </div>
            <% ElseIf campus_code = "CD0342" or campus_code = "CD0349" Then '대구/울산 %>
            <div class="graph-wrap">
                <h3>매년 <strong>전국의 최상위권은 <br> 러셀로</strong> 모이고 있습니다.<br>
                    <span>* HS반, 서울대&middot;의치대반은 러셀 모집반 중 최상위권반입니다.</span>
                </h3>
                <ul>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont01_graph01.jpg" alt="HS반 유입률" /></div>
                        <span class="arrow01">
                            <p>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/ico_arrow01.png" alt="" />
                            </p>
                        </span>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont01_graph02.jpg" alt="서울대, 의치대반 유입률" /></div>
                        <span class="arrow01">
                            <p>
                                <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/ico_arrow01.png" alt="" />
                            </p>
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
                    <ul class="list-star">
                        <li>2022년, 2023년 러셀 전체 바자관 9월 N수 재원생의 반명 기준<br> 수강료 완납&분납 수강인원 비교</li>
                        <li>
                            반별 입학 기준<br>
                            - HS반 : 수능 국수영 또는 국수탐(1) 4등급 이내,<br>
                            서울대&middot;의치대반 : 국수영 또는 국수탐(1) 5등급 이내<br>
                            - 학원마다 반별 입학 기준은 상이하며, <br> 각 학원 홈페이지에서 확인하실 수 있습니다.
                        </li>
                    </ul>
                </div>
            </div>
            <!-- //데이터 산출 기준 -->
            <div class="graph-wrap mt80 d-start">
                <h3>강력한 관리력이 <br> 만들어낸 놀라운 결과<br>
                <strong>앞서 경험한 선배들이 증명</strong>합니다.</h3>
                <ul>
                    <li class="doughnut">
                        <p>재수생 우선선발반 재원생<br>
                            <strong><span>10명 중 9명</span> 수능 성적 향상</strong><br>
                            <span>*HS반, 서의치반, 연고대반 재원생 기준</span>
                        </p>
                        <div class="chart-area">
                            <canvas id="doughnut-chart"></canvas>
                            <div class="chart-img"><img src="<%=Application("img_path_russel")%>/intro/2024/first/cont01_graph03.png" alt="" /></div>
                        </div>
                    </li>
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont01_graph04.jpg" alt="2022 vs 2023 수능 백분위 성적 향상 점수" /></div>
                        <span class="arrow02">
                            <p>
                                <img src="<%=Application("img_path_russel")%>/intro/2024/first_overall/ico_arrow02.png" alt="" />
                            </p>
                        </span>
                    </li>
                </ul>
            </div>
            <ul class="list-star">
                <li>2022년 러셀 전체 학원 재수생 우선선발반 HS반, 서의치대반, <br> 연고대반 재원생 중 2022/2023 수능 성적 비교가 가능한 학생 기준</li>
            </ul>
            <% End If %>
        </div>
    </div>
    <!-- //cont03 -->

    <!-- cont04 -->
    <div class="cont04">
        <% If campus_code <> "CD0342" and campus_code <> "CD0349" Then '대구/울산 %>
        <h2><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/first_overall/cont02_tit.jpg" alt="러셀 ㅇㅇ에서 한발 더 빠르게 시작한 선배들은 최상위권 대입성공을 쟁취하였습니다." /></h2>
        <% end if %>
        <div class="inner <%=campusName%>">
            <% If campus_code = "CD0342" or campus_code = "CD0349" Then '대구/울산 %>
            <h3>
                러셀에서 한발 더 빠르게<br> 시작한 선배들은<br>
                <strong>최상위권 대입성공을 쟁취</strong>하였습니다.
            </h3>
            <% end if %>
            <% If campus_code = "CD0340" Then '코어광주 %>
            <div class="review-box">
                <div class="review-rolling-inner <%=campusName%>">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>서울대 자유전공 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀CORE 광주 백장운
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>90%</strong><span>향상</span></p>
                                        <div class="before">259.5점</div>
                                        <div class="after">296점</div>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“공부 하기 싫을 때도 주변을 보면서<br>
                                        &nbsp;&nbsp;동기부여가 되어 좋았습니다.”
                                    </p>
                                    <p class="txt">바른공부 자습전용관에서 공부를 하면<br>
                                    
                                        주변에 앉은 학생들이 우수하여, <strong>공부를 하기 싫을 때도 주변을 보면서 동기부여</strong>가 되었고, 시간표가 수능 일정과 동일하게 구성되어
                                        자연스럽게 수능 패턴에 맞게 공부할 수 있었습니다.
                                        
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>조선대 의예과 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀CORE 광주 송다현
            
                                            <br>
                                            <span>(재원기간:2022년 6월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>82%</strong><span>향상</span></p>
                                        <div class="before">266.5점</div>
                                        <div class="after">289점</div>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“담임선생님과의 상담을 통해서<br>
                                        &nbsp;&nbsp;어떻게 공부방향을  잡아야 할지 결정할 수 있었습니다.”                            
                                    </p>
                                    <p class="txt">담임선생님의 격려의 말씀이 항상 저에게 위로가 되었고, 언제나 찾아갈 수 있어 좋았습니다. <br>
                                        <strong>담임선생님과 상담을 통해서 어떤 공부방법을 해야할 지 결정할 수 있어 좋은 공부 방법을 알려주었습니다.</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>전북대 의예과  </strong> 합격</p>
                                        </dt>
                                        <dd>러셀CORE 광주 김준표
            
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>81%</strong><span>향상</span></p>
                                        <div class="before">271.5점</div>
                                        <div class="after">294.5점</div>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“실전과 유사한 환경에서 <br>
                                        &nbsp;&nbsp;연습을 할 수 있다는 점이 매우 마음에 들었습니다.”
                                    </p>
                                    <p class="txt">제가 환경에 예민한 편임에도 넓은 책상, 숯, 공기청정기로 
                                        불편함을 느끼지 않았고, 언제든지 공부할 수 있는 바자관과 
                                        파이널 기간내 실전과 유사한 환경에서 <strong>실전 모의고사 연습을 할 수 있다는 점이 매우 마음에 들었습니다.</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info align">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>전남대 약학부 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀CORE 광주 정성은
                                            <br>
                                            <span>(재원기간:2022년 7월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“최상위권 학생들이 공부하는 모습에 자극을 받아<br>
                                        &nbsp;&nbsp;집중할 수 있었습니다.”
                                    </p>
                                    <p class="txt">러셀에서는 <strong>최상위권 학생들이 바로 옆에서 같이 공부하기에 방심하지 않고 공부할 수 있었습니다. </strong><br>수업과 자습시간에 옆에서 집중하고 있는 친구들을 보면서 자극을 받아 더욱 더 집중할 수 있었습니다. 
                                        
                                    </p>
                                </div>
                            </div>
                        </div>

                        <div class="swiper-pagination page"></div>
                    </div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0249" Then '영통 %>
            <div class="review-v-list">
                <div class="review-rolling-inner <%=campusName%>">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>이화여대 의예과  </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 영통 조윤주
                                            <br>
                                            <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <span><img src="<%=Application("img_path_russel")%>/m_russel/russel_yt/2024/first/cont02_stu_jyj.png" alt="조윤주" /></span>
                                        <a href="javascript:CastPopup('https://tv.naver.com/v/34827669');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/ico_play.png" alt="" /></a>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“남들보다 조금 일찍 대입을 시작한 덕분에 
                                        <br>
                                        &nbsp;&nbsp;조급하지 않은 마음으로 공부에 임할 수 있었던 것 같습니다.”
                                    </p>
                                    <p class="txt">
                                        1년 동안 지치지 않고 달리기 위해선 공부하는 하루하루의 일상이 익숙해져야 한다고 생각합니다. 남들보다 <strong>조금 일찍 대입을 시작</strong>한 덕분에 <strong>빠르게 적응하고 조급하지 않은 마음으로 공부에 임할</strong> 수 있었던 것 같습니다.<br>
                                        <br>
                                        바자관의 좋았던 점은 <strong>철저한 관리와 공부하기 좋은 시설, 수능 시간표에 맞춰진 시간표</strong>입니다. 학생들이 공부에 완전히 집중할 수 있도록 담임선생님들께서 철저하게 관리해 주셔서 불편함 없이 공부에만 집중할 수 있었습니다.  또한 1년 동안 수능 시간표에 맞게 급식을 먹고 쉬는 시간을 가짐으로써 실제 수능장에서 조금 더 편안한 마음으로 임할 수 있었습니다. <br>
                                        <br>
                                        러셀학원에서 좋았던 시스템은 <strong>총평노트와 담임선생님</strong>입니다.  <br>
                                        메대프나 교육청 모의고사, 평가원 모의고사 이후 모의고사 총평노트를 이용해 시험 자체에 대한 피드백을 할 수 있었습니다. <br>
                                        <br>
                                        <strong>담임선생님은 저의 지치지 않은 노력의 원동력</strong>이십니다. <br>
                                        가장 가까운 위치에서 공부하는 모습을 지켜봐 주시고 저의 변동하는 성적에 대해 계속 함께 고민해 주셨기 때문에 저의 수험생활에 대해 제일 잘 아시는 분이십니다. 그런 분이 곁에서 피드백은 물론이고 칭찬과 응원을 아낌없이 쏟아 주셔서 정말 지칠 틈이 없었습니다. 
            
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>세명대 한의예과 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 영통 정인지
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <span><img src="<%=Application("img_path_russel")%>/m_russel/russel_yt/2024/first/cont02_stu_jij.png" alt="정인지" /></span>
                                        <a href="javascript:CastPopup('https://tv.naver.com/v/34827583');"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/ico_play.png" alt="" /></a>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“대입을 일찍 시작하는 게 남들보다 한 발, 또는 두 발 이상을 
                                        &nbsp;&nbsp;먼저 갈 수 있는 기회라고 생각했습니다.”
                                    </p>
                                    <p class="txt">
                                        1월부터 3월 전까지 개념 강의를 끝내면 남들이 3월부터 개념 강의를 듣고 있을 때에 <strong>보다 앞서서 기출문제나 N제를 풀고 있을 것</strong>입니다. <br>
                                        대입을 일찍 시작하는 게 남들보다 한 발, 또는 두 발 이상을 <strong>먼저 갈 수 있는 기회</strong>라고 생각했습니다.<br>
                                        <br>
                                        바자관의 장점은 선생님들과 조교님들의 면학분위기 조성이라고 생각합니다.  <strong>졸 때마다 깨워 주시고 학습 지도</strong>도 해 주시고 아침에 졸린 아이들을 모아 두고 스트레칭을 시키는 여러 이벤트나 생활관리 강화 기간의 도입으로 <strong>면학분위기가 조성되는 공간</strong>이라는 것이 러셀에 계속 남게 만든 메리트라고 생각합니다.<br>
                                        <br>
                                        또한,  거의 매달 응시하는 <strong>메대프 시험에서 제 위치를 확인</strong>하면서 내가 강반 당할 수도 있다는 불안감을 가지게 되어 공부를 하게 하는 동기 부여가 되었습니다.<br>
                                        <br>
                                        담임선생님의 좋았던 점은 <strong>언제나 상담을 받아 주셨으며</strong> 면학분위기 조성을 위해서 집중 관리 기간을 도입하는 등 저같이 본인이 통제가 되지 않는 학생들을 위하여 <strong>적절한 통제</strong>를 걸어주시는 것이 정말 좋았습니다.
                                        
                                    </p>
                                </div>
                            </div>
                        </div>
                        <!-- <div class="swiper-pagination page"></div> -->
                    </div>
                </div>
            </div>
            <% ElseIf campus_code = "CD0342" or campus_code = "CD0349" Then '대구/울산 %>
            <div class="review-box">
                <div class="review-rolling-inner <%=campusName%>">
                    <div class="swiper">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>연세대 의예과</strong> 합격</p>
                                        </dt>
                                        <dd>러셀 센텀 김민재<br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>97%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“겨울부터 빠르게 시작했기에<br>
                                        &nbsp;&nbsp;안정감 있는 수험생활을 보낼 수 있었습니다.”
                                    </p>
                                    <p class="txt">“최대한 많은 양을 정확하게” 공부하는 것이 <br> 수험생의 기본 자세라고
                                        생각합니다.<br> 입시가 고도화됨에 따라 풀어야 할 자료가 매우 많기 때문에
                                        <strong>겨울부터 빠르게 개념을 정리</strong>했고, 이것이 안정감 있는 수험생활을
                                        보내는 데 주효했습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>전북대 의예과</strong> 합격</p>
                                        </dt>
                                        <dd>러셀CORE 광주 김준표<br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>80.7%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“빠르게 시작했던 점이 본격적으로 공부를 할 때 <br>
                                        &nbsp;&nbsp;집중력을 유지하게 하는 원동력이 되었습니다.”
                                    </p>
                                    <p class="txt"><strong>재수를 결심하고 중요한 것은 수능 학습의 감각을 잃지 않는 것</strong>이라 생각하였고, 빠르게 공부에 집중하기 위해 우선선발반을 선택했습니다.  1~2월을 학습 예열의 기간으로 삼았고, 이것이 3월부터 본격적인 공부를 하면서 <strong>집중력을 유지할 수 있는 원동력</strong>이 되어주었습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>인제대 의예과</strong> 합격</p>
                                        </dt>
                                        <dd>최상위권 남학생 의대전문관 박민규
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>55.8%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“남들보다 일찍 시작했기 때문에<br>
                                        &nbsp;&nbsp;더 견고한 실력을 만들 수 있었습니다.”
                                    </p>
                                    <p class="txt">재수를 결심하고 <strong>일찍 준비해  더 견고한 실력을 가지고 싶었습니다.</strong>  빠르게 시작하여 좋았던 점은 재수생활에 적응할 수 있는 기간을 먼저 가짐으로써 1년을 더 안정적으로 보낼 수 있다고 생각합니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>을지대 의예과</strong> 합격</p>
                                        </dt>
                                        <dd>러셀CORE 대전 김우찬
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>43.2%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“일찍 시작했기 때문에<br>
                                        &nbsp;&nbsp;시간에 쫓기지 않고 공부할 수 있었습니다.”
                                    </p>
                                    <p class="txt"><strong>시간적 여유를 갖고 개념부터 다시 쌓고자 대입을 일찍 시작</strong>하게 되었습니다. 대입을 일찍 시작하니 공부 방향이나 계획을 수정하는 데 있어서 시간에 쫓기지 않을 수 있었던 것 같습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>연세대</strong>(미래) <strong>의예과</strong> 합격</p>
                                        </dt>
                                        <dd>러셀CORE 대전 이승섭
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>38.5%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“더 많은 공부시간을 확보할 수 있어<br>
                                        &nbsp;&nbsp;탄탄한 기본기를 다질 수 있었습니다.”
                                    </p>
                                    <p class="txt">빠르게 시작하면 할수록 <strong>더 많은 공부시간을 확보</strong>할 수 있다고 생각하여 2022년이 되자마자 새로운 마음으로 시작하였습니다. <strong>1월에 부족했던 개념들을 다시 한번 다져 놓아</strong> 재수생활 동안 개념에 구멍이 생기지 않았고, 일찍 시작한 만큼 탄탄한 기본기를 다질 수 있었습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>서울대 경제학과</strong> 합격</p>
                                        </dt>
                                        <dd>러셀 센텀 안정후
                                            <br>
                                            <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>15.8%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“빠르게 남들을 따라잡고 싶어<br>
                                        &nbsp;&nbsp;러셀 우선선발반을 선택하였습니다.”
                                    </p>
                                    <p class="txt">새롭게 미적분을 선택하여 배우기 시작했기 때문에, <strong>빠르게 남들을 따라잡고 싶어 대입을 일찍 시작</strong>하게 되었습니다.  바자관은 탁 트인 개방형 구조이기 때문에 혼자가 아닌, 함께 공부한다는 느낌이 들고 다른 친구들을 보며 경쟁심이 생겨 더욱 열심히 공부할 수 있습니다. 
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>덕성여대 약학과 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 평촌 신영진
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>12.7%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“복기를 더 빨리 시작했기에 <br>
                                        &nbsp;&nbsp;부족한 점을 빠르게 정리할 수 있었습니다.”
                                    </p>
                                    <p class="txt">같은 공부를 다시 하는 것이어도 늦게 시작하면 잘 기억하지 못할 것 같아 일찍 시작했습니다. 아무래도 복기를 더 빨리 시작했기 때문에 <strong>개념을 정리하는 시간을 단축</strong>할 수 있었던 것 같습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>연세대<br>
                                            융합인문사회과학부 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 강남 이혜민
                                            <br>
                                            <span>(재원기간:2022년 1월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>43.1%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“선생님들의 커리큘럼의 출발점과 동시에 시작할 수 있어
                                        체계적으로 공부할 수 있었습니다.”
                                    </p>
                                    <p class="txt">입시 실패로 인해 좌절만으로 가득 찬 시간을 보내기보다는 <strong>빨리 할 수 있는 것을 모색하는 것이 필요하다고 느껴 1월에 시작</strong>하였습니다. 대부분의 선생님이 1월부터 첫 커리를 시작하는데, 그 커리의 출발점을 동시에 시작할 수 있어 체계적으로 공부할 수 있었습니다.
            
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div>2023</div>
                                            <p><strong>연세대<br>
                                            융합과학공학부 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 분당 박예은
                                            <br>
                                            <span>(재원기간:2022년 2월~2022년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>32.1%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“간절하면 한두 달도 낭비할 수 없다는 생각에 <br>
                                        &nbsp;&nbsp;1월부터 공부를 시작하였습니다.”
                                    </p>
                                    <p class="txt">재수는 3월부터 시작해도 된다는 말도 간간이 들었는데요. 저는 간절하면 한두 달도 낭비할 수 없다는 생각에 러셀에 1월에 등록했습니다.  그 결과 1,2월에 상대적으로 <strong>여유롭게 다시 한번 전 과목의 개념을 꼼꼼하게 훑을 수 있었습니다.</strong>
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div class="l-year">2022</div>
                                            <p><strong>한양대 의예과 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 대치 한준
                                            <br>
                                            <span>(재원기간:2021년 1월~2021년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>89%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“남들보다 빨리 공부를 시작했기에<br>
                                        &nbsp;&nbsp;더 빨리 안정적인 궤도에 진입할 수 있었습니다.”
                                    </p>
                                    <p class="txt">남들보다 빨리 공부를 시작했기에 <strong>취약한 과목을 집중적으로 공략</strong>할 수 있었고, 더 빨리 안정적인 궤도로 진입할 수 있었습니다.  바른공부 자습전용관에서 빠르게 공부를 시작한 친구들의 모습이 큰 동기부여가 되었습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div class="l-year">2022</div>
                                            <p><strong>경상대 의예과 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 센텀 손영우<br>
                                            <span>(재원기간:2021년 1월~2021년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>89%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“수능에 대한 기억이 생생히 남아 있어서 <br>&nbsp;&nbsp;부족한 점을 빠르게 점검할 수 있었습니다.”
                                    </p>
                                    <p class="txt">“할거면 제대로 해보자!”라고 생각해서 우선선발반이 시작한 날부터 들어갔습니다. <strong>수능에 대한 기억이 남아있는 상태에서 부족한 점을 점검</strong>해 볼 수 있었고,  선택과목을 변경했는데 일찍 시작함으로써 작년에 그 과목을 치룬 학생들과 비슷한 수준에서 시작할 수 있었습니다.
                                    </p>
                                </div>
                            </div>
                            <div class="swiper-slide">
                                <div class="p-info">
                                    <dl>
                                        <dt><div class="l-year">2022</div>
                                            <p><strong>서울대 인문계열 </strong> 합격</p>
                                        </dt>
                                        <dd>러셀 목동 우정민<br>
                                            <span>(재원기간:2021년 1월~2021년 수능까지)</span>
                                        </dd>
                                    </dl>
                                    <div>
                                        <p><strong>84%</strong><span>향상</span></p>
                                        <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/first_overall/cont02_graph01.jpg" alt="" /></div>
                                    </div>
                                </div>
                                <div class="p-review">
                                    <p class="tit">“빠르게 준비를 시작하는 것이<br>
                                        &nbsp;&nbsp;시간 관리에 큰 도움이 되었습니다.”
                                    </p>
                                    <p class="txt"><strong>빠르게 준비를 시작하는 것이 시간 관리에 더욱 도움</strong>이 될 것 같아 빠르게 시작하였습니다. 좋은 점은 수험생활에 집중할 수 있다는 점, 그리고 효과적으로 시간을 쓸 수 있다는 점입니다.
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="swiper-pagination page"></div>
                    </div>
                </div>
            </div>
            <% End If %>
        </div>
    </div>
    <!-- //cont04 -->
</div>