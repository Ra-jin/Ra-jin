<div class="cont js-cont <%=campusName%>">
	<div class="cont07">
		<h3>
			<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer_overall/cont07_tit.png" alt="여러분을 최상위권 대입 성공으로 이끌 러셀 썸머스쿨 종합반 프로그램">
		</h3>
		<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/program1.png" alt="PROGRAM 1"></h5>
		<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont07_stit.png" alt="강의력과 관리력이 검증된 강사진의 종합반 전용 수업"></h4>
		
        <ul class="danka-list">
            <li>
                <p><%=danka_txt01%></p>
            </li>
            <li>
                <p><%=danka_txt02%></p>
            </li>
            <li>
                <p><%=danka_txt03%></p>
            </li>
            <li>
                <p><%=danka_txt04%></p>
            </li>
        </ul>
        <!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/summer_overall/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
		 
        <div class="inner">
            <p class="r-txt">※ 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.
            </p>
        </div>
	</div>
	<div class="cont09">
		<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/program2.png" alt="PROGRAM 2"></h5>
		<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont09_tit.png" alt="최소한의 의무 수업으로 충분한 자습 시간이 확보되는 슬림한 종합반"></h4>
		<div class="inner">
			<div class="cont-wrap">
				<% If sCampusCode = "CD0342" Then '대구 %>
				<div class="cont">
					<p class="tit">
						<strong>주 10.5T, 꼭 필요한 핵심 수업 구성
						</strong><br>
						<span>기존 재수종합반<sup>1)</sup> 의무 수업 30~42T 대비 최대 75%<sup>2)</sup> 축소 </span>
					</p>
					<div class="mt30">
						<p class="stit">고3</p>
						<p class="stxt">필수 수업 中 10.5T 선택
						</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>과목</th>
									<th>국어</th>
									<th>수학</th>
									<th>탐구1</th>
									<th>탐구2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>주간<br>
										수업시간</th>
									<td>3.5T</td>
									<td>7T</td>
									<td>3.5T</td>
									<td>3.5T</td>
								</tr>
							</tbody>
						</table>

						<p class="stxt mt20">선택 수업(택2)</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>과목</th>
									<th>국어특강</th>
									<th>영어</th>
									<th>논술</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>주간<br>
										수업시간</th>
									<td>3.5T</td>
									<td>3.5T</td>
									<td>3.5T</td>
								</tr>
							</tbody>
						</table>
						<p class="stit mt30">고2</p>
						<p class="stxt">필수 수업
						</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>과목</th>
									<th>국어</th>
									<th>수학</th>
									<th>수학(선택과목)</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>주간<br>
										수업시간</th>
									<td>3.5T</td>
									<td>3.5T</td>
									<td>3.5T</td>
								</tr>
							</tbody>
						</table>

						<p class="stxt mt20">선택 수업(최대 택2)</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>과목</th>
									<th>탐구</th>
									<th>탐구</th>
									<th>영어</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>주간<br>
										수업시간</th>
									<td>3.5T</td>
									<td>3.5T</td>
									<td>3.5T</td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="r-txt mt30">
						1) 과거 자사 재수종합반 기준<br>
						2) 기존 종합반 의무 수업 42T 대비 러셀 종합반 의무 수업 10.5T 비교  시 수치<br>
						* 실제 학원 운영 상황에 따라 변경될 수 있습니다.
					</p>
				</div>
				<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
				<div class="cont">
					<p class="tit">
						<strong>주 17.5T, 꼭 필요한 핵심 수업 구성
						</strong><br>
						<span>기존 재수종합반<sup>1)</sup> 의무 수업 30~42T 대비 최대 58%<sup>2)</sup> 축소 </span>
					</p>
					<div class="mt30">
						<p class="stit">필수 수업</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>과목</th>
									<th>국어</th>
									<th>수학</th>
									<th>탐구1</th>
									<th>탐구2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>주간<br>
										수업시간</th>
									<td>3.5T</td>
									<td>3.5T</td>
									<td>3.5T</td>
									<td>3.5T</td>
								</tr>
							</tbody>
						</table>

						<p class="stit">선택 수업(택1)</p>
						<table class="tbl-01">
							<colgroup>
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
								<col style="width:auto;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>과목</th>
									<th>국어특강</th>
									<th>영어</th>
									<th>논술</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>주간<br>
										수업시간</th>
									<td>3.5T</td>
									<td>3.5T</td>
									<td>3.5T</td>
								</tr>
							</tbody>
						</table>
					</div>
					<p class="r-txt">
						1) 과거 자사 재수종합반 기준<br>
						2) 기존 종합반 의무 수업 42T 대비 러셀 종합반 의무 수업 17.5T 비교  시 수치<br>
						* 실제 학원 운영 상황에 따라 변경될 수 있습니다.
					</p>
				</div>
				<% End if %>

				<% If sCampusCode = "CD0342" Then '대구 %>
				<div class="cont">
					<p class="tit">
						<strong>자기주도학습이 가능한<br>
						충분한 자습 시간 (주 77.5T<span style="color:#999">*</span>)
						</strong><br>
						<span>기존 재수종합반<sup>1)</sup> 자습 시간 46~58T 대비 최대 68%<sup>3)</sup> 증가</span>
					</p>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer_overall/cont09_graph.jpg" alt="" /></div>
					<p class="r-txt mt0 pr50">
						3) 기존 종합반 자습 시간 46T 대비 러셀 종합반 자습 시간 77.5T 비교<br>
						* 일주일 88T 기준으로 비교, 및 선택 자습 시간도 포함 <br>
						* 실제 학원 운영 상황에 따라 변경될 수 있습니다.
					</p>
				</div>
				<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
				<div class="cont">
					<p class="tit">
						<strong>자기주도학습이 가능한<br>
						충분한 자습 시간 (주 70.5T<span style="color:#999">*</span>)
						</strong><br>
						<span>기존 재수종합반<sup>1)</sup> 자습 시간 46~58T 대비 최대 53%<sup>3)</sup> 증가</span>
					</p>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer_overall/cont09_graph.jpg" alt="" /></div>
					<p class="r-txt mt0 pr50">
						3) 기존 종합반 자습 시간 46T 대비 러셀 종합반 자습 시간 70.5T 비교<br>
						* 일주일 88T 기준으로 비교, 및 선택 자습 시간도 포함 <br>
						* 실제 학원 운영 상황에 따라 변경될 수 있습니다.
					</p>
				</div>
				<% End if %>
			</div>
		</div>
	</div>
	<div class="cont05">
		<div class="inner">
			<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/program3.png" alt="PROGRAM 3"></h5>
			<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont05_stit.png" alt="면학 분위기로 소문난 바른공부 자습전용관"></h4>
			<div class="tit-obj" data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont05_tit_obj02.png" alt=""></div>
			<a href="/info/schoolBus.asp" class="school-bus"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/schoolBus.png" alt=""></a>
            <!-- 바자관 슬라이드 -->
            <div class="studyHall-slide-wrap">
                <div class="studyHall-navi s-five">
                <!-- <div class="studyHall-navi"> -->
                    <div class="swiper-wrapper">
                        <div class="swiper-slide">집단적인 면학 분위기</div>
                        <div class="swiper-slide">학습 동선 최소화</div>
                        <div class="swiper-slide">충분한 자습 시간 확보</div>
                        <div class="swiper-slide">개방형 구조</div>
                        <div class="swiper-slide">자체 식당 운영</div>
                    </div>
                </div>
                <div class="swiper-container studyHall-slide">
                    <div class="swiper-wrapper">
                        <!-- 집단적인 면학 분위기 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										최상위권이 모여 경쟁하는<br>
										집단적인 면학 분위기
									</dt>
									<dd>
										최상위권 재원생들의 학구열을 직접 체감할 수 있는<br>
										개방형 구조로 학습 동기 부여 및 <br>긍정적인 긴장감 유지 가능
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_01.jpg" alt=""></div>
							</div>
						</div>
                        <!-- 학습 동선 최소화 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										낭비하는 시간 없이<br>학습 동선 최소화

									</dt>
									<dd>
										한 건물 내에서 강의실-바자관-<%=meal%>을 한 번에<br>
										해결하여 효율적인 시간 관리를 통해<br> 수업 및 자습 시간에
										높은 집중력 발휘, 학습량 극대화
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_02.jpg" alt=""></div>
							</div>
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
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/baja_03.jpg" alt=""></div>
							</div>
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
								<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/baja_04.jpg" alt=""></div>
							</div>
						</div>
                        <!-- 자체 식당 운영 -->
                        <div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										건강과 안전을 위한<br>자체 식당 운영

									</dt>
									<dd>
										자체 식당 운영으로 균형 잡힌 식단 유지<br>
										외부와의 접촉 최소화 및 이동 시간을 줄여 <br>학습에 몰입

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/baja_05.jpg" alt=""></div>
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- //바자관 슬라이드 -->
		</div>
	</div>
	<div class="cont06">
		<div class="inner">
			<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/program4.png" alt="PROGRAM 4"></h5>
			<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont06_tit.png" alt="최상위권 전문 입시 담임 선생님의 체계적인 맞춤 관리"></h4>
			
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
										썸머스쿨 기간 동안 정확한 진단 및 기초 상담 진행<br>
										썸머스쿨 이후에도 1:1 배치 상담 진행
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
								<div>
									<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/manage_01.jpg" alt="">
								</div>
							</div>
						</div>
						<!-- 학습 관리 -->
						<div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										최상위권 도약을 위한<br>체계적인 학습 관리
									</dt>
									<dd>
										여름 방학 단기간 최대 효율을 위한 밀도 있는 학습 관리<br>
										1:1 상담을 통해 여름 방학부터 수능까지<br>학습 설계 및 점검
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/manage_02.jpg" alt=""></div>
							</div>
						</div>
						<!-- 생활 관리 -->
						<div class="swiper-slide">
							<div class="b-detail">
								<dl>
									<dt>
										집단적인 면학 분위기를 위한<br>철저한 생활 관리

									</dt>
									<dd>
										매 교시 엄격한 출결 관리 및 바자관 상시 모니터링<br>
										태도 점수 제도로 면학 분위기 저해 요소<br>엄격하게 관리
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/manage_03.jpg" alt=""></div>
							</div>
						</div>
					</div>
				</div>
			</div>
            <!-- //관리 슬라이드 -->
			<div class="s-obj"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont06_obj.png" alt=""></div>
		</div>
	</div>
	<div class="cont08">
		<h5 data-aos="example-anim2"><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/program5.png" alt="PROGRAM 5"></h5>
		
		<h4><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/cont08_tit.png" alt="실전 수능에 최적화된 최상위권 맞춤 실전 콘텐츠"></h4>
		<div class="swiper-container ct-slide">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_01.jpg" alt="OMEGA"></div>
				</div>
			<% If sCampusCode <> "CD0342" Then '대구 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_02.jpg" alt="OMEGA Link"></div>
				</div>
			<% End If %>
			<% If sCampusCode <> "CD0340" Then '코어광주 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_03.jpg" alt="OMEGA Black"></div>
				</div>
			<% End If %>
			<% If sCampusCode <> "CD0340" Then '코어광주 제외 %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_04.jpg" alt="OMEGA Blue"></div>
				</div>
			<% End If %>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_05.jpg" alt="OMEGA Weekly"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_06.jpg" alt="전국 대단위 실전 모의고사"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_07.jpg" alt="메가X대성 더 프리미엄 모의고사"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_08.jpg" alt="ALPHA"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_09.jpg" alt="러셀 학습 플래너"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_10.jpg" alt="러셀 일일수학 30제"></div>
				</div>
				<div class="swiper-slide">
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer_overall/contents_11.jpg" alt="러셀 총평노트"></div>
				</div>
			</div>
		</div>
		<p class="r-txt">
			※ ALPHA 및 학습계획 콘텐츠(러셀 학습 플래너, 러셀 일일수학 30제, 러셀 총평노트)는 재원생 대상으로 ‘전액 지원’되는 콘텐츠입니다.<br>
			이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라 사용 여부 등이 변경 및 조정될 수 있습니다.<br>
			※ 일부 콘텐츠는 썸머스쿨 기간 외에 진행될 수 있습니다.
		</p>
	</div>
    <div class="bottom-bar">
		<p data-aos="fade-down" data-aos-offset="100">
            올여름, 최상위권으로 도약하고자 한다면<br>
            최상위권이 집결하는 러셀 썸머스쿨 종합반이 확실한 방법입니다.
        </p>
	</div>
</div>