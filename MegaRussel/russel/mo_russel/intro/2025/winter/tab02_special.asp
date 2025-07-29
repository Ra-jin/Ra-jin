<div class="cont js-cont-wrap <%=campusName%>">
	<div class="cont06">
        <% If campus_code = "CD0257" Then '중계 %>
        <h3><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter/cont06_tit.jpg" alt="많은 학생들의 선택에는 이유가 있습니다. 러셀의 윈터스쿨이 더욱 특별한 이유"></h3>
		<% Else %>
        <h3><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/cont06_tit.jpg" alt="최상위권의 선택에는 이유가 있습니다. 러셀의 윈터스쿨이 더욱 특별한 이유"></h3>
		<% End If %>
		<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/cont06_img.jpg" alt=""></div>
		<div class="main-txt">
			<p>학습 습관 형성에 <br>
				적합한 프로그램 운영과<br>
				정규반으로 연계되는<br>
				체계적인 학습 
			</p>
		</div>
		<ul class="reason-list">
        	<% If campus_code = "CD0341" Then '대전 %>
			<li>
				겨울방학 8주<br>
				프로그램으로<br>
				공백 없는 학사 일정
			</li>
        	<% Else %>
			<li>
				겨울방학 8~9주<br>
				프로그램으로<br>
				공백 없는 학사 일정
			</li>
       		<% End If %>
			<li>
				정규반으로<br>
				연계되어 수능까지<br> 
				체계적 학습
			</li>
			<li>
				학교별/수준별/단원별<br>
				맞춤 내신 강좌
			</li>
		</ul>
	</div>
	<div class="cont07">
		<h3>
			메가스터디 온&middot;오프 전문 강사진의<br>
			<strong>최상위권 수준별 맞춤 단과</strong>
		</h3>
		<div class="inner">
			<ul class="d-list">
				<li>
					<span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/balloon01.png" alt="믿을 수 있어야 하니까!"></span>
					<%=danka_txt01%>
				</li>
				<li>
					<span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/balloon02.png" alt="확실해야 하니까!"></span>
					<%=danka_txt02%>
				</li>
				<li>
					<span style="left:-7px;"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/balloon03.png" alt="나에게 맞는 학습이 필요하니까!"></span>
					<%=danka_txt03%>
				</li>
				<li>
					<span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/balloon04.png" alt="효율적이어야 하니까!"></span>
					<%=danka_txt04%>
				</li>
			</ul>
		</div>
		<!-- 선생님 롤링 슬라이드 -->
         <!--#include virtual="/intro/2025/winter/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
		<div class="inner">
			<ul class="link-list">
				<li>
        			<% If campus_code = "CD0257" Then '중계 %>
					<a href="<%=regular_url%>">
						<p>목표 성적을 만드는 단계별 커리큘럼</p>
						<h5>정규&middot;특강 단과</h5>
					</a>
					<% ElseIf campus_code = "CD0248" Then '평촌 %>
					<a href="<%=regular_url%>">
						<p>개념부터 실전까지<br>
						빈틈없는 커리큘럼으로 수능 실전 완성</p>
						<h5>고3 윈터 강좌 </h5>
					</a>
					<% Else %>
					<a href="<%=regular_url%>">
						<p>1등급을 만드는 단계별 커리큘럼</p>
						<h5>정규&middot;특강 단과</h5>
					</a>
					<% End If %>
				</li>
        		<% If campus_code <> "CD0341" and campus_code <> "CD0349" and campus_code <> "CD0343" and campus_code <> "CD0340" Then '대전/울산/코어원주/코어광주 제외 %>
				<li>
					<% If campus_code = "CD0248" Then '평촌 %>
					<a href="<%=am_url%>">
						<p>겨울방학 약점 보완&amp;실력 향상을 위한<br>
						단기집중 완성 솔루션</p>
						<h5>고1,2 윈터 강좌 </h5>
					</a>
					<% Else %>
					<a href="<%=am_url%>">
						<p>오직 N수생을 위한 평일 오전/오후 단과</p>
						<h5>AM 단과</h5>
					</a>
					<% End If %>
				</li>
				<% End If %>
			</ul>
		</div>
	</div>
	<div class="cont08">
		<div class="tit-wrap">
			<h4>
				학습 습관을 탄탄하게 만들고 <br>
				실력을 향상시키는<br>
				<strong>검증된 시기별 맞춤 콘텐츠와<br>
				집체 모의고사</strong>
			</h4>
		</div>
		<div class="inner">
			<div class="t-wrap02 type04">
				<div class="tab-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							학습계획<br>
							콘텐츠
						</div>
						<div class="swiper-slide">
							OMEGA<br>
							시리즈
						</div>
						<div class="swiper-slide">
							집체 모의고사<br>
							시리즈
						</div>
						<% If campus_code <> "CD0257" Then '중계 제외 %>
						<div class="swiper-slide">
							수학 전용 실전 콘텐츠
						</div>
						<% End If %>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 학습계획 콘텐츠 -->
						<div class="swiper-slide">
							<h5>
								효과적인 학습 습관 형성을 위한<br>
								<strong>학습 계획 콘텐츠</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<% If campus_code = "CD0341" Then '대전 %>
										<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter/con_slide01.jpg" alt="러셀 학습 플래너"></div>
										<% Else %>
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide01.jpg" alt="러셀 학습 플래너"></div>
										<% End If %>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide02.jpg" alt="러셀 일일수학 30제"></div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide03.jpg" alt="러셀 총평노트"></div>
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<p class="r-txt">
								*학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’되며,<br>
								학원별로 콘텐츠는 상이할 수 있습니다.

							</p>
						</div>
						<!-- OMEGA 시리즈 -->
						<div class="swiper-slide">
							<h5>
								처음부터 끝까지 가장 완벽한 수능 플랜<br>
								<strong>O<span>ptimum</span> MEGA<br>
								실전 모의고사 시리즈</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide04.jpg" alt="OMEGA">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;" href="/event/omega_intro/index.asp"></a>
										</div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide05.jpg" alt="OMEGA link"></div>
									</div>
								<% If campus_code <> "CD0343" Then '코어원주 제외 %>
									<% If campus_code = "CD0257" Then '중계 %>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter/con_slide06.jpg" alt="OMEGA black"></div>
									</div>
									<% Else %>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide06.jpg" alt="OMEGA black"></div>
									</div>
									<% End If %>
								<% End If %>
								<% If campus_code <> "CD0257" and campus_code <> "CD0250" and campus_code <> "CD0343" Then '중계/부천/코어원주 제외 %>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide07.jpg" alt="OMEGA blue"></div>
									</div>
								<% End If %>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide08.jpg" alt="OMEGA weekly"></div>
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<p class="r-txt">
								*학원별로 콘텐츠는 상이할 수 있습니다.
							</p>
						</div>
						<!-- 집체 모의고사 시리즈 -->
						<div class="swiper-slide">
							<h5>
								성적 향상을 위한 핵심 발판,<br>
								‘나의 위치 파악’<br>
								<strong>전국 집체 모의고사 시리즈</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide09.jpg" alt="전국 대단위 실전 모의고사">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;" href="/event/2025/jdsm/index.asp"></a>
										</div>
									</div>
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide10.jpg" alt="메가X대성 더 프리미엄 모의고사">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;" href="/intro/2022/premium/index.asp"></a>
										</div>
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<p class="r-txt">
								*학원별로 콘텐츠는 상이할 수 있습니다.
							</p>
						</div>
						<% If campus_code <> "CD0257" Then '중계 제외 %>
						<!-- 수학 전용 실전 콘텐츠 -->
						<div class="swiper-slide">
							<h5> 
								수능 수학 실력 향상을 위한<br>
								<strong>수학 전용 실전 콘텐츠</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/con_slide11.jpg" alt="ALPHA">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;"href="/event/2025/alpha/index.asp"></a>
										</div>
									</div>
								</div>
							</div>
							<p class="r-txt mt0">
								*ALPHA는 재원생 대상으로 ‘전액 지원’되며,<br>
								학원별로 콘텐츠는 상이할 수 있습니다.
							</p>
						</div>
						<% End If %>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>