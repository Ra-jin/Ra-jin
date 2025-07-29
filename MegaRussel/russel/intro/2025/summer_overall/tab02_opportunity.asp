<div class="cont js-cont <%=campusName%>">
	<div class="cont04">
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont04_tit.png" alt="N수생과 격차를 좁혀라! 여름 방학을 치열하게 보내야 최상위권으로 도약할 수 있습니다.">
		</h3>
		<div class="tit-obj"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont04_tit_obj.png" alt=""></div>
		<div class="inner">
			<div class="s-position" data-aos="fade-up">
				<h5>
					올여름,<br>
					최상위권 도약을 위한<br>
					<strong>학년별 학습 목표</strong>
					<span><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont04_obj.png" alt=""></span>
				</h5>
				<ul>
					<% If sCampusCode <> "CD0342" and sCampusCode <> "CD0340" Then '대구/코어광주 제외 %>
					<!-- 고1 -->
					<li>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont04_go1.png" alt="고1"></div>
								<p>학습 습관 형성 및<br>
									2학기 내신 준비!
								</p>
							</dt>
							<dd>
								<ul class="list-03">
									<li>대입 성공을 위한 학습 습관 형성</li>
									<li>1학기 내신 취약 단원/파트 보완</li>
									<li>2학기 내신 대비 개념/유형 학습</li>
								</ul>
							</dd>
						</dl>
					</li>
					<% End If %>
					<% If sCampusCode <> "CD0340" Then '코어광주 제외 %>
					<!-- 고2 -->
					<li>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont04_go2.png" alt="고2"></div>
								<p>경쟁자보다 한발 빠르게<br>
									수능과 내신을 동시에!
								</p>
							</dt>
							<dd>
								<ul class="list-03">
									<% If sCampusCode = "CD0342" Then '대구 %>
									<li>2학기 내신 대비 및 수능 전형 준비
									</li>
									<% Else %>
									<li>1학기 내신 점검 및 2학기 내신 대비 학습</li>
									<% End If %>
									<li>주요 과목 수능 대비 학습</li>
									<li>기출 등을 활용한 수능형 개념/유형 학습</li>
								</ul>
							</dd>
						</dl>
					</li>
					<% End If %>
					<!-- 고3 -->
					<li>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont04_go3.png" alt="고3"></div>
								<p>N수생과의 격차를 좁혀<br>
									최상위권으로 도약!
								</p>
							</dt>
							<dd>
								<ul class="list-03">
									<li>6월 평가원 기준 핵심 개념/유형 총 정리</li>
									<li>약점, 실수 유형 집중 학습 및 보완</li>
									<li>9월 평가원 대비 실전 모의고사 집중 훈련</li>
								</ul>
							</dd>
						</dl>
					</li>
				</ul>
			</div>
			<div class="s-method" data-aos="fade-up">
				<h5>
					학년별 학습 목표를 이루기 위한<br>
					<strong><%=txtCampus%> 썸머스쿨 종합반만의 방법!</strong>
				</h5>
				<ul>
					<li>
						<% If sCampusCode = "CD0340" Then '코어광주 %>
						<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_img01.jpg" alt=""></div>
						<% Else %>
						<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_img01.jpg" alt=""></div>
						<% End If %>
						<dl>
							<dt>온전히<br>
							학습에만 몰입</dt>
							<dd>개방형 구조 등 최적의 학습 환경과<br>
								최상의 면학 분위기에서 의무 자습으로<br>
								학기 중 대비 충분한 자습 시간 확보
							</dd>
						</dl>
					</li>
					<li>
						<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_img02.jpg" alt=""></div>
						<dl>
							<dt>철저한 관리로<br>학습 습관 유지
							</dt>
							<dd>입시 담임 선생님의 학기 중과 같은<br>
								규칙적인 등&middot;하원 및 매 교시 출결 관리로<br>
								방학기간 동안 흐트러질 수 있는 학습 습관 유지
							</dd>
						</dl>
					</li>
					<li>
						<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_img03.jpg" alt=""></div>
						<dl>
							<dt>약점 보완 및<br>2학기 대비 학습
							</dt>
							<% If sCampusCode = "CD0341" Then '대전 %>
							<dd>학기 중 부족했던 과목/파트 보완하고<br>
								나에게 꼭 필요한 강좌를 선택하여<br>
								2학기 모의평가 대비 학습
							</dd>
							<% Else %>
							<dd>학기 중 부족했던 과목/파트 보완하고<br>
								나에게 꼭 필요한 강좌를 선택하여<br>
								2학기 모의평가/내신 대비 학습
							</dd>
							<% End If %>
						</dl>
					</li>
					<li>
						<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_img04.jpg" alt=""></div>
						<dl>
							<dt>수시 전형 대비<br>사전 점검 및 설계
							</dt>
							<dd>입시 전문가인 입시 담임 선생님과의<br>
								정확한 학생부 진단 후 목표 대학/학과 등<br>
								수시 지원 전략 수립
							</dd>
						</dl>
					</li>
				</ul>
			</div>
		</div>
	</div>
</div>