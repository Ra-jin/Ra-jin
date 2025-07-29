<div class="cont js-cont <%=campusName%>">
	<div class="cont04" id="cont04">
		<div class="inner03">
		<h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont04_tit.png" alt=""></h4>
		<% If sCampusCode = "CD0257" Then '중계 %>
		<p class="s-tit" data-aos="flip-up">목표 대학에 도전하는 학생들을 위해<br>
			최대의 효율로 긍정적인 면학 분위기의 환경을 제공합니다.</p>
		<% Else %>
		<p class="s-tit" data-aos="flip-up">전국 최상위권 대학에 도전하는 학생들을 위해<br>
			최대의 효율로 긍정적인 면학 분위기의 환경을 제공합니다.</p>
		<% End If %>
		<!-- 학원 전용 셔틀버스 -->
		<% If russelCore = "1" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0250" or sCampusCode = "CD0249" or sCampusCode = "CD0341" or sCampusCode = "CD0349" or sCampusCode = "CD0342" Then '코어/부천/영통/대전/울산/대구 일경우 %>
		<a class="i-bus" data-aos="flip-up" href="/info/schoolBus.asp"><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_bus.png" alt="학원 전용 셔틀버스 운영"></a>
		<% End If %>
		<!-- //학원 전용 셔틀버스 -->
			
		<div class="baja-slide swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide <%=campusName%>">
						<p class="tit">대학 학업 병행과 최대 자습시간 확보가 가능한 시간관리 시스템</p>
						<% If sCampusCode = "CD0345" Then '코어창원 %>
						<p class="txt">대학 학업 병행이 필요한 반수생들을 위해 개인별 맞춤 스케줄 운영과<br>
							취약부분 보완에 꼭 필요한 자습시간을 최대로 확보하기 위한 단과 자율 선택제로 운영합니다.<br>
							(의무C수 충족 내 수업 자율 선택 가능)</p>
						<% Else %>
						<p class="txt">대학 학업 병행이 필요한 반수생들을 위해 개인별 맞춤 스케줄 운영과<br>
							취약부분 보완에 꼭 필요한 자습시간을 최대로 확보하기 위한 단과 자율 선택제로 운영합니다.</p>
						<% End If %>
						<div class="baja_box">
							<% If sCampusCode = "CD0345" Then '코어창원 %>
							<div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/baja_slide01_img.jpg" alt=""></div>
							<% Else %>
							<div class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_slide01_img.jpg" alt=""></div>
							<% End If %>
							<% If sCampusCode = "CD0245" Then '목동 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">바자관의 장점은 <strong>학습시간을 개인의 필요에 맞게 <br>
									확보</strong>할 수 있다는 것입니다.<br>
									<strong>스케줄을 자율적으로</strong> 짤 수 있어서<br>
									제 필요에 맞게 효율적으로 학습할 수 있었습니다.</p>
								<dl>
									<dt>
										2025년도 연세대학교 중어중문학과 합격<br>
										러셀 목동 이서진
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0244" Then '분당 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">러셀 분당을 다니면서 시간에 맞춰 스케줄을 <br>
									짜는 것이 매우 용이하고, <strong>집에서 시간을 <br>
									낭비하는 대신 러셀 분당에서 공부를 할 수 있기 <br>
									때문에 더 많은 공부 시간을 확보</strong>할 수 있었습니다.</p>
								<dl>
									<dt>
										2025년도 원광대학교 의예과 합격<br>
										러셀 분당 원*연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_wonkwang.png" alt="원광대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">규칙적인 시간표대로 공부하며 공부 루틴을 잡을 수 <br>
									있었고, 학습량 자체를 늘릴 수 있었습니다. <br>
									바자관 내에서 완전히 집중하고 집에서는 휴식을<br> 
									취하는 하루들을 반복하니 스트레스 없이<br>
									공부할 수 있었던 것 같습니다.</p>
								<dl>
									<dt>
										2025 연세대학교 의류환경학과 합격<br>
										러셀CORE 원주 변재이
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">쉬는 시간과 식사시간의<br>
									남는 자투리 시간에도<br>
									<strong>공부하는 분위기</strong>가 형성되어 있어서<br>
									<strong>효율적으로 학습</strong>할 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 을지대학교 의예과 합격<br>
										러셀CORE 청주 김*담
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_eulji.png" alt="을지대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0247" Then '강남 %>
							<div class="review w02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>철저히 관리가 이루어질 뿐 아니라 시간을<br>
									내가 필요한 만큼 효율적으로 사용할 수 있었기에</strong><br>
									러셀에 온 것은 좋은 선택이었습니다. 단과 하나를 <br>
									제외하고는 모든 시간을 자습에 할애했는데, <br>
									좋은 면학 분위기 속에서 항상 해이해지지 않고 <br>
									긴장감 있게 공부할 수 있었습니다. <p>
								<dl>
									<dt>
										2024년도 한양대 의예과 합격<br>
										러셀 강남 박성원
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt="한양대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0250" Then '부천 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">시간 관리를 하며 공부를 해야 하는데,<br>
									의무적으로 오전 8시~오후 10시 자습을 하며<br>
									<strong>규칙적인 생활습관을 유지할 수 있었습니다.</strong><br>
									또한 루틴이 형성되면서 효율적이고<br>
									집중도 높은 학습을 실천할 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 연세대(미래) 의예과 합격<br>
										러셀 부천 박*우
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0249" Then '영통 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>수능 시간표와 유사하게 이루어지는 <br>
									바자관의 표준 시간표가 큰 도움이 되었습니다.</strong><br>
									모의고사를 응시할 때에도 각 과목별로 따로 <br>
									응시하는 것보다 수능 시간표에 맞춰 이어서 <br>
									응시하는 것이 더 <strong>현장감 있기에, <br>
									러셀의 표준 시간표에 맞추어 공부하였습니다.</strong><p>
								<dl>
									<dt>
										2024학년도 고려대학교 의과대학 합격<br>
										러셀 영통 오서준
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0341" Then '대전 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>수능과 유사한 바른공부 자습전용관<br>
									시간표</strong> 덕분에 시간적 패턴을 몸에 익히는 데<br>
									큰 도움이 되었습니다.<p>
								<dl>
									<dt>
										2024학년도 서울대학교 지리학과 합격<br>
										러셀 대전 박재원
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0349" Then '울산 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">수능 시간을 고려한 시간표에 따라<br>
									바자관 종이 울려서 저 혼자 공부할 때와 <br>
									다르게 적절한 쉬는 시간과 공부 시간을<br>
									가질 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 부산대학교 약학과 합격<br>
										러셀 울산 김○○
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_pusan.png" alt="부산대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0257" Then '중계 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관의 장점은 학습시간이 확보</strong>된다는점입니다. <br>
									바른공부 자습전용관은 개인의 스케줄을 반영해 <br>
									필수 자습시간을 확보해 줍니다. 입시기간동안 <br>
									학습시간을 확보하면 <strong>작은 시간들이 모여 굉장히 <br>
									큰 변화</strong>를 만들어 내기 때문에 바자관의 장점이라고 <br>
									생각합니다.<p>
								<dl>
									<dt>
										2024년도 연세대학교 수학과 합격<br>
										러셀 중계 장*영
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">표준 시간표가 정해져 있어 학습시간 확보가 잘 되며 <br>
									주말에도 생활패턴을 유지하고 공부 리듬을<br>
									형성시킬 수 있어 좋았습니다. 학교 등 유동적인<br>
									시간 조절이 필요했는데, 담임 선생님이 계셔<br>
									갑작스러운 일정에도 시간표 조절이 가능해서<br>
									편리했습니다.<p>
								<dl>
									<dt>
										2024년도 고려대학교 합격<br>
										러셀 평촌 박*연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0342" Then '대구 %>
							<div class="review first">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">러셀에서는 수능 시간표와 동일한 시간표를<br>
									사용해 따로 타이머를 맞추는 등의 수고를<br>
									덜 수 있어서 편리했습니다.<p>
								<dl>
									<dt>
										2025년도 동국대학교 한의예과 합격<br>
										러셀 대구 문지연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_dongguk.png" alt="동국대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">부족하다고 생각하는 과목을 찾아 듣다 보니<br>
									강제로 불필요한 수업을 들을 때와 달리 집중력 있게 <br>
									수업을 들을 수 있었고 자습시간 확보에도 도움이<br>
									되었습니다.<p>
								<dl>
									<dt>
										2024학년도 한양대학교 의예과 합격<br>
										러셀CORE 광주 엄태옥
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt="한양대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>규칙적이고 효율적인 시스템을 활용하여 학업에<br>
									몰입할 수 있었습니다.</strong> 규칙적인 생활은<br>
									컨디션 관리와 학습 계획에 큰 도움이 되었고,<br>
									취약 과목이었던 국어를 보완하면서도 수학과 과학의 <br>
									비중을 유지하면서 수능을 대비할 수 있었습니다.<p>
								<dl>
									<dt>
										2024학년도 서울대 컴퓨터공학부<br>
										러셀CORE 전주 임태빈
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
							<div class="review m core">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">원하는 단과 수업을 선택하여 듣고 그 외의 시간은<br>
									자습관을 이용할 수 있어 충분한 자습시간을<br>
									확보할 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 한양대학교 기계과 합격<br>
										러셀CORE 창원 성재호
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt="한양대 로고"></dd>
								</dl>
							</div>
							<% Else %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">개인적으로 공부할 때,<br>
									<strong>시간의 효율성을 가장 중요시</strong>하는데<br>
									러셀의 시스템이 시간을 효율적으로<br>
									쓰는데 많은 도움이 되었습니다.</p>
								<dl>
									<dt>
										2025년도 가천대학교 의예과 합격<br>
										러셀 센텀 박*효
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_gachon02.png" alt="가천대 로고"></dd>
								</dl>
							</div>
							<% End If %>
						</div>
					</div>
					<!-- 바자관 -->
					<div class="swiper-slide dough <%=campusName%>">
						<p class="tit">대학 학업 병행과 최대 자습시간 확보가 가능한 시간관리 시스템</p>
						<% If sCampusCode = "CD0345" Then '코어창원 %>
						<p class="txt">대학 학업 병행이 필요한 반수생들을 위해 개인별 맞춤 스케줄 운영과<br>
							취약부분 보완에 꼭 필요한 자습시간을 최대로 확보하기 위한 단과 자율 선택제로 운영합니다.<br>
							(의무C수 충족 내 수업 자율 선택 가능)</p>
						<% Else %>
						<p class="txt">대학 학업 병행이 필요한 반수생들을 위해 개인별 맞춤 스케줄 운영과<br>
							취약부분 보완에 꼭 필요한 자습시간을 최대로 확보하기 위한 단과 자율 선택제로 운영합니다.</p>
						<% End If %>
						<div class="baja_box">
							<div class="chart-wrap">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/chart_tit.png" alt="“시간이 부족한데 필요 없는 과목의 수업까지 들어야 할까?”"></p>
								<ul class="chart-list">
									<li>
										<p><strong>효율적인 학습을 위한<br>
											자습시간 최대 확보</strong></p>
										<% If sCampusCode = "CD0257" Then '중계 %>
										<p>약점을 보완하고 개념을 깊게 이해하기 위한<br>
											자습시간이 필수적인 반수생들을 위해<br>
											필요한 수업만 선택하는<br>
											단과 자율 선택 시스템으로<br>
											최대의 자습시간을 확보해 드립니다.</p>
										<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
										<p>약점을 보완하고 개념을 깊게 이해하기 위한<br>
											자습시간이 필수적인 최상위권 반수생들을 위해<br>
											필요한 수업만 선택하는<br>
											단과 자율 선택 시스템으로<br>
											최대의 자습시간을 확보해 드립니다.<br>
											(의무C수 충족 내 수업 자율 선택 가능)</p>
										<% Else %>
										<p>약점을 보완하고 개념을 깊게 이해하기 위한<br>
											자습시간이 필수적인 최상위권 반수생들을 위해<br>
											필요한 수업만 선택하는<br>
											단과 자율 선택 시스템으로<br>
											최대의 자습시간을 확보해 드립니다.</p>
										<% End If %>
									</li>
									<li>
										<div class="chart-area">
											<canvas id="doughnut-chart01" width="260" height="173"></canvas>
											<div class="chart-img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/chart_bg.png" alt="" /></div>
											<div class="chart-txt">
												<p>하루 최대 <strong><%=chart_min%></strong>분<br>
												<span>자습시간 확보</span></p>
											</div>
										</div>
										<a href="javascript:void(0)" class="bt-tt01 js-mask">표준 시간표 자세히 보기</a>
									</li>
								</ul>
							</div>
							<% If sCampusCode = "CD0245" Then '목동 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">바자관의 장점은 <strong>학습시간을 개인의 필요에 맞게 <br>
									확보</strong>할 수 있다는 것입니다.<br>
									<strong>스케줄을 자율적으로</strong> 짤 수 있어서<br>
									제 필요에 맞게 효율적으로 학습할 수 있었습니다.</p>
								<dl>
									<dt>
										2025년도 연세대학교 중어중문학과 합격<br>
										러셀 목동 이서진
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0244" Then '분당 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">러셀 분당을 다니면서 시간에 맞춰 스케줄을 <br>
									짜는 것이 매우 용이하고, <strong>집에서 시간을 <br>
									낭비하는 대신 러셀 분당에서 공부를 할 수 있기 <br>
									때문에 더 많은 공부 시간을 확보</strong>할 수 있었습니다.</p>
								<dl>
									<dt>
										2025년도 원광대학교 의예과 합격<br>
										러셀 분당 원*연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_wonkwang.jpg" alt="원광대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">규칙적인 시간표대로 공부하며 공부 루틴을 잡을 수 <br>
									있었고, 학습량 자체를 늘릴 수 있었습니다. <br>
									바자관 내에서 완전히 집중하고 집에서는 휴식을<br> 
									취하는 하루들을 반복하니 스트레스 없이<br>
									공부할 수 있었던 것 같습니다.</p>
								<dl>
									<dt>
										2025 연세대학교 의류환경학과 합격<br>
										러셀CORE 원주 변재이
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">쉬는 시간과 식사시간의<br>
									남는 자투리 시간에도<br>
									<strong>공부하는 분위기</strong>가 형성되어 있어서<br>
									<strong>효율적으로 학습</strong>할 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 을지대학교 의예과 합격<br>
										러셀CORE 청주 김*담
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_eulji.png" alt="을지대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0247" Then '강남 %>
							<div class="review w02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>철저히 관리가 이루어질 뿐 아니라 시간을<br>
									내가 필요한 만큼 효율적으로 사용할 수 있었기에</strong><br>
									러셀에 온 것은 좋은 선택이었습니다. 단과 하나를 <br>
									제외하고는 모든 시간을 자습에 할애했는데, <br>
									좋은 면학 분위기 속에서 항상 해이해지지 않고 <br>
									긴장감 있게 공부할 수 있었습니다. <p>
								<dl>
									<dt>
										2024년도 한양대 의예과 합격<br>
										러셀 강남 박성원
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt="한양대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0250" Then '부천 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">시간 관리를 하며 공부를 해야 하는데,<br>
									의무적으로 오전 8시~오후 10시 자습을 하며<br>
									<strong>규칙적인 생활습관을 유지할 수 있었습니다.</strong><br>
									또한 루틴이 형성되면서 효율적이고<br>
									집중도 높은 학습을 실천할 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 연세대(미래) 의예과 합격<br>
										러셀 부천 박*우
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0249" Then '영통 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>수능 시간표와 유사하게 이루어지는 <br>
									바자관의 표준 시간표가 큰 도움이 되었습니다.</strong><br>
									모의고사를 응시할 때에도 각 과목별로 따로 <br>
									응시하는 것보다 수능 시간표에 맞춰 이어서 <br>
									응시하는 것이 더 <strong>현장감 있기에, <br>
									러셀의 표준 시간표에 맞추어 공부하였습니다.</strong><p>
								<dl>
									<dt>
										2024학년도 고려대학교 의과대학 합격<br>
										러셀 영통 오서준
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0341" Then '대전 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>수능과 유사한 바른공부 자습전용관<br>
									시간표</strong> 덕분에 시간적 패턴을 몸에 익히는 데<br>
									큰 도움이 되었습니다.<p>
								<dl>
									<dt>
										2024학년도 서울대학교 지리학과 합격<br>
										러셀 대전 박재원
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0349" Then '울산 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">수능 시간을 고려한 시간표에 따라<br>
									바자관 종이 울려서 저 혼자 공부할 때와 <br>
									다르게 적절한 쉬는 시간과 공부 시간을<br>
									가질 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 부산대학교 약학과 합격<br>
										러셀 울산 김○○
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_pusan.png" alt="부산대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0257" Then '중계 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관의 장점은 학습시간이 확보</strong>된다는점입니다. <br>
									바른공부 자습전용관은 개인의 스케줄을 반영해 <br>
									필수 자습시간을 확보해 줍니다. 입시기간동안 <br>
									학습시간을 확보하면 <strong>작은 시간들이 모여 굉장히 <br>
									큰 변화</strong>를 만들어 내기 때문에 바자관의 장점이라고 <br>
									생각합니다.<p>
								<dl>
									<dt>
										2024년도 연세대학교 수학과 합격<br>
										러셀 중계 장*영
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">표준 시간표가 정해져 있어 학습시간 확보가 잘 되며 <br>
									주말에도 생활패턴을 유지하고 공부 리듬을<br>
									형성시킬 수 있어 좋았습니다. 학교 등 유동적인<br>
									시간 조절이 필요했는데, 담임 선생님이 계셔<br>
									갑작스러운 일정에도 시간표 조절이 가능해서<br>
									편리했습니다.<p>
								<dl>
									<dt>
										2024년도 고려대학교 합격<br>
										러셀 평촌 박*연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0342" Then '대구 %>
							<div class="review first">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">러셀에서는 수능 시간표와 동일한 시간표를<br>
									사용해 따로 타이머를 맞추는 등의 수고를<br>
									덜 수 있어서 편리했습니다.<p>
								<dl>
									<dt>
										2025년도 동국대학교 한의예과 합격<br>
										러셀 대구 문지연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_dongguk.png" alt="동국대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">부족하다고 생각하는 과목을 찾아 듣다 보니<br>
									강제로 불필요한 수업을 들을 때와 달리 집중력 있게 <br>
									수업을 들을 수 있었고 자습시간 확보에도 도움이<br>
									되었습니다.<p>
								<dl>
									<dt>
										2024학년도 한양대학교 의예과 합격<br>
										러셀CORE 광주 엄태옥
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt="한양대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>규칙적이고 효율적인 시스템을 활용하여 학업에<br>
									몰입할 수 있었습니다.</strong> 규칙적인 생활은<br>
									컨디션 관리와 학습 계획에 큰 도움이 되었고,<br>
									취약 과목이었던 국어를 보완하면서도 수학과 과학의 <br>
									비중을 유지하면서 수능을 대비할 수 있었습니다.<p>
								<dl>
									<dt>
										2024학년도 서울대 컴퓨터공학부<br>
										러셀CORE 전주 임태빈
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">원하는 단과 수업을 선택하여 듣고 그 외의 시간은<br>
									자습관을 이용할 수 있어 충분한 자습시간을<br>
									확보할 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 한양대학교 기계과 합격<br>
										러셀CORE 창원 성재호
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt="한양대 로고"></dd>
								</dl>
							</div>
							<% Else %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">개인적으로 공부할 때,<br>
									<strong>시간의 효율성을 가장 중요시</strong>하는데<br>
									러셀의 시스템이 시간을 효율적으로<br>
									쓰는데 많은 도움이 되었습니다.</p>
								<dl>
									<dt>
										2025년도 가천대학교 의예과 합격<br>
										러셀 센텀 박*효
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_gachon02.png" alt="가천대 로고"></dd>
								</dl>
							</div>
							<% End If %>
						</div>
					</div>

					<!-- 학습동선 최소화 -->
					<div class="swiper-slide">
						<p class="tit">이동에 낭비하는 시간 없이 학습 동선 최소화</p>
						<p class="txt">한 건물 내에서 강의실과 바자관, <%=baja_txt%>을 한 번에 해결할 수 있도록 동선을 최적화하여<br>
							이동에 낭비되는 시간을 최소화하고 효율적인 시간 관리를 통해 높은 집중력을 발휘, 학습량을 극대화할 수 있습니다.</p>
						<div class="baja_box">
							<% If sCampusCode = "INTRO" or sCampusCode = "CD0001" Then '인트로/대치 %>
							<div class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_slide03_img.jpg" alt=""></div>
							<% Else %>
							<div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/baja_slide03_img.jpg" alt=""></div>
							<% End If %>

							<!-- 선배들의 PICK -->
							<% If sCampusCode = "CD0001" Then '대치 %>
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>단과 수업 교실과 바자관이 같은 건물 안에 있어 <br>
									학습 동선을 최소화할 수 있었습니다.</strong>
									단과 시작 시간 15분 전에만 이동하면 되었기 때문에 <br>
									수업 시작 직전까지 공부를 할 수 있었고 덕분에 시간 <br>
									낭비 없이 공부할 수 있었던 것이 매우 좋았습니다. </p>
								<dl>
									<dt>2025년도 서울대학교 사회교육과 합격<br>
										러셀 대치 유수빈</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0245" Then '목동 %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>한 건물 내에 자습관과 강의실</strong>이 함께 있어 <br>
									이동 시간이 많이 필요하지 않아 <br>
									제가 원하는 만큼의 <strong>충분한 자습시간을 확보</strong>할 수 <br>
									있었습니다.
								</p>
								<dl>
									<dt>
										2025년도 이화여자대학교 의예과 합격<br>
										러셀 목동 임세린
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_ewha.png" alt="이화여대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0244" Then '분당 %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">가까운 거리에서 필요한 모든 것들을<br>
									해결하고, <strong>이동에 낭비되는 시간을 줄여서<br>
									공부에 집중할 수 있도록 도움</strong>을 받은 것<br>
									같습니다.</p>
								<dl>
									<dt>
										2025년도 고려대학교 전자전기공학과 합격<br>
										러셀 분당 양*솔
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">한 건물에 <strong>강의실-바자관-식당</strong>이 있어 이동에<br>
									낭비하는 시간 없이 <strong>효율적으로 시간 관리</strong>를 할 수<br>
									있다는 점이 좋았습니다. 학원 건물에서 하루를<br>
									보내도 부족한 것이 없어서 <strong>공부에만 몰두할 수<br>
									있었습니다.</strong></p>
								<dl>
									<dt>
										2025년도 상지대학교 한의예과 합격<br>
										러셀CORE 원주 전혜주
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_sangji.png" alt="상지대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">강의실이 바자관 바로 위층에 위치해 있어서<br>
									거리상 시간 손실이 없었습니다.<br>
									<strong>대치동 수업을 실시간으로 들으며 현강 자료도<br>
									받을 수 있고, 동시에 시간도 절약</strong>할 수 있어서<br>
									정말 큰 도움이 되었습니다.<p>
								<dl>
									<dt>
										2024년도 서울대학교 경영학과 합격<br>
										러셀CORE 청주 김*진
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0247" Then '강남 %>
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">필요한 과목만 수강하고 충분한 자습시간 확보를 <br>
									동시에 충족할 수 있어서 만족스러웠습니다.<br>  
									<strong>바자관과 단과 강의실이 한 건물에 있어 <br>
										수업 이후 바로 바자관으로 이동할 수 있어 <br>
										불필요한 시간 낭비를 줄일 수 있었습니다.</strong><p>
								<dl>
									<dt>
										2024년도 고려대 교육학과 합격<br>
										러셀 강남 곽승연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0250" Then '부천 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">자습관에서 공부하면서 현역 때와는<br>
									비교도 안되는 <strong>학습 시간을 확보</strong>한 것이 좋았습니다.<br>
									<strong>자습관 시간표에 맞춰서 이른 시간부터<br>
									공부하는 습관을 기를 수 있어 좋았습니다.</strong><p>
								<dl>
									<dt>
										2024년도 제주대 수의학과 합격<br>
										러셀 부천 이*규
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_jeju.png" alt="제주대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0249" Then '영통 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>학습 동선 최소화하는 것</strong>이 큰 도움이 되었습니다. <br>
									또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 <br>
										되었습니다.</strong> 모의고사 이후 성적 분석을 토대로 한 <br>
										상담은 학습 방향을 잡는 데에 도움이 되었고, <br>
										정확한 수치를 근거로 입시에 대한 구체적인 정보를 <br>
										알려주셨습니다.<p>
								<dl>
									<dt>
										2024학년도 서울대학교 <br>
										치의학학석사통합과정 합격<br>
										러셀 영통 최지원
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>학습 동선 최소화를 가장 큰 장점</strong>으로 생각합니다.<br>
									짧은 수험 기간인 만큼 시간을 절약하는 것이<br>
									포인트입니다. 그래서 <strong>급식, 단과 수업, 자습 등을<br>
									모두 해결할 수 있다 보니 시간 절약에<br>
									유용</strong>했습니다.<p>
								<dl>
									<dt>
										2025학년도 부산대학교 의예과 합격<br>
										러셀 센텀 최OO
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_pusan.png" alt="제주대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0341" Then '대전 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">강의실, 바자관, 급식실이 한 건물 안에 있기 때문에 <br>
									이동시간을 절약할 수 있어 좋았고, 생활 루틴을 <br>
									지키며 생활할 수 있어서 좋았습니다.<p>
								<dl>
									<dt>
										2023학년도 연세대학교(미래) 의예과 합격<br>
										러셀 대전 이승섭
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0349" Then '울산 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">외부 출입이 안되어서 답답할 것 같은 이미지가 <br>
									강한데, 내부가 생각보다 개방감이 있어서 불편함이 <br>
									없었습니다. <strong>강의, 자습, 식사 공간이 층별로 나누어<br>
									져 있는 것도 좋았고, 다른 층 학생들끼리 생활 공간을 <br>
									침범하지 않도록 규제</strong>해 줘서 좋았습니다.<p>
								<dl>
									<dt>
										2025년도 동의대 한의예과 합격<br>
										러셀 울산 김○경										
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_dongeui.png" alt="동의대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0257" Then '중계 %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">러셀에서는 급식을 제공해 주기 때문에 외부 식당에 <br>
									갈 때 걸리는 시간의 절반으로 식사를 해결할 수 있어 <br>
									<strong>시간 절약에 도움이 되었습니다.</strong><br>
									또 각자 본인 자리에서 식사를 하기 때문에 <br>
									<strong>식사 시간에도 영어 단어를 외우거나 오답노트</strong>를 보는 등 
									시간을 알차게 활용할 수 있습니다.<p>
								<dl>
									<dt>
										2025년도 순천향대학교 의예과 합격<br>
										러셀 중계 신*나
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_soonchunhyang.png" alt="순천향대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>학습 동선 최소화가 러셀의 가장 큰 장점이라고<br>
									생각합니다. 저는 러셀에서 단과도 수강했는데,<br>
									단과를 수강한 뒤 같은 건물 내에서 선생님들께<br>
									질문도 하고, 바로 바자관으로 올라갈 수 있어서<br>
									공부 시간을 더 확보할 수 있었습니다.</strong><p>
								<dl>
									<dt>
										2024년도 서울대학교 음악학과 합격<br>
										러셀 평촌 윤*영
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0342" Then '대구 %>
							<div class="review second">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">러셀 현장 강의는 한 건물에 강의실과 바자관이<br>
									함께 있어 이동 시간을 아낄 수 있고 마치고<br>
									배운 내용을 바로 복습할 수 있어 효율을 높일 수<br>
									있었습니다.<p>
								<dl>
									<dt>
										2025년도 경북대학교 의예과 합격<br>
										러셀 대구 최다연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_kyungpook.png" alt="경북대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바른공부 자습전용관과 가까운 거리에 강의실이<br>
									있다는 점은 확실한 장점으로 다가왔습니다.<br>
									이동에 낭비하는 시간이 없도록 도움을 주었습니다. <br>
									또한 검증된 강사진의 퀄리티 높은 콘텐츠는<br>
									실력 향상에 큰 도움을 주었습니다.</strong><p>
								<dl>
									<dt>
										2024학년도 동국대 한의예과 합격<br>
										러셀CORE 광주 권태완
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_dongguk.png" alt="동국대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관, 강의실, 급식실이 한 곳에 있어 이동 시간을 <br>
									최소화하고 학습시간을 최대화할 수 있었습니다.</strong><br>
									자습실과 단과 수업을 듣는 공간이 가까이에 있고,<br>
									급식실도 가깝기 때문에 이동시간이 줄어들어<br>
									학습시간이 자연스럽게 늘어날 수 있었습니다.<p>
								<dl>
									<dt>
										2024학년도 연세대학교 의예과<br>
										러셀CORE 전주 김경환
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">한 건물에 자습관, 식당, 강의실이 같이 있어<br>
									<strong>이동 시간에 따른 체력 소모와 자습시간 확보</strong>에 있어 <br>
									큰 이점을 얻을 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 충남대학교 수의예과 합격<br>
										러셀CORE 창원 백지훈
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_chungnam.png" alt="충남대 로고"></dd>
								</dl>
							</div>
							<% Else %>
							<div class="review m">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>학습 동선 최소화를 가장 큰 장점</strong>으로 생각합니다.<br>
									인지능력은 체력과 마찬가지로 쓸 수 있는 양에<br>
									한계가 있다고 합니다. 그런 점에서, 러셀은 한 건물<br>
									안에서 <strong>급식, 단과 수업, 자습 등을 모두 해결할 수<br>
									있다 보니 시간 절약에 유용</strong>했습니다.</p>
								<dl>
									<dt>2025년도 연세대학교 물리학과 합격<br>
										러셀 대구 장*익</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% End If %>
						</div>
					</div>
					<!-- //학습동선 최소화 -->
					
					<!-- 학습 최적화 환경 -->
					<div class="swiper-slide">
						<p class="tit">집단적인 면학 분위기로 학습 최적화 환경</p>
						<% If sCampusCode = "CD0257" Then '중계 %>
						<p class="txt">학습 효율성을 높이기 위해 세심하게 설계된 쾌적한 환경의 학습 시설과<br>
							재원생의 학구열을 체감할 수 있는 개방형 구조로 학습의 긴장감을 유지시키고 학습동기를 부여합니다.</p>
						<% Else %>
						<p class="txt">학습 효율성을 높이기 위해 세심하게 설계된 쾌적한 환경의 학습 시설과<br>
							최상위권의 학구열을 체감할 수 있는 개방형 구조로 학습의 긴장감을 유지시키고 학습동기를 부여합니다.</p>
						<% End If %>

						<div class="baja_box">
							<% If sCampusCode = "CD0245" or sCampusCode = "CD0343" or sCampusCode = "CD0349" or sCampusCode = "CD0257" or sCampusCode = "CD0345" or sCampusCode = "CD0341" Then '목동/코어원주/울산/중계/코어창원/대전 %>
							<div class="img">
								<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/baja_slide04_img.jpg" alt="">
								<a href="javascript:void(0)" class="bt-tt02" style="position:absolute;right:0;bottom:0;width:80px;height:80px;"></a>
							</div>
							<% Else %>
							<div class="img">
								<img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_slide04_img.jpg" alt="">
								<a href="javascript:void(0)" class="bt-tt02" style="position:absolute;right:0;bottom:0;width:80px;height:80px;"></a>
							</div>
							<% End If %>
							
							<% If sCampusCode = "CD0001" Then '대치 %>
							<div class="review w02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관의 장점은 좋은 면학 분위기와<br>
									개방형 구조입니다. </strong> 일반적인 독서실과는 달리<br>
									탁 트여있어 쾌적하게 공부를 할 수 있었습니다.<br>
									또한 공부에 집중이 잘 안될 때 주변에서 열심히<br>
									공부하고 있는 친구들을 보면서 다시 공부에<br>
									몰두할 수 있는 추진력을 얻기도 했습니다.</p>
								<dl>
									<dt>2025년도 중앙대학교 약학부 합격<br>
										러셀 대치 박정후</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_chungang.png" alt="중앙대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0245" Then '목동 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관의 장점인 개방형 구조</strong>는 학생들끼리 긍정적인<br> 
									자극이 형성되게 합니다. 하루 종일 공부를 하다 보면 <br>
									중간중간에 지치기도 하는데 그때마다 <strong>주변에<br>
									열심히 공부하는 친구를 보며 자극</strong>을 받습니다.</p>
								<dl>
									<dt>2025년도 고려대학교 경영대학 합격<br>
										러셀 목동 장준혁</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0244" Then '분당 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관의 가장 큰 장점은 개방형 구조와<br>
									좋은 면학 분위기라고 생각합니다.</strong> 장시간 공부를<br>
									하다 지칠 때 주변에 열심히 하는 친구들을 보며<br>
									자극을 받을 수 있었습니다.</p>
								<dl>
									<dt>
										2025년도 단국대학교 약학과 합격<br>
										러셀 분당 우*람
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_dankook.png" alt="단국대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관 이용하면서 가장 도움이 되었던 점은<br>
									개방형 구조로 다른 친구들이 공부하는 모습이<br>
									바로 보인다는 점이었습니다. 집중이 안 될 때<br>
									다른 친구들을 보며 자극을 받을 수 있었습니다.</strong></p>
								<dl>
									<dt>
										2025년도 가톨릭관동대학교 의예과 합격<br>
										러셀CORE 원주 김민솔
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_catholic_kwandong.png" alt="가톨릭관동대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">저는 개방형 구조의 학습 공간이 가장 좋았습니다.<br>
									탁 트인 느낌을 받을 수 있어 좋았고, 앞뒤, 양옆에서 <br>
									열심히 공부하는 친구들을 보면서 졸음이 몰려오거나 <br>
									딴생각이 들 때마다 자극을 받아 스스로를<br>
									재정비하며 나아갈 수 있었습니다<p>
								<dl>
									<dt>
										2025년도 고려대학교 철학과 합격<br>
										러셀CORE 청주 최*연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0247" Then '강남 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">바자관이 개방형 구조라 <br>
									<strong>다른 친구들이 열심히 공부하는 모습을 보며 <br>
										자극을 받을 수 있었습니다. </strong><br>
									책상도 넓고 수납공간도 넉넉해서 <br>
									편하게 공부할 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 전북대 수의예과 합격<br>
										러셀 강남 전우호
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_chonbuk.png" alt="전북대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0250" Then '부천 %>
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">자습관의 가장 큰 장점은 <strong>개방적인 구조라고 <br>
									생각합니다.</strong> 다른 학생들이  공부하는 모습을 볼 수 <br>
									있어 집단적인 면학 분위기를 형성할 수 있을 뿐만 <br>
									아니라, 어두운 분위기의 다른 독서실과 다르게 <br>
									<strong>개방감을 주어 실내에 오랜 시간 머물러도 답답하지 <br>
										않아</strong> 긴 시간 공부에 집중할 수 있도록 도와줍니다.<p>
								<dl>
									<dt>
										2024년도 강원대 의예과 합격<br>
										러셀 부천 이*은
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_kangwon.png" alt="강원대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0249" Then '영통 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">바자관의 장점은 <strong>개방형 구조</strong>입니다. 또한, <strong>러셀의 <br>
									체조 시스템, 바자관 내에 공기청정기와 온도계를 <br>
									상시 가동</strong>하여 쾌적한 환경에서 공부를 할 수 있었던 <br>
									것도 좋았습니다. <strong>재수 초반에 멘탈적으로 지칠 대로 <br>
									지쳐있었고</strong> 이런 상황에 <strong>가장 큰 힘이 되어주셨던 건 <br>
									담임 선생님</strong>이라고 생각합니다.<p>
								<dl>
									<dt>
										2024학년도 전북대학교 치의예과 합격<br>
										러셀 영통 우태현
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_chonbuk.png" alt="전북대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
							<div class="review w02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관의 장점은 면학 분위기가 형성되어<br>
									공부하기 좋은 환경</strong>입니다.<br>
									또한 집중이 안 될 때, 공부하고 있는 다른 친구들을<br>
									보면서 안일한 생각을 바로잡을 수 있어서<br>
									좋았습니다.<p>
								<dl>
									<dt>
										2025학년도 경상국립대학교 약학과 합격<br>
										러셀 센텀 안*진
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_gyeongsang.png" alt="경상국립대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0341" Then '대전 %>
							<!-- <div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">바자관의 면학 분위기가 좋았습니다. 
									바자관에서는 공부에만 집중할 수 있는 
									환경을 만들어 주어 자연스레 공부습관이 
									잡히게 되었습니다.<p>
								<dl>
									<dt>
										2024학년도 충남대학교 의예과 합격<br>
										러셀 대전 조한별
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_chungnam.png" alt="충남대 로고"></dd>
								</dl>
							</div> -->
							<% ElseIf sCampusCode = "CD0349" Then '울산 %>
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>조용하고 정돈된 환경에서 공부할 수 있는 것이<br>
									큰 장점이라고 생각합니다.</strong> 사실 아무래도 휴대폰이 <br>
									근처에 있으면 자주 보게 되는데, 휴대폰이 없는<br>
									환경에서 다른 사람들이 열심히 공부하는 것을 보며<br>
									공부에 대한 의지를 다질 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 부산대 의예과 합격<br>
										러셀 울산 옥○리									
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_pusan.png" alt="부산대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0257" Then '중계 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">바자관의 장점은 <strong>좋은 면학 분위기와 관리 시스템</strong><br>
									입니다. 조용한 분위기에서 공부에 몰입할 수 있으며 <br>
									<strong>개방형 구조</strong>로 옆에서 공부하는 친구들을 보며<br>
									딴짓을 할 수 없었습니다. 개인 스케줄을 제외하고<br>
									<strong>오전 8시~밤 10시까지</strong> 의무 자습이기에<br>
									<strong>훨씬 많은 공부량</strong>을 확보할 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 고려대학교 의예과 합격<br>
										러셀 중계 동*영
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관 특유의 개방형 구조로 인해 친구들을<br>
									둘러보며 긍정적인 경쟁심에 불타오를 수 있고<br>
									쾌적한 온도 조성과 공기 청정기 등으로<br>
									공부하는 데에만 오롯이 집중할 수 있도록 해 주어<br>
									매우 좋았습니다.</strong><p>
								<dl>
									<dt>
										2024년도 서울대학교 인문계열학과 합격<br>
										러셀 평촌 왕휘웅
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0342" Then '대구 %>
							<div class="review third">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">넓은 개인 책장이 바로 옆에 있다는 것이<br>
									마음에 들었습니다.<br>
									허리만 돌리면 모든 과목의 책을 꺼낼 수 있기에<br>
									불필요한 이동 시간을 줄일 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 인제대학교 의예과 합격<br>
										러셀 대구 조준호
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_inje.png" alt="인제대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">바른공부 자습전용관의 장점은 학습에 집중할 수<br>
									있는 면학 분위기입니다. 개방형 구조로 되어있어<br>
									집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고<br>
									있는 친구들을 보며 자극을 받을 수 있었습니다.<p>
								<dl>
									<dt>
										2024학년도 서울대학교 인문계열 합격<br>
										러셀CORE 광주 김효원
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">러셀CORE 전주 <strong>바자관은 공부하는 데 있어<br>
									시설적 면에서 불편함이 전혀 없을 정도로<br>
									환경 구성이 잘 되어 있습니다.</strong> 이러한 곳에서 매일<br>
									수능 시간표 대로 공부를 한 덕분에 수능에 최적화된 <br>
									공부 리듬을 만들 수 있었습니다.<p>
								<dl>
									<dt>
										2024학년도 고려대학교 의예과<br>
										러셀CORE 전주 서진원
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">자습관이 개방형 구조로 되어있기 때문에,<br>
									집중이 되지 않을 때 옆에서 열심히 공부하고 있는<br>
									친구들을 보며 동기부여를 받을 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 한양대 화학과 합격<br>
										러셀CORE 창원 이은지
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt="한양대 로고"></dd>
								</dl>
							</div>
							<% Else %>
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관의 장점은 공부하기 좋은 환경</strong>입니다.<br>
									개방형 환경으로 졸음도 방지할 수 <br>
									있었습니다. 또한 집중이 안 될 때, <br>
									공부하고 있는 다른 친구들을 보면서 <br>
									다시 마음을 다잡을 수 있어 좋았습니다.</p>
								<dl>
									<dt>2025년도 대구가톨릭대학교 의예과 합격<br>
										러셀 대구 유*채</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_daegucatholic.png" alt="대구가톨릭대 로고"></dd>
								</dl>
							</div>
							<% End If %>
						</div>
					</div>
					<!-- //학습 최적화 환경 -->
					<!-- 셔틀버스 운행 -->
					<% If sCampusCode = "CD0342" Then '대구 %>
					<div class="swiper-slide">
						<p class="tit">러셀 대구 셔틀버스 운행</p>
						<p class="txt">매주 월요일~금요일, 일 2회 운영(등원/하원)<br>
							신청방법 : 노선별 기사님과 1:1 개별신청입니다. (지불방법은 기사님이 안내드립니다.)</p>
						<div class="baja_box">
							<div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/baja_slide_img_bus.jpg" alt=""></div>
						</div>
					</div>
					<% End If %>
					<!-- 자체식당 -->
					<% If russelCore = "1" or sCampusCode = "CD0244" or sCampusCode = "CD0341" or sCampusCode = "CD0349" or sCampusCode = "CD0248" or sCampusCode = "CD0342" Then '코어/분당/대전/울산/평촌/대구 %>
					<div class="swiper-slide">
						<p class="tit"><%=baja_tit01%></p>
						<p class="txt"><%=baja_txt02%></p>
						<div class="baja_box">
							<div class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/baja_slide05_img.jpg" alt=""></div>

							<% If sCampusCode = "CD0244" Then '분당 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>같은 건물에서 급식을 빠르게 먹을 수 있어서 <br>
									학습시간 확보에 유리하였습니다. <br>
									급식의 퀄리티가 좋았으며, 양도 많았습니다.</strong></p>
								<dl>
									<dt>2025년도 경북대학교 치의예과 합격<br>
										러셀 분당 유*혁</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_kyungpook.png" alt="경북대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">자체 식당과 공부하는 곳이 한 건물에 있어<br>
									학습 동선을 최소화하여 시간 낭비 없이 공부할 수<br>
									있었습니다. 밥을 먹기 위해 굳이 외부에 나가지<br>
									않아도 되어 공부시간을 확보하는데<br>
									큰 도움이 되었습니다.</p>
								<dl>
									<dt>2025년도 강원대학교 의예과 합격<br>
										러셀CORE 원주 정동준</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_kangwon.png" alt="강원대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0349" Then '울산 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>바자관, 강의실과 식당이 모두 한 건물에 있어<br>
									이동시간에서의 낭비가 없어서 좋았습니다.</strong><br>
									또, 쾌적한 공기 속에서 공부할 수 있어서 더 편안한<br>
									환경이 조성될 수 있었습니다.<p>
								<dl>
									<dt>
										2025년도 부산대 약학과 합격<br>
										러셀 울산 이○환								
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_pusan.png" alt="부산대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
							<div class="review m03">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>한 건물에 자체 식당 급식실이 있어 동선이 최소화된<br>
									다는 점이 좋았습니다. 버려지는 시간 없이<br>
									효율적으로 시간을 활용할 수 있었고, 한겨울,<br>
									한여름에도 건물 내에서 날씨의 영향을 받지 않고<br>
									쾌적하게 공부할 수 있었습니다.</strong><p>
								<dl>
									<dt>
										2024년도 고려대학교 경영학과 합격<br>
										러셀 평촌 김*주
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt"><strong>자체 식당이 있어 급식, 단과, 자습을 한 건물에서<br>
									해결할 수 있었고, 이동 시간을 줄여 공부하는 데에<br>
									효율적으로 도움이 되었습니다.</strong><p>
								<dl>
									<dt>
										2023학년도 연세대학교 국어국문과 합격<br>
										러셀CORE 광주 김지윤
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
							<div class="review m02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">급식이 정말 맛있습니다.<br>
									<strong>건강 관리와 더불어 공부를 병행하는 데에도<br>
										큰 도움이 되었습니다.</strong><p>
								<dl>
									<dt>
										2024년도 연세대학교 의예과<br>
										러셀CORE 전주 김경환
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt="연세대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
							<div class="review w02">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">한 건물에 자체 식당이 있어<br>
									<strong>단과와 자습관 이동 시간을 줄이고</strong> 효율적으로<br>
									시간을 사용할 수 있었습니다.<p>
								<dl>
									<dt>
										2024년도 이화여자대학교<br>
										커뮤니케이션 미디어학부 합격<br>
										러셀CORE 창원 유승연
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_ewha.png" alt="이화여대 로고"></dd>
								</dl>
							</div>
							<% ElseIf sCampusCode = "CD0346" or sCampusCode = "CD0341" or sCampusCode = "CD0342" Then '코어청주/대전/대구 %>
							<% End If %>
						</div>
					</div>
					<% End If %>
				</div>
				<!-- 버튼 -->
				<div class="swiper-button-next baja"></div>
    			<div class="swiper-button-prev baja"></div>
				<!-- //버튼 -->
			</div>
			<% If sCampusCode = "INTRO" Then '인트로 %>
			<p class="r-txt">* 합격생 후기 2025 합격생 인터뷰 중 일부 발췌<br>
				* 학원별 운영 방법 및 시설은 상이하며, 자세한 내용은 학원별 페이지에서 확인할 수 있습니다.</p>
			<% ElseIf sCampusCode = "CD0346" or sCampusCode = "CD0341" or sCampusCode = "CD0257" or sCampusCode = "CD0340" or sCampusCode = "CD0344" Then '코어청주/대전/중계/코어광주/코어전주 %>
			<p class="r-txt">* 합격생 후기 합격생 인터뷰 중 일부 발췌</p>
			<% ElseIf sCampusCode = "CD0249" or sCampusCode = "CD0250" or sCampusCode = "CD0247" or sCampusCode = "CD0248" or sCampusCode = "CD0345" Then '영통/부천/강남/평촌/코어창원 %>
			<p class="r-txt">* 합격생 후기 2024 합격생 인터뷰 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">* 합격생 후기 2025 합격생 인터뷰 중 일부 발췌</p>
			<% End If %>
		</div>

		<!-- 바자관 시간표 -->
        <!-- #include virtual = "/intro/2025/half/baja_time_table.asp" -->
        <!-- //바자관 시간표 -->

        <!-- 바자관 시설보기 팝업 -->
		<div class="layer-pop layer">
            <a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/half/bt_close.png" alt="닫기"></a>
            <% If sCampusCode = "INTRO" Then '인트로 %>
			<div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_slide_pop_intro.jpg" alt="" />
            </div>
			<% ElseIf sCampusCode = "CD0245" or sCampusCode = "CD0343" or sCampusCode = "CD0349" or sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0340" or sCampusCode = "CD0344" or sCampusCode = "CD0345" Then '목동/코어원주/울산/부천/중계/코어광주/코어전주/코어창원 %>
			<div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/baja_slide_pop.jpg" alt="" />
            </div>
			<% Else %>
			<div class="layer-wrap">
                <img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_slide_pop.jpg" alt="" />
            </div>
			<% End If %>
        </div>
		 <!-- //바자관 시설보기 팝업 -->
	</div>
