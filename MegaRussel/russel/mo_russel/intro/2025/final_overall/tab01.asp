<div class="cont js-cont-wrap <%=campusName%>">
	<div class="cont01">
        <h3 data-aos="fade-up">
			<div data-aos="fade-up" class="ico-dday">
				<p><strong class="dday"></strong></p>
			</div>
			<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/cont01_tit.png" alt="2026학년도 대입, 더 높은 목표 달성을 위한 LAST CHANCE!">
		</h3>
		<div class="inner">
			<div class="box-chance"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/cont02_img.jpg" alt=""></div>
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
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/chance_slide_img01.png" alt=""></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/chance_slide_img02.png" alt=""></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/chance_slide_img03.png" alt=""></div>
				</div>
				<div class="swiper-pagination chance"></div>
			</div>
		</div>
	</div>
	<div class="cont02">
        <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final_overall/cont02_tit.png" alt=""></h3>
		<div class="inner" data-aos="fade-up">
			<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final/num_01.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/num_tit01.png" alt=""></h4>
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
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/pro01_slide_img01.png" alt=""></div>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/pro01_slide_img02.png" alt=""></div>
								</div>
								<div class="swiper-pagination pro01"></div>
							</div>
						</div>
						<div class="swiper-slide">
							<h5>평가원 트렌드&middot;신유형 완벽 반영!<br>
							<strong>OMEGA 모의고사</strong></h5>
							<div class="pro-slide pro02 swiper-container">
								<div class="swiper-wrapper">
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/pro02_slide_img01.png" alt=""></div>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/pro02_slide_img02.png" alt=""></div>
									<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/pro02_slide_img03.png" alt=""></div>
								</div>
								<div class="swiper-pagination pro02"></div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<a class="btn-common sch-btn" href="javascript:void(0);">콘텐츠 시행 일정 확인하기</a>
			<!-- 모의고사 일정 -->
            <!-- #include virtual = "/intro/2025/final_overall/schedule.asp" -->
            <!-- //모의고사 일정 -->

        	<p class="r-txt">
				※ 해당 콘텐츠는 유료로 시행되는 학습 콘텐츠로 <br>
				학원 정책 및 운영 상황에 따라 변경 및 조정될 수 있습니다.
			</p>

			<!-- 학생후기 -->
			<% If campus_code = "CD0342" Then '대구 %>
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
			<% ElseIf campus_code = "CD0250" Then '부천 %>
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
			<% End If %>
			<!-- //학생후기 -->
			
			<% If campus_code = "CD0250" Then '부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<div class="cont03">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/num_02.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/cont03_tit.png" alt=""></h4>
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

		<% If campus_code = "CD0250" or campus_code = "CD0341" Then '부천/대전 %>
		<div class="inner">
			<p class="mt30"><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final_overall/teacher_img.jpg" alt="강사진"></p>
            <p class="r-txt">* 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
        </div>
		<% Else %>
		<!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/final_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
		<% End If %>

		<div class="inner">
			<!-- 학생후기 -->
			<% If campus_code = "CD0342" Then '대구 %>
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
			<% ElseIf campus_code = "CD0250" Then '부천 %>
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
			<% End If %>
			<!-- //학생후기 -->

			<% If campus_code = "CD0250" Then '부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
	<div class="cont04">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/num_03.png" alt="03"></div>
			<h4><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/final_overall/cont04_tit.png" alt="최상위권 전문 입시 담임 선생님의 파이널 맞춤관리"></h4>
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
							<% If campus_code = "CD0249" or campus_code ="CD0250" Then '영통/부천 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final_overall/opti_slide01.jpg" alt=""></div>
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
							<% If campus_code = "CD0249" or campus_code ="CD0250" Then '영통/부천 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/final_overall/opti_slide02.jpg" alt=""></div>
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
							<% If campus_code = "INTRO" or campus_code = "CD0246" or campus_code = "CD0341" or campus_code ="CD0250" Then '인트로/센텀/대전/부천 %>
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

			<!-- 학생후기 -->
			<% If campus_code = "CD0342" Then '대구 %>
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
			<% ElseIf campus_code = "CD0250" Then '부천 %>
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
			<% End If %>
			<!-- //학생후기 -->

			<% If campus_code = "CD0250" Then '부천 %>
			<p class="r-txt">※ 2025학년도 러셀 전체 학원 합격생 후기 중 일부 발췌</p>
			<% Else %>
			<p class="r-txt">※ 2025학년도 합격생 후기 중 일부 발췌</p>
			<% End If %>
		</div>
	</div>
</div>