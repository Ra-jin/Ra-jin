<div class="cont js-cont <%=campusName%>">
	<div class="cont01">
        <div class="inner02">
            <% If sCampusCode = "CD0257" Then '중계 %>
            <div class="tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/cont01_stxt.png" alt="의/치/한/약/수 합격생들이 가장 중요하다고 이야기하는 지금 이 시기,"></div>
            <% Else %>
            <div class="tit"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_stxt.png" alt="최상위권 합격생들이 가장 중요하다고 이야기하는 지금 이 시기,"></div>
            <% End If %>
		    <div class="tit02"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_tit.png" alt="러셀은 결과로 증명합니다."></div>
            <% If sCampusCode = "CD0247" or sCampusCode = "CD0342" Then '강남/대구 %>
            <ul class="bubble-list">
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list01.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list02.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list03.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list04.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list05.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list06.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list07.png" alt=""></li>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list08.png" alt=""></li>
            </ul>
            <% Else %>
			<ul class="bubble-list">
                <% If sCampusCode = "CD0001" or sCampusCode = "CD0343" Then '대치/코어원주 %>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list01.png" alt=""></li>
                <% Else %>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list01.png" alt=""></li>
                <% End If %>
                
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list02.png" alt=""></li>
                
                <% If sCampusCode = "CD0343" Then '코어원주 %>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list03.png" alt=""></li>
                <% Else %>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list03.png" alt=""></li>
                <% End If %>

                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list04.png" alt=""></li>
                <% If sCampusCode = "CD0001" Then '대치 %>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list05.png" alt=""></li>
                <% Else %>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list05.png" alt=""></li>
                <% End If %>

                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list06.png" alt=""></li>

                <% If sCampusCode = "CD0343" Then '코어원주 %>
                <li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/bubble_list07.png" alt=""></li>
                <% Else %>
                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list07.png" alt=""></li>
                <% End If %>

                <li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bubble_list08.png" alt=""></li>
            </ul>
            <% End If %>
            <div class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_bg.png" alt=""></div>

            <% If sCampusCode = "CD0343" Then '코어원주 %>
            <p class="c-txt">*2024~2025학년도 합격자 후기 중 일부 발췌 </p>
            <% Else %>
            <p class="c-txt">*2025학년도 합격자 후기 중 일부 발췌</p>
            <% End If %>
		</div>
        <div class="tit03"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont01_txt.png" alt=""></div>
	</div>

	<div class="cont02">
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont02_tit.png" alt="대입이라는 장거리 마라톤, 성공적인 완주를 위해 가장 중요한 것은 꾸준히 멀리 가는 힘, 학습 습관 형성!"></h3>
		<div class="inner" data-aos="fade-up">
            <p><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont02_img.png" alt=""></p>
        </div>
        <% If sCampusCode = "CD0257" Then '중계 %>
        <div class="mt50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/cont02_txt.png" alt="겨울방학은 성적 향상을 위한 학습 습관을 완성하기에 가장 적합한 시기입니다."></div>
        <% Else %>
        <div class="mt50"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont02_txt.png" alt="겨울방학은 최상위권으로 도약하기 위한 학습 습관을 완성하기에 가장 적합한 시기입니다."></div>
        <% End If %>
	</div>

	<div class="cont03">
        <% If sCampusCode = "CD0257" Then '중계 %>
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/cont03_tit.png" alt="러셀의 윈터스쿨에는 학습 습관 완성을 위한 모든 것이 준비되어 있습니다."></h3>
        <% Else %>
        <h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont03_tit.png" alt="러셀의 윈터스쿨에는 학습 습관 완성을 위한 모든 것이 준비되어 있습니다."></h3>
        <% End If %>
		<div class="s-item">
            <div class="studyHall-navi-wrap">
                <p class="mb45"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont03_txt.png" alt="짧은 기간, 최대 효율의 효율적인 시간관리"></p>
                <% If russelCore = "1" or sCampusCode = "CD0341" or sCampusCode = "CD0250" or sCampusCode = "CD0349" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0342" Then '코어/대전/부천/울산/분당/영통/대구 %>
                <a data-aos="fade-down" href="/info/schoolBus.asp" class="school-bus"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/schoolBus.png" alt=""></a>
                <% End If %>
                <div class="studyHall-navi swiper-container">
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">최대의 자습시간</div>
                        <div class="swiper-slide">수능 맞춤 시간표</div>
                        <% If sCampusCode = "CD0340" or sCampusCode = "CD0343" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0341" or sCampusCode = "CD0248" or sCampusCode = "CD0349" or sCampusCode = "CD0244" or sCampusCode = "CD0342" Then '코어광주/코어원주/코어창원/코어청주/대전/평촌/울산/분당/대구 %>
                        <div class="swiper-slide">자체 식당 운영</div>
                        <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                        <div class="swiper-slide">급식실 운영</div>
                        <% ElseIf sCampusCode = "CD0001" Then '대치 %>
                        <div class="swiper-slide">급식 운영</div>
                        <% End If %>
                    </div>
                </div>
                
                <% If sCampusCode = "INTRO" Then '인트로 %>
                <p class="l-txt mt0">*각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.<br>
                    *합격생 후기 일부 발췌</p>
                <% Else %>
                <p class="l-txt mt0">*합격생 후기 일부 발췌</p>
                <% End If %>
            </div>
            <div class="studyHall-wrap">
                <div class="studyHall-slide swiper-container">
                    <div class="swiper-wrapper">
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
                            <p class="tit">이동에 낭비하는 시간 없는<br>
                                학습 동선 최적화</p>
                            <p class="txt">
                                <% If sCampusCode = "CD0249" Then '영통 %>
                                효율적인 동선의 강의실과 바자관, <%=meal%> 한 번에<br>
                                <% Else %>
                                한 건물 내의 강의실과 바자관, <%=meal%> 한 번에<br>
                                <% End If %>
                                해결할 수 있도록 동선을 최적화하여<br>
                                이동에 낭비되는 시간을 최소화하였습니다.</p>

                            <% If sCampusCode = "INTRO" or sCampusCode = "CD0246" or sCampusCode = "CD0250" or sCampusCode = "CD0248" Then '인트로/센텀/부천/평촌 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/program_img01.jpg" alt=""></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_img01.jpg" alt=""></div>
                            <% End If %>
                            
                            <% If sCampusCode = "CD0245" Then '목동 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>자습관과 강의실이 가까워서 <br>
                                        이동 시간을 단축할 수 있었던 점이 좋았습니다.</p>
                                    <p><strong>전남대학교 의예과</strong> 러셀 목동 오주연</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0341" Then '대전 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>강의실, 바자관, 급식실이 한 건물 안에 있기 때문에 <br>
                                        이동시간을 절약할 수 있어 좋았고, 생활 루틴을 지키며 <br>
                                        생활할 수 있어서 좋았습니다.</p>
                                    <p><strong>연세대학교(미래) 의예과</strong> 러셀 대전 이승섭</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>한 건물 내에서 자습과 단과 수업 수강을 동시에 할 수 있기 때문에 불필요한 시간 낭비 없이 효율적으로 공부할 수 있었습니다.</p>
                                    <p><strong>한양대학교 경영학부</strong> 러셀CORE 창원 공민지</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>러셀의 장점은 대치동까지 가지 않아도 되는 시간 절약입니다. 강의실이 바자관 바로 위층에 있어 거리상 시간 손실이 없어 좋았습니다.</p>
                                    <p><strong>서울대학교 경영학과</strong> 러셀CORE 청주 김하진</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>바자관과 단과 강의실이 같은 건물에 있기에<br>
                                        학습 동선을 최소화할 수 있었습니다.</p>
                                    <p><strong>경희대학교 의예과</strong> 러셀 평촌 김성윤</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>러셀 중계 학원은 바자관과 강의실이 매우 가까워 <br>
                                        이동시간도 절약할 수 있다는 것이 큰 장점입니다.</p>
                                    <p><strong>단국대학교 의예과</strong> 러셀 중계 김태형</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>수업과 자습, 주기적으로 치는 모의고사 응시를 한 건물 안에서 
                                        해결할 수 있어서 시간 낭비를 최소화할 수 있었던 점이 <br>
                                        매우 만족스러웠습니다.</p>
                                    <p><strong>서울대 컴퓨터공학부</strong> 러셀 울산 안채원</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>이동에 낭비하는 시간이 없도록 도움을 주었습니다.
                                        바른공부 자습전용관과 가까운 거리에 강의실이 있다는 점은 
                                        확실한 장점으로 다가왔습니다.</p>
                                    <p><strong>2024 동국대 한의예과</strong> 러셀CORE 광주 권태완</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>러셀CORE 전주에서는 바자관에서 공부를 하다가 같은 층 강의실로
                                        몇 걸음만 걸어가 수업까지 한번에 들으니 좋았습니다.</p>
                                    <p><strong>고려대학교 간호학과</strong> 러셀CORE 전주 최주혁</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>학습 동선이 최소화된다는 점이 <br>
                                        큰 도움이 되었습니다.</p>
                                    <p><strong>연세대학교 의예과</strong> 러셀 대치 윤지수</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>자습과 현강 수업, 급식을 한 건물 내에서 모두 해결할 <br>
                                        수 있었기 때문에 이동 시간을 최소화하고 공부시간을 최대화<br>
                                        할 수 있어서 큰 도움이 되었습니다.</p>
                                    <p><strong>단국대학교 치의예과</strong> 러셀 분당 김동현</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>자습, 급식, 수업을 효율적인 동선 내에서 해결할 수 있어 <br>
                                        자신만의 공부 흐름에 방해받지 않고 최대한의 공부 시간을 확보할 수 있었습니다.</p>
                                    <p><strong>연세대학교 도시공학과</strong> 러셀 영통 이강윤</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>학습 동선 최소화를 가장 큰 장점으로 생각합니다. 한 건물 안에서 급식, 단과 수업, 자습 등을 모두 해결할 수 있다 보니 시간 절약에 유용했습니다.</p>
                                    <p><strong>연세대학교 물리학과</strong> 러셀 대구 장우익</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>국영수는 물론이고 선택과목도 LIVE 강의로 수강하여 이동시간 
                                        소모 없이 자습시간을 확보할 수 있었고, 동시에 좋은 강의를 <br>
                                        들을 수 있어 큰 도움이 되었습니다.</p>
                                    <p><strong>연세대학교 의예과</strong> 러셀CORE 원주 이지우</p>
                                </dd>
                            </dl>
                            <% Else %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/program_stu01.jpg" alt=""></dt>
                                <dd>
                                    <p>학습 동선이 최소화된다는 점이<br>
                                        러셀 시스템의 가장 큰 장점이라고 생각합니다.</p>
                                    <p><strong>연세대학교 통합 디자인학과</strong> 러셀 강남 신재윤</p>
                                </dd>
                            </dl>
                            <% End If %>
                        </div>

                        <!-- 최대의 자습시간 -->
                        <div class="swiper-slide">
                            <p class="tit">최대 자습시간 확보가 가능한 <br>
                                시간 관리 시스템</p>
                            <p class="txt">약점을 보완하고 스스로 학습할 수 있는 시간이<br>
                                필수적인 겨울방학 동안 표준 시간표와 단과 자율 선택 시스템으로<br>
                                매일 최대 <%=min%>의 충분한 자습시간이 확보됩니다.</p>

                            <% If sCampusCode = "INTRO" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0250" or sCampusCode = "CD0248" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0342" or sCampusCode = "CD0343" Then '인트로/코어창원/코어청주/부천/평촌/분당/영통/대구/코어원주 %>
                            <div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/program_img02.jpg" alt=""></div>
                            <% Else %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_img02.jpg" alt=""></div>
                            <% End If %>

                            <% If sCampusCode = "CD0247" Then '강남 %>
                            <dl class="s-review pl0">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p class="ml0">내 학습 상황에 맞게 원하는 강좌만 선택해 들을 수 있어서 <br>
                                        강의를 듣고 남는 시간에 진정으로 필요한 공부를 할 수 있었습니다.</p>
                                    <p class="ml0"><strong>가천대학교 의예과</strong> 러셀 강남 박태원</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>원하는 만큼 자습시간이 확보되어 과목마다 필요한 공부시간을 배분하여 충분한 시간 동안 공부할 수 있었습니다.</p>
                                    <p><strong>목포대학교 약학과</strong> 러셀 목동 이효금</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0341" Then '대전 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>순공시간을 최대화한 바자관 시간표 덕분에 <br>
                                        공부시간을 많이 확보할 수 있었습니다.</p>
                                    <p><strong>서울대학교 전기정보공학부</strong> 러셀 대전 노유찬</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>공부에만 몰입할 수 있도록 조성된 환경 속에서 <br>
                                        목표에 집중하며, 후회 없는 겨울방학을 보낼 수 있었습니다.</p>
                                    <p><strong>경희대학교 인문계열</strong> 러셀CORE 창원 이창민</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>방학은 온전히 공부에만 집중할 수 있는 시기이기에 <br>
                                        윈터스쿨을 통해 충분한 순공 시간을 확보하여 <br>
                                        보다 효율적으로 방학을 보내고자 하였습니다.</p>
                                    <p><strong>대전대학교 한의예과</strong> 러셀CORE 청주 김경진</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>철저한 관리로 공부시간을 충분히 확보하여<br>
                                        페이스 쳐지지 않고 학습할 수 있었습니다.</p>
                                    <p><strong>고려대학교 전자전기공학부</strong> 러셀 평촌 신지훈</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>바자관의 가장 큰 장점은 학습시간 확보에 도움을 많이 <br>
                                        준다는 점입니다. 바자관에 들어가면 공부하는 분위기 덕분에 <br>
                                        집중해서 공부할 수 있었습니다.</p>
                                    <p><strong>가천대학교 의예과</strong> 러셀 중계 임건빈</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>아침 자습을 활용한다면 오전 7시부터 심야 자습인 12시까지 <br>
                                        추가로 공부할 수 있어 공부 시간을 충분히 확보할 수 있었습니다.</p>
                                    <p><strong>부산대 약학과</strong> 러셀 울산 김가현</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>바자관의 장점은 단과를 선택적으로 들을 수 있어서<br>
                                        시간을 효율적으로 쓸 수 있다는 것입니다.</p>
                                    <p><strong>한양대 의예과</strong> 러셀CORE 광주 엄태옥</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>바자관에서는 고정적인 학습시간이 확보된다는 것이 장점입니다.<br>
                                        버려지는 시간을 최소화하여 보다 많은 자습시간을 <br>
                                        확보할 수 있었습니다.</p>
                                    <p><strong>전남대학교 의예과</strong> 러셀CORE 전주 문가영</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>이른 아침에 등원해 정해진 시간표에 맞춰 공부함으로써 <br>
                                        순공 시간을 확보할 수 있었고, 규칙적으로 공부하는 좋은 습관이 <br>
                                        잡혀 이를 고3 생활 내내 유지할 수 있는 계기가 되었습니다.</p>
                                    <p><strong>중앙대학교 약학부</strong> 러셀 대치 박정후</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>바자관과 강의실이 한 건물에 있어 단과 수업을 듣고 수업이 끝나면 바로 자습을 할 수 있어 이동 시간을 아낄 수 있었습니다.</p>
                                    <p><strong>서울대학교 역사학부</strong> 러셀 분당학원 최유준</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>바른공부 자습전용관의 장점은 학습 시간을 확보할 수 있다는 
                                        것입니다. 수능 시간표에 맞춰 규칙적인 공부 습관을 <br>
                                        형성하기에도 좋았습니다.</p>
                                    <p><strong>연세대학교 정치외교학과</strong> 러셀 영통 신수빈</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd class="pt20 pb20">
                                    <p>바자관에서는 오로지 공부에만 집중할 수 있는 분위기가 형성되어 있습니다. 일단 자리에 앉으면, 열심히 하는 주변 친구들을 보면서 ‘뭐라도 시작해야겠다’라는 생각이 들어 공부에 탄력을 받을 수 있었습니다.</p>
                                    <p><strong>경북대학교 의예과</strong> 러셀 대구 이효섭</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>한 건물 내에서 모든 것을 해결하며 자습할 수 있어서, 낭비하는 시간을 최소화하고 밀도 있게 학습할 수 있었습니다.</p>
                                    <p><strong>연세대학교 스포츠응용산업학과</strong> 러셀CORE 원주 남현웅</p>
                                </dd>
                            </dl>
                            <% Else %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/program_stu02.jpg" alt=""></dt>
                                <dd>
                                    <p>수업한 내용을 복습할 수 있는 충분한 시간이 있어,<br>
                                        공부하기 최적의 환경이라고 생각했습니다.</p>
                                    <p><strong>경상대학교 의예과 남학생 전문관 러셀 기숙학원</strong> 손승빈</p>
                                </dd>
                            </dl>
                            <% End If %>
                            <p class="r-txt">* 평일(월~금요일)바자관 표준 시간표 기준으로 작성하였으며,<br>
                            학원 운영에 따라 상세 시간은 변동될 수 있습니다.</p>
                        </div>

                        <!-- 수능 맞춤 시간표 -->
                        <div class="swiper-slide">
                            <p class="tit">수능 시간표와 동일한 <br>
                                바자관 표준 시간표</p>
                            <p class="txt">실제 수능과 동일한 표준 시간표로 운영하여<br>
                                학습과 생활 리듬이 수능에 최적화될 수 있도록<br>
                                학습 습관을 형성합니다.</p>
                                
                            <div style="position:relative;">
                                <% If sCampusCode = "CD0247" or sCampusCode = "CD0245" or sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0349" or sCampusCode = "CD0344" or sCampusCode = "CD0343" Then '강남/목동/부천/중계/울산/코어전주/코어원주 %>
                                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_img03.jpg" alt="">
                                <% Else %>
                                <img src="<%=Application("img_path_russel")%>/intro/2025/winter/program_img03.jpg" alt="">
                                <% End If %>
                                <a href="javascript:void(0)" class="bt-tt01 js-mask"></a>
                            </div>
                            <% If sCampusCode = "CD0247" Then '강남 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>자습 시간이 수능 시간표에 맞추어져 있어서 <br>
                                        수능 리듬을 형성하는 데에 도움이 되었습니다.</p>
                                    <p><strong>서울대학교 첨단융합학부</strong> 러셀 강남 원재희</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0245" Then '목동 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>표준 시간표대로 공부하다 보니 공부 습관이 규칙적으로 <br>
                                        바뀌기 시작했고, 집중하는 시간도 점점 늘어나게 되었습니다.</p>
                                    <p><strong>고려대학교 보건정책관리학부</strong> 러셀 목동 한지원</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0341" Then '대전 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>수능 시간표와 비슷한 바자관 표준 시간표 덕분에 규칙적으로 시간에 맞춰 공부할 수 있는 습관을 들일 수 있어서 좋았습니다.</p>
                                    <p><strong>순천향대학교 의예과</strong> 러셀 대전 하태솔</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>방학 동안 바른공부 자습전용관에서 표준 시간표에 맞춰 <br>
                                        공부하며 많은 자습시간을 확보할 수 있어서 좋았습니다.</p>
                                    <p><strong>서울대학교 치의학학석사통합과정</strong> 러셀CORE 창원 이태민</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>실제 수능 시간에 맞춘 시간표 덕분에 수험생활 초반부터 성공적인 생활패턴을 잡을 수 있었습니다.</p>
                                    <p><strong>연세대학교 화학과</strong> 러셀CORE 청주 신혁준</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p class="ml0">표준 시간표가 수능 시간표와 일치하다 보니 실전 모의고사들을 <br>
                                        풀거나 그 시간에 맞는 과목을 공부할 때 도움이 되었습니다.</p>
                                    <p class="ml0"><strong>경희대학교 의예과</strong> 러셀 평촌 유현우</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0257" Then '중계 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>처음에는 기존에 공부하던 패턴과 달라 적응이 어려웠지만, 
                                        결과적으로 공부할 수 있는 시간을 극대화할 수 있었습니다. <br>
                                        해이해지기 쉬운 방학 때 매일 8시마다 등원해야 하는 <br>
                                        시스템을 통해 규칙적인 생활을 할 수 있었습니다.</p>
                                    <p><strong>순천향대학교 의예과</strong> 러셀 중계 신미나</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>수험 생활에서 중요한 것이 생체리듬인데 정해진 시간표에 따라 
                                        체계적으로 공부할 수 있었습니다. 이를 통해 학습 리듬을 <br>
                                        유지하면서 시간 낭비를 최소화할 수 있었습니다.</p>
                                    <p><strong>고려대 스마트모빌리티학부</strong> 러셀 울산 유동훈</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>체계적인 시스템으로 운영되기 때문에 학습시간을 충분히 <br>
                                        확보할 수 있었고 시간을 효율적으로 사용하기 위해 집중력 있게 공부를 할 수 있었습니다.</p>
                                    <p><strong>서울대학교 인문계열</strong> 러셀CORE 광주 김효원</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>집에서 혼자 공부하면 늘어지기 쉬운데 바자관 표준 시간표 
                                        시스템 덕분에 수능에 최적화된 공부 리듬을 형성할 수 있었습니다.</p>
                                    <p><strong>경희대학교 의예과</strong> 러셀CORE 전주 김하연</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>바자관의 시간표가 수능형 리듬으로 시간표가 짜여 있어 <br>
                                        좋았습니다. 아침에 머리를 가볍게 예열하고 수능과 같이 국어, 수학을 오전에, 영어, 탐구를 오후에 공부하였고 저녁에는 그날 부족했던 과목을 추가적으로 공부할 수 있었습니다.</p>
                                    <p><strong>을지대학교 의예과</strong> 러셀 대치 박찬서</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>바자관에서 매주 같은 시간 동안 공부를 하면서, <br>
                                        한 주에서 할 공부의 양을 정할 수 있었고, 이를 통해 공부 루틴을 형성할 수 있었습니다.</p>
                                    <p><strong>고려대학교 의예과</strong> 러셀 분당 조한준</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0249" Then '영통 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>바른공부 자습전용관에서는 수능 시간표에 맞춰 공부와 휴식을 조절하며 학습 리듬을 형성할 수 있어 만족스러웠습니다.</p>
                                    <p><strong>서울대학교 스마트시스템과학과</strong> 러셀 영통 나혜민</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                            <dl class="s-review" style="padding-left:10px;">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd class="pt20 pb20">
                                    <p>바자관의 장점들 중 가장 마음이 들었던 것은 정형화된 <br>
                                        시간표였습니다. 실제 수능 과목별 시간을 반영해 실전 모의고사를 연습하기에도 매우 좋은 환경이었고, 스스로 적절히 공부와 휴식을 조율할 수 있어 온전히 공부에만 집중할 수 있도록 만들어 주었습니다.</p>
                                    <p><strong>영남대학교 약학과</strong> 러셀 대구 권민재</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>표준 시간표가 실제 수능 시간과 동일하여 <br>
                                        실전 모의고사를 풀 때 도움이 되었습니다.</p>
                                    <p><strong>가톨릭대학교 의예과</strong> 러셀CORE 원주 이아인</p>
                                </dd>
                            </dl>
                            <% Else %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p>수능 시간표에 입각한 시간 관리 시스템으로<br>
                                        일정한 루틴을 만들어 나가는 것이 가능합니다.</p>
                                    <p><strong>가천대학교 의예과</strong> 러셀 대구 임승재</p>
                                </dd>
                            </dl>
                            <% End If %>
                        </div>

                        <!-- 자체 식당 운영 -->
                        <% If russelCore = "1" or sCampusCode = "CD0341" or sCampusCode = "CD0248" or sCampusCode = "CD0349" or sCampusCode = "CD0001" or sCampusCode = "CD0244" or sCampusCode = "CD0342" Then '코어/대전/평촌/울산/대치/분당/대구 %>
                        <div class="swiper-slide">
                            <% If sCampusCode = "CD0344" Then '코어전주 %>
                            <p class="tit">건강과 안전, 시간 효율을 위한 <br>
                                급식실 운영</p>
                            <p class="txt">급식실 운영으로 균형 잡힌 식단을 유지하고<br>
                            외부와의 접촉을 최소화, 이동 시간을 줄여<br>
                            효율적으로 시간을 사용하고 학습에 더욱 몰입할 수 있습니다.</p>
                            <% Else %>
                            <p class="tit">건강과 안전, 시간 효율을 위한 <br>
                                <%=meal02%> 운영</p>
                            <p class="txt"><%=meal02%> 운영으로 균형 잡힌 식단을 유지하고<br>
                            외부와의 접촉을 최소화, 이동 시간을 줄여<br>
                            효율적으로 시간을 사용하고 학습에 더욱 몰입할 수 있습니다.</p>
                            <% End If %>
                            <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_img04.jpg" alt=""></div>
                            
                            <% If sCampusCode = "CD0345" Then '코어창원 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>한 건물에 바자관, 식당, 강의실이 있어 체력과 <br>
                                        학습 분위기 유지 측면에서 큰 이점을 얻을 수 있었습니다.</p>
                                    <p><strong>부산대학교 의예과</strong> 러셀CORE 창원 장호준</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0248" Then '평촌 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu03.jpg" alt=""></dt>
                                <dd>
                                    <p class="ml0">식당과 바자관이 한 건물에 있어서 식사를 하고 <br>
                                        바로 공부를 할 수 있어서 좋았습니다.</p>
                                    <p class="ml0"><strong>경희대학교 의예과</strong> 러셀 평촌 유현우</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0349" Then '울산 %>
                            <dl class="s-review" style="padding-left: 27px;">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>수험생들에게 밥은 정말 중요한 요소인데, <br>
                                        한 건물에 자체 식당까지 같이 있어서 <br>
                                        학습 시간을 확보할 수 있어 도움이 되었습니다.</p>
                                    <p><strong>고려대 전자전기공학부</strong> 러셀 울산 ○○○</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>자체 식당이 있어 급식과 단과와 자습을 한 건물에서 해결<br>
                                        할 수 있었고, 이동시간을 줄여 효율적으로 공부하는 데에 도움이 되었습니다.</p>
                                    <p><strong>연세대 국어국문과</strong> 러셀CORE 광주 김지윤</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>건강 관리와 더불어 공부를 병행하는 데에 <br>
                                        큰 도움이 되었습니다.</p>
                                    <p><strong>연세대학교 의예과</strong> 러셀CORE 전주 김경환</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0001" Then '대치 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>급식도 자리에서 먹을 수 있어 밖으로 이동할 필요가 없었고 <br>
                                        시간 낭비 없이 공부할 수 있었습니다.</p>
                                    <p><strong>서울대학교 의예과</strong> 러셀 대치 노서연</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0244" Then '분당 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>급식실이 가까웠던 것이 큰 도움이 되었습니다. 동선을 최소화<br>
                                        해서 시간 낭비 하지 않고 빠르게 밥을 먹을 수 있었습니다.</p>
                                    <p><strong>고려대학교 공과대학</strong> 러셀 분당 장민서</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0342" Then '대구 %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>한 건물 안에서 식당, 자습, 수업을 동시에 할 수 있는 것이 <br>
                                        가장 좋았습니다.</p>
                                    <p><strong>경북대학교 약학과</strong> 러셀 대구 황태준</p>
                                </dd>
                            </dl>
                            <% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
                            <dl class="s-review pl10">
                                <dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>굳이 외부로 나가지 않아도 식사가 가능하여 <br>
                                        시간 낭비 없이 공부할 수 있었습니다.</p>
                                    <p><strong>연세대학교 의류환경학과</strong> 러셀CORE 원주 변재이</p>
                                </dd>
                            </dl>
                            <% Else %>
                            <dl class="s-review">
                                <dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/program_stu04.jpg" alt=""></dt>
                                <dd>
                                    <p>러셀 자체 식당에서 밥을 먹을 수 있는 것이 <br>
                                        시간을 아낄 수 있어서 좋았습니다.</p>
                                    <p><strong>경상국립대학교 수의예과</strong> 러셀 대구 탁건우</p>
                                </dd>
                            </dl>
                            <% End If %>
                        </div>
                        <% End If %>
                    </div>
                </div>
            </div>
        </div>
        <!-- 바자관 시간표 -->
        <!-- #include virtual = "/intro/2025/winter/baja_time_table.asp" -->
        <!-- //바자관 시간표 -->
	</div>
</div>