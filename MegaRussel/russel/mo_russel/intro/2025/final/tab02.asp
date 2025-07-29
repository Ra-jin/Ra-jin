<div class="<%=campusName%>">
	<div class="cont06">
        <div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/num_04.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont06_tit.png" alt=""></h4>
		</div>
		<% If russelCore = "1" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" or campus_code = "CD0249" or campus_code = "CD0250" or campus_code = "CD0244" Then '코어/대구/울산/대전/영통/부천/분당 %>
		<a data-aos="fade-down" class="i-bus" href="/info/schoolBus.asp">
			<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/ico_bus.png" alt="학원 전용 셔틀버스 운영">
		</a>
		<% End If %>
		<div class="inner" data-aos="fade-up">
			<% If russelCore = "1" or campus_code = "CD0248" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" or campus_code = "CD0244" Then '코어/평촌/대구/울산/대전/분당 %>
			<div class="t-wrap type02 core">
			<% Else %>
			<div class="t-wrap type02">
			<% End If %>
				<div class="tab-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							집단적인<br>면학 분위기
						</div>
						<div class="swiper-slide">
							충분한<br>자습 시간
						</div>
						<div class="swiper-slide">
							학습 동선<br>최소화
						</div>
						<% If russelCore = "1" or campus_code = "CD0248" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" or campus_code = "CD0244" Then '코어/평촌/대구/울산/대전/분당 %>
						<div class="swiper-slide">
							<%=tab_navi04%>
						</div>
						<% End If %>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 집단적인 면학 분위기 -->
						<div class="swiper-slide">
							<% If campus_code = "INTRO" or campus_code = "CD0248" or campus_code = "CD0246" or campus_code = "CD0341" or campus_code = "CD0344" or campus_code = "CD0244" or campus_code = "CD0340" Then '인트로/평촌/센텀/대전/코어전주/분당/코어광주 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/program_slide01.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/program_slide01.jpg" alt=""></div>
							<% End If %>
							<h5>
								<% If campus_code = "CD0257" Then '중계 %>
								학생들이 모여 경쟁하는 <br>
								집단적인 면학 분위기
								<% Else %>
								최상위권이 모여 경쟁하는 <br>
								집단적인 면학 분위기
								<% End If %>
							</h5>
							<ul class="list-dot">
								<li><strong>담임 선생님의 관리가 이루어지는 환경 속 <br>
									개방형 구조</strong>로 재원생들의 학구열이 <br>
									학습 동기로 부여</li>
							</ul>
						</div>
						<!-- 충분한 자습 시간 -->
						<div class="swiper-slide">
							<% If campus_code = "INTRO" or campus_code = "CD0248" or campus_code = "CD0246" or campus_code = "CD0345"  or campus_code = "CD0346" or campus_code = "CD0342" or campus_code = "CD0341" or campus_code = "CD0249" or campus_code = "CD0244" or campus_code = "CD0340" Then '인트로/평촌/센텀/코어창원/코어청주/대구/대전/영통/분당/코어광주 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/program_slide02.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/program_slide02.jpg" alt=""></div>
							<% End If %>
							<h5>
								수능 시간표와 동일한<br>
								표준 시간표 운영
							</h5>
							<ul class="list-dot">
								<li>수능 시간표와 동일한 표준 시간표로 <strong>실전<br>
									감각을 극대화하고 충분한 자습 시간을 확보</strong></li>
							</ul>
						</div>
						<!-- 학습 동선 최소화 -->
						<div class="swiper-slide">
							<% If campus_code = "INTRO" or campus_code = "CD0248" or campus_code = "CD0246" Then '인트로/평촌/센텀 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/program_slide03.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/program_slide03.jpg" alt=""></div>
							<% End If %>
							<h5>
								낭비하는 시간 없이<br>
								학습 동선 최소화
							</h5>
							<ul class="list-dot">
								<li>한 건물 내에서 강의실-바자관-<%=baja_txt%>을<br>
									한 번에 해결하여 <strong>이동에 낭비되는 시간 최소화</strong></li>
							</ul>
						</div>
						<% If russelCore = "1" or campus_code = "CD0248" or campus_code = "CD0342" or campus_code = "CD0349" or campus_code = "CD0341" or campus_code = "CD0244" Then '코어/평촌/대구/울산/대전/분당 %>
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
			<% If campus_code = "INTRO" Then '인트로 %>
			<p class="r-txt">※ 각 학원별로 시간표, 시설 및 운영 방법은 상이할 수 있습니다.</p>
			<% End If %>

			<!-- 학생후기 -->
			<% If campus_code = "CD0247" Then '강남 %>
			<div class="s-review">
				<p>바자관 자습 시간이 수능 시간표에 맞추어져 있어서 <strong>수능 리듬을 형성하는 데에 도움이 되었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_seoul.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>서울대학교 첨단융합학부 합격</strong><br>
						러셀 강남 원재희
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0257" Then '중계 %>
			<div class="s-review">
				<p>바자관의 장점은 <strong>학습 환경이 다 갖춰져 있다는 점</strong>입니다.
					책상도 넓고 수능 시간대로 시간표도 형성돼 있고 주변에 공부하는 사람들이 있어서 자극도 받을 수 있습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_dankook.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>단국대학교 의예과 합격</strong><br>
						러셀 중계 김태형
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0248" Then '평촌 %>
			<div class="s-review">
				<p>바자관은 <strong>개방형 구조이기에 열심히 공부하는
					모습이 바로 보였기 때문에</strong> 저도 같이 집중하여 공부할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_inha.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>인하대학교 의예과 합격</strong><br>
						러셀 평촌 선현우
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0246" or campus_code = "CD0250" Then '센텀/부천 %>
			<div class="s-review">
				<p>수능 시간표대로 공부를 하여서 실전 모의고사에 집중하기 쉬웠고, <strong>공부 리듬을 형성하는 데 큰 도움</strong>이 되었습니다.</p>
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
			<% ElseIf campus_code = "CD0345" Then '코어창원 %>
			<div class="s-review">
				<p>학원 분위기 및 출석 등에 대한 관리를 통해 <strong>공부할 수 있는 환경이 잘 조성</strong>되어서 좋았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_soonchunhyang.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>순천향대학교 의예과 합격</strong><br>
						러셀CORE 창원 신현우
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0346" Then '코어청주 %>
			<div class="s-review">
				<p>바자관에서 학업에 열중하는 친구들을 보며 저 또한 매일 <strong>꾸준함을 가지고 공부에만 집중</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_daejeon.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>대전대학교 한의예과 합격</strong><br>
						러셀CORE 청주 김경진
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0342" Then '대구 %>
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
			<% ElseIf campus_code = "CD0344" Then '코어전주 %>
			<div class="s-review">
				<p>바자관에는 공부를 하고자 하는 친구들로 가득 차 있습니다. <strong>주위를 보며 자극을 받고 공부를 이어갈 수 있었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_inje.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>인제대학교 의예과 합격</strong><br>
						러셀CORE 전주 구정모
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0244" Then '분당 %>
			<div class="s-review">
				<p>매주 같은 시간에 공부를 하면서 한 주에 할 공부의 양을 정할 수 있었고, <strong>이를 통해 공부 루틴을 형성</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 의예과 합격</strong><br>
						러셀 분당 조한준
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
				<p>수능 시간표대로 공부를 하여서 실전 모의고사에 집중하기
				쉬웠고, <strong>공부 리듬을 형성하는 데 큰 도움</strong>이 되었습니다.
				또한 집단적인  면학 분위기가 좋아 <strong>공부에 집중하는 것을 방해하는 요소가 현저하게 적었습니다.</strong>
				</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 의예과 합격</strong><br>
						러셀 영통 임희수
					</dd>
				</dl>
			</div>
			<% End If %>
			<!-- //학생후기 -->

			<% If campus_code = "INTRO" or campus_code = "CD0246" or campus_code = "CD0250" Then '인트로/센텀/부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<% If campus_code <> "CD0247" and campus_code <> "CD0249" and campus_code <> "CD0250" and campus_code <> "CD0244"  Then '강남/영통/부천/분당 제외 %>
	<div class="cont07">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/num_05.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont07_tit.png" alt=""></h4>
		</div>
		<div class="inner" data-aos="fade-up">
			<div class="img-box">
				<% If campus_code = "CD0257" or campus_code = "CD0248" or campus_code = "CD0346" or campus_code = "CD0342" or campus_code = "CD0341" or campus_code = "CD0349" Then '중계/평촌/코어청주/대구/대전/울산 %>
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

			<% If campus_code = "INTRO" or campus_code = "CD0247" Then '인트로/강남 %>
			<p class="r-txt">※ 해당 프로그램은 학원 운영 상황에 따라 미운영될 수 있으므로,<br>
				학원별 페이지에서 확인하시기 바랍니다.</p>
			<% End If %>
			
			<!-- 학생후기 -->
			 <% If campus_code = "INTRO" Then '인트로 %>
			<div class="s-review">
				<p>실전 모의고사를 통해 <strong>전 과목을 실제 수능 시간에 맞춰 다 같이 풀면서 실전 감각을 유지</strong>할 수
					있었습니다. 또한 각자 원하는 모의고사를 정해 <strong>다 같이 모여서 시간에 맞춰 풀어 보며 긴장감
					있게 실전 연습을 할 수 있어서</strong> 불안함을 해소할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_sungkyunkwan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>성균관대학교 의예과 합격</strong><br>
						러셀 분당 권인경
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0257" Then '중계 %>
			<div class="s-review">
				<p>전 과목을 실제 수능 시간에 맞춰 풀면서 <strong>실전 경험을 쌓을 수 있었을 뿐만 아니라 시간 관리를 어떻게 해야 하는지, 
					시험 전반적인 컨디션 관리를 어떻게 해야 하는지</strong>를 익힐 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_dongguk.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>동국대학교 의예과 합격</strong><br>
						러셀 중계 정지안
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0248" Then '평촌 %>
			<div class="s-review">
				<p>모의고사를 보는 것이 <strong>실제 수능과 동일한 시간, 분위기로 실시되기 때문에 실전 연습에 도움</strong>이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 의예과 합격</strong><br>
						러셀 평촌 유현우
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0346" Then '코어청주 %>
			<div class="s-review">
				<p><strong>실전과 같은 환경</strong>에서 모의고사를 풀고, 시험 운영 과정을 복기하며 <strong>시간을 줄이는 연습</strong>을 할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 화학과 합격</strong><br>
						러셀CORE 청주 신혁준
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0342" Then '대구 %>
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
			
			<% If campus_code = "INTRO" or campus_code = "CD0246" or campus_code = "CD0345" or campus_code = "CD0250" or campus_code = "CD0340" or campus_code = "CD0344" Then '인트로/센텀/코어창원/부천/코어광주/코어전주 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<% End If %>
	<div class="bottom-txt">
		<% If campus_code = "CD0257" Then '중계 %>
		<p>
			<%=txtCampus%> 파이널 정규반에서 <br>
			최종 목표를 향한 <br>
			마지막 기회를 잡으세요!
		</p>
		<% ElseIf campus_code = "CD0246" Then '센텀 %>
		<p>
			<%=txtCampus%> 파이널 N수 정규반에서 <br>
			최상위권 목표를 향한 <br>
			마지막 기회를 잡으세요!
		</p>
		<% Else %>
		<p>
			<%=txtCampus%> 파이널 정규반에서 <br>
			최상위권 목표를 향한 <br>
			마지막 기회를 잡으세요!
		</p>
		<% End If %>
	</div>
</div>