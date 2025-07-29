<div class="cont js-cont <%=campusName%>">
	<div class="cont04">
		<% If sCampusCode = "CD0257" Then '중계 %>
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_tit.png" alt="N수생과 격차를 좁혀라! 여름 방학을 치열하게 보내야 폭발적으로 성적을 향상시킬 수 있습니다.">
		</h3>
		<% Else %>
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_tit.png" alt="N수생과 격차를 좁혀라! 여름 방학을 치열하게 보내야 최상위권으로 도약할 수 있습니다.">
		</h3>
		<% End If %>
		<div class="tit-obj"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_tit_obj.png" alt=""></div>
		<div class="inner">
			<div class="s-position" data-aos="fade-up">
				<% If sCampusCode = "CD0257" Then '중계 %>
				<h5>
					올여름,<br>
					완전한 학습 몰입을 위한<br>
					<strong>학년별 학습 목표</strong>
					<span><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_obj.png" alt=""></span>
				</h5>
				<% Else %>
				<h5>
					올여름,<br>
					최상위권 도약을 위한<br>
					<strong>학년별 학습 목표</strong>
					<span><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_obj.png" alt=""></span>
				</h5>
				<% End If %>
				<ul>
					<% If sCampusCode = "CD0249" OR sCampusCode = "CD0248" OR sCampusCode = "CD0343" Then '영통/평촌/코어원주 %>
					<!-- 중3 -->
					<li>
						<% If sCampusCode = "CD0248" Then '평촌 %>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_jung3.png" alt="중3"></div>
								<p>고입 대비 및<br>
								고등학교 내신 준비!

								</p>
							</dt>
							<dd>
								<ul class="list-03">
									<li>고교 생활 적응을 위한 학습 습관 형성
									</li>
									<li>고1 1학기 내신 대비 개념/유형 학습
									</li>
								</ul>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_jung3.png" alt="중3"></div>
								<p>고등학교 입학 전	<br>
									학습 및 생활 습관 형성
								</p>
							</dt>
							<dd>
								<ul class="list-03">
									<li>철저한 관리를 통한 학습 시간 확보
									</li>
									<li>증가되는 학습 시간 적응을 위한 습관 형성
									</li>
									<li>메가스터디 공채 강사진 강의 수강으로 <br> 실력 완성</li>
								</ul>
							</dd>
						</dl>
						<% Else %>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_jung3.png" alt="중3"></div>
								<p>최상위권 달성을 위한<br>
									내신과 고등 과정 대비
								</p>
							</dt>
							<dd>
								<ul class="list-03">
									<li>고등 과정 대비와 함께 학습 습관 형성</li>
									<li>1학기 내신 취약 단원/파트 보완</li>
									<li>2학기 내신 대비 개념/유형 학습</li>
								</ul>
							</dd>
						</dl>
						<% End If %>
					</li>
					<% End If %>
					<% If sCampusCode <> "CD0341" and sCampusCode <> "CD0245" and sCampusCode <> "CD0244" Then '대전/목동/분당 제외 %>
					<!-- 고1 -->
					<li>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_go1.png" alt="고1"></div>
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
					<% If sCampusCode <> "CD0245" Then '목동 제외 %>
					<!-- 고2 -->
					<li>
						<dl>
							<dt>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_go2.png" alt="고2"></div>
								<p>경쟁자보다 한발 빠르게<br>
									수능과 내신을 동시에!
								</p>
							</dt>
							<dd>
								<ul class="list-03">
									<% If sCampusCode = "CD0342" Then '대구 %>
									<li>2학기 내신 대비 및 수능 전형 준비
									</li>
									<% ElseIf sCampusCode = "CD0341" Then '대전 %>
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
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_go3.png" alt="고3"></div>
								<% If sCampusCode = "CD0257" Then '중계 %>
								<p>N수생과의 격차를 좁혀<br>
									성적 향상!
								</p>
								<% Else %>
								<p>N수생과의 격차를 좁혀<br>
									최상위권으로 도약!
								</p>
								<% End If %>
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
					<strong><%=txtCampus%> 썸머스쿨만의 방법!</strong>
				</h5>
				<ul>
					<li>
						<% If sCampusCode = "intro" OR sCampusCode = "CD0001" OR sCampusCode = "CD0341" OR sCampusCode = "CD0246" OR sCampusCode = "CD0250" OR sCampusCode = "CD0340" Then '인트로/대치/대전/센텀/부천/코어광주 %>
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
						<% If sCampusCode = "intro" OR sCampusCode = "CD0341" OR sCampusCode = "CD0246" OR sCampusCode = "CD0250" Then '인트로/대전/센텀/부천 %>
						<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_img02.jpg" alt=""></div>
						<% Else %>
						<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_img02.jpg" alt=""></div>
						<% End If %>
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
						<% If sCampusCode = "intro" OR sCampusCode = "CD0246" OR sCampusCode = "CD0250" Then '인트로/센텀/부천 %>
						<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_img03.jpg" alt=""></div>
						<% Else %>
						<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_img03.jpg" alt=""></div>
						<% End If %>
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
						<% If sCampusCode = "intro" OR sCampusCode = "CD0246" OR sCampusCode = "CD0250" Then '인트로/센텀/부천 %>
						<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont04_img04.jpg" alt=""></div>
						<% Else %>
						<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04_img04.jpg" alt=""></div>
						<% End If %>
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


	<% If sCampusCode = "CD0001" Then '대치 %>
	<div class="cont04-1" id="cont04-1">
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont04-1_tit.png" alt="오직 러셀 대치에서만 만날 수 있는 2025 썸머스쿨재원생 전용 과목별 실력 올리기 맞춤 콘텐츠">
		<div class="inner">
			<!-- 특별 슬라이드 -->
			<div class="special-slide-wrap">
				<div class="special-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">[고1] 재원생 전용</div>
						<div class="swiper-slide">[고2] 재원생 전용</div>
						<div class="swiper-slide">[고3] 재원생 전용</div>
					</div>
				</div>
				<div class="swiper-container special-slide">
					<div class="swiper-wrapper">
						<!-- 입시 관리 -->
						<div class="swiper-slide">
							<p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/special_slide01.jpg" alt=""></p>
						</div>
						<!-- 학습 관리 -->
						<div class="swiper-slide">
							<p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/special_slide02.jpg" alt=""></p>
						</div>
						<!-- 생활 관리 -->
						<div class="swiper-slide">
							<p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/special_slide03.jpg" alt=""></p>
						</div>
					</div>
				</div>
			</div>
			<!-- //특별 슬라이드 -->
		</div>
	</div>
	<% End If %>
</div>