</div>
<div class="cont js-cont <%=campusName%>">
	<div class="cont05">
		<% If sCampusCode = "CD0257" Then '중계 %>
		<h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont05_tit.png" alt=""></h4>
		<p class="s-tit" data-aos="flip-up">흔들림 없는 성공적인 반수를 위해 러셀 입시 전문 담임 선생님들이 동반자가 되어<br>
			입시 X 학습 X 생활까지 전부 케어하는 올인원 책임 관리가 진행됩니다.</p>sCampusCode = "CD0345"
		<% Else %>
		<h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont05_tit.png" alt=""></h4>
		<p class="s-tit" data-aos="flip-up">흔들림 없는 성공적인 반수를 위해 러셀 최상위권 전문 입시 담임 선생님들이 동반자가 되어<br>
			입시 X 학습 X 생활까지 전부 케어하는 올인원 책임 관리가 진행됩니다.</p>
		<% End If %>
		<div class="inner">
			<div class="studyHall-navi swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">입시관리</div>
					<div class="swiper-slide">학습관리</div>
					<div class="swiper-slide">생활관리</div>
				</div>
			</div>
			<div class="studyHall-slide swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<p class="tit">반수생 개인별 맞춤 입시 전략 제시</p>
						<ul class="study-list">
							<li>
								<% If sCampusCode = "INTRO" Then '인트로 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide01_img01.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide01_img01.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">실제 데이터 기반 분석 입시관리</p>
								<p class="l-txt">주기적인 모의고사 시행을 통해<br>
									누적한 성적 DB와 모의고사 성적 추이를 기반으로<br>
									대학별 전형을 분석하여 목표 대학에 맞춘<br>
									학생별 맞춤 입시 방향을 제시합니다.</p>
							</li>
							<li>
								<% If sCampusCode = "INTRO" Then '인트로 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide01_img02.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide01_img02.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">전문적인 1:1 입시 상담</p>
								<p class="l-txt">세분화된 목표 설정부터 성취를 위한 구체적인<br>
									개인별 지원 전략까지 개별 성적 포트폴리오를<br>
									기반으로 체계적인 수시/정시 1:1 컨설팅을 통해<br>
									최적의 지원 전략을 수립합니다.</p>
							</li>
							<li>
								<% If sCampusCode = "INTRO" Then '인트로 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide01_img03.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide01_img03.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">반수생 대상 설명회 및 특강</p>
								<p class="l-txt">입시 특강, 전형별 설명회를 통해 풍부하고 정확한<br>
									입시 콘텐츠를 제공하고 다양한 사례가 포함된<br>
									메가스터디의 전문 입시 자료집 등을 통해<br>
									최신 입시 정보를 제공합니다.</p>
							</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<p class="tit">단기간 최대 효율을 위한 전략적인 학습 관리</p>
						<ul class="study-list">
							<li>
								<% If sCampusCode = "INTRO" Then '인트로 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide02_img01.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide02_img01.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">1:1 개별 학습 상담</p>
								<p class="l-txt">성적 데이터와 학습 현황을 기반으로<br>
									개인별 학습 스타일 및 취약점 분석에 따라<br>
									과목별 보완점과 학습 방향을 제시하고 구체적이고<br>
									실질적인 학습 계획과 설계, 점검이 진행됩니다.</p>
							</li>
							<li>
								<% If sCampusCode = "INTRO" or sCampusCode = "CD0341" Then '인트로/대전 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide02_img02.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide02_img02.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">전략적 학습 스케줄 관리</p>
								<p class="l-txt">시간 활용이 중요한 반수생을 위해<br>
									철저한 시간 안배 및 효율적인 학습 전략을<br>
									제시하고 과목별 학습법 특강 및 설명회를 통해<br>
									시기별 상황에 맞춘 학습 가이드를 제시합니다.</p>
							</li>
							<li>
								<% If sCampusCode = "INTRO" or sCampusCode = "CD0341" Then '인트로/대전 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide02_img03.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide02_img03.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">올바른 학습 루틴 형성</p>
								<p class="l-txt">느슨해지기 쉬운 환경 속 올바른 학습 루틴<br>
									형성을 위해 러셀 학습 플래너, 러셀 일일수학 30제,<br> 러셀 총평노트	등
									다양한 콘텐츠를 활용하여 학습 습관의 개선 방향을
									제시합니다.</p>
							</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<p class="tit">집단적인 면학 분위기를 위한 엄격한 생활관리</p>
						<ul class="study-list">
							<li>
								<% If sCampusCode = "INTRO" or sCampusCode = "CD0341" Then '인트로/대전 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide03_img01.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide03_img01.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">출결 관리 시스템</p>
								<p class="l-txt">매 교시 출결을 체크하고 전자 출결 관리 시스템을<br>
									통해 학부모에게 문자를 발송하는 등 철저하게<br>
									출결이 관리되며, 지각, 무단 외출, 무단결석 등<br>
									면학 분위기를 저해하는 요소들을 엄격하게<br>
									관리합니다.</p>
							</li>
							<li>
								<% If sCampusCode = "INTRO" or sCampusCode = "CD0341" Then '인트로/대전 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide03_img02.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide03_img02.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">태도 점수 제도</p>
								<p class="l-txt">휴대폰 소지, 자습시간 중 자리 이동 등<br>
									집중력이 저하될 수 있는 항목들을 통제하고<br>
									학습 태도가 불성실한 경우 페널티 등을 부과하여<br>
									학습에만 집중할 수 있는 면학 분위기를 형성합니다.</p>
							</li>
							<li>
								<% If sCampusCode = "INTRO" Then '인트로 %>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/studyHall_slide03_img03.jpg" alt=""></div>
								<% Else %>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/studyHall_slide03_img03.jpg" alt=""></div>
								<% End If %>
								<p class="l-tit">정서적 멘토링</p>
								<p class="l-txt">목표 상기를 통해 지속적인 동기 부여와<br>
									안정적인 수험 생활이 가능하도록 학습 고충 상담,<br>
									슬럼프 극복을 위한 1:1 고민 상담 등 학생과<br>
									끊임없는 소통 및 지원을 제공합니다.</p>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>