<div class="<%=campusName%>">
	<div class="cont05">
        <div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/num_04.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/cont05_tit.png" alt=""></h4>
		</div>
		<% If campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" or campus_code = "CD0249" or campus_code = "CD0250" or campus_code = "CD0340" Then '대구/울산/대전/영통/부천/코어광주 %>
		<a data-aos="fade-down" class="i-bus" href="/info/schoolBus.asp">
			<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/ico_bus.png" alt="학원 전용 셔틀버스 운영">
		</a>
		<% End If %>
		<div class="inner" data-aos="fade-up">
			<% If russelCore = "1" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" Then '코어/대구/울산/대전 %>
			<div class="t-wrap type02 core">
			<% Else %>
			<div class="t-wrap type02">
			<% End If %>
				<div class="tab-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<% If campus_code = "CD0249" Then '영통 %>
							종합반의<br>성적 향상
							<% Else %>
							최소한의<br>의무 수업
							<% End If %>
						</div>
						<div class="swiper-slide">
							집단적인<br>면학 분위기
						</div>
						<div class="swiper-slide">
							학습 동선<br>최소화
						</div>
						<% If russelCore = "1" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" Then '코어/대구/울산/대전 %>
						<div class="swiper-slide">
							<%=tab_navi04%>
						</div>
						<% End If %>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 최소한의 의무 수업 -->
						<div class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final_overall/program_slide01.jpg" alt=""></div>
							<% If campus_code = "CD0249" Then '영통 %>
							<h5>2024-25 재수종합반<br>
								국수탐 백분위 상승률</h5>
							<% Else %>
							<h5>
								최소한의 의무 수업으로<br>
								충분한 자습시간이<br>
								확보되는 슬림한 종합반
							</h5>
							<% End If %>
							<% If campus_code = "CD0341" Then '대전 %>
							<ul class="list-dot">
								<li><strong>주 14T, 꼭 필요한 핵심 수업 구성</strong>으로<br>
									기존 재수종합반<sup class="f10">1)</sup> 의무 수업 대비<br>
									최대 66%<sup class="f10">2)</sup> 축소</li>
								<li>기존 재수종합반<sup class="f10">1)</sup> 자습 시간 대비<br>
									최대 60%<sup class="f10">3)</sup>증가한 <strong>주 74T* 충분한 자습 시간</strong></li>
							</ul>
							<ul class="list-base">
								<li>1) 과거 자사 재수종합반 기준</li>
								<li>2) 기존 종합반 의무 수업 42T 대비 러셀 종합반 의무 수업 <br>
									14T 비교 시 수치</li>
								<li>3) 기존 종합반 자습 시간 46T 대비 러셀 종합반<br>
									자습 시간 74T 비교<br>
									* 일주일 88T 기준으로 비교, 및 선택 자습 시간도 포함<br>
									※ 실제 학원 운영 상황에 따라 변경될 수 있습니다.</li>
							</ul>
							<% ElseIf campus_code = "CD0249" Then '영통 %>
							<% ElseIf campus_code = "CD0250" or campus_code = "CD0349" Then '부천/울산 %>
							<ul class="list-dot">
								<li><strong>주 21T, 꼭 필요한 핵심 수업 구성</strong>으로<br>
									기존 재수종합반<sup class="f10">1)</sup> 의무 수업 대비<br>
									최대 50%<sup class="f10">2)</sup> 축소</li>
								<li>기존 재수종합반<sup class="f10">1)</sup> 자습 시간 대비<br>
									최대 45%<sup class="f10">3)</sup>증가한 <strong>주 67T* 충분한 자습 시간</strong></li>
							</ul>
							<ul class="list-base">
								<li>1) 과거 자사 재수종합반 기준</li>
								<li>2) 기존 종합반 의무 수업 42T 대비 러셀 종합반<br>
									의무 수업 21T 비교 시 수치</li>
								<li>3) 기존 종합반 자습 시간 46T 대비 러셀 종합반<br>
									자습 시간 67T 비교</li>
								<li>* 일주일 88T 기준으로 비교, 및 선택 자습 시간도 포함<br>
									※ 실제 학원 운영 상황에 따라 변경될 수 있습니다.</li>
							</ul>
							<% Else %>
							<ul class="list-dot">
								<li><strong>주 17.5T, 꼭 필요한 핵심 수업 구성</strong>으로<br>
									기존 재수종합반<sup class="f10">1)</sup> 의무 수업 대비<br>
									최대 58%<sup class="f10">2)</sup> 축소</li>
								<li>기존 재수종합반<sup class="f10">1)</sup> 자습 시간 대비<br>
									최대 53%<sup class="f10">3)</sup>증가한 <strong>주 70.5T* 충분한 자습 시간</strong></li>
							</ul>
							<ul class="list-base">
								<li>1) 과거 자사 재수종합반 기준</li>
								<li>2) 기존 종합반 의무 수업 42T 대비 러셀 종합반<br>
									의무 수업 17.5T 비교 시 수치</li>
								<li>3) 기존 종합반 자습 시간 46T 대비 러셀 종합반<br>
									자습 시간 70.5T 비교<br>
									* 일주일 88T 기준으로 비교, 및 선택 자습 시간도 포함<br>
									※ 실제 학원 운영 상황에 따라 변경될 수 있습니다.</li>
							</ul>
							<% End If %>
						</div>
						<!-- 집단적인 면학 분위기 -->
						<div class="swiper-slide">
							<% If campus_code = "CD0341" or campus_code = "CD0250" or campus_code = "CD0340" Then '대전/부천/코어광주 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/program_slide01.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final_overall/program_slide02.jpg" alt=""></div>
							<% End If %>
							<h5>
								최상위권이 모여 경쟁하는<br>
								집단적인 면학 분위기
							</h5>
							<ul class="list-dot">
								<li><strong>담임 선생님의 관리가 이루어지는 환경 속 <br>
									개방형 구조</strong>로 재원생들의 학구열이 <br>
									학습 동기로 부여</li>
							</ul>
						</div>
						<!-- 학습 동선 최소화 -->
						<div class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/program_slide03.jpg" alt=""></div>
							<h5>
								낭비하는 시간 없이<br>
								학습 동선 최소화
							</h5>
							<ul class="list-dot">
								<li>한 건물 내에서 강의실-바자관-<%=baja_txt%>을<br>
									한 번에 해결하여 <strong>이동에 낭비되는 시간 최소화</strong></li>
							</ul>
						</div>
						<% If russelCore = "1" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" Then '코어/대구/울산/대전 %>
						<!-- 자체식당 운영 -->
						<div class="swiper-slide">
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/program_slide04.jpg" alt=""></div>
							<h5>
								건강과 안전을 위한<br>
								<%=baja_txt02%> 운영
							</h5>
							<ul class="list-dot">
								<li><%=baja_txt02%> 운영으로 <strong>균형 잡힌 식단 유지 및<br>
									외부와의 접촉 최소화</strong>하여 학습에 몰입</li>
							</ul>
						</div>
						<% End If %>
					</div>
				</div>
			</div>

			<!-- 학생후기 -->
			<% If campus_code = "CD0342" Then '대구 %>
			<div class="s-review">
				<p>혼자 공부하다 보면 해이해질 수도 있었을 텐데 학원을 다니다 보니 <strong>공부하는 습관이 잡혀서 좋았던 것 같습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_sungkyunkwan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>성균관대학교 의예과 합격</strong><br>
						러셀 대구 서혜리
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0341" Then '대전 %>
			<div class="s-review">
				<p>바자관의 집단적인 면학 분위기 덕분에 <strong>항상 집중할 수 있는 공부 리듬을 형성</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_ajou.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>아주대학교 의학과 합격</strong><br>
						러셀 대전 신유찬
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0249" Then '영통 %>
			<div class="s-review">
				<p>바자관의 장점은 <strong>좋은 면학 분위기</strong>이며, <strong>매일 표준 시간표로 운영되어 실제 수능날처럼 공부 리듬을 형성</strong>하는 데 큰 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_seoul.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>서울대학교 약학계열 합격</strong><br>
						러셀 영통 심지윤
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0250" Then '부천 %>
			<div class="s-review">
				<p><strong>한 건물에서 교재만 가지고 이동하며 강의와 자습을 모두 해결</strong>할 수 있어서 시간 절약에 도움이 되었고 체력도 아낄 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 의예과 합격</strong><br>
						러셀 재원생
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0349" Then '울산 %>
			<div class="s-review">
				<p><strong>다같이 공부를 열심히 하는 분위기</strong>라서 같이 공부하게 되는 효과가 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_pusan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>부산대학교 약학과 합격</strong><br>
						러셀 울산 김OO
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0340" Then '코어광주 %>
			<div class="s-review">
				<p>바른공부 자습전용관에서 <strong>규칙적으로 오랜 시간 집중하며</strong> 중요한 기간을 보람차게 쓸 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_catholic.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>가톨릭대학교 의예과 합격</strong><br>
						러셀CORE 광주 김도윤
					</dd>
				</dl>
			</div>
			<% Else %>
			<div class="s-review">
				<p><strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감 있게 실전 연습</strong>을 할 수 있어서 불안함을 해소할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_sungkyunkwan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>성균관대학교 의예과 합격</strong><br>
						러셀 재원생
					</dd>
				</dl>
			</div>
			<% End If %>
			<!-- //학생후기 -->

			<% If campus_code = "CD0250" Then '부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<% If campus_code <> "CD0249" and campus_code <> "CD0250" Then '영통/부천 제외 %>
	<div class="cont06">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/num_05.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/cont06_tit.png" alt=""></h4>
		</div>
		<div class="inner" data-aos="fade-up">
			<div class="img-box">
				<% If campus_code = "CD0342" or campus_code = "CD0341" or campus_code = "CD0349" Then '대구/대전/울산 %>
				<p><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/cont07_img.png" alt=""></p>
				<% Else %>
				<p><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont07_img.png" alt=""></p>
				<% End If %>
				<div>
					<ul class="list-dot">
						<li><strong>감독관 배치, OMR 마킹, 타종 등 현장감 있는 <br>
							고사장</strong>에서 학원 자체 모의고사 제공 또는 <br>
							개인별 풀 모의고사 지참하여 실전 훈련 진행</li>
						<li>9월 모의평가 대비 사전 훈련장 진행 및<br>
							<strong>9월 모의평가 이후 수능까지 정규 훈련장 운영</strong></li>
						<li>N수생뿐만 아니라 <strong>고3 재학생을 위해<br>
							주말 훈련장 운영</strong></li>
					</ul>
				</div>
			</div>
			
			<!-- 학생후기 -->
			<% If campus_code = "CD0342" Then '대구 %>
			<div class="s-review">
				<p><strong>매달 모의고사를 진행해 풀 모의고사의 실전 감각을 유지</strong>할 수 있어 좋았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_sungkyunkwan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>성균관대학교 약학과 합격</strong><br>
						러셀 대구 신윤
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0341" Then '대전 %>
			<div class="s-review">
				<p><strong>수능과 유사한 환경에서 풀어 보는 경험</strong>을 통해 <strong>수능장에서 실수 없이 실력을 충분히 발휘</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chungnam.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>충남대학교 의예과 합격</strong><br>
						러셀 대전 권민준
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0349" Then '울산 %>
			<div class="s-review">
				<p>학원에서 실전 모의고사를 <strong>수능과 유사한 고사장에서 경험할 수 있다는 점</strong>이 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 경제학과 합격</strong><br>
						러셀 울산 OOO
					</dd>
				</dl>
			</div>
			<% Else %>
			<div class="s-review">
				<p><strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감 있게 실전 연습</strong>을 할 수 있어서 불안함을 해소할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_sungkyunkwan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>성균관대학교 의예과 합격</strong><br>
						러셀 재원생
					</dd>
				</dl>
			</div>
			<% End If %>
			<!-- //학생후기 -->
			<% If campus_code = "CD0340" Then '코어광주 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<% End If %>
	<div class="bottom-txt">
		<p>
			<%=txtCampus%> 파이널 종합반에서 <br>
			최상위권 목표를 향한 <br>
			마지막 기회를 잡으세요!
		</p>
	</div>
</div>