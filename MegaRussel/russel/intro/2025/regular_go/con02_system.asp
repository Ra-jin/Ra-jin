<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <div class="inner">
            <% If sCampusCode = "CD0245" Then '목동 %>
            <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont04_tit.png" alt="러셀 파이널 재학생 정규반에는 재학생의 대입성공에 최적화된 시스템이 있습니다."></h3>
            <% Else %>
            <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont04_tit.png" alt="러셀 재학생 정규반에는 재학생의 대입성공에 최적화된 시스템이 있습니다."></h3>
            <% End If %>
            <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_01.png" alt="01"></h5>
            <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/baja_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관"></h4>

            <% If isCore = 1 OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/울산/대구 %>
            <a href="/info/schoolBus.asp" class="school-bus"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/school_bus.png" alt="01"></a>
            <% End if %>

            <% If sCampusCode = "CD0344" OR sCampusCode = "CD0340" OR sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0244" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0346" Then '코어전주/코어광주/코어원주/코어창원/분당/평촌/대구/울산/코어청주 %>
            <ul class="baja-list wide-first">
            <% ElseIf sCampusCode = "CD0341" Then '코어대전 %>
            <ul class="baja-list wide-last">
            <% Else %>
            <ul class="baja-list">
            <% End if %>
                <li>
                    <h5>건강한 경쟁을 통한 <strong>집단적인 면학분위기</strong></h5>
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <p>
                        <strong>학생들의 학구열</strong>을 체감할 수 있는<br>
                        <strong>개방형 구조</strong>로 학습 동기 부여 및 긴장감 유지
                    </p>
                    <% Else %>
                    <p>
                        <strong>최상위권 학생들의 학구열</strong>을 체감할 수 있는<br>
                        <strong>개방형 구조</strong>로 학습 동기 부여 및 긴장감 유지
                    </p>
                    <% End if %>
                    <div>
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0246" Then '인트로/대치/센텀 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/baja_01.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/baja_01.jpg" alt="">
                        <% end if %>
                    </div>
                </li>
                <li>
                    <h5>이동에 낭비하는 시간없이 
                        <strong>학습 동선 최소화</strong>
                    </h5>
                    <p>
                        한 건물 내에서 <strong>수업-자습-식사를 해결</strong>하는 효율적인 동선<br>
                        <strong>충분한 자습시간 확보, 학습 집중력 향상
                        </strong>
                    </p>
                    <div>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/baja_02.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/baja_03.jpg" alt="">
                        <% end if %>
                    </div>
                </li>
                <li>
                    <h5>충분한 자습시간 확보 <strong>표준 시간표</strong></h5>
                    <% If sCampusCode = "CD0244" Then '분당 %>
                    <p>
                        <strong>재학생(고3)의 일정을 고려한 학습 스케줄 운영,</strong><br>
                        수능과 유사한 시간표로 <strong>학습 리듬을 수능에 최적화</strong>
                    </p>
                    <% Else %>
                    <p>
                        <strong>재학생의 일정을 고려한 학습 스케줄 운영,</strong><br>
                        수능과 유사한 시간표로 <strong>학습 리듬을 수능에 최적화</strong>
                    </p>
                    <% end if %>
                    <div style="position:relative;">
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0346" OR sCampusCode = "CD0248" OR sCampusCode = "CD0244" OR sCampusCode = "CD0246" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" Then '인트로/대치/영통/코어대전/코어청주/평촌/분당/센텀/대구/코어광주/코어창원 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/baja_03.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/baja_02.jpg" alt="">
                        <% end if %>
                        <a href="javascript:void(0)" class="bt-tt02" style="position:absolute;bottom:0;left:0;width:100%;height:60px;"></a>
                    </div>
                </li>
                <li>
                    <% If sCampusCode = "CD0341" Then '코어대전 %>
                    <h5>건강하고 슬기로운 식생활 
 
                        <strong>자체 식당 운영</strong></h5>
                    <p>
                        자체 식당 운영으로 <strong>건강하고 균형 잡힌 식단 제공,<br>
                            식사를 위한 이동 시간을 줄여 학습에 더욱 몰입 가능</strong>
                    </p>
                    <% Else %>
                    <h5>학습에만 집중할 수 있는 
                        <strong>최적화된 공간</strong></h5>
                    <p>
                        개방형 구조, 벽면 통유리, 쾌적한 공간, 수업/자습 공간 분리 등<br>
                        <strong>학습 효율성을 높이기 위해 설계된 학습시설 </strong>
                    </p>
                    <% end if %>
                    <div style="position:relative;">
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0346" OR sCampusCode = "CD0248" OR sCampusCode = "CD0246" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '인트로/강남/대치/영통/코어청주/평촌/센텀/대구/코어광주 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/baja_04.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/baja_04.jpg" alt="">
                        <% end if %>
                        <a href="javascript:void(0)" class="bt-tt" style="position:absolute;bottom:0;right:0;width:90px;height:90px;"></a>
                    </div>
                </li>
                <% If sCampusCode = "CD0341" Then '코어대전 %>
                <li>
                    <h5>학습에만 집중할 수 있는 
                        <strong>최적화된 공간</strong></h5>
                    <p>
                        개방형 구조, 벽면 통유리, 쾌적한 공간, 수업/자습 공간 분리 등<br>
                        <strong>학습 효율성을 높이기 위해 설계된 학습시설 </strong>
                    </p>
                    <div>
                        <div style="position:relative;">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/baja_05.jpg" alt="">
                            <a href="javascript:void(0)" class="bt-tt" style="position:absolute;bottom:0;right:0;width:90px;height:90px;"></a>
                        </div>
                        <div style="position:relative;">
                            <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/baja_06.jpg" alt="">
                            <a href="javascript:void(0)" class="bt-tt03" style="position:absolute;bottom:0;right:0;width:90px;height:90px;"></a>
                        </div>
                    </div>
                </li>
                <% ElseIf sCampusCode = "CD0344" OR sCampusCode = "CD0340" OR sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0244" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" OR sCampusCode = "CD0346" Then '코어전주/코어광주/코어원주/코어창원/분당/평촌/대구/울산/코어청주 %>
                <li>
                    
                    <% If sCampusCode = "CD0248" Then '평촌 %>
                    <h5>
                        건강과 조화를 이루는 균형잡힌 식단, <strong>자체 식당 운영</strong>
                    </h5>
                    <% Else %>
                    <h5>
                        건강하고 슬기로운 식생활 <strong>자체 식당 운영</strong>
                    </h5>
                    <% End If %>
                    <p>
                        자체 식당 운영으로 <strong>건강하고 균형 잡힌 식단 제공,<br>식사를 위한 이동 시간을 줄여 학습에 더욱 몰입 가능</strong>
                    </p>
                    <div>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/baja_05.jpg" alt="">
                    </div>
                </li>
                <% End If %>
            </ul>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">*학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
            <% End If %>
            <a class="btn-black" href="<%=study_hall%>"><span>바른공부 자습전용관 자세히 보기</span></a>
        </div>
        
        <!-- 바자관 시간표 -->
        <!-- #include virtual = "/intro/2025/regular_go/baja_time_table.asp" -->
        <!-- //바자관 시간표 -->
        <!-- 바자관 시설보기 팝업 -->
        <div class="layer-pop layer">
            <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/bt_close.png" alt="닫기"></a>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/sh_slide_pop_intro.jpg" alt="" />
            </div>
            <% ElseIf sCampusCode = "CD0247" OR sCampusCode = "CD0344" OR sCampusCode = "CD0248" OR sCampusCode = "CD0257" OR sCampusCode = "CD0245" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0349" OR sCampusCode = "CD0345" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0340" OR sCampusCode = "CD0246" OR sCampusCode = "CD0346" Then '강남/코어전주/평촌/중계/목동/부천/분당/울산/코어창원/대치/영통/코어대전/코어광주/센텀/코어청주 %>
            <div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/sh_slide_pop.jpg" alt="" />
            </div>
            <% Else %>
            <div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/sh_slide_pop.jpg" alt="" />
            </div>
            <% End If %>
        </div>
        <% If sCampusCode = "CD0341" Then '코어대전 %>
        <div class="layer-pop02 layer">
            <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/bt_close.png" alt="닫기"></a>
            <div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/sh_slide_pop02.jpg" alt="" />
            </div>
        </div>
        <% End If %>
    </div>
     
    <div class="cont05">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_02.png" alt="02"></h5>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont05_tit.png" alt="자신의 상황과 수준에 맞춘 전략적 학습 설계 최상위권 수준별 맞춤 단과"></h4>
        
        <ul class="danka-list">
            <li>
                <p><%=danka_txt01%></p>
            </li>
            <li>
                <p><%=danka_txt02%></p>
            </li>
            <li>
                <p><%=danka_txt03%></p>
            </li>
            <li>
                <p><%=danka_txt04%></p>
            </li>
        </ul>

        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/regular_go/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        
        <div class="inner">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">※ 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
            <p class="r-txt">
                ※ 2025년 출강 선생님 기준<br>
                ※ 학원 운영에 따라, 출강 선생님은 변경 될 수 있습니다. 
            </p>
            <% Else %>
            <p class="r-txt">※ 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
            <% End If %>
            <ul class="danka-link">
                <% If sCampusCode = "CD0249" Then '영통 %>
                <li>
                    <dl>
                        <dt><%=go3_stxt%></dt>
                        <dd><%=go3_txt%></dd>
                    </dl>
                    <a href="<%=go3_url%>">바로가기</a>
                </li>
                <% Else %>
                <li>
                    <dl>
                        <dt>1년 커리큘럼으로 수능까지 체계적인 학습</dt>
                        <dd>정규&middot;특강 단과</dd>
                    </dl>
                    <a href="<%=go3_url%>">바로가기</a>
                </li>
                <% End If %>

                <% If sCampusCode = "INTRO" OR sCampusCode = "CD0344" OR sCampusCode = "CD0247" OR sCampusCode = "CD0250" OR sCampusCode = "CD0257" OR sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0248" OR sCampusCode = "CD0342" OR sCampusCode = "CD0246" OR sCampusCode = "CD0349" OR sCampusCode = "CD0346" Then '인트로/코어전주/강남/부천/중계/코어원주/코어창원/평촌/대구/센텀/울산/코어청주 %>
                <li>
                    <!-- <span>N수<br>
                    전용</span> -->
                    <dl>
                        
                        <% If sCampusCode = "CD0246" Then '센텀 %>
                        <dt>1등급 실력을 위한 내신/수능 기본기 완성</dt>
                        <dd>내신&middot;수능 대비 강좌</dd>
                        <% Else %>
                        <dt>내신 1등급을 위한 학교별/수준별 내신 대비</dt>
                        <dd><%=nesin_txt%></dd>
                        <% End If %>
                    </dl>
                    <a href="<%=nesin_url%>">바로가기</a>
                </li>

                <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                <!--바로가기 2개일 경우-->
                <!-- <li>
                    <dl>
                        <dt>여름방학 집중! 단기간 고밀도 학습</dt>
                        <dd>썸머 특강</dd>
                    </dl>
                    <a href="<%=nesin_url%>" style="left: 32%;">
                        [중3&middot;고1&middot;고2]
                    </a>
                    <a href="<%=nesin_url02%>" style="left: unset;right: -2%;">
                        [고3]
                    </a>
                </li> -->
                <li>
                    <dl>
                        <dt><%=nesin_stxt%></dt>
                        <dd><%=nesin_txt%></dd>
                    </dl>
                    <a href="<%=nesin_url%>">바로가기</a>
                </li>
                <li>
                    <dl>
                        <dt><%=nesin_stxt02%></dt>
                        <dd><%=nesin_txt02%></dd>
                    </dl>
                    <a href="<%=nesin_url02%>">바로가기</a>
                </li>
                <% End If %>
            </ul>
        </div>
    </div>
    <div class="cont06">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/ico_03.png" alt="03"></h5>
        <% If sCampusCode = "CD0257" Then '중계 %>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/cont06_tit.png" alt="입시 담임선생님의 재학생 맞춤 관리"></h4>
        <% Else %>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular_go/cont06_tit.png" alt="최상위권 전문 입시 담임선생님의 재학생 맞춤 관리"></h4>
        <% End If %>
        <div class="inner">
            <div class="card-box">
                <% If sCampusCode = "CD0244" Then '분당 %>
                <h4>학교와 병행해야 하는 재학생(고3)을 위한<br>
                    <strong>재학생(고3) 전문 담임선생님의 방과 후/주말 집중 관리</strong>
                </h4>
                <% Else %>
                <h4>학교와 병행해야 하는 재학생을 위한<br>
                    <strong>재학생 전문 담임선생님의 방과 후/주말 집중 관리</strong>
                </h4>
                <% End If %>
                <div class="c-con">
                    <% If sCampusCode = "CD0247" Then '강남 %>
                    <div class="con-list">
                        <p>입시관리</p>
                        <ul>
                            <li>
                                입시 결과 및 수능 성적을 기반으로 <strong>체계적인 1:1 상담</strong>
                            </li>
                            <li>
                                재원생 입시 결과를 활용하여<br>
                                <strong>개인 목표에 맞춘 시기별 입시(수시/정시) 방향 제시</strong>

                            </li>
                            <li>입시특강, 전형별 설명회 등 <strong>최신 입시 정보 제공</strong>
                            </li>
                        </ul>
                        <p>학습관리</p>
                        <ul>
                            <li>성적 데이터와 학습 현황 기반으로 <strong>과목별 보완점과 학습 방향 1:1 상담</strong>
                            </li>
                            <li><strong>목표 성적 맞춤</strong> 시기별 학습전략 제시</li>
                            <li>과목별 학습법 특강 및 설명회 제공으로 <strong>시기별 맞춤 학습전략 제안</strong></li>
                        </ul>
                        <p>생활관리</p>
                        <ul>
                            <li>면학분위기가 유지될 수 있도록 <strong>강력한 관리 및 태도 점수 운영</strong>
                            </li>
                            <li>러셀 학습 플래너 점검 및 피드백으로 <strong>학습 습관 및 방법 개선</strong></li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록 <br>
                            <strong>지속적인 상담으로 학습동기 부여</strong></li>
                        </ul>
                    </div>
                    <% ElseIf sCampusCode = "CD0250" Then '부천 %>
                    <div class="con-list">
                        <p>입시관리</p>
                        <ul>
                            <li>
                                개별 성적 포트폴리오 기반의 <strong>체계적, 전문적 개인 맞춤 상담 진행</strong>

                            </li>
                            <li>
                                합격생 데이터 기반으로 <strong>학생 목표에 맞춘 입시 방향(수시/정시) 제시</strong>
                            </li>
                        </ul>
                        <p>학습관리</p>
                        <ul>
                            <li>학습 스케줄 및 습관을 점검하여 <strong>효율적인 자습시간 관리</strong></li>
                            <li>내신/모의고사 성적 누적 관리로 <strong>취약점 확인 및 보완법 제안</strong></li>
                        </ul>
                        <p>생활관리</p>
                        <ul>
                            <li>학교와 병행하는 재학생에 맞춰 <strong>방과 후, 주말 집중 관리 진행</strong></li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록 <strong>1:1 정신적 멘토링 진행</strong></li>
                        </ul>
                    </div>
                    <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                    <div class="con-list">
                        <p>입시관리</p>
                        <ul>
                            <li>
                                입시 결과 및 수능 성적을 기반으로 체계적인 1:1 상담
                            </li>
                            <li>재원생 입시 결과를 활용하여 개인 목표에 맞춘 시기별 입시(수시/정시)<br>
                            방향 제시</li>
                            <li>입시 특강, 전형별 설명회 등 최신 입시 정보 제공</li>
                        </ul>
                        <p>학습관리</p>
                        <ul>
                            <li>성적 데이터와 학습 현황 기반으로 과목별 보완점과 학습 방향 1:1 상담
                            </li>
                            <li>목표 성적 맞춤 시기별 학습 전략 제시 과목별 학습법 특강 및<br>설명회 제공으로 시기별 맞춤 학습 전략 제안
                          </li>
                        </ul>
                        <p>생활관리</p>
                        <ul>
                            <li>면학분위기가 유지될 수 있도록 강력한 관리 및 태도 점수 운영
                            </li>
                            <li>러셀 학습 플래너 점검 및 피드백으로 학습 습관 및 방법 개선
                            </li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록 지속적인 상담으로 학습동기 부여
                            </li>
                        </ul>
                    </div>
                    <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                    <div class="con-list">
                        <p>입시관리</p>
                        <ul>
                            <li>
                                수시 지원을 위한 <strong>학생부 설계</strong>
                            </li>
                            <li>
                                합격생 데이터 기반으로 <strong>학생 목표에 맞춘 입시 방향(수시/정시) 제시</strong>
                            </li>
                        </ul>
                        <p>학습관리</p>
                        <ul>
                            <li>학습 스케줄 및 습관을 점검하여 <strong>효율적인 자습시간 관리</strong></li>
                            <li>모의고사 성적 누적 관리로 <strong>취약점 확인 및 보완법 제안</strong></li>
                        </ul>
                        <p>생활관리</p>
                        <ul>
                            <li>학교와 병행하는 재학생에 맞춰 <strong>방과 후, 주말 집중 관리 진행</strong></li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록 <strong>1:1 정신적 멘토링 진행</strong></li>
                        </ul>
                    </div>
                    <% Else %>
                    <div class="con-list">
                        <p>입시관리</p>
                        <ul>
                            <li>
                                수시 지원을 위한 <strong>내신 집중 관리, 학생부 설계</strong>
                            </li>
                            <li>
                                합격생 데이터 기반으로 <strong>학생 목표에 맞춘 입시 방향(수시/정시) 제시</strong>
                            </li>
                        </ul>
                        <p>학습관리</p>
                        <ul>
                            <li>학습 스케줄 및 습관을 점검하여 <strong>효율적인 자습시간 관리</strong></li>
                            <li>내신/모의고사 성적 누적 관리로 <strong>취약점 확인 및 보완법 제안</strong></li>
                        </ul>
                        <p>생활관리</p>
                        <ul>
                            <li>학교와 병행하는 재학생에 맞춰 <strong>방과 후, 주말 집중 관리 진행</strong></li>
                            <li>학습 고충 및 슬럼프를 극복할 수 있도록 <strong>1:1 정신적 멘토링 진행</strong></li>
                        </ul>
                    </div>
                    <% End If %>
                    <div class="swiper-container manage-slide">
                        <div class="swiper-wrapper">
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/manage01.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/manage02.jpg" alt=""></div>
                            <div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular_go/manage03.jpg" alt=""></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card-box">
                <h4>학습부터 합격까지<br>
                    <strong>학년에 맞춘 시기별 전략 제시</strong>
                </h4>
                <!--#include virtual="/intro/2025/regular_go/timeline.asp"-->
		        <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="r-txt">* 학원별로 관리 방법은 상이할 수 있습니다. 
                </p>
                <% Else %>
                <p class="r-txt">* 학원 운영에 따라 관리 방법은 변경될 수 있습니다. 
                </p>
                <% End If %>
            </div>
        </div>
    </div>
</div>