<div class="cont js-cont-wrap <%=campusName%>">
	<% If campus_code = "INTRO" Then '인트로 %>
	<div class="cont01">
        <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont01_tit.png" alt=""></h3>
		<div class="inner" data-aos="fade-up">
			<!-- 입결 카운팅 -->
			<h5>역대 최다 배출 <sup>2)</sup></h5>
			<ul class="achieve-box">
				<li>
					<dl>
						<dt style="font-weight: bold;">메이저 의대</dt>
						<dd><strong class="counter" data-count="115">0</strong><span>명</span></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt style="font-weight: bold;">전국 의예과</dt>
						<dd><strong class="counter" data-count="1269">0</strong><span>명</span></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt style="font-weight: bold;">의&middot;치&middot;한&middot;약&middot;수</dt>
						<dd><strong class="counter" data-count="2220">0</strong><span>명</span></dd>
					</dl>
				</li>
				<li>
					<dl>
						<dt style="font-weight: bold;">서&middot;연&middot;고</dt>
						<dd><strong class="counter" data-count="1224">0</strong><span>명</span></dd>
					</dl>
				</li>
			</ul>
            <!-- //입결 카운팅 -->
			
			<a class="btn-common" href="<%=result_btn_url%>"><%=result_btn%></a>
			 
			<!-- 데이터 산출기준 -->
			<a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/ico_info.png" alt=""></span></a>
			<div class="layer-wrap">
				<div class="bg-mask"></div>
				<div class="layer-in">
					<p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
					※ 최종 업데이트 : 2025-03-25 기준｜2025학년도 대입에 합격한 러셀 재원생의 결과 (단과 수강생 제외/복수 대학 합격자 포함)<br>
					※ 본 결과는 최상위권 전문관(구. 양지 기숙), 자연계 전문관(구. 서초 기숙), 서의치관, 남-의대관, 여-의대관, 안성 기숙 입결 결과가 포함되어 있습니다.<br><br>

					1) 2024. 12. 06. 2025 수능 실채점 기준(국/수/탐2 만점 및 영/한 1등급 기준)<br>
					2) 2020-2025학년도 러셀에서 배출한 메이저 의대, 전국 의예과, 의학과, 의과대학, 의·치·한·약·수(석학사 통합과정 포함), 
					서울대, 연세대, 고려대 합격자 수 2025학년도 최다 배출(단과 수강생 제외/복수 대학 합격자 포함)<br>
					- 2025학년도 메이저 의대(서울대 13명, 연세대 16명, 가톨릭대 18명, 성균관대 22명, 고려대 22명, 울산대 24명)<br>
					- 서울대 243명, 연세대 418명, 고려대 563명

				</div>
			</div>
			<!-- //데이터 산출기준 -->
		</div>
	</div>
	<% End If %>
	<div class="cont02">
        <h3 data-aos="fade-up">
			<div data-aos="fade-up" class="ico-dday">
				<p><strong class="dday"></strong></p>
			</div>
			<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont02_tit.png" alt="2026학년도 대입, 더 높은 목표 달성을 위한 LAST CHANCE!">
		</h3>
		<div class="inner">
			<div class="box-chance"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont02_img.jpg" alt=""></div>
			<% If campus_code = "INTRO" Then '인트로 %>
			<p class="r-txt">* OMEGA, 전국 대단위 실전 모의고사, 메가X대성 더 프리미엄 모의고사<br>
			※설명회 및 모의고사 일정은 학원별 홈페이지에서 확인할 수 있으며,<br>
			학원 운영에 따라 변경될 수 있습니다.</p>
			<% Else %>
			<p class="r-txt">* OMEGA, 전국 대단위 실전 모의고사, 메가X대성 더 프리미엄 모의고사<br>
			※설명회 및 모의고사 일정은 학원 운영에 따라 변경될 수 있습니다.</p>
			<% End If %>

			<!-- 점검 및 분석 슬라이드 -->
			<div class="chance-slide swiper-continaer">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/chance_slide_img01.png" alt=""></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/chance_slide_img02.png" alt=""></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/chance_slide_img03.png" alt=""></div>
				</div>
				<div class="swiper-pagination chance"></div>
			</div>
		</div>
	</div>
	<div class="cont03">
        <% If campus_code = "INTRO" Then '인트로 %>
		<h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont03_tit.png" alt="빈틈없는 전략이 필요한 타이밍! 러셀 파이널 정규반 프로그램으로 최상위권 대입 성공 COMPLETE!"></h3>
        <% Else %>
        <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/cont03_tit.png" alt=""></h3>
    	<% End If %>
		<div class="inner" data-aos="fade-up">
			<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/num_01.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/num_tit01.png" alt=""></h4>
		</div>

			<div class="program-wrap">
				<div class="program-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">집체 실전 모의고사</div>
						<div class="swiper-slide">OMEGA 모의고사</div>
					</div>
				</div>
                <div class="program-slide swiper-container">
                    <div class="swiper-wrapper">
						<div class="swiper-slide">
							<h5>강도 있는 실전 수능 훈련!<br>
								<strong>집체 실전 모의고사</strong></h5>
							<div class="pro-slide pro01 swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/pro01_slide_img01.png" alt=""></div>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/pro01_slide_img02.png" alt=""></div>
									<% If campus_code = "INTRO" Then '인트로 %>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/pro01_slide_img03.png" alt=""></div>
									<% End If %>
								</div>
								<div class="swiper-pagination pro01"></div>
							</div>
						</div>
						<div class="swiper-slide">
							<h5>평가원 트렌드&middot;신유형 완벽 반영!<br>
							<strong>OMEGA 모의고사</strong></h5>
							<div class="pro-slide pro02 swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/pro02_slide_img01.png" alt=""></div>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/pro02_slide_img02.png" alt=""></div>
									<% If campus_code = "CD0257" or campus_code = "CD0250" Then '중계/부천 %>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/pro02_slide_img03.png" alt=""></div>
									<% Else %>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/pro02_slide_img03.png" alt=""></div>
									<% End If %>
								</div>
								<div class="swiper-pagination pro02"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<a class="btn-common sch-btn" href="javascript:void(0);">콘텐츠 시행 일정 확인하기</a>
			<!-- 모의고사 일정 -->
            <!-- #include virtual = "/intro/2025/final/schedule.asp" -->
            <!-- //모의고사 일정 -->

        	<p class="r-txt">
				※ 해당 콘텐츠는 유료로 시행되는 학습 콘텐츠로 <br>
				학원 정책 및 운영 상황에 따라 변경 및 조정될 수 있습니다.
			</p>

			<!-- 학생후기 -->
			<% If campus_code = "CD0247" Then '강남 %>
			<div class="s-review">
				<p>매달 응시하는 메가x대성 더 프리미엄 모의고사뿐 아니라 
					6평 전 매주 실시한 OMEGA weekly 덕분에 <strong>실전에 대한 두려움을 경감시킬 수 있었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_daeguorientalmedicine.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>대구한의대학교 한의예과 합격</strong><br>
						러셀 강남 이홍지
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0257" Then '중계 %>
			<div class="s-review">
				<p>매달 시행되었던 집체 모의고사를 통해 진지하게 실전 연습을 해 볼 수 있었고, 성적표가 자세하게 나와서 <strong>취약한 부분들을 메꾸는 데에 큰 도움이 되었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_konyang.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>건양대학교 의학과 합격</strong><br>
						러셀 중계 김나은
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0248" Then '평촌 %>
			<div class="s-review">
				<p>다양한 실전 모의고사를 제공하여 <strong>학생 스스로가 실력을 꾸준히 점검해 나갈 수 있도록 도와줍니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 경영학과 합격</strong><br>
						러셀 평촌 김윤서
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0246" or campus_code = "CD0250" Then '센텀/부천 %>
			<div class="s-review">
				<p>매월 집체 모의고사를 보는 것이 <strong>저의 실력과 전국적인 위치를 파악하는 데에 도움이 되었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chonbuk.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>전북대학교 의예과 합격</strong><br>
						러셀 재원생
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0345" Then '코어창원 %>
			<div class="s-review">
				<p>집체 모의고사를 통해 실력을 점검하고 <strong>성적표 분석을 통해 목표를 명확하게 설정</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_pusan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>부산대학교 의예과 합격</strong><br>
						러셀CORE 창원 김용준
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0346" Then '코어청주 %>
			<div class="s-review">
				<p>러셀에서는 매달 집체 모의고사를 실시했는데, 평가원 모의고사가 없는 달에도 <strong>실력을 점검할 수 있어 좋았습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 정치외교학과 합격</strong><br>
						러셀CORE 청주 김화랑
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0342" Then '대구 %>
			<div class="s-review">
				<p>한 달마다 실시하는 <strong>메가X대성 더 프리미엄 모의고사가 실력의 가늠자 역할</strong>을 해 주어 큰 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_ajou.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>아주대학교 의예과 합격</strong><br>
						러셀 대구 김규진
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0341" Then '대전 %>
			<div class="s-review">
				<p>집체 모의고사를 통해 <strong>학습 계획을 세우며 해이해지지 않고 열심히 공부할 수 있었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chungnam.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>충남대학교 의예과 합격</strong><br>
						러셀 대전 김효주
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0249" Then '영통 %>
			<div class="s-review">
				<p>매달 보았던 메가X대성 더 프리미엄 모의고사가 큰 도움이 되었던 것 같습니다. <strong>시험 문제가 다채로워서 제가 부족한 부분이 어디인지 알 수 있었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chungnam.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>충남대학교 의예과 합격</strong><br>
						러셀 영통 송민근
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0344" Then '코어전주 %>
			<div class="s-review">
				<p><strong>혼자서는 전 과목 모의고사를 실전처럼 풀 수 있는 환경을 만들기 어려운데, 러셀에서는 실전 경험을 쌓을 수 있어</strong> 좋았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_kyunghee.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>경희대학교 의예과 합격</strong><br>
						러셀CORE 전주 김하연
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0244" Then '분당 %>
			<div class="s-review">
				<p>메가x대성 더 프리미엄 모의고사가 도움이 되었습니다. <strong>많은 학생들의 성적 표본을 통해 자신의 위치를 확인</strong>하며 목표를 더 구체적으로 설정할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_sungkyunkwan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>성균관대학교 의예과 합격</strong><br>
						러셀 분당 최준영
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0349" Then '울산 %>
			<div class="s-review">
				<p>학원에서 모의고사 콘텐츠는 <strong>실전과 같은 환경에서 수능을 대비</strong>하는 데 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_ajou.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>아주대학교 의예과 합격</strong><br>
						러셀 울산 손O명
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0340" Then '코어광주 %>
			<div class="s-review">
				<p>실제 수능 시간에 맞춰 풀면서 <strong>좋은 예행연습을 할 수 있었고, 실전 경험도 많이 쌓을 수 있었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chonnam.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>전남대학교 의예과 합격</strong><br>
						러셀CORE 광주 심형주
					</dd>
				</dl>
			</div>
			<% Else %>
			<div class="s-review">
				<p>매월 메가X대성 더 프리미엄 모의고사를 보는 것이 
					<strong>저의 실력과 전국적인 위치를 파악하는 데에 
						도움이 되었습니다.</strong> 또한 파이널 시기 OMEGA 모의고사*를 풀며 
						검증된 퀄리티의 모의고사로 실력을 늘릴 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chonbuk.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>전북대학교 의예과 합격</strong><br>
						러셀 강남 이예원
					</dd>
				</dl>
			</div>
			<% End If %>
			<!-- //학생후기 -->
			
			<% If campus_code = "INTRO" Then '인트로 %>
			<p class="r-txt">* 구 QUEL 모의고사<br>
				※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% ElseIf campus_code = "CD0246" or campus_code = "CD0250" Then '센텀/부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<div class="cont04">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/num_02.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont04_tit.png" alt=""></h4>
		</div>
		<div class="inner" data-aos="fade-up">
			<ul class="d-list">
				<li>
					<%=danka_txt01%>
				</li>
				<li>
					<%=danka_txt02%>
				</li>
				<li>
					<%=danka_txt03%>
				</li>
				<li>
					<%=danka_txt04%>
				</li>
			</ul>
		</div>
		<!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/final/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
		<div class="inner">
			<ul class="link-list">
				<li>
					<a href="<%=regular_url%>">
						<p>최신 출제 경향이 반영된 파이널 모의고사</p>
						<% If campus_code = "CD0247" Then '강남 %>
						<h5>파이널 정규 단과</h5>
						<% Else %>
						<h5>파이널 정규&middot;특강 단과</h5>
						<% End If %>
					</a>
				</li>
        		<% If campus_code <> "CD0341" and campus_code <> "CD0343" and campus_code <> "CD0340" Then '대전/코어원주/코어광주 제외 %>
				<li>
					<a href="<%=am_url%>">
						<span class="label">N수 전용</span>
						<p>오직 N수생을 위한 평일 오전/오후 단과</p>
						<h5>AM 단과</h5>
					</a>
				</li>
				<% End If %>
				<li>
					<a href="<%=non_url%>">
						<p>대학별 출제 경향이 반영된 모의 논술 훈련과<br>
							개별 첨삭</p>
						<h5>대학별 논술 특강</h5>
					</a>
				</li>
			</ul>

			<!-- 학생후기 -->
			<% If campus_code = "CD0247" Then '강남 %>
			<div class="s-review">
				<p>러셀 단과는 <strong>수준 및 진도별 세심하게 커리큘럼이 
					나누어져 있어 제 상황에 꼭 필요한 수업을 
					수강</strong>할 수 있다는 장점이 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 정치외교학과 합격</strong><br>
						러셀 강남 최원녕
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0257" Then '중계 %>
			<div class="s-review">
				<p><strong>온라인 좌석 예약 시스템</strong>을 통해 미리 가서 기다리지 않고 앞자리에 앉아 수업을 들을 수 있는 점이 좋았고, <strong>풍부한 수업 자료로 수능 대비</strong>를 할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 의예과 합격</strong><br>
						러셀 중계 동나영
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0248" or campus_code="CD0246" or campus_code = "CD0250" Then '평촌/센텀/부천 %>
			<div class="s-review">
				<p>특히 <strong>파이널 강의를 듣고 학습하며 실력에 대한 자신감</strong>을 많이 얻을 수 있었던 것 같습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 의예과 합격</strong><br>
						러셀 재원생
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0345" Then '코어창원 %>
			<div class="s-review">
				<p><strong>과목별/수준별로 나에게 필요한 선생님의 강의</strong>를 한 건물 내에서 수강할 수 있는 점이 좋았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chungnam.png" alt="">
					</dt>
					<dd>
						2024학년도 <br>
						<strong>충남대학교 수의예과 합격</strong><br>
						러셀CORE 창원 백지훈
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0346" Then '코어청주 %>
			<div class="s-review">
				<p>파이널 시즌에는 단과 수강생들 다 같이 실모를 치르면서 <strong>현장감을 기르기도 하였습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_eulji.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>을지대학교 의예과 합격</strong><br>
						러셀CORE 청주 김이담
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0342" Then '대구 %>
			<div class="s-review">
				<p>파이널 기간, <strong>매주 국어, 수학 모의고사 풀이 연습을 수없이 했던 실모반</strong>이 저에게 많은 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_sungkyunkwan.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>성균관대학교 의예과 합격</strong><br>
						러셀 대구 이정빈
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0341" Then '대전 %>
			<div class="s-review">
				<p>현장 단과 선생님의 수준별 클리닉 시간이 <strong>안정적인 성적을 얻는 데 아주 큰 도움이 되었습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chungnam.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>충남대학교 수의예과 합격</strong><br>
						러셀 대전 주원호
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0249" Then '영통 %>
			<div class="s-review">
				<p>파이널 기간부터는 매주 진행되는 현장 모의고사와 과제로 나오는 모의고사가 <strong>실전 감각을 올리는 데에 도움</strong>이 많이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 정치외교학과 합격</strong><br>
						러셀 영통 신수빈
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0344" Then '코어전주 %>
			<div class="s-review">
				<p>현장에 가지 않고도 <strong>현장에서만 받을 수 있는 양질의 자료나  교재를 제공받을 수 있어</strong> 좋았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chonbuk.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>전북대학교 의예과 합격</strong><br>
						러셀CORE 전주 박준서
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0244" Then '분당 %>
			<div class="s-review">
				<p>바자관과 가까이에 있는 교실에서 듣기 때문에 <strong>이동 시간도 단축되었고, 인강에서만 볼 수 있었던 선생님들의 강의를 직접</strong> 들을 수 있어서 좋았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 공과대학 합격</strong><br>
						러셀 분당 장민서
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0349" Then '울산 %>
			<div class="s-review">
				<p>수업 이전이나 이후에 <strong>질의응답을 편하게 할 수 있어 좋았고,</strong> 공부법이나 성적에 대한 부분도 상담할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 의류학과 합격</strong><br>
						러셀 울산 안예원
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0340" Then '코어광주 %>
			<div class="s-review">
				<p>강의를 실시간으로 본다는 점뿐만 아니라 <strong>현강 자료가 그대로 전달된다는 게 좋았습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chosun.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>조선대학교 약학과 합격</strong><br>
						러셀CORE 광주 김희준
					</dd>
				</dl>
			</div>
			<% Else %>
			<div class="s-review">
				<p>러셀 단과는 <strong>검증된 강사진이 체계적인 커리큘럼으로 양질의 수업을 제공</strong>한다는 점에서 큰 장점이 있는 것 같습니다. 
					파이널 기간에 영역별 팁과 학습 방법을 많이 배울 수 있었고 특히 파이널 강의를 듣고 학습하며 실력에 대한 자신감을 많이 얻을 수 있었던 것 같습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 의과대학 합격</strong><br>
						러셀 대구 배승현
					</dd>
				</dl>
			</div>
			<% End If %>
			<!-- //학생후기 -->
			<% If campus_code = "INTRO" or campus_code = "CD0246" or campus_code = "CD0248" or campus_code = "CD0250" Then '인트로/센텀/평촌/부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% ElseIf campus_code = "CD0345" Then '코어창원 %>
			<p class="r-txt">※ 2024학년도 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<div class="cont05">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/num_03.png" alt="03"></div>
			<% If campus_code = "CD0257" Then '중계 %>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/cont05_tit.png" alt="입시 전문 담임 선생님의 파이널 맞춤 관리"></h4>
			<% Else %>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/cont05_tit.png" alt="최상위권 전문 입시 담임 선생님의 파이널 맞춤 관리"></h4>
			<% End If %>
		</div>
		<div class="inner" data-aos="fade-up">
			<div class="t-wrap type01">
				<div class="tab-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							입시 관리
						</div>
						<div class="swiper-slide">
							학습 관리
						</div>
						<div class="swiper-slide">
							생활 관리
						</div>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 입시관리 -->
						<div class="swiper-slide">
							<% If campus_code = "INTRO" or campus_code = "CD0246" Then '인트로/센텀 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/opti_slide01.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/opti_slide01.jpg" alt=""></div>
							<% End If %>
							<h5>
								개인별 수시/정시 맞춤 지원 전략 제시
							</h5>
							<ul class="list-dot">
								<li>9월 모의평가 성적 분석을 통한 <strong>수시 컨설팅</strong> 및<br>
									수능 성적 예측으로 <strong>정시 지원 대학 파악</strong></li>
								<li>수능 이후 가채점/실채점 성적 분석을 통해<br>
									<strong>개인별 맞춤 정시 컨설팅 진행</strong></li>
							</ul>
						</div>
						<!-- 학습관리 -->
						<div class="swiper-slide">
							<% If campus_code = "INTRO" or campus_code = "CD0246" Then '인트로/센텀 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/opti_slide02.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/opti_slide02.jpg" alt=""></div>
							<% End If %>
							<h5>
								개인 성적 분석을 통한 최종 학습 전략 수립
							</h5>
							<ul class="list-dot">
								<li>재원 시작부터 9월 모의평가까지의 성적 분석 등<br>
									<strong>수능 고득점을 위한 학습 상담 진행</strong></li>
								<li><strong>실전과 유사한 환경에서 집체 모의고사 진행</strong>으로<br>
									실전 감각 극대화</li>
							</ul>
						</div>
						<!-- 생활관리 -->
						<div class="swiper-slide">
							<% If campus_code = "INTRO" or campus_code = "CD0246" or campus_code = "CD0341" or campus_code = "CD0250" Then '인트로/센텀/대전/부천 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/opti_slide03.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final/opti_slide03.jpg" alt=""></div>
							<% End If %>
							<h5>
								마지막까지 흐트러지지 않는 철저한 관리
							</h5>
							<ul class="list-dot">
								<li>마지막까지 면학 분위기가 유지될 수 있도록<br>
									<strong>강력한 관리 및 태도 점수 운영</strong></li>
								<li>수능까지 최상의 컨디션을 유지할 수 있도록<br>
									<strong>1:1 정신적 멘토링 진행</strong></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
        	<% If campus_code = "INTRO" Then '인트로 %>
			<p class="r-txt">
				※ 학원별 관리 프로그램 내용은 상이하므로 학원별 페이지를 <br>
				확인하시기 바랍니다.
			</p>
			<% End If %>

			<!-- 학생후기 -->
			<% If campus_code = "CD0247" Then '강남 %>
			<div class="s-review">
				<p>담임 선생님이 매 모의고사 이후 <strong>1:1 상담을 통해 학습 방향에 대해 조언해 주시고, 다양한 입시 정보를 제공해 주셔서</strong> 원서접수에 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_yonsei.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>연세대학교 통합디자인과 합격</strong><br>
						러셀 강남 신재윤
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0257" Then '중계 %>
			<div class="s-review">
				<p>담임 선생님께서는 꾸준히 생활 관리를 할 수 있도록 연락을 주시며 신경을 써 주셨습니다. 
					또한 <strong>입시 상담을 진행해 주시며 모르는 점을 해결할 수 있었고 목표를 구체화</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_gachon.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>가천대학교 의예과 합격</strong><br>
						러셀 중계 임건빈
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0248" Then '평촌 %>
			<div class="s-review">
				<p>담임 선생님께서 입시 상황에 맞는 알맞은 상담으로 
					<strong>수시 전략과 앞으로 공부의 방향성에 대해 설정</strong>할 수 있게 되어 좋았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_hanyang.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>한양대학교 약학과 합격</strong><br>
						러셀 평촌 정민재
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0246" or campus_code = "CD0250" Then '센텀/부천 %>
			<div class="s-review">
				<p><strong>담임 선생님은 원서 접수 시즌에 정말 큰 도움이 되었습니다. 평소 성적 등을 파악</strong>하여 논술 카드를 추천해 주셨습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_seoul.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>서울대학교 재료공학부 합격</strong><br>
						러셀 재원생
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0345" Then '코어창원 %>
			<div class="s-review">
				<p>학습 계획을 짜는 데 어려움이 있었는데, <strong>담임 선생님과의 상담을 통해 체계적인 공부 방향을 설정</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_donga.png" alt="">
					</dt>
					<dd>
						2024학년도 <br>
						<strong>동아대학교 의예과 합격</strong><br>
						러셀CORE 창원 제현수
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0346" Then '코어청주 %>
			<div class="s-review">
				<p>담임 선생님께서 저에게 유리한 전형을 <strong>객관적인 지표를 통해 추천</strong>해 주셨고, 목표하던 대학에 합격할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 철학과 합격</strong><br>
						러셀CORE 청주 최승연
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0342" Then '대구 %>
			<div class="s-review">
				<p>공부가 힘들어질 때쯤 <strong>담임 선생님께서 그에 대해 알고 조언을 해 주셔서 마음을 다잡는 데</strong> 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_kyunghee.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>경희대학교 치의예과 합격</strong><br>
						러셀 대구 김수현
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0341" Then '대전 %>
			<div class="s-review">
				<p><strong>담임 선생님의 정신적인 지지</strong> 덕분에 <strong>수능 전까지 멘탈을 잘 유지하며 끝까지 집중</strong>할 수 있었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_konyang.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>건양대학교 의학과 합격</strong><br>
						러셀 대전 이채린
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0249" Then '영통 %>
			<div class="s-review">
				<p>모의고사 성적이 나올 때마다 <strong>담임 선생님과 1:1 상담을 통해서 현재 상태에 대한 분석과 학습 방향을 교정</strong>해 주셔서 수능 때 더 좋은 성적을 얻을 수 있었습니다.</p>
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
			<% ElseIf campus_code = "CD0344" Then '코어전주 %>
			<div class="s-review">
				<p><strong>지칠 때마다 힘이 돼 주던 담임 선생님의 따뜻한 말들이</strong> 아직도 기억에 오래 남습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_wonkwang.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>원광대학교 의예과 합격</strong><br>
						러셀CORE 전주 임석민
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0244" Then '분당 %>
			<div class="s-review">
				<p><strong>심리적인 부분에 있어서까지 고민을 들어주시고 항상 친절하게 답변해 주셔서</strong> 수험생활 동안 많은 도움을 받았습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_seoul.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>서울대학교 의예과 합격</strong><br>
						러셀 분당 김기민
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0349" Then '울산 %>
			<div class="s-review">
				<p>수능 이후 원서 지원까지 <strong>담임 선생님께서 끝까지 합격하기를 도와주셔서,</strong> 정보가 중요한 원서접수에 큰 도움이 되었습니다.</p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_korea.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>고려대학교 전기전자공학부 합격</strong><br>
						러셀 울산 OOO
					</dd>
				</dl>
			</div>
			<% ElseIf campus_code = "CD0340" Then '코어광주 %>
			<div class="s-review">
				<p>바자관 앞에 담임 선생님이 계셔서 어려움이나 고민이 생기면 <strong>친절하게 상담해 주셔서 수험 기간 중 의지가 많이 됩니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_chonnam.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>전남대학교 약학과 합격</strong><br>
						러셀CORE 광주 강성현
					</dd>
				</dl>
			</div>
			<% Else %>
			<div class="s-review">
				<p><strong>담임 선생님은 원서 접수 시즌에 정말 큰 도움이 되었습니다. 평소 모의고사 성적 등을 통해 제
					특성을 파악</strong>하여 저에게 적격인 6장의 논술
					카드를 추천해 주셨습니다. 평소에도 칭찬을 많이 해 주시는 등 <strong>수험 생활 동안 자칫 떨어질 수
					있는 자존감을 채워 주셨습니다.</strong></p>
				<dl>
					<dt>
						<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/logo_seoul.png" alt="">
					</dt>
					<dd>
						2025학년도 <br>
						<strong>서울대학교 재료공학부 합격</strong><br>
						러셀 부천 이유나
					</dd>
				</dl>
			</div>
			<% End If %>
			<!-- //학생후기 -->

			<% If campus_code = "INTRO" or campus_code = "CD0246" or campus_code = "CD0250" Then '인트로/센텀/부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% ElseIf campus_code = "CD0345" Then '코어창원 %>
			<p class="r-txt">※ 2024학년도 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
</div>