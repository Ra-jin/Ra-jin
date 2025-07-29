<% If sCampusCode = "CD0347" Then '남기숙 %>
<!-- cont05 -->
<div class="cont05">
	<h3 data-aos="flip-up"><img src="<%=imgUrl%>/cont05_tit.png" alt=""></h3>
	<div class="inner">
		<p class="mt60"><img src="<%=imgUrl%>/cont05_img.png" alt=""></p>
	</div>
</div>
<% End If %>

<!-- tab01 수준별 맞춤 단과 -->
<div class="cont js-cont <%=campusName%>">
	<!-- cont06 -->
	<div class="cont06">
		<% If sCampusCode = "CD0348" Then '여기숙 %>
		<h3 data-aos="flip-up"><img src="<%=imgUrl%>/cont06_tit.png" alt=""></h3>
		<% End If %>
		<!-- fix-menu -->
		<div class="fix-menu-wrap">
			<nav class="fix-menu">
				<div class="menu">
					<% If sCampusCode = "CD0348" Then '여기숙 %>
					<a class="on" href="javascript:void(0);">최소 시간<br><strong>수준별 맞춤 수업</strong></a>
                    <a href="javascript:void(0);">최대 효율<br><strong>바른공부 자습전용관</strong></a>
                    <a href="javascript:void(0);">최상의 컨디션<br><strong>학습공간 생활공간</strong></a>
					<a href="javascript:void(0);">전략적 관리<br><strong>학생 맞춤 관리</strong></a>
					<a href="javascript:void(0);">맞춤 콘텐츠<br><strong>실전 학습 콘텐츠</strong></a>
					<% Else %>
					<a class="on" href="javascript:void(0);">검증된 종합반 수업<br><strong>전문 강사진과 콘텐츠</strong></a>
                    <a href="javascript:void(0);">최대 효율<br><strong>최대의 자습시간 확보</strong></a>
                    <a href="javascript:void(0);">최상의 컨디션<br><strong>학습공간 & 생활공간</strong></a>
					<a href="javascript:void(0);">전략적 관리<br><strong>학생 맞춤 관리</strong></a>
					<a href="javascript:void(0);">맞춤 콘텐츠<br><strong>실전 학습 콘텐츠</strong></a>
					<% End If %>
				</div>
			</nav>
		</div>
		<!-- //fix-menu -->
		<% If sCampusCode = "CD0347" Then '남기숙 %>
        <h3 data-aos="flip-up"><img src="<%=imgUrl%>/cont06_tit.png" alt=""></h3>
        <div class="inner03">
            <ul class="danka-list">
                <li>
                    <p><strong>러셀 강남&middot;대치</strong> 및<br><strong>메가스터디 인강</strong> 출강</p>
                </li>
                <li>
                    <p>과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong></p>
                </li>
                <li>
                    <p><strong>대치동 현강 그대로!<br>대치동 현강 컨텐츠 그대로!</strong></p>
                </li>
                <li>
                    <p><strong>수업 관리 전담 선생님의<br>집중도 높은 수업 진행 관리</strong></p>
                </li>
            </ul>
            <p class="mt60"><img src="<%=imgUrl%>/cont06_img.png" alt=""></p>
        </div>
		<% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
		<div class="inner">
			<p><img src="<%=imgUrl%>/cont06_img.png" alt=""></p>
		</div>
		<% End If %>
	</div>
</div>

