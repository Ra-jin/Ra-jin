<div class="cont js-cont <%=campusName%>">
	<div class="cont05">
		<div class="tit-obj" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont05_tit_obj.png" alt=""></div>
		<h3>
			<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont05_tit.png" alt="여러분을 최상위권 대입 성공으로 이끌 러셀 썸머스쿨 프로그램">
		</h3>
		<div class="inner">
			<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/program1.png" alt="PROGRAM 1"></h5>
			<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont05_stit.png" alt="면학 분위기로 소문난 바른공부 자습전용관"></h4>
			<div class="tit-obj" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont05_tit_obj02.png" alt=""></div>
			<% If sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0349" OR sCampusCode = "CD0244" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0250" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '영통/대전/울산/분당/코어원주/코어전주/코어창원/코어청주/부천/대구/코어광주 %>
			<a href="/info/schoolBus.asp" class="school-bus"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/schoolBus.png" alt=""></a>
            <% End if %>
            <!-- 바자관 슬라이드 -->
            <div class="studyHall-slide-wrap">
				<% If sCampusCode = "CD0341" OR sCampusCode = "CD0349" OR sCampusCode = "CD0244" OR sCampusCode = "CD0248" OR sCampusCode = "CD0343" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '대전/울산/분당/평촌/코어원주/코어전주/코어창원/코어청주/대구/코어광주 %>
                <div class="studyHall-navi s-five">
				<% Else %>
                <div class="studyHall-navi">
				<% End if %>
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학 분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">충분한 자습 시간 확보</div>
                        <div class="swiper-slide">개방형 구조</div>
						<% If sCampusCode = "CD0341" OR sCampusCode = "CD0349" OR sCampusCode = "CD0244" OR sCampusCode = "CD0248" OR sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '대전/울산/분당/평촌/코어원주/코어창원/코어청주/대구/코어광주 %>
                        <div class="swiper-slide">자체 식당 운영</div>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
                        <div class="swiper-slide">급식실 운영</div>
						<% End if %>
                    </div>
                </div>
                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학 분위기 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<% If sCampusCode = "CD0257" Then '중계 %>
									<dt>
										학생들이 모여 경쟁하는<br>
										집단적인 면학 분위기
									</dt>
									<dd>
										재원생들의 학구열을 직접 체감할 수 있는<br>
										개방형 구조로 학습 동기 부여 및 <br>긍정적인 긴장감 유지 가능
									</dd>
									<% Else %>
									<dt>
										최상위권이 모여 경쟁하는<br>
										집단적인 면학 분위기
									</dt>
									<dd>
										최상위권 재원생들의 학구열을 직접 체감할 수 있는<br>
										개방형 구조로 학습 동기 부여 및 <br>긍정적인 긴장감 유지 가능
									</dd>
									<% End if %>
								</dl>
								<% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" OR sCampusCode = "CD0001" OR sCampusCode = "CD0246" OR sCampusCode = "CD0244" OR sCampusCode = "CD0344" OR sCampusCode = "CD0250" Then '인트로/강남/대치/센텀/분당/코어전주/부천 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/baja_01.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_01.jpg" alt=""></div>
								<% End If %>
							</div>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<div class="b-review">
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_01.jpg" alt=""></div>
								<p>
									<span>바자관의 장점은 좋은 면학 분위기와 관리 시스템입니다. 바자관 내부는 대화 금지여서 조용한 분위기에서 공부에<br>
									몰입할 수 있으며, 개방형 구조와 통유리 창으로 탁 트여 있는 구조이기 때문에 옆에서 공부하는 친구들을 봐서라도<br>
									딴짓을 할 수 없어서 좋았습니다. 
									</span>
									<strong>2025 고려대 의과대학 합격 러셀 중계 동나영
									</strong>
								</p>
								<span>*2025 합격생 인터뷰 중 일부 발췌
								</span>
							</div>
							<% End If %>
						</div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										낭비하는 시간 없이<br>학습 동선 최소화

									</dt>
									<% If sCampusCode = "CD0249" Then '영통 %>
									<dd>
										강의실-바자관-급식을 효율적인 동선으로 해결함으로써<br>
										시간 관리를 체계적으로 하여 수업 및 자습 시간에<br>
										높은 집중력 발휘, 학습량 극대화
									</dd>
									<% Else %>
									<dd>
										한 건물 내에서 강의실-바자관-<%=meal%>을 한 번에<br>
										해결하여 효율적인 시간 관리를 통해<br> 수업 및 자습 시간에
										높은 집중력 발휘, 학습량 극대화
										
										<% If sCampusCode = "INTRO" Then '인트로 %>
										<span>* 학원별 시설 및 운영방법은 상이합니다.</span>
										<% ElseIf sCampusCode = "CD0247" Then '강남 %>
										<span>※ 썸머스쿨 기간 동안 일부 강좌는 별관에서 운영됩니다. </span>
										<% End If %>
									</dd>
									<% End If %>
								</dl>
								<% If sCampusCode = "INTRO" OR sCampusCode = "CD0248" OR sCampusCode = "CD0250" Then '인트로/평촌/부천 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/baja_02.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_02.jpg" alt=""></div>
								<% End If %>
							</div>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<div class="b-review">
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_02.jpg" alt=""></div>
								<p>
									<span>저는 학습 동선 최소화가 러셀 시스템의 장점이라고 생각합니다.<br>
										급식도 자리에서 먹을 수 있어 밥을 먹으러 밖으로 이동할 필요가 없고, 단과 강의실 또한 <br>
										같은 건물이나 바로 옆 건물에 있어 시간 낭비 없이 공부를 할 수 있었습니다.
										
									</span>
									<strong>2025 서울대 의예과 합격 러셀 대치 노서연

									</strong>
								</p>
								<span>*2025 합격생 인터뷰 중 일부 발췌
								</span>
							</div>
							<% End If %>
						</div>
                        <!-- 충분한 자습 시간 확보 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										수능 시간표와 동일한 <br>
										표준 시간표

									</dt>
									<dd>
										수능 시간표와 동일한 표준 시간표로<br>
										학습&middot;생활 리듬이 수능에 최적화!<br>
										개인 맞춤 학습 스케줄 운영과 의무 자습 및<br>심야 자습으로
										매일 최대 자습 시간 확보
										
										<% If sCampusCode = "INTRO" Then '인트로 %>
										<span>* 학원별 운영 시간표는 상이합니다.
										</span>
										<% End If %>
									</dd>
								</dl>
								<% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0249" OR sCampusCode = "CD0341" OR sCampusCode = "CD0246" OR sCampusCode = "CD0244" OR sCampusCode = "CD0248" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0250" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '인트로/대치/영통/대전/센텀/분당/평촌/코어창원/코어청주/부천/대구/코어광주 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/baja_03.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_03.jpg" alt=""></div>
								<% End If %>
							</div>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<div class="b-review">
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_03.jpg" alt=""></div>
								<p>
									<span>바자관의 장점은 시간표가 정해져 있다는 점이라고 생각합니다.<br>
										집에서 혼자 공부할 때와는 다르게 바자관에서 공부하면 아침부터 규칙적으로 실제 수능 시간에 맞춰<br> 
										행동하는 습관을 들일 수 있습니다. 덕분에 수능날에도 비교적 편안한 마음으로 시험에 임할 수 있었던 것 같습니다.
										
									</span>
									<strong>2025 고려대 의과대학 합격 러셀 분당 원태연

									</strong>
								</p>
								<span>*2025 합격생 인터뷰 중 일부 발췌
								</span>
							</div>
							<% End If %>
						</div>
                        <!-- 개방형 구조 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										학습에만 전념할 수 있도록<br>최적화된 환경

									</dt>
									<dd>
										학습 효율성을 높이기 위해 설계된 학습 시설에서<br>
										온전히 학습에만 집중할 수 있으며 <br>개방형 구조로 되어 있어<br>
										지속적으로 긴장감 유지 및 학습 동기 부여
										
										<% If sCampusCode = "INTRO" Then '인트로 %>
										<span>* 학원별로 시설은 상이합니다.

										</span>
										<% End If %>
									</dd>
								</dl>
								<% If sCampusCode = "INTRO" OR sCampusCode = "CD0247" OR sCampusCode = "CD0341" OR sCampusCode = "CD0246" OR sCampusCode = "CD0248" OR sCampusCode = "CD0346" OR sCampusCode = "CD0250" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '인트로/강남/대전/센텀/평촌/코어청주/부천/대구/코어광주 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/baja_04.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_04.jpg" alt=""></div>
								<% End If %>
							</div>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<div class="b-review">
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_04.jpg" alt=""></div>
								<p>
									<span>바자관의 장점은 쾌적한 환경입니다. 하루에 평균 16시간 정도 같은 자리에 머물러야 하는 입장에서,<br>
									좋은 공간을 선택하는 것은 공부에 있어 꽤나 큰 요소입니다. 저에게는 러셀 바자관의 높은 층고,<br>
									넓은 책상과 책장 배치, 탁 트인 통유리창 등이 오랜 시간 높은 효율로 집중하는 데 큰 도움을 주었습니다. 

									</span>
									<strong>2025 연세대 의예과  합격 러셀CORE 광주 박채은

									</strong>
								</p>
								<span>*2025 합격생 인터뷰 중 일부 발췌
								</span>
							</div>
							<% End If %>
						</div>
						<% If sCampusCode = "CD0341" OR sCampusCode = "CD0349" OR sCampusCode = "CD0244" OR sCampusCode = "CD0248" OR sCampusCode = "CD0344" OR sCampusCode = "CD0343" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '대전/울산/분당/평촌/코어원주/코어전주/코어창원/코어청주/대구/코어광주 %>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<% If sCampusCode = "CD0344" Then '코어전주 %>
								<dl>
									<dt>
										건강과 안전을 위한<br>급식실 운영

									</dt>
									<dd>
										급식실 운영으로 균형 잡힌 식단 유지<br>
										외부와의 접촉 최소화 및 이동 시간을 줄여 <br>학습에 몰입

									</dd>
								</dl>
								<% Else %>
								<dl>
									<dt>
										건강과 안전을 위한<br>자체 식당 운영

									</dt>
									<dd>
										자체 식당 운영으로 균형 잡힌 식단 유지<br>
										외부와의 접촉 최소화 및 이동 시간을 줄여 <br>학습에 몰입

									</dd>
								</dl>
								<% End if %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_05.jpg" alt=""></div>
							</div>
						</div>
						<% End if %>
					</div>
				</div>
			</div>
            <!-- //바자관 슬라이드 -->
		</div>
	</div>
	<div class="cont06">
		<div class="inner">
			<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/program2.png" alt="PROGRAM 2"></h5>
			<% If sCampusCode = "CD0257" Then '중계 %>
			<h4><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont06_tit.png" alt="최상위권 전문 입시 담임 선생님의 체계적인 맞춤 관리"></h4>
			<% Else %>
			<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont06_tit.png" alt="최상위권 전문 입시 담임 선생님의 체계적인 맞춤 관리"></h4>
			<% End if %>
			
            <!-- 관리 슬라이드 -->
            <div class="manage-slide-wrap">
				<div class="manage-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">입시 관리</div>
						<div class="swiper-slide">학습 관리</div>
						<div class="swiper-slide dg-bg">생활 관리</div>
					</div>
				</div>
				<div class="swiper-container manage-slide">
					<div class="swiper-wrapper">
						<!-- 입시 관리 -->
						<div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										수시 및 정시<br>
										1:1 맞춤 입시 관리
									</dt>
									<dd>
										<% If sCampusCode = "CD0244" Then '분당 %>
										썸머스쿨 기간 동안 정확한 진단 및 기초 상담 진행
										<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
										체계적인 분석을 통한 수시지원 컨설팅 진행<br>
										썸머스쿨 이후에도 1:1 배치 상담 진행

										<% Else %>
										썸머스쿨 기간 동안 정확한 진단 및 기초 상담 진행<br>
										썸머스쿨 이후에도 1:1 배치 상담 진행
										<% End If %>
										<ul>
											<li>
												<div>7~8월</div>
												<p>
													<strong>학생부 검토</strong> (내신/비교과 등)
												</p>
											</li>
											<li>
												<div>8~9월</div>
												<p>
													<strong>수시 상담</strong> 
													(학생부 전형/
													논술 전형 컨설팅)
												</p>
											</li>
											<li>
												<div>11~12월</div>
												<p>
													<strong>정시 상담</strong> 
													(수시 지원 여부/
													정시 지원 대학 결정)
												</p>
											</li>
										</ul>
									</dd>
								</dl>
								<% If sCampusCode = "INTRO" Then '인트로 %>
								<div>
									<img src="<%=Application("img_path_russel")%>/intro/2025/summer/manage_01.jpg" alt="">
									<p class="r-txt">
										* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다.<br>
										* 학원별 관리 프로그램 내용은 상이할 수 있습니다.
									</p>
								</div>
								<% Else %>
								<div>
									<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/manage_01.jpg" alt="">
									<% If sCampusCode = "CD0341" Then '대전 %>
									<p class="r-txt">
										* 고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다.
									</p>
									<% ElseIf sCampusCode = "CD0245" OR sCampusCode = "CD0342" Then '목동/대구 %>
									<% ElseIf sCampusCode = "CD0244" Then '분당 %>
									<p class="r-txt">
										* 각 학년에 맞춘 상담이 진행됩니다.<br>
										* 이후 단계는 썸머스쿨 종료 후 정규반[재학생(고3)]에 재원 시 진행됩니다.

									</p>
									<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
									<p class="r-txt">
										* 중3/고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다.
									</p>
									<% Else %>
									<p class="r-txt">
										* 고1/고2 재학생의 경우, 학년에 맞춘 상담이 진행됩니다.
									</p>
									<% End If %>
								</div>
								<% End If %>
							</div>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<div class="b-review">
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_05.jpg" alt=""></div>
								<p>
									<span>실전 모의고사 성적표가 나온 후 선생님과 함께 부족한 과목의 학습법을 고민할 수 있어 좋았습니다. <br>
										또한, 수시 원서를 접수할 때 상담을 통해서 구체적인 정보에 입각하여 합격 가능성을 알려 주셔서 
										큰 도움이 되었습니다.
									</span>
									<strong>2025 울산대 의예과 합격 러셀 울산 이예빈
									</strong>
								</p>
								<span>*2025 합격생 인터뷰 중 일부 발췌
								</span>
							</div>
							<% End If %>
						</div>
						<!-- 학습 관리 -->
						<div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<% If sCampusCode = "CD0257" Then '중계 %>
									<dt>
										성적 향상을 위한<br>체계적인 학습 관리
									</dt>
									<% Else %>
									<dt>
										최상위권 도약을 위한<br>체계적인 학습 관리
									</dt>
									<% End if %>
									<dd>
										여름 방학 단기간 최대 효율을 위한 밀도 있는 학습 관리<br>
										1:1 상담을 통해 여름 방학부터 수능까지<br>학습 설계 및 점검

										<% If sCampusCode = "INTRO" Then '인트로 %>
										<span>* 학원별 관리 프로그램 내용은 상이할 수 있습니다.
										</span>
										<% End If %>
									</dd>
								</dl>
								<% If sCampusCode = "INTRO" Then '인트로 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/manage_02.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/manage_02.jpg" alt=""></div>
								<% End If %>
							</div>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<div class="b-review">
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_06.jpg" alt=""></div>
								<p>
									<span>바자관 생활을 하면서 모의고사를 보고 성적이 나올 때마다 담임 선생님과의 1:1 상담을 통해서 저의 현재 상태에 대한 해석,<br>
									그리고 학습 방향의 교정을 해 주셔서 수능 때 더 좋은 성적을 거둘 수 있었습니다.

									</span>
									<strong>2025 연세대 의예과 합격/수능 만점 러셀 영통 임희수

									</strong>
								</p>
								<span>*2025 합격생 인터뷰 중 일부 발췌
								</span>
							</div>
							<% End If %>
						</div>
						<!-- 생활 관리 -->
						<div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										집단적인 면학 분위기를 위한<br>철저한 생활 관리

									</dt>
									<% If sCampusCode = "CD0246" Then '센텀 %>
									<dd>
										매 교시 엄격한 출결 관리 및<br>바자관 생활 관리 조교 배치 등<br>
										태도 점수 제도로 면학 분위기 저해 요소<br> 엄격하게 관리

									</dd>
									<% Else %>
									<dd>
										매 교시 엄격한 출결 관리 및 바자관 상시 모니터링<br>
										태도 점수 제도로 면학 분위기 저해 요소<br>엄격하게 관리

										<% If sCampusCode = "INTRO" Then '인트로 %>
										<span>* 학원별 관리 프로그램 내용은 상이할 수 있습니다.
										</span>
										<% End If %>
									</dd>
									<% End If %>
								</dl>
								<% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0341" OR sCampusCode = "CD0345" Then '인트로/대치/대전/코어창원 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/manage_03.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/manage_03.jpg" alt=""></div>
								<% End If %>
							</div>
							<% If sCampusCode = "INTRO" Then '인트로 %>
							<div class="b-review">
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_07.jpg" alt=""></div>
								<p>
									<span>바자관 바로 앞에 담임 선생님이 있어 학습 중 어려움이나 고민이 생기면 친절하게 상담해 주셔서<br>수험 기간 중
										많이 의지가 되었습니다. 저와 비슷한 고민을 가졌던 옛 제자들 이야기를 해 주셔서, <br>
										저의 경우에는 어떻게 하는 게 좋을지 조언도 많이 해 주시고 멘탈 관리에 큰 도움이 되어 주셨습니다.
										
									</span>
									<strong>2025 성균관대 의예과 합격 러셀 분당 최준영

									</strong>
								</p>
								<span>*2025 합격생 인터뷰 중 일부 발췌
								</span>
							</div>
							<% End If %>
						</div>
					</div>
				</div>
			</div>
            <!-- //관리 슬라이드 -->
			<div class="s-obj"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont06_obj.png" alt=""></div>
		</div>
	</div>
	<div class="cont07">
		<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/program3.png" alt="PROGRAM 3"></h5>
		<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont07_tit.png" alt="메가스터디 온오프 수능 전문 강사진의 최상위권 수준별 맞춤 단과"></h4>
		
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/summer/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
		 
        <div class="inner">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">※ 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
            <% Else %>
            <p class="r-txt">※ 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
            <% End If %>
            <ul class="danka-link">
                <li>
                    <dl>
						<% If sCampusCode = "CD0257" Then '중계 %>
                        <dt>목표 성적에 한발 다가가는<br>
							여름 방학 고밀도 특강
						</dt>
						<% Else %>
                        <dt>최상위권에 한발 다가가는<br>
							여름 방학 고밀도 특강
						</dt>
						<% End If %>
                        <dd>썸머 특강
						</dd>
                    </dl>
                    <ul>
                        <li>
                            나에게 필요한 과목/진도를<br>선택 수강하여
                            취약점 집중 보완

                        </li>
                        <li>
                            취약 과목(파트) 집중 보완 및<br>수시 최저 등급
                            대비 집중 학습을 위한<br>단기 집중 특강

                        </li>
                    </ul>
					<div class="url-btn">
						<a href="<%=summer_url%>"><%=summer_danka_txt%></a>
						<% If sCampusCode = "CD0247" or sCampusCode = "CD0001" or sCampusCode = "CD0250" or sCampusCode = "CD0249" or sCampusCode = "CD0248" Then '강남/대치/부천/영통/평촌 %>
						<a href="<%=summer_url02%>"><%=summer_danka_txt02%></a>
						<% End If %>
					</div>
                </li>
                <li>
                    <!-- <span>N수<br>
                    전용</span> -->
                    <dl>
                        <dt>기초부터 실전까지<br>
							빈틈없는 커리큘럼으로 수능 실력 향상
                        </dt>
                        <dd>정규&middot;특강 단과
                        </dd>
                    </dl>
                    <ul>
					<% If sCampusCode = "CD0341" OR sCampusCode = "CD0349" OR sCampusCode = "CD0344" OR sCampusCode = "CD0345" OR sCampusCode = "CD0346" OR sCampusCode = "CD0342" OR sCampusCode = "CD0340" Then '대전/울산/코어전주/코어창원/코어청주/대구/코어광주 %>
                        <li>메가스터디 온&middot;오프 수능 전문 강사진의<br>
                        몰입감 높은 현장 강의와 대치동 LIVE 강의
                        </li>
					<% ElseIf sCampusCode = "CD0343" Then '코어원주%>
                        <li>메가스터디 온&middot;오프 수능 전문 강사진의<br>
                        몰입감 높은 대치동 LIVE 강의

                        </li>
					<% Else %>
                        <li>메가스터디 온&middot;오프 수능 전문 강사진의<br>
                        몰입감 높은 현장 강의
                        </li>
					<% End If %>
                        <li>내게 필요한 과목별/수준별/진도별<br>맞춤 수업
                        전략적으로 선택
                        </li>
					<% If sCampusCode = "CD0343" Then '코어원주%>
						<li>선생님 전용 학습 콘텐츠로 <br>
						수업 전후 학습 관리
						</li>
					<% Else %>
						<li>수업 전후 선생님의 학습 관리 진행으로<br>
						1:1 맞춤 완전 학습</li>
					<% End If %>
                    </ul>
					<div class="url-btn">
						<a href="<%=go3_url%>">바로가기</a>
					</div>
                </li>
            </ul>
        </div>
	</div>
	<div class="cont08">
		<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/program4.png" alt="PROGRAM 4"></h5>
		
		<% If sCampusCode = "CD0257" Then '중계 %>
		<h4><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont08_tit.png" alt="실전 수능에 최적화된 실전 맞춤 콘텐츠"></h4>
		<% Else %>
		<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont08_tit.png" alt="실전 수능에 최적화된 최상위권 맞춤 실전 콘텐츠"></h4>
		<% End If %>
		<div class="swiper-container ct-slide">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_01.jpg" alt="OMEGA"></div>
				</div>
			<% If sCampusCode <> "CD0257" and sCampusCode <> "CD0342" Then '중계/대구 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_02.jpg" alt="OMEGA Link"></div>
				</div>
			<% End If %>
			<% If sCampusCode <> "CD0343" and sCampusCode <> "CD0340" Then '코어원주/코어광주 제외 %>
				<div class="swiper-slide">
					<% If sCampusCode = "CD0257" Then '중계 %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/contents_03.jpg" alt="OMEGA Black"></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_03.jpg" alt="OMEGA Black"></div>
					<% End If %>
				</div>
			<% End If %>
			<% If sCampusCode <> "CD0343" and sCampusCode <> "CD0250" and sCampusCode <> "CD0257" and sCampusCode <> "CD0340" Then '코어원주/부천/중계/코어광주 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_04.jpg" alt="OMEGA Blue"></div>
				</div>
			<% End If %>
			<% If sCampusCode <> "CD0245" and sCampusCode <> "CD0248" and sCampusCode <> "CD0344" Then '목동/평촌/코어전주 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_05.jpg" alt="OMEGA Weekly"></div>
				</div>
			<% End If %>
			<% If sCampusCode <> "CD0245" and sCampusCode <> "CD0248" Then '목동/평촌 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_06.jpg" alt="전국 대단위 실전 모의고사"></div>
				</div>
			<% End If %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_07.jpg" alt="메가X대성 더 프리미엄 모의고사"></div>
				</div>
			<% If sCampusCode = "CD0247" or sCampusCode = "CD0248" or sCampusCode = "CD0249" Then '강남/평촌/영통 %>	
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_15.jpg" alt="아이젠"></div>
				</div>
			<% End If %>
			<% If sCampusCode <> "CD0245" and sCampusCode <> "CD0248" and sCampusCode <> "CD0257" Then '목동/평촌/중계 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_08.jpg" alt="ALPHA"></div>
				</div>
			<% End If %>
			
			<% If sCampusCode = "CD0250" Then '부천 %>	
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_15.jpg" alt="아이젠"></div>
				</div>
			<% End If %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_09.jpg" alt="러셀 학습 플래너"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_10.jpg" alt="러셀 일일수학 30제"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_11.jpg" alt="러셀 총평노트"></div>
				</div>
			<% If sCampusCode = "CD0249" Then '영통 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_12.jpg" alt="영단어 TEST"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_13.jpg" alt="성적 포트폴리오"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/contents_14.jpg" alt="선배와의 대화"></div>
				</div>
			<% End If %>
			</div>
		</div>
		<% If sCampusCode = "CD0245" OR sCampusCode = "CD0248" OR sCampusCode = "CD0257" Then '목동/평촌/중계 %>
		<p class="r-txt">
			※ 학습계획 콘텐츠(러셀 학습 플래너, 러셀 일일수학 30제, 러셀 총평노트)는 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.<br>
			이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라 사용 여부 등이 변경 및 조정될 수 있습니다.<br>
			※ 일부 콘텐츠는 썸머스쿨 기간 외에 진행될 수 있습니다.
		</p>
		<% Else %>
		<p class="r-txt">
			※ ALPHA 및 학습계획 콘텐츠(러셀 학습 플래너, 러셀 일일수학 30제, 러셀 총평노트)는 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.<br>
			이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라 사용 여부 등이 변경 및 조정될 수 있습니다.<br>
			※ 일부 콘텐츠는 썸머스쿨 기간 외에 진행될 수 있습니다.
		</p>
		<% End If %>
	</div>
    <div class="bottom-bar">
		<% If sCampusCode = "CD0257" Then '중계 %>
		<p data-aos="fade-down" data-aos-offset="100">
            올여름, 비약적인 성적 향상을 원한다면<br>
            학생들이 선택하는 러셀 중계 썸머스쿨이 확실한 방법입니다.
        </p>
		<% Else %>
		<p data-aos="fade-down" data-aos-offset="100">
            올여름, 최상위권으로 도약하고자 한다면<br>
            최상위권이 집결하는 <%=txtCampus%> 썸머스쿨이 확실한 방법입니다.
        </p>
		<% End If %>
	</div>
</div>