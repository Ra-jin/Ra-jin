<div class="cont js-cont <%=campusName%>">
    <div class="cont04">
        <div class="inner">
            <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/cont04_tit.png" alt="러셀에서 최상위권 대입성공이 가능한 이유 러셀에는 최상위권 수험생을 위한 수능에 최적화된 시스템이 있습니다."></h3>
            <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_01.png" alt="01"></h5>
            <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/baja_tit.png" alt="면학분위기로 소문난 바른공부 자습전용관"></h4>

            <% If isCore = 1 OR sCampusCode = "CD0250" OR sCampusCode = "CD0349" OR sCampusCode = "CD0342" Then '코어/부천/울산/대구 %>
            <a href="/info/schoolBus.asp" class="school-bus"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/school_bus.png" alt="01"></a>
            <% End if %>

            <% If isCore = 1 OR sCampusCode = "CD0248" OR sCampusCode = "CD0244" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/평촌/분당/대구/울산 %>
            <ul class="baja-list core">
            <% Else %>
            <ul class="baja-list">
            <% End if %>
                <li>
                    <% If sCampusCode = "CD0257" Then '중계 %>
                    <p>고득점 학생들이 모여 경쟁하는 <strong>집단적인 면학분위기</strong></p>
                    <% Else %>
                    <p>최상위권이 모여 경쟁하는 <strong>집단적인 면학분위기</strong></p>
                    <% End if %>
                    <div>
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0246" Then '인트로/강남/대치/센텀 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular/baja_01.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/baja_01.jpg" alt="">
                        <% end if %>
                    </div>
                    <ul>
                        <% If sCampusCode = "CD0257" Then '중계 %>
                        <li><strong>고득점 학생들의 학구열을 체감할 수 있는 개방형 구조</strong>로
                            자연스럽게 학습 동기로 부여
                        </li>
                        <% Else %>
                        <li><strong>최상위권의 학구열을 체감할 수 있는 개방형 구조</strong>로
                            자연스럽게 학습 동기로 부여
                        </li>
                        <% End if %>
                        <li><strong>입시 담임선생님의 관리</strong>하에 강력한 면학분위기<br>
                        
                            형성 및 유지
                        </li>
                    </ul>
                </li>
                <li>
                    <p>수능 시간표와 동일한  <strong>바자관 표준 시간표</strong></p>
                    <div style="position:relative;">
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0346" OR sCampusCode = "CD0248" OR sCampusCode = "CD0244" OR sCampusCode = "CD0246" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" OR sCampusCode = "CD0345" Then '인트로/대치/영통/코어대전/코어청주/평촌/분당/센텀/대구/코어광주/코어창원 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular/baja_02.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/baja_02.jpg" alt="">
                        <% end if %>
                        <a href="javascript:void(0)" class="bt-tt02" style="position:absolute;bottom:0;left:0;width:100%;height:60px;"></a>
                    </div>
                    <ul>
                        <li>실제 수능 시간표와 동일한 표준 시간표로 <strong> 학습&middot;생활<br>
                        리듬이 수능에 최적화</strong>
                        </li>
                        <li>개인 맞춤 학습 스케쥴 운영과 바자관 의무자습으로 <br>
                        <strong>매일 최대 자습시간 확보</strong>
                        </li>
                    </ul>
                </li>
                <li>
                    <p>이동에 낭비하는 시간없이 
                        <strong>학습 동선 최소화</strong>
                    </p>
                    <div>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular/baja_03.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/baja_03.jpg" alt="">
                        <% end if %>
                    </div>
                    <% If sCampusCode = "CD0247" Then '강남 %>
                    <p class="l-txt mt10">※ 강의실은 운영 상황에 따라 별관(다른 건물)으로 이동할 수도 있습니다.</p>
                    <% end if %>
                    <ul>
                        <li><strong>한 건물 내에서 강의실-바자관-<%=baja_txt%>을<br class="br"> 한번에<br>
                        해결</strong>할 수 있어 이동에 낭비되는 시간 최소화

                        </li>
                        <li><strong>효율적인 시간관리가 가능</strong>하여 수업&middot;자습시간에<br>
                        높은 집중력 발휘, 학습량 극대화
                        </li>
                    </ul>
                </li>
                <li>
                    <p>학습에만 집중할 수 있는 
                        <strong>학습에 최적화된 환경</strong></p>
                    <div style="position:relative;">
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0346" OR sCampusCode = "CD0248" OR sCampusCode = "CD0246" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '인트로/강남/대치/영통/코어대전/코어청주/평촌/센텀/대구/코어광주 %>
                        <img src="<%=Application("img_path_russel")%>/intro/2025/regular/baja_04.jpg" alt="">
                        <% Else %>
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/baja_04.jpg" alt="">
                        <% end if %>
                        <a href="javascript:void(0)" class="bt-tt" style="position:absolute;bottom:0;right:0;width:90px;height:90px;"></a>
                    </div>
                    <ul>
                        <li><strong>개방형 구조</strong>로 되어 있어 지속적으로 긴장감 유지 및<br>
                        학습동기 부여

                        </li>
                        <li><strong>쾌적한 학습공간, 수업과 자습공간 분리 등</strong> 학습 효율성을<br>
                        높이기 위해 설계된 학습시설
                        </li>
                    </ul>
                </li>
                <% If isCore = 1 OR sCampusCode = "CD0248" OR sCampusCode = "CD0244" OR sCampusCode = "CD0342" OR sCampusCode = "CD0349" Then '코어/평촌/분당/대구/울산 %>
                <li>
                    <p>양질의 급식이 제공되는 
                        <strong>자체 식당 운영</strong></p>
                    <div style="position:relative;">
                        <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/baja_05.jpg" alt="">
                    </div>
                    <ul>
                        <li>자체 식당 운영으로 <strong>균형 잡힌 식단 유지</strong>
                        </li>
                        <li>맛과 영양을 고려한 건강하고 든든한 한 끼를<br>
                         재원생의 <strong>가장 가까운 곳에서 안전하게 준비</strong>
                        </li>
                        <li>외부와의 접촉과 이동시간 최소화로 <strong>학습에 몰입 가능</strong></li>
                    </ul>
                </li>
                <% End If %>
            </ul>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">*학원별로 시설 및 운영 방법은 상이할 수 있습니다.</p>
            <% End If %>
            <a class="btn-black" href="<%=study_hall%>"><span>바른공부 자습전용관 자세히 보기</span></a>
        </div>
        
        <!-- 바자관 시간표 -->
        <!-- #include virtual = "/intro/2025/regular/baja_time_table.asp" -->
        <!-- //바자관 시간표 -->
        <!-- 바자관 시설보기 팝업 -->
        <div class="layer-pop layer">
            <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/bt_close.png" alt="닫기"></a>
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/intro/2025/regular/sh_slide_pop_intro.jpg" alt="" />
            </div>
            <% ElseIf sCampusCode = "CD0247" OR sCampusCode = "CD0344" OR sCampusCode = "CD0248" OR sCampusCode = "CD0257" OR sCampusCode = "CD0245" OR sCampusCode = "CD0250" OR sCampusCode = "CD0244" OR sCampusCode = "CD0349" OR sCampusCode = "CD0345" Then '강남/코어전주/평촌/중계/목동/부천/분당/울산/코어창원 %>
            <div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/sh_slide_pop.jpg" alt="" />
            </div>
            <% Else %>
            <div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/intro/2025/regular/sh_slide_pop.jpg" alt="" />
            </div>
            <% End If %>
        </div>
        

    </div>
     
    <div class="cont05">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_02.png" alt="02"></h5>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/cont05_tit.png" alt="메가스터디 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></h4>
        
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
        <!--#include virtual="/intro/2025/regular/teacher_slide.asp" -->
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
                <li>
                    <dl>
                        <% If sCampusCode = "CD0257" Then '중계 %>
                        <dt>수능 고득점을 만드는 단계별 커리큘럼</dt>
                        <% Else %>
                        <dt>수능 1등급을 만드는 단계별 커리큘럼</dt>
                        <% End If %>
                        <dd>정규&middot;특강 단과</dd>
                    </dl>
                    <ul>
                        <% If sCampusCode = "CD0341" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" Then '코어대전/코어원주/코어전주/코어창원/코어청주 %>
                        <li>
                            메가스터디 수능 전문 강사진의 몰입감 높은 현장강의와<br>
                            대치동 LIVE 강의
                        </li>
                        <% ElseIf sCampusCode = "CD0342" OR sCampusCode = "CD0340" OR sCampusCode = "CD0349" Then '대구/코어광주/울산 %>
                        <li>
                            메가스터디 온&middot;오프 강사진의 몰입감 높은 현장강의와<br>
                            대치동 LIVE 강의
                        </li>
                        <% Else %>
                        <li>
                            메가스터디 수능 전문 강사진의 몰입감 높은 현장강의
                        </li>
                        <% End If %>
                        <li>
                            평일 저녁/주말 시간대에 필요한 수업만 전략적으로 선택
                        </li>
                    </ul>
                    <a href="<%=go3_url%>">바로가기</a>
                </li>
                <% If sCampusCode <> "CD0341" and sCampusCode <> "CD0343" and sCampusCode <> "CD0340" Then '코어대전/코어원주/코어광주 제외 %>
                <li>
                    <span>N수<br>
                    전용</span>
                    <dl>
                        <dt>오직 N수생을 위한 평일 오전/오후 단과
                        </dt>
                        <dd>AM단과
                        </dd>
                    </dl>
                    <ul>
                        <li>평일 오전/오후 시간대에 체계적인 과목 편성

                        </li>
                        <li>관리력이 강력한 선생님의 N수생 전용 집중 관리형 수업

                        </li>
                    </ul>
                    <a href="<%=am_url%>">바로가기</a>
                </li>
                <% End If %>
            </ul>
        </div>
    </div>
    <div class="cont06">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_03.png" alt="03"></h5>
        <% If sCampusCode = "CD0257" Then '중계 %>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/cont06_tit.png" alt="메가스터디 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></h4>
        <% Else %>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/cont06_tit.png" alt="메가스터디 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></h4>
        <% End If %>
        <div class="inner">
            <div class="card-box">
                <% If sCampusCode = "CD0257" Then '중계 %>
                <h4>치열한 입시에서 목표 대학 합격을 위한 <strong>전문적인 입시관리</strong></h4>
                <% Else %>
                <h4>치열한 입시에서 최상위권 대학 합격을 위한 <strong>전문적인 입시관리</strong></h4>
                <% End If %>
                <ul>
                    <li>
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0341" OR sCampusCode = "CD0346" OR sCampusCode = "CD0248" OR sCampusCode = "CD0257" OR sCampusCode = "CD0250" OR sCampusCode = "CD0246" OR sCampusCode = "CD0349" OR sCampusCode = "CD0345" Then '인트로/강남/대치/코어대전/코어청주/평촌/중계/부천/센텀/울산/코어창원 %>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/manage01.jpg" alt=""></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/manage01.jpg" alt=""></div>
                        <% End If %>
                        <p>1:1 맞춤 입시전략 제시</p>
                        <ul>
                            <li>
                                수능 성적부터 모의고사까지 재원생의 <strong>성적 데이터를<br>
                                체계적으로 누적 관리</strong>
                            </li>
                            <li>
                                누적 관리된 데이터를 기반으로 <strong>개인 목표에 맞춘 입시<br>
                                (수시/정시)전략 제시</strong>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0245" Then '인트로/목동 %>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/manage02.jpg" alt=""></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/manage02.jpg" alt=""></div>
                        <% End If %>
                        <p>1:1 맞춤 입시상담 진행
                        </p>
                        <ul>
                            <li>
                                개별 성적 포트폴리오 기반으로 <strong>체계적이고<br> 전문적인 1:1 맞춤 상담</strong> 진행
                            </li>
                            <li>
                                목표 대학 합격을 위한 <strong>입시 전문가의 수시/<br>정시 지원 전략 컨설팅</strong> 진행
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="card-box">
                <h4>수능까지 성취도 있는 학습을 위한 
                    <strong>체계적인 학습관리</strong></h4>
                <ul>
                    <li>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/manage03.jpg" alt=""></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/manage03.jpg" alt=""></div>
                        <% End If %>
                        <p>1:1 맞춤 학습 상담 및 학습 전략
                        </p>
                        <ul>
                            <li>
                                재원생의 <strong>성적 데이터와 학습 현황</strong>을 바탕으로<br><strong>개인 목표에 맞춘 학습 전략 제시</strong>
                            </li>
                            <li>1:1 학습 상담을 통해 <strong>과목별 보완점과 학습 설계 및 점검</strong>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/manage04.jpg" alt=""></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/manage04.jpg" alt=""></div>
                        <% End If %>
                        <p>학습법 특강 및 설명회 진행
                        </p>
                        <ul>
                            <li>
                                올바른 학습 습관 형성을 위한 <strong>러셀 학습 플래너,<br>
                                 러셀 총평노트 등 활용법 특강
                                </strong> 진행


                            </li>
                            <li>
                                과목별 선생님의 <strong>과목별 학습 전략 특강, 모의고사<br>분석 및 해설 특강</strong> 등 진행
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <div class="card-box">
                <h4>집단적인 면학분위기 형성을 위한 
                    <strong>엄격한 생활관리</strong></h4>
                <ul>
                    <li>
                        <% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0341" OR sCampusCode = "CD0342" Then '인트로/강남/대치/코어대전/대구 %>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/manage05.jpg" alt=""></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/manage05.jpg" alt=""></div>
                        <% End If %>
                        <p>엄격한 출결 관리 및 태도 점수 제도
                        </p>
                        <ul>
                            <li>
                                <strong>매 교시 엄격한 출결 관리</strong>와 전자 출결 관리 시스템, <strong>바자관 상시 모니터링</strong>
                            </li>
                            <li>
                                면학분위기 저해요소 엄격 관리 및 <strong>태도 점수 운영으로 최대 강제 퇴원 조치</strong>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <% If sCampusCode = "INTRO" Then '인트로 %>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/manage06.jpg" alt=""></div>
                        <% Else %>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/manage06.jpg" alt=""></div>
                        <% End If %>
                        <p>정신적 멘토링
                        </p>
                        <ul>
                            <li>
                                학생중심 사고를 기반하여 학생에 대한 존중, 배려 등 <strong>동반자 역할</strong>
                            </li>
                            <li>
                                <strong>바자관 앞 또는 바자관 내 상주</strong>하여 가장 가까운 곳에 함께 생활
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    <div class="cont07">
        <h5 class="num-flag" data-aos="zoom-in"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_04.png" alt="04"></h5>
        <h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/cont07_tit.png" alt="학습 의욕을 높여주는 승반 강반/장학제도"></h4>
        <div class="inner">
            <div class="card-box">
                <h4>명확한 목표 지향점과 학습 동기 부여하는 <strong>승반&middot;강반 제도</strong></h4>
                <ul class="type02">
                    <li>
                        <ul>
                            <% If sCampusCode = "CD0343" Then '코어원주 %>
                            <li>
                                모의고사, 평가원 성적과 태도 점수를 바탕으로 엄격하게 <strong>수준별 반편성 실시 및 연 6회 수준별 승반&middot;강반 운영</strong>
                            </li>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <li>
                                모의고사, 평가원 성적과 태도 점수를 바탕으로 엄격하게 <strong>수준별 반편성 실시 및 연 1~2회 수준별 승반&middot;강반 운영</strong>
                            </li>
                            <% ElseIf sCampusCode = "CD0246" Then '센텀 %>
                            <li>
                                모의고사, 평가원 성적과 태도 점수를 바탕으로 엄격하게 <strong>수준별 반편성 실시 및 연 4~5회 수준별 승반&middot;강반 운영</strong>
                            </li>
                            <% Else %>
                            <li>
                                모의고사, 평가원 성적과 태도 점수를 바탕으로 엄격하게 <strong>수준별 반편성 실시 및 연 2~3회 수준별 승반&middot;강반 운영</strong>
                            </li>
                            <% End If %>
                            <li>
                                바자관 재원생들간의 <strong>선의의 경쟁, 학구열에 대한 보상,</strong> 반대로 <strong>학습 상태에 대한 경각심</strong>을 심어주며 명확한 목표 지향점 제공
                            </li>
                            <% If sCampusCode = "CD0244" Then '분당 %>
                            <li>
                                학습동기 부여로 <strong>집단적인 면학분위기와<br>
                                 긍정적인 긴장감 조성, 지속적인 학습 태도 및<br>
                                 성적 향상</strong> 관리 가능
                            </li>
                            <% End If %>
                        </ul>
                        <div class="arrow-wrap">
                            <% If sCampusCode = "CD0343" OR sCampusCode = "CD0257" OR sCampusCode = "CD0244" OR sCampusCode = "CD0246" OR sCampusCode = "CD0345" OR sCampusCode = "CD0245" Then '코어원주/중계/분당/센텀/코어창원/목동 %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/cont07_graph.jpg" alt=""></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/cont07_graph.jpg" alt=""></div>
                            <% End If %>
                            <div class="arrow-l"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/arrow_l.png" alt=""></div>
                            <div class="arrow-r"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/arrow_r.png" alt=""></div>
                            <% If sCampusCode = "INTRO" Then '인트로 %>
                            <p class="r-txt">※  반편성 및 장학혜택은 학원별 홈페이지에서 확인 바랍니다.
                            </p>
                            <% End If %>
                        </div>
                    </li>
                </ul>
                <div class="ico-plus"><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_plus.jpg" alt=""></div>
                <h4>학구열에 대한 보상과 학습 동기 부여하는 
                    <strong>장학 제도</strong></h4>
                <ul class="type02">
                    <li>
                        <div><img src="<%=Application("img_path_russel")%>/intro/2025/regular/cont07_trophy.jpg" alt=""></div>
                        <ul>
                            <li>
                                <strong>바자관 입학 시 입학 성적에 따라 장학혜택 제공</strong>
                            </li>
                            <li>
                                우수한 재원생들이 수능까지 더 좋은 결과를 낼 수 있도록 적극적으로 지원
                            </li>
                            <li>승반&middot;강반 제도에서 <strong>승반 적용 시 함께 적용</strong>되어 <strong>재원생들의 노력과 성공의 결과를 응원</strong>하며, 학습 동기와 성취 부여

                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>