<!-- tab02 최대의 자습시간 확보 -->
<div class="cont js-cont <%=campusName%>">
	<!-- cont07 -->
	<div class="cont07 <%=campusName%>">
		<h3 data-aos="flip-up"><img src="<%=imgUrl%>/cont07_tit.png" alt="최대 효율 과목별 성취도에 맞춘 전 과목 수준별 반 배치 및 수업진행, 최소한의 의무수업으로 최대한의 자습시간 확보"></h3>
		<% If sCampusCode = "CD0347" Then '남기숙 %>
		<div class="inner">
			<p class="mt60"><img src="<%=imgUrl%>/cont07_img.png" alt=""></p>
		</div>
		<% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
		<div class="inner03">
			<div class="baja-slide swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<p class="tit">최대 자습시간 확보가 가능한 시간관리 시스템</p>
						<p class="txt">학업 성취도에 맞춘 수준별 수업과 개인 시간표로<br>
                            최적의 학습 환경을 제공하며, 최소 의무 수업으로 자습 시간을 극대화합니다.</p>
						<div class="baja_box">
							<div class="img"><img src="<%=img_path_russelw%>/2025/half/baja_slide01_img.jpg" alt=""></div>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">검증된 선생님들께서 직접 수업을 해주시고<br>
									질의응답도 현장에서 받아주셔서 실력 향상에<br>
									큰 도움이 되었습니다. 또한, 필수로 들어야 하는<br>
									수업 단위수가 적어서 충분한 자습과 병행할 수<br>
									있는 점이 가장 큰 장점으로 작용한 것 같습니다.</p>
								<dl>
									<dt>
										2024학년도 고려대학교 자유전공학부 합격<br>
										여학생 전문관 러셀 기숙 윤*정
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="swiper-slide dough">
						<p class="tit">최대 자습시간 확보가 가능한 시간관리 시스템</p>
						<p class="txt">학업 성취도에 맞춘 수준별 수업과 개인 시간표로<br>
                            최적의 학습 환경을 제공하며, 최소 의무 수업으로 자습 시간을 극대화합니다.</p>
						<div class="baja_box">
							<div class="chart-wrap">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/chart_tit.png" alt="“시간이 부족한데 필요 없는 과목의 수업까지 들어야 할까?”"></p>
								<ul class="chart-list">
									<li>
										<p><strong>효율적인 학습을 위한<br>
											자습시간 최대 확보</strong></p>
										<p>약점을 보완하고 개념을 깊게 이해하기 위한<br>
											자습시간이 필수적인<br>
											최상위권 반수생들을 위해<br>
											필수 수업(국어/수학) 최소화 +<br>
											선택적 의무 수업으로 최대의 자습 시간을<br>
											확보해 드립니다.</p>
									</li>
									<li>
										<div class="chart-area">
											<canvas id="doughnut-chart" width="260" height="173"></canvas>
											<div class="chart-img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/chart_bg.png" alt="" /></div>
											<div class="chart-txt">
												<p>하루 최대 <strong>604</strong>분<br>
												<span>자습시간 확보</span></p>
											</div>
										</div>
										<a href="javascript:void(0)" class="bt-tt01 js-mask">표준 일과표 자세히 보기</a>
									</li>
								</ul>
							</div>
							<div class="review">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">검증된 선생님들께서 직접 수업을 해주시고<br>
									질의응답도 현장에서 받아주셔서 실력 향상에<br>
									큰 도움이 되었습니다. 또한, 필수로 들어야 하는<br>
									수업 단위수가 적어서 충분한 자습과 병행할 수<br>
									있는 점이 가장 큰 장점으로 작용한 것 같습니다.</p>
								<dl>
									<dt>
										2024학년도 고려대학교 자유전공학부 합격<br>
										여학생 전문관 러셀 기숙 윤*정
									</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
								</dl>
							</div>
						</div>
					</div>
					<div class="swiper-slide">
						<p class="tit">이동에 낭비하는 시간 없이 학습 동선 최소화</p>
						<p class="txt">한 건물 내에서 강의실과 바자관, 숙소, 식당을 한 번에 해결할 수 있도록 동선을 최적화하여<br>
                            이동에 낭비되는 시간을 최소화하고 효율적인 시간 관리를 통해 높은 집중력을 발휘, 학습량을 극대화할 수 있습니다.</p>
						<div class="baja_box">
							<div class="img"><img src="<%=img_path_russelw%>/2025/half/baja_slide03_img.jpg" alt=""></div>
	
							<!-- 선배들의 PICK -->
							<div class="review w">
								<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
								<p class="txt">강의실과 급식실, 바자관이 모두 한 건물에 있어서<br> 
                                    시간 낭비를 최소화할 수 있었습니다.<br>
                                    깨어있는 시간을 모두 제 걸로 활용할 수<br>
                                    있었습니다.</p>
								<dl>
									<dt>2024학년도 숙명여자대학교 약학부 합격<br>
                                        여학생 전문관 러셀 기숙 박*빈</dt>
									<dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_sookmyung.png" alt="숙명여대 로고"></dd>
								</dl>
							</div>
						</div>
					</div>
				</div>
				<!-- 버튼 -->
				<div class="swiper-button-next baja"></div>
    			<div class="swiper-button-prev baja"></div>
				<!-- //버튼 -->
			</div>
			<p class="r-txt">* 합격생 후기 합격생 인터뷰 중 일부 발췌</p>
		</div>

		<!-- 팝업 -->
		<div class="layer-pop01 layer">
			<a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/half/bt_close.png" alt="닫기"></a>
			<p class="stit">표준 일과표</p>
			<div class="layer-wrap">
				<div class="tbl-box" style="display:flex;">
                    <table class="tbl-01 type02">
                        <colgroup>
                            <col style="width: 25%;">
                            <col style="width: 25%;">
                            <col style="width:auto">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>교시</th>
                                <th>시간</th>
                                <th>월요일 ~ 토요일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th row" rowspan="3">0교시</th>
                                <th class="bg-th">06:30~07:20</th>
                                <td>기상, 세면, 조식<br>자습관 입실</td>
                            </tr>
                            <tr>
                                <th class="bg-th b-l">07:30~07:40</th>
                                <td>자습관 인원 점검<br>(자리 이동 금지)</td>
                            </tr>
                            <tr>
                                <th class="bg-th b-l">07:40~08:30</th>
                                <td>학습계획서 작성<br>명상의 시간, 수능 체조</td>
                            </tr>
                            <tr>
                                <th class="bg-th">1교시</th>
                                <th class="bg-th">08:40~09:40</th>
                                <td rowspan="3">오전 수업 / 의무 자습<br>
                                    질의응답</td>
                            </tr>
                            <tr>
                                <th class="bg-th">2교시</th>
                                <th class="bg-th">09:55~10:55</th>
                            </tr>
                            <tr>
                                <th class="bg-th">3교시</th>
                                <th class="bg-th">11:10~12:10</th>
                            </tr>
                            <tr>
                                <th class="bg-th">점심식사</th>
                                <th class="bg-th">12:10~13:00</th>
                                <td>점심식사</td>
                            </tr>
                            <tr>
                                <th class="bg-th">영어듣기</th>
                                <th class="bg-th">13:00~13:20</th>
                                <td>영어 듣기 (수능 체조)</td>
                            </tr>
                            <tr>
                                <th class="bg-th">4교시</th>
                                <th class="bg-th">13:30~14:30</th>
                                <td rowspan="3">오후 수업 / 의무 자습<br>
                                    질의응답</td>
                            </tr>
                            <tr>
                                <th class="bg-th">5교시</th>
                                <th class="bg-th">14:45~15:45</th>
                            </tr>
                            <tr>
                                <th class="bg-th">6교시</th>
                                <th class="bg-th">16:00~17:00</th>
                            </tr>
                            <tr>
                                <th class="bg-th">담임시간</th>
                                <th class="bg-th">17:10~17:20</th>
                                <td>담임시간</td>
                            </tr>
                            <tr>
                                <th class="bg-th">저녁식사</th>
                                <th class="bg-th">17:20~18:10</th>
                                <td>저녁식사 (수능 체조)</td>
                            </tr>
                            <tr>
                                <th class="bg-th">7교시</th>
                                <th class="bg-th">18:30~19:30</th>
                                <td rowspan="2">저녁 수업 / 의무 자습<br>
                                    질의응답</td>
                            </tr>
                            <tr>
                                <th class="bg-th">8교시</th>
                                <th class="bg-th">19:45~20:45</th>
                            </tr>
                            <tr>
                                <th class="bg-th">9교시</th>
                                <th class="bg-th">21:00~23:00</th>
                                <td>저녁 수업 / 의무 자습<br>
                                    일과 종료, 일일 TEST</td>
                            </tr>
                        </tbody>
                    </table>
                    <table class="tbl-01 type02 ml30">
                        <colgroup>
                            <col style="width: 25%;">
                            <col style="width: 25%;">
                            <col style="width:auto">
                        </colgroup>
                        <thead>
                            <tr>
                                <th>교시</th>
                                <th>시간</th>
                                <th>일요일</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th class="bg-th" rowspan="3">0교시</th>
                                <th class="bg-th">07:00~07:50</th>
                                <td>기상, 세면, 조식<br>
                                    자습관 입실</td>
                            </tr>
                            <tr>
                                <th class="bg-th b-l">08:00~08:10</th>
                                <td>자습관 인원 점검<br>
                                    (자리 이동 금지)</td>
                            </tr>
                            <tr>
                                <th class="bg-th b-l">08:10~08:30</th>
                                <td>학습계획서 작성<br>
                                    수능 체조</td>
                            </tr>
                            <tr>
                                <th class="bg-th">1교시</th>
                                <th class="bg-th">08:40~09:40</th>
                                <td rowspan="3">의무 자습</td>
                            </tr>
                            <tr>
                                <th class="bg-th">2교시</th>
                                <th class="bg-th">09:55~10:55</th>
                            </tr>
                            <tr>
                                <th class="bg-th">3교시</th>
                                <th class="bg-th">11:10~12:10</th>
                            </tr>
                            <tr>
                                <th class="bg-th">점심식사</th>
                                <th class="bg-th">12:10~13:00</th>
                                <td>점심식사</td>
                            </tr>
                            <tr>
                                <th class="bg-th">4교시</th>
                                <th class="bg-th">13:30~14:30</th>
                                <td rowspan="3">
                                    Healing time<br>
                                    13:20~16:55<br>
                                    (숙소 퇴실 및 바자관 이동<br>
                                    16:45)
                            </tr>
                            <tr>
                                <th class="bg-th">5교시</th>
                                <th class="bg-th">14:45~15:45</th>
                            </tr>
                            <tr>
                                <th class="bg-th">6교시</th>
                                <th class="bg-th">16:00~17:00</th>
                            </tr>
                            <tr>
                                <th class="bg-th">담임시간</th>
                                <th class="bg-th">17:10~17:20</th>
                                <td>담임시간</td>
                            </tr>
                            <tr>
                                <th class="bg-th">저녁식사</th>
                                <th class="bg-th">17:20~18:10</th>
                                <td>저녁식사 (수능 체조)</td>
                            </tr>
                            <tr>
                                <th class="bg-th">7교시</th>
                                <th class="bg-th">18:30~19:30</th>
                                <td rowspan="2">
                                    심리특강 / 의무 자습<br>
                                    질의응답
                                </td>
                            </tr>
                            <tr>
                                <th class="bg-th">8교시</th>
                                <th class="bg-th">19:45~20:45</th>
                            </tr>
                            <tr>
                                <th class="bg-th">9교시</th>
                                <th class="bg-th">21:00~22:00</th>
                                <td>의무 자습 / 일과 종료</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
			</div>
		</div>
		<!-- //팝업 -->
		<% End If %>
	</div>
</div>