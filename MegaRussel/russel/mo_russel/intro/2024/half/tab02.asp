<div class="cont js-cont-wrap <%=campusName%>">
    <div class="cont03">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont03_tit.jpg" alt="러셀에서 반수 성공이 가능한 이유,러셀 반수생 특화 시스템에 있습니다."></p>
        <div class="inner">
            <% If campus_code = "CD0257" Then '중계 %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont03_stit01.jpg" alt="면학분위기로 소문난
                바른공부 자습전용관 목표 대학 합격을 희망하는 학생들이 모여
                경쟁하는 긍정적인 학습환경이 만들어져 있습니다.">
            </p>
            <% Else %>
            <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/cont03_stit01.jpg" alt="면학분위기로 소문난
                바른공부 자습전용관 전국 최상위권이 학생들이 모여
                경쟁하는 긍정적인 학습환경이 만들어져 있습니다.">
            </p>
            <% End If %>

            <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
            <!-- 셔틀버스 배너 -->
            <a class="float-banner" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/float_banner.png" alt="학원 전용 셔틀버스 운영"></a>
            <!-- //셔틀버스 배너 -->
            <% End If %>

            <!-- 바자관 탭슬라이드 -->
            <div class="studyHall-slide-wrap">
                <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                <div class="studyHall-navi core">
                <% Else %>
                <div class="studyHall-navi">
                <% End If %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            효율적인<br>
                            시간관리
                        </div>
                        <div class="swiper-slide">
                            충분한<br>
                            자습시간
                        </div>
                        <div class="swiper-slide">
                            학습 동선<br>
                            최소화
                        </div>
                        <div class="swiper-slide type02">
                            집단적인<br>
                            면학분위기
                        </div>
                        <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                        <div class="swiper-slide type02">
                            자체 식당<br>
                            운영
                        </div>
                        <% End If %>
                    </div>
                </div>
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 효율적인 시간관리 -->
                        <div class="swiper-slide">
                            <dl>
                                <dt>효율적인 <strong>시간관리</strong></dt>
                                <dd>
                                    <strong>대학 수업과  수능  준비가  동시에 가능</strong>하도록<br>
                                    <strong>개인에 맞게 학습 스케줄을 운영</strong>합니다.<br>
                                    담임선생님과 함께 필요한 수업을 선택하고 등하원 시간을<br>
                                    조정하여 효율적으로 시간을 관리합니다.
                                </dd>
                            </dl>
                            <!-- 바자관 시간표(예시) -->
		                    <!-- #include virtual = "/intro/2024/half/schedule.asp" -->
                            <!-- 바자관 시간표(예시) -->
                            <% If campus_code = "INTRO" OR campus_code = "CD0344" OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0245" OR campus_code = "CD0248" OR campus_code = "CD0349" Then '인트로/코어전주/대치/코어청주/목동/평촌/울산 %>
                            <div class="stu-review type01">
                                <p>학교 수업이 끝난 후에 바른공부 자습전용관에서 공부하면 시간 낭비 없이 바로 공부를 할 수 있었습니다. 특히 심야 자습 제도까지 이용하여 순 공부시간을 채우며 하루를 마칠 수 있어서 좋았습니다.</p>
                                <div>
                                    <p><strong>2024 고려대 국어교육과 합격 </strong><br>
                                        러셀 목동 윤지효
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="stu-review type01">
                                <p>시간 관리를 하며 공부를 해야 하는데, 의무적으로 오전 8시~오후 10시까지 자습을 하며 규칙적인 생활습관을 유지할 수 있었습니다.<br>
                                
                                    또한 루틴이 형성되면서 효율적이고 집중도 높은 학습을 실천할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 연세대(미래) 의예과 합격</strong><br>
                                        러셀 부천 박정우
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="stu-review type01">
                                <p>바자관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다. 부족하다고 생각하는 과목을 찾아 듣다보니 집중력있게 수업을 들을 수 있었고 자습시간 확보에도 도움이 되었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 한양대 의예과 합격</strong><br>
                                        러셀CORE 광주 엄태옥
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="stu-review type01">
                                <p>러셀CORE 대전에서 공부하니 올바른 공부 습관이 잡혔고, 시간 관리를 효율적으로 할 수 있게 되었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 서울대 자유전공학부 합격</strong> <br>
                                        러셀CORE 대전 김해솔
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="stu-review type01">
                                <p>부족한 부분을 단과 강의로 보완할 수 있고, 나머지 시간은 자습에 투자할 수 있어서 시간 관리가 상당히 효율적입니다.
                                </p>
                                <div>
                                    <p><strong>2023 연세대 기계공학부 합격</strong> <br>
                                        러셀 강남 권충만
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="stu-review type01">
                                <p>러셀에서 공부를 하면서 시간을 체계적으로 이용하고 온전히 학습이 집중할 수 있게 되었던 경험이 굉장히 긍정적인 기억으로 남아 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2023 성균관대 약학과 합격</strong> <br>
                                        러셀 영통 오현석
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="stu-review type01">
                                <p>수업 들을 선생님을 자율적으로 정하고 하루 시간을 자유롭게 쓸 수 있었고, 자습시간이 많아 배운 것을 익힐 시간이 많아서 좋았습니다.
                                </p>
                                <div>
                                    <p><strong>2023 연세대 경영학과 합격</strong> <br>
                                        러셀 분당 이OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0246" Then '센텀 %>
                            <div class="stu-review type01">
                                <p>바자관 입구에 담임선생님이 계셔서 생활기록부, 수시 원서 작성 시 즉각적인 도움 요청과 피드백이 가능하여 좋았던 것 같고 학습 중 어려움이나 고민이 생기면 선생님과 상담할 수 있었던 게 수험 기간에 큰 힘이 되었습니다.

                                </p>
                                <div>
                                    <p><strong>2024 인제대 의예과 합격
                                        
                                        </strong> <br>
                                        러셀 센텀 김OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="stu-review type01">
                                <p>효율적으로 시간 관리를 할 수 있다는 점이 가장 좋았습니다.  매일 아침 정해진 시간에 등원하고, 공부하는 시간과 쉬는 패턴이 일정하다보니  의지가 약했던 저에게는 많은 도움이 되었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 이화여대 약학과 합격</strong><br>
                                        러셀 중계 이유진
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="stu-review type01">
                                <p>작년까지 공부를 하지 않았던 저에게 수험생 생활 패턴이란 
                                    혼자서는 절대 교정해낼 수 없는 어려운 패턴이었지만 매일매일을 규칙적으로 생활하면서 이후 수능까지 이어지는 생활 패턴을 잡을 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 서울대 생명교육과 합격</strong><br>
                                        러셀 대구 이승우
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="stu-review type01">
                                <p>학습 계획을 짜는데 어려움을 겪었었는데, 담임선생님과의 상담을 통해 효율적이고 체계적인 공부 방향을 설정할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 동아대 의예과 합격</strong><br>
                                        러셀CORE 창원 제현수
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="stu-review type01">
                                <p>강의와 식당, 바자관이 한 건물에 있는 것이 정말 좋았습니다. 전에 잠실로 학원을 다닐 땐 왕복에 4시간 가까이 걸리는 데다 체력적인 소모도 심했지만, 러셀에서는 국영수는 물론이고 사탐, 과탐 등의 선택과목도 강의를 해주기에 이동에 시간을 소모할 필요 없이 자습시간을 확보할 수 있고 동시에 좋은 강의를 들을 수 있다는 점이 큰 도움이 되었습니다.
                                </p>
                                <div>
                                    <p><strong>연세대학교(미래) 의예과  합격</strong><br>
                                        러셀CORE 원주 이지우
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- //효율적인 시간관리 -->
                        <!-- 충분한 자습시간 -->
                        <div class="swiper-slide dough">
                            <dl>
                                <dt>충분한 <strong>자습시간</strong></dt>
                                <dd>
                                    먼저 시작한 경쟁자를 앞서가려면<br>
                                    효율적인 학습은 필수입니다.<br>
                                    나의 취약한 부분만 <strong>최소한의 수업으로 보완</strong>하고<br>
                                    <strong>스스로 자습할 수 있는 시간을 최대한으로 확보</strong>합니다.
                                </dd>
                            </dl>
                            
                            <div class="chart-area01">
                                <canvas id="doughnut-chart01"></canvas>
                                <div class="chart-img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/chart_bg02.png" alt="" /></div>
                                <div class="chart-txt">
                                    <p><strong>하루 최대 <%=chart_minute%></strong><br>자습시간 확보</p>
                                    <a href="javascript:void(0)" class="bt-tt js-mask">표준 시간표 보기 &gt;</a>
                                </div>
                            </div>
                            <% If campus_code = "INTRO" OR campus_code = "CD0344" OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0248" OR campus_code = "CD0349" Then '인트로/코어전주/대치/코어청주/평촌/울산 %>
                            <div class="stu-review">
                                <p>바자관에서 표준 시간표에 따라 매일 규칙적으로 생활할 수 있고, 공부시간을 많이 확보할 수 있다는 점이 좋았습니다.
                                </p>
                                <div>
                                    <p><strong>2024 연세대(미래) 의예과 합격</strong><br>
                                        러셀 중계 홍수현
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="stu-review">
                                <p>자습관에서 공부하면서 현역 때와는 비교도 안되는 학습시간을 확보한 것이 좋았습니다. 자습관 시간표에 맞춰서 이른 시간부터 공부하는 습관을 기를 수 있어 좋았습니다.
                                </p>
                                <div>
                                    <p><strong>2024 제주대 수의예과 합격</strong> <br>
                                        러셀 부천 이동규
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_jeju.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="stu-review">
                                <p>저는 학교에서 야자가 끝난 후 공부할 수 있는 공간이 필요했습니다. 러셀은 새벽까지 운영을 하였기 때문에 야자 후 집에 갔더라면 버려졌을 공부시간을 러셀에서 현명하게 사용할 수 있었던 것 같습니다.
                                </p>
                                <div>
                                    <p><strong>2024 서울대 의예과 합격</strong> <br>
                                        러셀CORE 광주 임대윤
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="stu-review">
                                <p>바른공부 자습전용관에서는 불필요한 수업은 줄이고 
                                    자습시간은 극대화 할 수 있어서 좋았습니다. 
                                </p>
                                <div>
                                    <p><strong>2023 서울대 전기정보공학부 합격</strong> <br>
                                        러셀CORE 대전 노유찬
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="stu-review">
                                <p>다른 재수종합학원들과 달리 수업을 강요하지 않고 자율학습을 중시하는 학원이라고 생각해서 선택한 것이 가장 큽니다. 
                                </p>
                                <div>
                                    <p><strong>2023 서울대 의예과 합격</strong><br>
                                        러셀 강남 이윤서
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="stu-review">
                                <p>바자관의 좋은 면학분위기와 자습시간을 많이 확보할 수 있다는 장점 때문에 러셀을 선택하게 되었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 서울대 생명과학부 합격</strong> <br>
                                        러셀 영통 김태현
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0245" Then '목동 %>
                            <div class="stu-review">
                                <p>학습시간을 개인의 필요에 맞게 확보할 수 있다는 점이 좋았습니다. 스케줄을 자율적으로 짤 수 있어서 필요에 맞게 효율적인 공부가 가능했습니다.
                                </p>
                                <div>
                                    <p><strong>2024 연세대 중어중문학과 합격</strong> <br>
                                        러셀 목동 이서진
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="stu-review">
                                <p>수능 3달 전부터는 취약 과목에 대해 선택적으로 수업을 들었고, 그 외의 시간엔 충분한 자습시간을 확보하여 혼자서 공부할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 충남대 의예과 합격</strong> <br>
                                        러셀 분당 이OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0246" Then '센텀 %>
                            <div class="stu-review">
                                <p>표준 시간표대로 공부하고 쉬는 것도 공부 습관을 잘 형성해 주었던 것 같습니다. 낭비하는 시간 없이 오로지 공부에만 투자할 수 있어서 효율적으로 공부할 수 있었습니다.

                                </p>
                                <div>
                                    <p><strong>2024 고려대 간호학과 합격
                                        </strong> <br>
                                        러셀 센텀 김OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="stu-review">
                                <p>수능 시간표와 동일한 표준 시간표 운영이 가장 좋았습니다. 저에게 주어진 시간들을 계획해서 사용하는 것이 막막했는데, 표준 시간표에 맞춰서 계획을 세우니 과목별로 균형을 맞춰서 규칙적으로 공부할 수 있어 가장 큰 도움이 되었습니다.
                                    
                                </p>
                                <div>
                                    <p><strong>2023 서울대 의예과 합격</strong><br>
                                        러셀 중계 노현지
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="stu-review">
                                <p>표준 시간표 대로 공부를 하면서 공부할 때 공부하고, 
                                    쉴 때 쉬게 되어,  일정한 공부 습관이 형성되었고 다른 것을 하거나 허투루 쓰는 시간이 줄어들어  학습시간이 충분히 확보되었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 영남대  약학과 합격 </strong><br>
                                        러셀 대구 박민서
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yeongnam.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="stu-review">
                                <p>원하는 단과 수업을 선택하여 듣고 그 외의 시간은 바로 자습관을 이용 할 수 있어 충분한 자습시간을 확보할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 한양대 기계공학과 합격</strong><br>
                                        러셀CORE 창원 성재호
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="stu-review">
                                <p>바른공부 자습전용관의 장점은 절대적인 학습시간이 확보된다는 점입니다. 지켜야 하는 의무자습 시간이 있기 때문에 핑계 대지 않고 매일매일 일정 시간 이상을 공부할 수 있었고, 쉬는 시간과 자습시간이 철저하게 분리되어 있기 때문에 해이해지는 일 없이 꾸준한 공부를 할 수 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 서울대학교 치의학학석사통합과정 합격</strong><br>
                                        러셀CORE 원주 윤은서
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hallym.png" alt=""></div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- //충분한 자습시간 -->
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <dl>
                                <dt>학습 동선 <strong>최소화</strong></dt>
                                
                                <% If campus_code = "CD0343" Then '코어원주 %>
                                <dd>
                                    이동에 낭비하는 시간이 없도록 <strong>학습 동선을 최소화</strong>하여<br>
                                    학업과 수능 학습을 병행하는 <strong>반수생의 부담을 줄입니다.</strong><br>
                                    (단과 수업 - 자습 - 자체식당을 한 건물에서 해결 가능)
                                </dd>
                                <% Else %>
                                <dd>
                                    이동에 낭비하는 시간이 없도록 <strong>학습 동선을 최소화</strong>하여<br>
                                    학업과 수능 학습을 병행하는 <strong>반수생의 부담을 줄입니다.</strong><br>
                                    (단과 수업 - 자습 - 급식 한 건물에서 해결 가능)
                                </dd>
                                <% End If %>
                            </dl>
                            <div class="slide-img01"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/slide03_img.jpg" alt=""></div>
                            
                            <% If campus_code = "CD0247" Then '강남 %>
                            <p class="r-txt mt0 mb10">강의실은 운영 상황에 따라 별관<br>
                            (다른건물)으로 이동할 수도 있습니다.
                            </p>
                            <% End If %>


                            <% If campus_code = "INTRO" OR campus_code = "CD0344" OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '인트로/코어전주/대치/코어청주/울산 %>
                            <div class="stu-review">
                                <p>한 건물에 자습관, 식당, 강의실이 같이 있어 이동 시간에 따른 체력소모와 자습시간 확보에 있어 큰 이점을 얻을 수 있었습니다. 
                                    </p>
                                <div>
                                    <p><strong>2024 충남대 수의예과 합격</strong><br>
                                        러셀CORE 창원 백지훈
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="stu-review">
                                <p>현장강의를 듣는 강의실과 자습관이 같은 건물 내에 위치했기에 시간을 낭비하지 않고 많은 공부를 할 수 있었습니다.
                                    
                                </p>
                                <div>
                                    <p><strong>2024 고려대 철학과 합격</strong><br>
                                        러셀 부천 전찬영
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="stu-review">
                                <p>아무래도 밖에 나가서 밥을 먹게 되면 이동시간, 주문하고 기다리는 시간 등이 허비되기 쉬운데 시간 낭비를 줄일 수 있었습니다. 또한 영양적으로 균형 있는 식사를 규칙적으로 할 수 있다는 것도 큰 장점이라고 생각합니다.
                                </p>
                                <div>
                                    <p><strong>2024 연세대 의예과 합격</strong><br>
                                        러셀CORE 광주 강세빈
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="stu-review">
                                <p>강의실, 급식실, 바자관 등이 모두 한 건물 안에 있습니다. 이러한 장점 덕분에 공부의 흐름이 끊기지 않아서 효율적으로 수험생활을 보낼 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 연세대(미래) 의예과 합격</strong><br>
                                        러셀CORE 대전 이승섭
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="stu-review">
                                <p>바자관에서 강의실이 정말 가까워 공부를 하다가 흐름이 크게 끊기지 않고 바로 수업에 집중할 수 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2023 성균관대 약학과 합격</strong><br>
                                        러셀 강남 손성원
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="stu-review">
                                <p>수능 시간표에 맞게 급식을 먹고 쉬는 시간을 가짐으로써 실제 수능장에서 조금 더 편안한 마음으로 임할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 이화여대 의예과 합격</strong><br>
                                        러셀 영통 조윤주
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0245" Then '목동 %>
                            <div class="stu-review">
                                <p>러셀 단과는 바른공부 자습전용관의 시간표와 연동되어 있어서 이동하는 데 시간을 낭비하지 않고, 같은 건물에 위치하여 불필요한 동선을 생략할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 연세대 기계공학과 합격</strong><br>
                                        러셀 목동 손정훈
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="stu-review">
                                <p>단과 수업을 한 건물에 들을 수 있고, 바자관과 강의실의 거리가 멀지 않아 자습시간을 충분히 확보할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 고려대 경영학과 합격</strong> <br>
                                        러셀 분당 김OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0246" Then '센텀 %>
                            <div class="stu-review">
                                <p>바자관과 강의실 사이 이동 거리가 짧고 온라인 좌석 예약 시스템으로 미리 좌석을 예약해서 제가 앉고 싶은 자리에 앉을 수 있어서 좋았습니다.

                                </p>
                                <div>
                                    <p><strong>2024 고신대 의예과 합격
                                    </strong> <br>
                                    러셀 센텀 배OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kosin.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="stu-review">
                                <p>바자관 자습시간에 맞추어 수업이 진행되다 보니, 시간 낭비 없이 공부를 할 수 있었고 강의실과 위치도 가까워 이동 과정의 체력 소모도 없었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 서울대 물리학과 합격</strong> <br>
                                        러셀 중계 신현빈
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="stu-review">
                                <p>단과를 수강한 뒤 같은 건물 내에서 선생님들께 질문도 하고, 바로 자습관으로 갈 수 있어서 공부 시간을 더 확보할 수 있었습니다. 다른 곳으로 새지 않게 된다는 것 역시 큰 장점이라고 생각합니다.
                                </p>
                                <div>
                                    <p><strong>2024 서울대 음악학부 합격</strong> <br>
                                        러셀 평촌 윤채영
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="stu-review">
                                <p>한 건물에 강의실과 바자관, 식당까지 같이 있다 보니 불필요한 시간 낭비가 줄어들어 자투리 시간 확보에 유익했습니다. 또한 급식이 맛있어 항상 든든하게 먹고 공부했던 기억이 있습니다.
                                </p>
                                <div>
                                    <p><strong>2024 고려대 바이오의공학부 합격</strong><br>
                                        러셀 대구 오승현
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="stu-review">
                                <p>한 건물에 자습관, 식당, 강의실이 같이 있어 이동 시간에 따른 체력소모와 자습시간 확보에 있어 큰 이점을 얻을 수 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 충남대 수의예과 합격</strong><br>
                                        러셀CORE 창원 백지훈
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="stu-review">
                                <p>바른공부 자습전용관의 책상이 넓어 실전 모의고사를 연습하기 좋았고, 책꽂이가 있어 많은 책을 보관할 수 있어 좋았습니다. 또한, 개방형 구조로 하루 종일 내부에서 공부해도 답답하지 않았습니다. 화장실, 급식실이 가까워서 하루 중 버리는 시간을 최소화할 수 있다는 점에서 효율적으로 공부할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 카이스트 합격</strong><br>
                                        러셀CORE 원주 정혜인
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kaist.png" alt=""></div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- //학습 동선 최소화 -->
                        <!-- 집단적인 면학분위기 -->
                        <div class="swiper-slide">
                            <dl>
                                <dt>집단적인 <strong>면학분위기</strong></dt>
                                <% If campus_code = "CD0257" Then '중계 %>
                                <dd>
                                    학생들이 모여 경쟁하는 바자관은<br>
                                    <strong>개방형 구조</strong>로 되어 있어 <strong>끊임없이 학습동기와<br>
                                        긴장감을 부여</strong>합니다. <strong>학습에 최적화되어 있는<br>
                                        환경</strong>에서 온전히 학습에만 집중할 수 있습니다.
                                </dd>
                                <% Else %>
                                <dd>
                                    최상위권이 모여 경쟁하는 바자관은<br>
                                    <strong>개방형 구조</strong>로 되어 있어 <strong>끊임없이 학습동기와<br>
                                        긴장감을 부여</strong>합니다. <strong>학습에 최적화되어 있는<br>
                                        환경</strong>에서 온전히 학습에만 집중할 수 있습니다.
                                </dd>
                                <% End If %>
                            </dl>
                            <div class="slide-img02">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/slide04_img.jpg" alt="">
                                <a href="javascript:void(0)" class="bt-tt02">바른공부 자습전용관 시설 보기</a>
                            </div>
                            <% If campus_code = "INTRO" OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '인트로/대치/코어청주/울산 %>
                            <div class="stu-review">
                                <p>바자관의 가장 큰 장점은 집단적인 면학분위기입니다. 최상위권 학생들이 모여있는 공간이기에 공부를 해야하는 분위기가 형성되어 있어서 더 집중할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 서울대 전기정보공학부 합격</strong><br>
                                        러셀 강남 유상원
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0250" Then '부천 %>
                            <div class="stu-review">
                                <p>자습관의 가장 큰 장점은 개방적인 구조라고 생각합니다.<br>
                                
                                    다른 학생들이 공부하는 모습을 볼 수 있어 집단적인 면학분위기를 형성할 수 있을 뿐만 아니라 어두운 분위기의 다른 독서실과 다르게 개방감을 주어 실내에 오랜 시간 머물러도 답답하지 않아 긴 시간 공부에 집중할 수 있도록 도와줍니다.
                                    
                                </p>
                                <div>
                                    <p><strong>2024 강원대 의예과 합격</strong><br>
                                        러셀 부천 이가은
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                            <div class="stu-review">
                                <p>바자관의 장점은 집단적인 면학분위기와 그로 인한 학습시간 확보입니다. 열심히 공부하는 러셀의 친구들과 언니들을 보고 자극을 받아 더 치열하게 공부할 수 있었고 외로움 역시 덜 수 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 서울대 자유전공학부 합격</strong><br>
                                        러셀CORE 광주 심혜림
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="stu-review">
                                <p>바자관에 있는 친구들 모두가 최상위권 학생들로 구성되어 공부에만 집중하는 면학분위기가 조성되어 있습니다.
                                </p>
                                <div>
                                    <p><strong>2023 서울대 의예과 합격</strong><br>
                                        러셀CORE 대전 이상후
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0344" Then '코어전주 %>
                            <div class="stu-review">
                                <p>좋은 면학분위기 덕분에 포기하지 않고 집중력을 이어나갈 수 있었습니다.  공부할 때 집중력을 잃고 부정적인 생각들이 밀려올 때마다 다시 집중할 수 있도록 해준 주역이었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 고려대 의예과 합격</strong> <br>
                                        러셀CORE 전주 서진원
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0247" Then '강남 %>
                            <div class="stu-review">
                                <p>서로 경쟁하는 분위기가 느껴지는 구조였기 때문에,  공부하기 싫고 지치더라도 다시 정신 차릴 수 있었던 것 같습니다.
                                </p>
                                <div>
                                    <p><strong>2023 연세대 기계공학부 합격</strong> <br>
                                        러셀 강남 권충만
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0249" Then '영통 %>
                            <div class="stu-review">
                                <p>바자관의 가장 큰 장점은 면학분위기라고 생각합니다. 조용하고 열정적인 분위기 속에서 저 또한 열심히 공부하게 되었던 것 같습니다.
                                </p>
                                <div>
                                    <p><strong>2023 서울대 간호학과 합격</strong><br>
                                        러셀 영통 이민지
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0245" Then '목동 %>
                            <div class="stu-review">
                                <p>바른공부 자습전용관의 개방형 구조로 학생들끼리 긍정적인 자극이 형성되었다고 생각합니다. 하루 종일 공부를 하다 보면 지치는 순간이 있는데 그때마다 열심히 공부하는 친구들을 보면서 자극을 받고 열심히 공부하게 되었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 고려대 경영학과 합격</strong><br>
                                        러셀 목동 장준혁
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0244" Then '분당 %>
                            <div class="stu-review">
                                <p>공부를 하다가 고개를 들면 모두가 열심히 공부하고 있기 때문에 자연스럽게 위기감과 경쟁심이 생기면서 더 공부하게 됩니다.
                                </p>
                                <div>
                                    <p><strong>2024 고려대 행정학과 합격</strong> <br>
                                        러셀 분당 박OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0246" Then '센텀 %>
                            <div class="stu-review">
                                <p>바자관의 장점은 일단 개방형 구조와 쾌적한  환경 속 집단적인 면학분위기입니다.  공부하는 도중에 약간 집중력이 떨어질 때  주변에서 열심히 공부하는 친구들을 보며  자극을 받아 다시 공부에 집중할 수 있었습니다.

                                </p>
                                <div>
                                    <p><strong>2024 경상국립대 의예과 합격
                                        
                                        </strong> <br>
                                        러셀 센텀 고OO
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gyeongsang.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0257" Then '중계 %>
                            <div class="stu-review">
                                <p>바자관은 개방형 구조이고, 비슷한 성적대의 학생들과 같은 공간에서 공부하다 보니 집중이 풀렸을 때나 이동할 일이 생겼을 때 주변의 공부하는 모습을 보고 더욱 집중해서 공부할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 덕성여대 약학과 합격</strong><br>
                                        러셀 중계 민지우
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_deokseong.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0248" Then '평촌 %>
                            <div class="stu-review">
                                <p>힘들 때 주변 학생들을 보면서 공부 자극을 받을 수 있었고, 스탠딩 책상이 있어서 공부할 때 졸리거나 몸이 너무 답답할 때 일어나서 공부를 할 수 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 고려대 생명과학부 합격</strong><br>
                                        러셀 평촌 김하늘
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="stu-review">
                                <p>러셀 대구 담임선생님께서는 반 학생들을 세심하게 챙겨 주시고 면학분위기 조성에도 매우 큰 도움이 되었습니다. 모의고사 이후 어수선한 분위기에서도 
                                    학습에는 방해가 되지 않도록 북돋아주셨습니다.
                                </p>
                                <div>
                                    <p><strong>2024 가톨릭대 약학과 합격</strong><br>
                                        러셀 대구 곽승현
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_catholic.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="stu-review">
                                <p>자습관이 개방형 구조로 되어있기 때문에, 집중이 되지 않을 때 옆에서 열심히 공부하고 있는 친구들을 보며 동기부여를 받을 수 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 한양대 화학과 합격 </strong><br>
                                        러셀CORE 창원 이은지
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="stu-review">
                                <p>바른공부 자습전용관에서 학습하며 특히 좋았던 점은 성적이 비슷한 친구들과 함께 공부할 수 있다는 점이었습니다. 공부를 하다가 집중력이 흐트러졌을 때 공부에 열중하고 있는 주변 친구들을 보며 자극을 받아 다시 공부에 집중할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 연세대학교 건축공학과 합격</strong><br>
                                        러셀CORE 원주 심태엽
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- //집단적인 면학분위기 -->
                        <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
                            <dl>
                                <dt><strong>자체 식당</strong> 운영</dt>
                                <dd><strong>자체 식당 운영</strong>으로<br>
                                    <strong>균형잡힌 수험생 식단 유지</strong>가 가능합니다.<br>
                                    외부와의 접촉을 최소화하고,<br>
                                    <strong>이동시간을 줄여 학습에 몰입</strong>할 수 있습니다.
                                </dd>
                            </dl>
                            <div class="slide-img01">
                                <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/slide05_img.jpg" alt="">
                            </div>
                            <% If campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '코어광주/코어청주/울산 %>
                            <div class="stu-review">
                                <p>자체 식당이 있어 급식과 단과와 자습을 한 건물에서 해결할 수 있었고, 이동시간을 줄여 효율적으로 공부하는 데에  도움이 되었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 연세대 국어국문과 합격</strong><br>
                                        러셀CORE 광주 김지윤
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                            <div class="stu-review">
                                <p>단과 강의실과 자체 식당이 같은 건물에 있기 때문에 이동시간이 짧아 편했습니다. 특히 급식이 맛있어서 밥을 먹고 기분 좋은 상태로 다시 공부에 집중할 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 조선대 치의예과 합격</strong><br>
                                        러셀CORE 대전 박지현
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0342" Then '대구 %>
                            <div class="stu-review">
                                <p>러셀 대구 자체 식당 운영으로 
                                    급식을 따뜻하게 먹을 수 있었습니다.
                                    월요일부터 토요일까지 급식이 운영되어,
                                    식사 걱정 없이 학원에 다닐 수 있었습니다.
                                </p>
                                <div>
                                    <p><strong>2024 경북대 약학과 합격</strong><br>
                                        러셀 대구 이서영
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                            <div class="stu-review">
                                <p>자체 식당이 있어 급식과 단과와 자습을 한 건물에서 해결할 수 있었고, 이동시간을 줄여 효율적으로 공부하는 데에  도움이 되었습니다.
                                </p>
                                <div>
                                    <p><strong>2023 연세대 국어국문과 합격</strong><br>
                                        러셀CORE 광주 김지윤
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                </div>
                            </div>
                            <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                            <div class="stu-review">
                                <p>식당, 자습관, 강의실이 모두 한 건물에
                                    위치해서 동선을 최소화할 수 있었습니다.
                                    식당에서 점심, 저녁을 먹을 수 있어서,
                                    낭비되는 시간 없이 공부에만 집중할 수 있었습니다. 
                                </p>
                                <div>
                                    <p><strong>2024 강원대학교 수의예과 합격</strong><br>
                                        러셀CORE 원주 윤지혜
                                    </p>
                                    <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt=""></div>
                                </div>
                            </div>
                            <% End If %>
                        </div>
                        <!-- //자체 식당 운영 -->
                        <% End If %>
                    </div>
                </div>
            </div>
            <!-- //바자관 탭슬라이드 -->
            <% If campus_code = "INTRO" Then '인트로 %>
            <p class="r-txt">* 학원별 운영 방법 및 시설은 상이하며,<br>자세한 내용은 학원별 페이지에서 확인할 수 있습니다.</p>
            <% End If %>
            
            <div class="layer-tt02">
                <% If campus_code = "CD0247" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0001" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0349" OR campus_code = "CD0345" Then '강남/목동/부천/대치/분당/중계/울산/코어창원 %>
                <span><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/slide04_pop.jpg" alt=""></span>
                <% ElseIf campus_code = "INTRO" Then '인트로 %>
                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/slide04_pop.jpg" alt=""></span>
                <% Else %>
                <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/slide04_pop02.jpg" alt=""></span>
                <% End If %>
                <span class="bt-close-tt">X</span>
            </div>
            <!-- 바자관 표준 시간표 -->
            <!-- #include virtual = "/intro/2024/half/baja_time_table.asp" -->
            <!-- //바자관 표준 시간표 -->
        </div>
    </div>
    <div class="cont04">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont04_tit.jpg" alt="입시 전문 담임선생님의 개인 맞춤 관리 효율적인 학습이 중요한 반수생을 위하여 입시, 학습, 생활 모든것을 입시 담임선생님이 체계적으로 관리합니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/cont04_tit.jpg" alt="최상위권 전문 입시 담임선생님의 학생 맞춤 관리 효율적인 학습이 중요한 반수생을 위하여 입시, 학습, 생활 모든것을 입시 담임선생님이 체계적으로 관리합니다."></p>
        <% End If %>
        <div class="inner">
            <!-- 관리 탭슬라이드 -->
            <div class="manage-slide-wrap">
                <div class="manage-slide-navi">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">
                            입시관리
                        </div>
                        <div class="swiper-slide slide02">
                            학습관리
                        </div>
                        <div class="swiper-slide">
                            생활관리
                        </div>
                    </div>
                </div>
                <div class="manage-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 입시관리 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0250" Then '부천 %>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont04_slid01.jpg" alt=""></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/cont04_slid01.jpg" alt=""></div>
                            <% End If %>
                        </div>
                        <!-- //입시관리 -->
                        <!-- 학습관리 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0250" Then '부천 %>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont04_slid02.jpg" alt=""></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/cont04_slid02.jpg" alt=""></div>
                            <% End If %>
                        </div>
                        <!-- //학습관리 -->
                        <!-- 생활관리 -->
                        <div class="swiper-slide">
                            <% If campus_code = "CD0247" OR campus_code = "CD0250" Then '강남/부천 %>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont04_slid03.jpg" alt=""></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/cont04_slid03.jpg" alt=""></div>
                            <% End If %>
                        </div>
                        <!-- //생활관리 -->
                    </div>
                    <div class="swiper-pagination type02"></div>
                </div>
            </div>
            <!-- //관리 탭슬라이드 -->
        </div>
        <!-- 이미지 롤링 -->
        <div class="img-rolling swiper-container">
            <div class="swiper-wrapper">
                <!-- 1 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0344" OR campus_code = "CD0249" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0001" OR campus_code = "CD0257" OR campus_code = "CD0346" OR campus_code = "CD0248" OR campus_code = "CD0342" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '코어전주/영통/목동/부천/대치/중계/코어청주/평촌/대구/센텀/코어창원/코어원주 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling01.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling01.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 2 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0344" OR campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0001" OR campus_code = "CD0257" OR campus_code = "CD0346" OR campus_code = "CD0248" OR campus_code = "CD0342" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '코어광주/코어대전/코어전주/강남/영통/목동/부천/대치/중계/코어청주/평촌/대구/센텀/코어창원/코어원주 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling02.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling02.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 3 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0341" OR campus_code = "CD0344" OR campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0001" OR campus_code = "CD0257" OR campus_code = "CD0346" OR campus_code = "CD0248" OR campus_code = "CD0342" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '코어대전/코어전주/강남/영통/목동/부천/대치/중계/코어청주/평촌/대구/센텀/코어창원/코어원주 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling03.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling03.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 4 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0344" OR campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0001" OR campus_code = "CD0257" OR campus_code = "CD0346" OR campus_code = "CD0248" OR campus_code = "CD0342" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '코어광주/코어대전/코어전주/강남/영통/목동/부천/대치/중계/코어청주/평촌/대구/센텀/코어창원/코어원주 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling04.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling04.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 5 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0344" OR campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0001" OR campus_code = "CD0257" OR campus_code = "CD0346" OR campus_code = "CD0248" OR campus_code = "CD0342" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '코어광주/코어전주/강남/영통/목동/부천/대치/중계/코어청주/평촌/대구/센텀/코어창원/코어원주 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling05.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling05.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 6 -->
                <div class="swiper-slide">
                    <% If campus_code = "CD0340" OR campus_code = "CD0341" OR campus_code = "CD0344" OR campus_code = "CD0249" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0001" OR campus_code = "CD0257" OR campus_code = "CD0346" OR campus_code = "CD0248" OR campus_code = "CD0342" OR campus_code = "CD0246" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '코어광주/코어대전/코어전주/영통/목동/부천/대치/중계/코어청주/평촌/대구/센텀/코어창원/코어원주 %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling06.jpg" alt="">
                    <% Else %>
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/rolling06.jpg" alt="">
                    <% End If %>
                </div>
                <!-- 7 -->
                <% If campus_code = "CD0249" OR campus_code = "CD0245" OR campus_code = "CD0250" OR campus_code = "CD0246" OR campus_code = "CD0343" Then '영통/목동/부천/센텀/코어원주 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling07.jpg" alt="">
                </div>
                <% End If %>
                <!-- 8 -->
                <% If campus_code = "CD0249" OR campus_code = "CD0246" Then '영통/센텀 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling08.jpg" alt="">
                </div>
                <% End If %>
                <!-- 8 -->
                <% If campus_code = "CD0246" Then '센텀 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/rolling09.jpg" alt="">
                </div>
                <% End If %>
            </div>
        </div>
        <!-- //이미지 롤링 -->
        <div class="inner">
            <!-- 학생후기 슬라이드 type01 -->
            <div class="stu-r-slide type01 swiper-container">
                <% If campus_code = "INTRO" OR campus_code = "CD0344"  OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '인트로/코어전주/대치/코어청주/울산 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님은 입시 전략을 고민하고 있었을 때 어떤 전형이 저에게 가장 유리할지 친절하게 알려주셨습니다. 종종 공부에 집중이 되지 않을 때 저의 멘탈을 잡아주셨고 재밌게 상담을 해 주셔서 제가 다시 공부에 전념할 수 있게 도와주셨습니다.</p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 의예과 합격 </strong><br>
                                    러셀 분당 성중현 
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님과 상담하며 해결책을 찾은 것이 점수 향상에 큰 도움이 되었습니다. 공부 방향에 대해 의구심이 들 때 담임선생님께 여쭤보면 아낌없는 격려와 조언을 해주셔서 수능날까지 공부에만 집중할 수 있었습니다.</p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonbuk.png" alt=""></div>
                                <p><strong>2024 전북대 의예과 합격</strong><br>
                                    러셀 평촌 홍지우
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님이 계셨기에 공부에만 더 전념할 수 있었습니다.<br>
                            
                                학습에 대한 고민거리와 불안감이 생길때마다 담임선생님께서 상담과 격려를 통해 고민거리와 불안감을 해결해주셨고 수시, 수능 원서 접수나 자습관 재등록, 시험 일정 등과 같이 공부 외적으로 신경써야 할 부분에 있어서도 항상 관심가지고 챙겨주셨기에 공부에만 집중할 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 철학과 합격</strong><br>
                                    러셀 부천 전찬영
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님께서 학습 플래너를 지속적으로 검사해주셔서 계획을 잘 지킬 수 있었습니다. <br>
                            또한 학습 방향에 대해서도 좋은 조언을 해주셔서 실제로 제 성적상승에 정말 많은 기여를 하셨다고 생각합니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_konkuk.png" alt=""></div>
                                <p><strong>2024 건국대 수의예과 합격</strong> <br>
                                    러셀 부천 김희원
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님께서 언제나 친절하게 고민이 있으면 상담해 주시고, 고민이 없어도 주기적으로 학생들을 불러 원내 생활이 괜찮은지 물어보며 학생들을 진지하게 케어해주셔서 힘든 수험기간 동안 큰 힘이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 화공생명공학부 합격</strong><br>
                                    러셀CORE 광주 이석준
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>슬럼프가 왔을 때 담임선생님이 친절하게 상담을 해주셔서 많은 의지가 되었던 것 같습니다.
                                또한, 원서를 넣을 때 합리적인 방향으로 쓸 수 있게 도와주셨고, 좋은 결과를 낼 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                <p><strong>2024 조선대 약학과 합격</strong> <br>
                                    러셀CORE 광주 김재원
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님과 수시로 상담하며 멘탈 케어를 할 수 있었고, 담임선생님의 철저한 관리로 수험생활 내내 규칙적인 학습패턴을 유지할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_eulji.png" alt=""></div>
                                <p><strong>2023 을지대 의예과 합격</strong>
                                    <br>
                                    러셀CORE 대전 김우찬
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님께서 매주 플래너 검사를 해주셔서 올바른 공부 습관이 잡혔고, 체계적으로 공부할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 자유전공학부 합격</strong>
                                     <br>
                                    러셀CORE 대전 김해솔
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0247" Then '강남 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님이 바자관 앞에 상주하시기 때문에, 고민이 있거나 궁금한 것이 생기면 바로바로 상담하고 피드백을 받을 수 있어서 정말 좋았습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2023 연세대 기계공학부 합격</strong><br>
                                    러셀 강남 권충만
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>아침 출결 체크와 그에 따른 담임선생님의 지속적인 관리는 저에게 꼭 필요했던 것이었고, 이를 통해 아침부터 공부 계획을 짜며 효율적인 하루를 보내게 해주었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_wooseok.png" alt=""></div>
                                <p><strong>2023 우석대 한의예과 합격</strong><br>
                                    러셀 강남 이노아
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>면학분위기를 잘 조성해 주셨고, 멘탈 관리에 있어서도 적극적인 지지와 응원을 보내 주신 덕분에 흔들리지 않을 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 화학교육과 합격</strong><br>
                                    러셀 영통 최가현
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님께서 친절하고 전문적으로 상담해 주신 점이 좋았습니다. 수시, 정시, 자소서 등 정말 다방면으로 많은 조언을 해 주셨습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 기계공학부 합격</strong><br>
                                    러셀 영통 문인하
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0245" Then '목동 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>수험생활을 하다 보면 불안하고 지칠 수밖에 없는데 그런 시기에 담임선생님의 조언을 들으면서 극복할 수 있었습니다. 담임선생님께서 일대일로 상담을 하면서 각자에게 맞는 방식으로 슬럼프를 극복하는 방법을 추천해 주셔서 도움이 많이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 국어교육과 합격</strong><br>
                                    러셀 목동 윤지효
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>입시와 관련하여 혼자서는 다양한 정보를 얻기 어려웠는데 입시 전문가인 담임선생님과의 상담을 통해 신뢰성 있는 정보와 학습에 관한 정보를 얻을 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                <p><strong>2024 한양대 의예과 합격</strong><br>
                                    러셀 목동 한유진
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님과 필요할 때마다 상담을 하며 크고 작은 고민들을 해결했고, 슬럼프에 빠져 위험한 시간을 극복하는 데 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ulsan.png" alt=""></div>
                                <p><strong>2023 울산대 의예과 합격</strong> <br>
                                    러셀 분당 박OO
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>상담이 필요할 때에도 공부에 지장이 없게끔 핵심적인 부분 위주로 상담을 진행하여 저를 정말 배려해주신다는 느낌을 받았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                <p><strong>2023 한양대 의예과 합격</strong><br>
                                    러셀 분당 이OO
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0246" Then '센텀 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님과 오랫동안 함께 해서 그런지 저를 잘 알고 계셔서 좋았습니다. 상담할 때도 항상 친절하고 편하게 해 주셨는데, 특히 수시 원서 접수를 위해 상담을 할 때 불안한 마음에 거의 매일매일 상담을 했었는데, 항상 격려해 주시고 응원해 주셔서 감사했습니다.

                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 경제학부 합격
                                </strong> <br>
                                러셀 센텀 이OO

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님이 가장 기억에 남습니다. 정말 친절하시고 학생 하나하나에 굉장한 관심을 가지고 계시고 그 관심을 바탕으로 진행하는 상담에서 제 입시에 도움이 되는 맞춤형 정보들을 얻을 수 있었습니다. 


                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gyeongsang.png" alt=""></div>
                                <p><strong>2024 경상국립대 약학부 합격
                                </strong><br>
                                러셀 센텀 정OO

                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>바른공부 자습전용관 바로 앞에 상주하고 계셔서 부담 없이 상담받을 수 있는 게 좋았고, 또 제 수준이나 상황에 맞춰 상담하고 관리해 주신다는 느낌이 들어 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2023 서울대 의예과 합격</strong>
                                     <br>
                                    러셀 중계 노현지
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님은 혼자라는 기분이 들지 않도록 항상 옆에 있어주셨습니다. 수험생활이 혼자하는 싸움이라는 생각이 들 때, 담임선생님의 존재는 1년이라는 시간을 버티는 든든한 지원군이었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2022 고려대 행정학과 합격</strong>
                                     <br>
                                    러셀 중계 이은상
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0248" Then '평촌 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님과 상담하며 해결책을 찾은 것이 점수 향상에 큰 도움이 되었습니다. 공부 방향에 대해 의구심이 들 때 담임선생님께 여쭤보면 아낌없는 격려와 조언을 해주셔서 수능날까지 공부에만 집중할 수 있었습니다

                                 
                                
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonbuk.png" alt=""></div>
                                <p><strong>2024 전북대 의예과 합격</strong>
                                     <br>
                                     러셀 평촌 홍지우
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>선생님과 상담을 하면서 속을 전부 털어놓았습니다. 이것이 저에게 가장 큰 도움이 되었나 싶습니다. 저조한 성적에 저조차도 저를 믿지 못하고 있을 때, 담임선생님의 진심 어린 조언과 위로가 큰 힘이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대  인문계열 합격 </strong>
                                     <br>
                                     러셀 평촌 왕휘웅
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 대구의 가장 큰 장점은 바자관 바로 앞 담임 부스에 
                                담임선생님이 상주하고 계셔서 
                                언제든 입시 고민과 정보들에 대해서 
                                담임선생님과 이야기를 나눌 수 있다는 점입니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                <p><strong>2024 경북대 치의예과 합격</strong>
                                     <br>
                                     러셀 대구 정은채
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>원서 접수 기간에 많이 막막했는데, 러셀 대구 입시 전문 담임선생님께서 생기부 내용과 성적에 맞춰 여러 학과와 전형을 정리해 주시고, 지원 전략과 관련해서 상담도 자세하게 해 주셔서 많은 도움이 됐습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                <p><strong>2024 경북대 약학과 합격</strong>
                                     <br>
                                     러셀 대구 이서영
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>담임선생님이 부족한 과목에 대한 학습법이나 입시에 대한 전문지식을 바탕으로 컨설팅해 주셔서 순수히 공부에만 집중할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                <p><strong>2024 한양대 기계과 합격 </strong>
                                     <br>
                                     러셀CORE 창원 성재호
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>학원 내 담임선생님들의 지속적인 순찰 및 면학분위기 조성을 통해 친목 행위로 면학분위기가 저해되지 않아서 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt=""></div>
                                <p><strong>2024 이화여대 인문 통합 계열 합격</strong>
                                     <br>
                                     러셀CORE 창원 김가영
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 실전 콘텐츠 (다양한 모의고사)가 큰 도움이 되었습니다. 모의고사를 통해 공부 방향을 정할 수 있었습니다. 특히 수능 실전 환경에 적응할 수 있었고, 부족한 점을 발견하고 보완하는데 모의고사가 큰 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대학교 물리천문학부 합격 </strong>
                                     <br>
                                     러셀CORE 원주 이민성
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>입시 전문 담임선생님과의 1:1 상담을 통해 최신 입시 정보를 빠르게 얻을 수 있어, 시간이 부족한 수험생 입장에서 많은 도움이 되었습니다. 정확한 데이터를 기반으로 자세하고 심도 있게 상담을 해주셔서 수시 카드를 쓸 때에 정말 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대학교(미래) 의예과 합격 </strong>
                                     <br>
                                     러셀CORE 원주 박성환
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% End If %>
                <div class="swiper-pagination type03"></div>
            </div>
            <!-- //학생후기 슬라이드 type01 -->
        </div>
    </div>
    <div class="cont05">
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/cont05_tit.jpg" alt="SYSTEM 03 메가스터디 온·오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과 나에게 꼭 필요한 수업 선택으로 충분한 자습시간 확보는 물론 수능 고득점을 위한 실력을 완성할 수 있습니다."></p>
        <div class="inner">
            <ul class="danka-info">
                <li>
                    <p>과목별/수준별/진도별<br>
                    <strong>전략적인 수업 선택</strong></p>
                </li>
                <li>
                    <p>내게 필요한 수업 선택으로<br>
                    <strong>충분한 자습시간 확보</strong></p>
                </li>
                <li>
                <% If isCore = 1 OR campus_code = "CD0342" OR campus_code = "CD0349" Then '코어/대구/울산 %>
                    <% If campus_code = "CD0344" OR  campus_code = "CD0345" Then '코어전주/코어창원 %>
                    <p>메가스터디 온&middot;오프 선생님의<br>
                        <strong>몰입감 높은 대치동 LIVE 강의</strong>
                    </p>
                    <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                    <p>몰입도 높은 <strong>LIVE 강의</strong>와<br>
                        <strong>대치동 현강 콘텐츠/수업 관리</strong>
                    </p>
                    <% Else %>
                    <p>메가스터디 온&middot;오프 선생님의<br>
                        <strong>현장강의/대치동 LIVE 강의</strong>
                    </p>
                    <% End If %>
                <% Else %>
                    <p>메가스터디 온&middot;오프 선생님의<br>
                    <strong>몰입감 높은 현장강의</strong></p>
                <% End If %>
                </li>
                <li>
                    <% If campus_code = "CD0345" Then '코어창원 %>
                    <p>
                        <strong>강의 전후 학습관리</strong>와<br>
                        <strong>선생님 전용 학습 콘텐츠</strong>
                    </p>
                    <% ElseIf campus_code = "CD0343" Then '코어원주 %>
                    <p>
                        <strong>강의 전후 학습관리와</strong><br>
                        <strong>시기별 맞춤 학습 콘텐츠</strong>
                    </p>
                    <% Else %>
                    <p>
                        <strong>수업 전후 학습관리</strong>와<br>
                        <strong>선생님 전용 학습 콘텐츠</strong>
                    </p>
                    <% End If %>
                </li>
            </ul>
        </div>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2024/half/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
        <div class="inner">
            <div class="danka-l-list">
                <% If campus_code <> "CD0344" Then '코어전주 제외 %>
                <a href="<%=danka_am_url%>">
                    <span class="m-flag">매월</span>
                    <p>오직 N수생을 위한<br>
                        집중 관리형 평일 오전/오후 단과</p>
                    <div>AM단과</div>
                </a>
                <% End If %>
                <a href="<%=danka_regular_url%>">
                    <span class="m-flag">매월</span>
                    <p>개념부터 실전까지<br>
                        빈틈없는 커리큘럼으로 수능 실력 완성</p>
                    <div>정규&middot;특강 단과</div>
                </a>
                <% If campus_code = "CD0344" Then '코어전주 %>
                <a href="<%=danka_am_url%>">
                    <span class="m-flag">매월</span>
                    <p>오직 N수생을 위한<br>
                        집중 관리형 평일 오전/오후 단과</p>
                    <div>AM단과</div>
                </a>
                <% End If %>
            </div>
            <% If campus_code <> "CD0343" Then '코어원주 제외 %>
            <!-- 학생후기 슬라이드 type02 -->
            <div class="stu-r-slide type02 swiper-container">
                <% If campus_code = "INTRO" OR campus_code = "CD0344"  OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '인트로/코어전주/대치/코어청주/울산 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 현장강의는 검증된 선생님의 수업을 직접 들을 수 있다 보니 집중도와 이해도가 훨씬 높았습니다. 또한 풍부한 수업자료를 제공해 주셔서 혼자 복습을 하는 데에도 큰 도움이 되었습니다.</p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 수학교육과 합격 </strong><br>
                                    러셀 분당 오인경
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>서울에서만 볼 수 있는 선생님들을 직접 현장에서 만나 수업을 들을 수 있다는 것이 좋았습니다. 또한 공부 관련 상담을 받을 때 아닌 건 아니라고 피드백해 주셔서 제 실력에 대한 객관화에 도움이 되었습니다.
                                </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 바이오의공학부 합격</strong><br>
                                    러셀 대구 오승현
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 현장강의는 효과적으로 수업을 수강할 수 있다는 점이 가장 매력적이었습니다. 현장강의를 듣는 강의실과 자습관이 같은 건물 내에 위치했기에 시간을 낭비하지 않고 많은 공부를 할 수 있었습니다.<br>
                            
                                또한 여러 러셀학원에 출강하는 선생님들의 강의뿐만 아니라 메가스터디 인강을 촬영하시는 선생님들의 강의도 직접 들을 수 있었기에 더 인상깊었던 것 같습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 철학과 합격</strong><br>
                                    러셀 부천 전찬영
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 현장강의를 통해 현역 때는 몰랐던 스킬들을 많이 알 수 있었고,
                                아낌없이 많은 자료들을 공유해주셔서 수능 전까지 다양한 유형의 문제들을 경험해 볼 수 있었습니다. 이외에도 쉬는 시간까지 쪼개면서 질문을 받아주셔서 매주 과제를 통해 정리한 모르는 문제들을 해결하고 복습하는 시간을 가질 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt=""></div>
                                <p><strong>2024 강원대 의예과 합격</strong><br>
                                    러셀 부천 이가은
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀코어에 다니기 이전에 현장강의를 들은 경험이 있습니다. 수업에서 나누어 주는 자료도 현장강의와 동일하며, 수업 몰입도에서도 충분히 현장강의와 같은 효과를 누릴 수 있다고 저는 확신합니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 경영학과 합격</strong><br>
                                    러셀CORE 광주 김형준
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>라이브 수업의 장점은 공부하고 있던 건물에서 바로 수업을 들을 수 있다는 점입니다. 수업에는 따로 조교 선생님들이 계셔서 질문이나 상담을 할 수 있었는데 이 점이 가장 만족스러웠습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                <p><strong>2024 조선과 의예과 합격</strong><br>
                                    러셀CORE 광주 김나연
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>대치동 현강 자료를 그대로 받아 볼 수 있다는 것이 큰 장점입니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt=""></div>
                                <p><strong>2023 충남대 의예과 합격</strong><br>
                                    러셀CORE 대전 박보근
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>대치동 유명 선생님들의 현장강의를 대전에서 실시간으로 현장감있게 듣는다는 점이 굉장히 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2023 연세대(미래) 의예과 합격</strong> <br>
                                    러셀CORE 대전 이승섭
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0247" Then '강남 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 단과가 좋은 점은 선택지가 여럿 있다는 점입니다. A 강의를 듣다가 조금 더 어려운 문제들을 풀어보고 싶어서 B강의를 듣기도 했습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_hanyang.png" alt=""></div>
                                <p><strong>2023 한양대 약학과 합격</strong><br>
                                    러셀 강남 김상훈
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>학습에 도움이 되는 풍부한 학습자료를 제공해 주시고 질문을 해도 바로 잘 답변을 해 주셔서 많은 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_daeguhanuidae.png" alt=""></div>
                                <p><strong>2024 대구한의대 한의예과 합격</strong><br>
                                    러셀 강남 김하린
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>선생님들의 체계적인 수업과 조교 선생님들의 질의응답이 만족스러웠습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt=""></div>
                                <p><strong>2023 성균관대 경영학과 합격</strong> <br>
                                    러셀 영통 이현은
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>수강해야 하는 강좌가 정해져 있는 다른 학원과는 달리, 러셀은 꼭 필요한 단과만을 선택해서 효율적으로 약점을 보충할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sungkyunkwan.png" alt=""></div>
                                <p><strong>2023 성균관대 한문학과 합격</strong> <br>
                                    러셀 영통 장혜지
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0245" Then '목동 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀은 자신이 원하는 단과만 신청할 수 있다는 점이 좋은 거 같습니다. 선택적으로 필요한 단과만 수강할 수 있어서 자습시간을 많이 확보할 수 있었습니다.

                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 융합인문사회학과 합격</strong>
                                    <br>
                                    러셀 목동 김은재
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>원하는 과목만 이동 시간 낭비 없이 들을 수 있어서 좋았습니다. 개념 수업부터 심화, 실전 수업까지 커리큘럼이 탄탄하게 1년간 진행되어서 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sookmyng.png" alt=""></div>
                                <p><strong>2024 숙명여대 약학부 합격</strong> <br>
                                    러셀 목동 이예은
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 분당 단과에서 훌륭한 선생님을 많이 만날 수 있어서 좋았습니다. 경제 수업을 들었는데, 다양한 콘텐츠를 제공해주시고 학생에게 관심을 가져주셔서 감사했습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2023 연세대 경영학과 합격</strong>
                                    <br>
                                    러셀 분당 이OO
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>인강으로만 듣던 수업을 현장강의로 들었는데, 인강에서는 느낄 수 없던 현장감을 느낄 수 있어서 좋았고 수업에 온전히 집중할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2023 고려대 경영학과 합격</strong> <br>
                                    러셀 분당 김OO
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0246" Then '센텀 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀 현장강의에서 검증된 선생님들의 수업을 들으니 직접 만드신 모의고사와 과제들이 정말 좋았고, 시기마다 해야 하는 것들로 수업을 구성해 주셔서 좋았습니다.

                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt=""></div>
                                <p><strong>2024 인제대 의예과 합격
                                </strong>
                                    <br>
                                    러셀 센텀 김OO

                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>선생님들을 직접 현장에서 만나 수업을 들으니 시험 출제 경향이 바뀌면 바로바로 반영해서 수업해 주셔서 모의고사들과 수능 대비에 도움이 많이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_inje.png" alt=""></div>
                                <p><strong>2024 인제대 의예과 합격
                                    
                                    </strong> <br>
                                    러셀 센텀 임OO
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>학생 수준에 맞춰 다양한 선생님의 수업을 선택할 수 있는 점이 장점입니다. 선생님의 수업 내용을 반복적으로 복습하면서  성적을 향상 할 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 물리학과 합격</strong>
                                    <br>
                                    러셀 중계 신현빈
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>현장강의를 들을 수 있어서 좋았습니다. 현강생들 을 위해 매주 주어지는 풍부한 양의 자료와 선생님, 조교님의 학업 상담 등 인강으로는 채워지지 않는 부분이 수험생활에 있어서 큰 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyunghee.png" alt=""></div>
                                <p><strong>2022 경희대 정치외교학과 합격</strong> <br>
                                    러셀 중계 김채연
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0248" Then '평촌 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>수업 시간에 매주 양질의 모의고사를 풀며 부족한 부분을 파악하고, 시험에서 마주할 수 있는 다양한 경험을 겪어보며 시험 운용 능력을 키울 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 사회학과 합격</strong>
                                    <br>
                                    러셀 평촌 김윤하
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>검증된 선생님을 실시간, 현장에서 만날 수 있는 것이 장점입니다. 인강에서 얻지 못하는 풍부한 자료를 얻을 수 있어서 좋았습니다. 타 재종과 달리 필요한 수업만을 선택하여 들을 수 있던 것도 장점이라고 생각합니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 행정학과 합격 </strong> <br>
                                    러셀 평촌 윤상경
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>검증된 강의를 들을 수 있는 인강의 장점과, 학습관리가 가능한 현강의 장점을 합친 것이 대치동 LIVE 수업이라고 생각합니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kyungpook.png" alt=""></div>
                                <p><strong>2024 경북대 약학과 합격 </strong>
                                    <br>
                                    러셀 대구 이서영
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>서울에서만 볼 수 있는 선생님들을 직접 현장에서 만나 수업을 들을 수 있다는 것이 좋았습니다. <br>
                                또한 공부 관련 상담을 받을 때 아닌 건 아니라고 피드백해 주셔서 제 실력에 대한 객관화에 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 바이오의공학부 합격</strong> <br>
                                    러셀 대구 오승현
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>서울에 가지 않아도 대치동 LIVE 수업과 콘텐츠를 동일하게 이용할 수 있다는 점이 마음에 들었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungnam.png" alt=""></div>
                                <p><strong>2024 충남대 수의예과 합격 </strong>
                                    <br>
                                    러셀CORE 창원 백지훈
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>대치에서 진행하는 수업을 실시간으로 수강할 수 있어 인강으로 채울 수 없는 부분에서 많은 도움을 받았습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_ewha.png" alt=""></div>
                                <p><strong>2024 이화여대 커뮤니케이션 미디어 학부 합격</strong> <br>
                                    러셀 CORE 창원 유승연
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% End If %>
                <div class="swiper-pagination type04"></div>
            </div>
            <!-- //학생후기 슬라이드 type02 -->
            <% End If %>
        </div>
    </div>
    <div class="cont06">
        <% If campus_code = "CD0257" Then '중계 %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/cont06_tit.jpg" alt="SYSTEM 04 반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠 시기별 맞춤 콘텐츠로 약점 보완과 실력 완성은 물론, 재원생들과 함께 집체 모의고사 훈련으로 실전력까지 향상할 수 있습니다."></p>
        <% Else %>
        <p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/cont06_tit.jpg" alt="SYSTEM 04 반수생에게 반드시 필요한 러셀 실전 학습 콘텐츠 시기별 맞춤 콘텐츠로 약점 보완과 실력 완성은 물론,최상위권 학생들과 함께 집체 모의고사 훈련으로 실전력까지 향상할 수 있습니다."></p>
        <% End If %>
        <!-- 학습 콘텐츠 슬라이드 -->
        <div class="program-slide swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide01.jpg" alt="QUEL 모의고사">
                </div>
                <% If campus_code <> "CD0250" Then '부천 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide02.jpg" alt="E-QUEL 모의고사">
                </div>
                <% End If %>
                <% If campus_code <> "CD0344" and campus_code <> "CD0247" and campus_code <> "CD0249" and campus_code <> "CD0245" and campus_code <> "CD0250" and campus_code <> "CD0001" and campus_code <> "CD0244" and campus_code <> "CD0257" and campus_code <> "CD0346" and campus_code <> "CD0246" and campus_code <> "CD0345" and campus_code <> "CD0343" Then '코어전주/강남/영통/목동/부천/대치/분당/중계/코어청주/센텀/코어창원/코어원주 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide03.jpg" alt="QUEL:UNIT">
                </div>
                <% End If %>
                <% If campus_code = "CD0248" Then '평촌 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide05_2.jpg" alt="러셀CORE Weekly 모의고사 (내용다름)">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide10.jpg" alt="메가X대성 더 프리미엄 모의고사">
                </div>
                <% If campus_code <> "CD0247" and campus_code <> "CD0249" and campus_code <> "CD0245" and campus_code <> "CD0250" and campus_code <> "CD0001" and campus_code <> "CD0244" and campus_code <> "CD0257" and campus_code <> "CD0248" and campus_code <> "CD0246" Then '강남/영통/목동/부천/대치/분당/중계/평촌/센텀 제외 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide05.jpg" alt="러셀CORE Weekly 모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide06.jpg" alt="월간 학습지(월간 장영진)">
                </div>
                <% If campus_code = "CD0250" Then '부천 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2024/half/con-slide05.jpg" alt="러셀CORE Weekly 모의고사">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide12_3.jpg" alt="2024 장영진T 식스팩(6PACK)">
                </div>
                <% End If %>
                <% If campus_code = "CD0245" Then '목동 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide12.jpg" alt="장영진 식스팩(6PACK)">
                </div>
                <% ElseIf campus_code = "CD0248" Then '평촌 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide12_2.jpg" alt="6PACK 모의고사">
                </div>
                <% End If %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide07.jpg" alt="러셀 학습 플래너">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide08.jpg" alt="일일수학 30제">
                </div>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/half/con-slide09.jpg" alt="러셀 총평노트">
                </div>
                <% If campus_code = "CD0244" Then '분당 %>
                <div class="swiper-slide">
                    <img src="<%=Application("img_path_russel")%>/m_russel/russel_bd/2024/half/con-slide11.jpg" alt="러셀 분당 재원생 전용 주간지">
                </div>
                <% End If %>
            </div>
            <div class="swiper-pagination type05"></div>
        </div>
        <!-- //학습 콘텐츠 슬라이드 -->
        <div class="inner">
            <% If campus_code <> "CD0342" Then '대구제외 %>
            <p class="tit">러셀 실전 콘텐츠 <strong>연간 시행 일정</strong></p>
            <!-- 연간시행일정 -->
            <div class="y-plan <%=calendar_wide%>">
                <table class="tbl-type01 tbl-center">
                    <% If campus_code = "CD0344" OR campus_code = "CD0346" OR campus_code = "CD0345" OR campus_code = "CD0343" Then '코어전주/코어청주/코어창원/코어원주 %>
                    <!-- QIEL:UNIT 제외(css수정 필요) -->
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 17%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th class="b-r">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <% ElseIf campus_code = "CD0247" OR campus_code = "CD0249" OR campus_code = "CD0001" OR campus_code = "CD0244" OR campus_code = "CD0257" OR campus_code = "CD0246" Then '강남/영통/대치/분당/중계/센텀 %>
                    <!-- QIEL:UNIT, 러셀CORE Weekly 제외(css수정 필요) -->
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th class="b-r">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <% ElseIf campus_code = "CD0250" Then '부천 %>
                    <!-- QIEL:UNIT, 러셀CORE Weekly 제외/장영진 식스팩 추가(css수정 필요) -->
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                            <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">장영진<br>식스팩<br>(6PACK)</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th class="b-r">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <% ElseIf campus_code = "CD0245" Then '목동 %>
                    <!-- 장영진 식스팩 추가 -->
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="2">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                            <th rowspan="2">장영진<br>식스팩<br>(6PACK)</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th class="b-r">E-QUEL<br>모의고사</th>
                        </tr>
                    </thead>
                    <% ElseIf campus_code = "CD0248" Then '평촌 %>
                    <!-- 러셀CORE Weekly 제외(css수정 필요) -->
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 11%;">
                        <col style="width: 11%;">
                        <col style="width: 11%;">
                        <col style="width: 11%;">
                        <col style="width: 11%;">
                        <col style="width: 11%;">
                        <col style="width: 11%;">
                        <col style="width: 11%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="3">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">6PACK<br>모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                            <th rowspan="2">평가원<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th>E-QUEL<br>모의고사</th>
                            <th class="b-r">QUEL :<br>UNIT</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th class="bg-sky">3월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">1~4회차</td>
                            <td class="ico-y">3/22(금)</td>
                            <td class="ico-p">8~9회차</td>
                            <td class="ico-six">시즌1</td>
                            <td class="ico-o">3월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">5~8회차</td>
                            <td class="ico-y">4/16(화)</td>
                            <td class="ico-p">10~11회차</td>
                            <td class="ico-six">시즌1</td>
                            <td class="ico-o">4월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td class="ico-b">1회</td>
                            <td></td>
                            <td class="ico-yg">9~12회차</td>
                            <td class="ico-y">5/21(화)</td>
                            <td class="ico-p">12~13회차</td>
                            <td class="ico-six">시즌2</td>
                            <td class="ico-o">5월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">13~16회차</td>
                            <td></td>
                            <td class="ico-p">14~16회차</td>
                            <td></td>
                            <td class="ico-o">6월호</td>
                            <td class="ico-pm">6평</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">7/5(금)</td>
                            <td class="ico-p">17~18회차</td>
                            <td></td>
                            <td class="ico-o">7월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td class="ico-b">2회</td>
                            <td class="ico-db">8/22(목)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-p">19회차</td>
                            <td></td>
                            <td class="ico-o">8월호</td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-b">3회</td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-p">20~21회차</td>
                            <td></td>
                            <td class="ico-o">9월호</td>
                            <td class="ico-pm">9평</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td class="ico-b">4~5회</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">10/22(화)</td>
                            <td class="ico-p">22회차</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">11월</th>
                            <td></td>
                            <td class="ico-db">11/1(금)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-p">23회차</td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                    <% Else %>
                    <colgroup>
                        <col style="width: 10%;">
                        <col style="width: 15%;">
                        <col style="width: 15%;">
                        <col style="width: 13%;">
                        <col style="width: 15%;">
                        <col style="width: 17%;">
                        <col style="width: 15%;">
                    </colgroup>
                    <thead>
                        <tr>
                            <th rowspan="2">구<br>분</th>
                            <th colspan="3">QUEL</th>
                            <th rowspan="2">메대프<br>
                            모의고사</th>
                            <th rowspan="2">러셀CORE<br>Weekly<br>모의고사</th>
                            <th rowspan="2">월간<br>장영진<br>모의고사</th>
                        </tr>
                        <tr>
                            <th>QUEL<br>모의고사</th>
                            <th>E-QUEL<br>모의고사</th>
                            <th class="b-r">QUEL :<br>UNIT</th>
                        </tr>
                    </thead>
                    <% End If %>
                    <% If campus_code <> "CD0248" Then '평촌 제외 %>
                    <!-- td 중간 순서에 추가 X(끝으로만 추가 가능), 중간 순서 추가 시 새로 분기처리해주세요. -->
                    <tbody>
                        <tr>
                            <!-- 1. 월 -->
                            <th class="bg-sky">3월</th>
                            <!-- 2. QUEL 모의고사 -->
                            <td></td>
                            <!-- 3. E-QUEL 모의고사 -->
                            <td></td>
                            <!-- 4. QUEL:UNIT -->
                            <td class="ico-yg">1~4회차</td>
                            <!-- 5. 메대프 모의고사 -->
                            <td class="ico-y">3/22(금)</td>
                            <!-- 6. 러셀CORE Weekly 모의고사 -->
                            <td class="ico-p">8~9회차</td>
                            <!-- 7. 월간 장영진 모의고사 -->
                            <td class="ico-o">3월호</td>
                            <!-- 8. 러셀CORE Weekly 모의고사 -->
                            <td></td>
                            <!-- 9. 장영진 식스팩 -->
                            <td class="ico-g six-pack">시즌1</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">4월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">5~8회차</td>
                            <td class="ico-y">4/16(화)</td>
                            <td class="ico-p">10~11회차</td>
                            <td class="ico-o">4월호</td>
                            <td class="ico-p">10~11회차</td>
                            <td class="ico-g six-pack">시즌1</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">5월</th>
                            <td class="ico-b">1회</td>
                            <td></td>
                            <td class="ico-yg">9~12회차</td>
                            <td class="ico-y">5/21(화)</td>
                            <td class="ico-p">12~13회차</td>
                            <td class="ico-o">5월호</td>
                            <td class="ico-p">12~13회차</td>
                            <td class="ico-g six-pack">시즌2</td>
                        </tr>
                        <tr>
                            <th class="bg-sky">6월</th>
                            <td></td>
                            <td></td>
                            <td class="ico-yg">13~16회차</td>
                            <td></td>
                            <td class="ico-p">14~16회차</td>
                            <td class="ico-o">6월호</td>
                            <td class="ico-p">14~16회차</td>
                            <td class="six-pack"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">7월</th>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">7/5(금)</td>
                            <td class="ico-p">17~18회차</td>
                            <td class="ico-o">7월호</td>
                            <td class="ico-p">17~18회차</td>
                            <td class="six-pack"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">8월</th>
                            <td class="ico-b">2회</td>
                            <td class="ico-db">8/22(목)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-p">19회차</td>
                            <td class="ico-o">8월호</td>
                            <td class="ico-p">19회차</td>
                            <td class="six-pack"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">9월</th>
                            <td class="ico-b">3회</td>
                            <td></td>
                            <td></td>
                            <% If campus_code = "CD0001" OR campus_code = "CD0245" OR campus_code = "CD0244" OR campus_code = "CD0249" OR campus_code = "CD0349" OR campus_code = "CD0340" OR campus_code = "CD0343" OR campus_code = "CD0345" Then '대치/목동/분당/영통/울산/코어광주/코어원주/코어창원 %>
                            <td class="ico-y">9/27(금)</td>
                            <% Else %>
                            <td></td>
                            <% End If %>
                            <td class="ico-p">20~21회차</td>
                            <td class="ico-o">9월호</td>
                            <td class="ico-p">20~21회차</td>
                            <td class="six-pack"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">10월</th>
                            <td class="ico-b">4~5회</td>
                            <td></td>
                            <td></td>
                            <td class="ico-y">10/22(화)</td>
                            <td class="ico-p">22회차</td>
                            <td></td>
                            <td class="ico-p">22회차</td>
                            <td class="six-pack"></td>
                        </tr>
                        <tr>
                            <th class="bg-sky">11월</th>
                            <td></td>
                            <td class="ico-db">11/1(금)</td>
                            <td></td>
                            <td></td>
                            <td class="ico-p">23회차</td>
                            <td></td>
                            <td class="ico-p">23회차</td>
                            <td class="six-pack"></td>
                        </tr>
                    </tbody>
                    <% End If %>
                </table>
            </div>
            <!-- //연간시행일정 -->
            <% End If %>
            <p class="r-txt">* 상기 일정은 평가원 시행 계획 및<br>
            학원별 학사일정에 따라 변경 및 조정될 수 있습니다.
            </p>
            <% If campus_code <> "CD0343" Then '코어원주 제외 %>
            <!-- 학생후기 슬라이드 type03 -->
            <div class="stu-r-slide type03 swiper-container">
                <% If campus_code = "INTRO" OR campus_code = "CD0344" OR campus_code = "CD0001" OR campus_code = "CD0346" OR campus_code = "CD0349" Then '인트로/코어전주/대치/코어청주/울산 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀의 퀄 모의고사가 가장 마음에 들었습니다. 문제의 퀄리티 자체도 준수하고, 적당한 난이도로 출제되어 제 실력을 확인할 수 있는 좋은 모의고사였습니다.
                                </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 의예과 합격</strong><br>
                                    최상위권 남학생 의대전문관 러셀 기숙학원 심민준
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀에서 지속적으로 퀄 모의고사나 메대프 모의고사와 같은 사설 모의고사 콘텐츠를 제공해주어 실전과 유사한 분위기에서 실모 연습을 할 수 있는 것이 큰 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_busan.png" alt=""></div>
                                <p><strong>2024 부산대 의예과 합격</strong><br>
                                    러셀 센텀 최서경
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0250" Then '부천 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>매달 봤던 메가X대성 더 프리미엄 모의고사가 많은 도움이 되었습니다.
                                수능과 같은 시간표로 전과목 실시하기 때문에 수능날에 일어날 수 있는 여러 상황에 대비할 수 있고, 평가원과 닮은 질 좋은 문제들로 많은 연습을 할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_jeju.png" alt=""></div>
                                <p><strong>2024 제주대 수의예과 합격</strong><br>
                                    러셀 부천 이동규
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>QUEL이나 메가X대성 더 프리미엄 모의고사 같은 질 좋은 모의고사를 주기적으로 실제 수능 시간에 맞춰 푸는 연습을 했기 때문에 6모, 9모는 물론 수능까지 감을 잃지 않을 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kangwon.png" alt=""></div>
                                <p><strong>2024 강원대 의예과 합격</strong><br>
                                    러셀 부천 이가은
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0340" Then '코어광주 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>공부하던 공간에서 응시할 수 있다는 점에서 이동을 최소화 시켜주며 또 실전 같은 분위기에서 시험을 응시할 수 있어 수능의 감을 놓지 않을 수 있었습니다. 매달 시행되다 보니 저의 부족한 점을 파악하고 새로 습득한 문제풀이법을 실전에서 연습해 볼 수 있어서 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                <p><strong>2024 조선대 의예과 합격</strong><br>
                                    러셀CORE 광주 김세준
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>혼자서 모의고사를 보면 현장감이 떨어져서 긴장이 되지 않는데 매달마다 학원생들 전체가 모의고사를 응시하여 현장감을 느낄 수 있었습니다. 함께 본 모의고사 덕분에 실제 수능 날에는 긴장하지 않고 시험에 응시할 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_joseon.png" alt=""></div>
                                <p><strong>2024 조선대 의예과 합격</strong><br>
                                    러셀CORE 광주 김시영
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0341" Then '코어대전 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>수험장과 유사한 환경에서 응시한 집체 모의고사 덕분에 수능날 발생할 수 있는 일을 시뮬레이션하고 루틴도 미리 테스트할 수 있어 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2023 연세대(서울) 의예과 합격</strong><br>
                                    러셀CORE 대전 조한혁
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>매 달 실시하는 다양한 집체 모의고사를 통해 꾸준히 학습 성취도를 점검하고 전국 단위의 수험생들 사이에서 내 위치를 파악 할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chungbuk.png" alt=""></div>
                                <p><strong>2023 충북대 의예과 합격</strong> <br>
                                    러셀CORE 대전 김경호
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0247" Then '강남 %>
                <div class="swiper-wrapper pb0">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>퀄 모의고사와 더프 모의고사가 가장 저에게 도움이 되었습니다. 기출문제를 위주로 학습하던 저에게 퀄 모의고사와 더프 모의고사는 그동안 제가 놓치고 있던 유형의 문제들을 다시 점검하게 해주었고, 흔치 않은 유형이면서 기초 개념과 연관되어 나오는 양질의 문제를 접하게 해준 점이 마음에 들었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_wooseok.png" alt=""></div>
                                <p><strong>2023 우석대 한의예과 합격</strong> <br>
                                    러셀 강남 이노아
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0249" Then '영통 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀학원에서 자료를 많이 제공해 줘서 좋았습니다. 모의고사의 퀄리티가 굉장히 좋고 해설까지 잘 쓰여 있어서 수능 대비에 많은 도움이 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2023 고려대(안암) 화학과 합격</strong><br>
                                    러셀 영통 신승민
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>전국 단위 사설 모의고사인 메대프 모의고사와 퀄리티가 보증된 QUEL 모의고사를 응시할 수 있다는 점과 담임선생님들의 적극적인 입시 정보 제공 등 다양한 메리트들이 러셀에서 재수생활을 이어 나가겠다는 마음을 먹게 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_semyung.png" alt=""></div>
                                <p><strong>2023 세명대 한의예과 합격</strong> <br>
                                    러셀 영통 정인지
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0245" Then '목동 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>매월 응시하는 모의고사는 많은 학생들이 응시할 뿐만 아니라 난이도와 문제 스타일 또한 평가원과 굉장히 유사하여 수능 감각을 익히는데 큰 도움이 되었습니다. 모의고사 후 성적을 확인함으로써 수험 기간 동안 긴장감을 유지할 수 있었습니다.

                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 경영학과 합격</strong> 
                                    <br>
                                    러셀 목동 장준혁
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>파이널 기간 동안 진행했던  QUEL 모의고사가 큰 도움이 되었습니다. QUEL 모의고사를 통해 전 과목을 실제 수능 시간에 맞춰 풀면서 실전 경험에 대한 부족함을 해소할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_yonsei.png" alt=""></div>
                                <p><strong>2024 연세대 원주의과대학 합격</strong> <br>
                                    러셀 목동 윤서환
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0244" Then '분당 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>파이널 기간에 진행한 퀄모의고사를 통해 전과목을 실제 수능 시간에 맞춰 풀면서 실전 경험에 대한 부족함을 해소할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_korea.png" alt=""></div>
                                <p><strong>2024 고려대 의과대학 합격</strong> 
                                    <br>
                                    러셀 분당 이OO
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>모의고사를 통한 성적으로 담임선생님과 상담하며, 함께  달려주시는 분이 있다는 점을 느낄 수 있고 나에게 맞는 효율적 공부를 할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gacheon.png" alt=""></div>
                                <p><strong>2023 가천대 한의예과 합격</strong> <br>
                                    러셀 분당 김OO
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0246" Then '센텀 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀에서 지속적으로 퀄 모의고사나 메대프 모의고사와 같은 사설 모의고사 컨텐츠를 제공해 주어 양질의 퀄리티로 출제된 문제와 난이도로 실전과 유사한 분위기에서 실모 연습을 할 수 있는 것이 큰 도움이 되었습니다.

                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_kosin.png" alt=""></div>
                                <p><strong>2024 고신대 의예과 합격
                                    
                                    </strong> 
                                    <br>
                                    러셀 센텀 홍OO
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>메가X대성 더 프리미엄 모의고사가 매달 집체 모의고사 형태로 운영되어 평가원 모의평가 등 수능과 동일한 시간으로 시험을 응시하여 수능 시간에 맞추어 목표 성적을 받는 것을 연습할 수 있어 좋았습니다.

                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt=""></div>
                                <p><strong>2024 동아대 의예과 합격
                                    
                                    </strong> <br>
                                    러셀 센텀 권OO
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0257" Then '중계 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>매월 퀄 모의고사와 메대프 모의고사를 풀며 주기적으로 실력을 점검하고, 다양한 문제들을 풀어 볼 수 있어서 좋았습니다. 저의 현 위치를 파악할 수 있는 동기부여도 되었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_konkuk.png" alt=""></div>
                                <p><strong>2022 건국대 수의예과 합격</strong>
                                    <br>
                                    러셀 중계 문서영
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>혼자 공부하게 되면 수능처럼 모의고사를 볼 수 있는 기회가 많이 없는데, 러셀은 메대프 모의고사뿐만 아니라 퀄 모의고사 등 1~2주에 한 번씩 응시할 수 있어서 좋았습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_gacheon.png" alt=""></div>
                                <p><strong>2024 덕성여대 약학과 합격</strong><br>
                                    러셀 중계 민지우
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0248" Then '평촌 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>매달 실시했던 메대프 모의고사가 큰 도움이 되었습니다. 전 영역을 응시하기 때문에 수능날 발생할 수 있는 돌발 상황에 대처하는 연습을 할 수 있었습니다. 
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_chonbuk.png" alt=""></div>
                                <p><strong>2024 전북대 의예과 합격 </strong>
                                    <br>
                                    러셀 평촌 홍지우
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>QUEL 모의고사, 장영진 모의고사, 월간 장연진, 플래너 제공 등 다양한 학생 지원 시스템이 구축되어 있어 본인이 의지가 있다면 공부에 활용할 수 있는 자원들이 많은 느낌이었습니다. </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 인문계열 합격</strong><br>
                                    러셀 평촌 왕휘웅
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0342" Then '대구 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>러셀CORE Weekly 모의고사도 정말 마음에 드는 콘텐츠였습니다. 하프 모의고사 형태로 진행되어, 시간을 많이 뺏기지 않으면서도 다양하고 많은 문제들을 접할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_snu.png" alt=""></div>
                                <p><strong>2024 서울대 생명교육과합격 </strong>
                                    <br>
                                    러셀 대구 이승우
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>위클리 모의고사와 메대프 모의고사는 실전과 같은 환경에서 평소 학습했던 부분들을 점검하고 시간 관리 연습을 하며 객관적인 나의 위치를 파악할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_daeguhanuidae.png" alt=""></div>
                                <p><strong>2024 대구한의대 한의예과 합격</strong><br>
                                    러셀 대구 이상엽
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% ElseIf campus_code = "CD0345" Then '코어창원 %>
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>실전과 같은 분위기에서 모의고사를 볼 수 있는 기회가 많지 않은데, 러셀은 위클리, 메대프, 퀄 모의고사 등으로 매주 수능과 같이 대비할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_donga.png" alt=""></div>
                                <p><strong>2024 동아대 의예과 합격 </strong>
                                    <br>
                                    러셀CORE 창원 윤종빈
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="swiper-slide">
                        <div class="stu-review">
                            <p>매주 응시하는 모의고사로 나의 위치를 객관적으로 깨닫고  학습 피드백을 할 수 있었습니다.
                            </p>
                            <div>
                                <div><img src="<%=Application("img_path_russel")%>/intro/2024/uni_logo/logo_sogang.png" alt=""></div>
                                <p><strong>2024 서강대 경제학과 합격 </strong><br>
                                    러셀CORE 창원 서희림
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
                <% End If %>
                <div class="swiper-pagination type05"></div>
            </div>
            <!-- //학생후기 슬라이드 type03 -->
            <% End If %>
            
            <% If campus_code = "CD0342" Then '대구 %>
            <p class="tit">러셀 대구 실전 콘텐츠<br><strong>[과목별 연간 시행 일정]</strong></p>
            <div class="study-schedule">
                <div class="year-tab-wrap">
                    <div class="year-tab">
                        <a href="" class="on"><strong>3</strong>월</a>
                        <a href=""><strong>4</strong>월</a>
                        <a href=""><strong>5</strong>월</a>
                        <a href=""><strong>6</strong>월</a>
                        <a href=""><strong>7</strong>월</a>
                        <a href=""><strong>8</strong>월</a>
                        <a href=""><strong>9</strong>월</a>
                        <a href=""><strong>10</strong>월</a>
                        <a href=""><strong>11</strong>월</a>
                    </div>
                </div>
                <!-- 3월 -->
                <div class="year-cont" style="display:block;">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[이감] 모의고사 2회차 + 간쓸개</li>
                                        <li>[상상] 모의고사 2회차 + 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                        <li>[장영진] 월간지 (Half)</li>
                                        <li>[장영진] 식스팩 주간지 4회차</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                        <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>

                    <div>
                        <p>
                            [3월] <br>
                            메가X대성 더 프리미엄 모의고사<br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //3월 -->
            
                <!-- 4월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[상상] 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                        <li>[장영진] 월간지 (Half)</li>
                                        <li>[장영진] 식스팩 주간지 4회차</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                        <li>[문호상] 데일리 영단어 &middot; 영독해</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <p>
                            [4월] <br>
                            메가X대성 더 프리미엄 모의고사<br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //4월 -->
            
                <!-- 5월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 6평 대비 1회</li>
                                        <li>[이감] 모의고사 4회차 + 간쓸개</li>
                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 6평 대비 1회</li>
                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                        <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                        <li>[장영진] 식스팩 주간지 4회차</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 6평 대비 1회</li>
                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                        <li>[문호상] 데일리 영단어 · 영독해</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 6평 대비 1회</li>
                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <p>
                            [5월] <br>
                            메가X대성 더 프리미엄 모의고사<br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //5월 -->
            
                <!-- 6월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[이감] 스폐셜시즌 (간쓸개+N제)</li>
                                        <li>[상상] 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                        <li>[장영진] 월간지 (Half)</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                        <li>[문호상] Half 모의고사</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 3회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- //6월 -->
            
                <!-- 7월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[이감] Pre파이널 모의고사 2회차 + 간쓸개</li>
                                        <li>[이감] 파이널 모의고사 1회차 + 간쓸개</li>
                                        <li>[상상] 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                        <li>[장영진] 모의고사 2회차 + 월간지 (Half)</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                        <li>[문호상] Half 모의고사</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <p>
                            [7월] <br>
                            메가X대성 더 프리미엄 모의고사<br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //7월 -->
            
                <!-- 8월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[WEEKLY] Half 모의고사 1회차</li>
                                        <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[WEEKLY] Half 모의고사 1회차</li>
                                        <li>[문호상] Half 모의고사</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[WEEKLY] Half 모의고사 1회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <p>
                            [8월] <br>
                            E-QUEL 모의고사 <br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //8월 -->
            
                <!-- 9월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 1회차</li>
                                        <li>[이감] 파이널 모의고사 5회차 + 간쓸개</li>
                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 1회차</li>
                                        <li>[WEEKLY] Half 모의고사 2회차</li>
                                        <li>[장영진] 모의고사 4회차 + 월간지 (Half)</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 1회차</li>
                                        <li>[WEEKLY] 모의고사 2회차</li>
                                        <li>[김지영] 실전 모의고사 2회</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 1회차</li>
                                        <li>[WEEKLY] 모의고사 2회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <p>
                            [9월] <br>
                            메가X대성 더 프리미엄 모의고사<br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //9월 -->
            
                <!-- 10월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[이감] 파이널 모의고사 4회차 + 간쓸개</li>
                                        <li>[상상] 모의고사 4회차 + 월간지</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[장영진] 실전 모의고사 4회차</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[WEEKLY] 모의고사 1회차</li>
                                        <li>[김지영] 실전 모의고사 2회</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[QUEL] 모의고사 2회차</li>
                                        <li>[WEEKLY] 모의고사 1회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <p>
                            [10월] <br>
                            메가X대성 더 프리미엄 모의고사<br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //10월 -->
            
                <!-- 11월 -->
                <div class="year-cont">
                    <table class="tbl-type01">
                        <tbody>
                            <tr>
                                <th>국어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[이감] 파이널 모의고사 2회차 + 간쓸개</li>
                                        <li>*이감 파이널 엣지 모의고사 2회 추후 공지</li>
                                        <li>상상모의고사 1회차</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>수학</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[장영진] 실전 모의고사 2회차</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>영어</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] 모의고사 1회차</li>
                                        <li>[김지영] 실전 모의고사 3회</li>
                                    </ul>
                                </td>
                            </tr>
                            <tr>
                                <th>탐구</th>
                            </tr>
                            <tr>
                                <td>
                                    <ul class="list-dot">
                                        <li>[WEEKLY] 모의고사 1회차</li>
                                    </ul>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div>
                        <p>
                            [11월] <br>
                            E-QUEL 모의고사 <br>
                            (국수영탐 FULL 모의고사)
                        </p>
                    </div>
                </div>
                <!-- //11월 -->
            </div>
            <script>
                tabMenu('.year-tab','.year-cont')
            </script>
            <% End if %>
        </div>
    </div>
    <div class="bottom-bar">
        <% If campus_code = "CD0249" Then '영통 %>
        <p>다시 도전하는 최상위권 대입성공,<br>
            <strong><span><%=txtCampus%> 재수정규반[반수]</span>가<br>
            대입성공의 가장 강력한 경쟁력입니다.</strong>
        </p>
        <% ElseIf campus_code = "CD0245" Then '목동 %>
        <p>다시 도전하는 <%=bottom_txt%>,<br>
            <strong><span><%=txtCampus%> 파이널 반수반</span>이<br>
            대입성공의 가장 강력한 경쟁력입니다.</strong>
        </p>
        <% Else %>
        <p>다시 도전하는 <%=bottom_txt%>,<br>
            <strong><span><%=txtCampus%> 반수반</span>이<br>
            대입성공의 가장 강력한 경쟁력입니다.</strong>
        </p>
        <% End If %>
    </div>
</div>