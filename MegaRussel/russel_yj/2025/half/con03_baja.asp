<!-- tab03 학습공간 & 생활공간 -->
<div class="cont js-cont <%=campusName%>">
    <!-- cont08 -->
    <div class="cont08 <%=campusName%>">
        <h3 data-aos="flip-up"><img src="<%=imgUrl%>/cont08_tit.png" alt=""></h3>
        <div class="inner">
            <% If sCampusCode = "CD0347" Then '남기숙 %>
			<ul class="baja-list">
				<li>
                    <p>면학분위기로 소문난 <br>
                        <strong>바른공부 자습전용관</strong></p>
                    <div>
                        <img src="<%=imgUrl%>/baja_01.jpg" alt="">
                    </div>
                    <ul>
                        <li>공부에 대한 건강한 긴장감과 시각적 개방감을 동시에
                            느낄 수 있도록 <strong>바자관 벽면 통유리 및 개방형 구조로<br>
                            공간 설계</strong></li>
                        <li>일반 책상보다 약 4배 넓은 <strong>데스커 책상과<br>
                         시디즈 의자</strong>로 공간 구성</li>
                        <li>집단적인 학구열을 체감할 수 있는 개방형 구조로 학습의 <br>
                            긴장감을 유지시키고 학습동기 부여</li>
                    </ul>
                </li>
                <li>
                    <p>3.3m 높은 층고로 <br>
                    <strong>넓고 쾌적한 강의실</strong></p>
                    <div style="position:relative;">
                        <img src="<%=imgUrl%>/baja_02.jpg" alt="">
                    </div>
                    <ul>
                        <li>기존 강의실보다 약 0.6m 높은 <strong>3.3m 강의실 층고로<br>
                        넓은 공간 설계</strong></li>
                        <li>자연 채광이 들어올 수 있도록 <strong>창문의 크기를<br> 
                            크고 높게 설계</strong></li>
                        <li><strong>강의실 단상의 높이를 올리고,</strong> 좌우 끝이 잘 보이도록<br>
                            <strong>곡면 와이드 칠판 설치</strong></li>
                    </ul>
                </li>
                <li>
                    <p>최상위권의 컨디션을 위한 숙면이 보장되는
                        <br><strong>1인 1실/2인 1실 숙소</strong></p>
                    <div>
                        <img src="<%=imgUrl%>/baja_03.jpg" alt="">
                    </div>
                    <ul>
                        <li>모든 숙소에 <strong>시몬스 침대와 매트리스(하단 타입)</strong> 설치</li>
                        <li>넓고 쾌적한 숙소 공간을 위해 <strong>1인 1실/2인 1실<br>
                        1층 침대 구성</strong>(선택 가능)</li>
                        <li><strong>각 숙소 내 2개의 화장실</strong>을 만들어 불편함이 없도록<br>
                            공간 설계</li>
                        <li><strong>청소와 세탁 전문인력 투입</strong>으로 편안하게 생활</li>
                    </ul>
                </li>
                <li>
                    <p>균형 잡힌 수험생 식단을 제공하는 <br>
                    <strong>프리미엄 식당</strong></p>
                    <div style="position:relative;">
                        <img src="<%=imgUrl%>/baja_04.jpg" alt="">
                    </div>
                    <ul>
                        <li>균형 잡힌 영양 식단을 위해 <strong>메가스터디 직영 메가푸드<br>
                            직접 운영</strong></li>
                        <li>검증된 <strong>국내 최대 식자재 유통업체</strong>의 안전한 식자재로<br>
                            식약처 기준의 <strong>저염식 제공</strong></li>
                        <li>밥맛을 살려주는 <strong>압력밭솥</strong>과 김치 신선도를 유지할 수<br>
                            있도록 <strong>김치냉장고 설치</strong></li>
                        <li>학생들의 의견을 반영할 수 있도록 <strong>설문 조사 및<br>
                            건의함 설치</strong></li>
                    </ul>
                </li>
                <li>
                    <p>편리하게 공부하기 위한<br>
                    <strong>학습 기기 지원</strong></p>
                    <div style="position:relative;">
                        <img src="<%=imgUrl%>/baja_05.jpg" alt="">
                    </div>
                    <ul>
                        <li>모든 재원생들이 바자관 내 자신의 자리에서 <br>
                            편리하게 공부할 수 있도록 <strong>1인 1태블릿 제공</strong></li>
                        <li><strong>보다 큰 화면으로</strong> 인강을 들을 수 있도록<br>
                            <strong>PC 사용 공간 제공</strong>(담임실 내)</li>
                    </ul>
                </li>
                <li>
                    <p>지친 심신을 회복시켜주는<br>
                    <strong>다양한 편의시설</strong></p>
                    <div style="position:relative;">
                        <img src="<%=imgUrl%>/baja_06.jpg" alt="">
                    </div>
                    <ul>
                        <li><strong>감성적인 인테리어</strong>로 휴식과 재충전의 장소가<br>
                            될 수 있도록 설계</li>
                        <li><strong>건강 관리에 신경쓸 수 있도록</strong> 체력단련실, <strong>잔디</strong> 운동장,<br>
                            농구 골대, 탁구대, 배드민턴장 등 <strong>체육 시설 마련</strong></li>
                        <li><strong>외부 산책 공간 및 휴게 공간</strong>에서 리프레시</li>
                    </ul>
                </li>
			</ul>
            <% ElseIf sCampusCode = "CD0348" Then '여기숙 %>
            <ul class="baja-wrap">
                <li class="pt0">
                    <div>
                        <div class="baja-txt">
                            <p class="tit">집단적인 면학 분위기로<br>학습 최적화</p>
                            <p class="txt">학습 효율성을 높이기 위해 세심하게 설계된<br>
                                쾌적한 환경의 학습 시설과<br>
                                최상위권의 학구열을 체감할 수 있는<br>
                                개방형 구조로 학습의 긴장감을 유지시키고<br>
                                학습동기를 부여합니다.</p>
                        </div>
                        <div><img src="<%=imgUrl%>/baja_01.jpg" alt=""></div>
                    </div>
                    <ul class="stu-story">
                        <li><img src="<%=imgUrl%>/stu_w01.png" alt=""></li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
                            <p class="txt">바자관에서는 조금만 고개를 돌려도 열심히 공부하는 다른 친구들의 모습이 보입니다.<br>
                                집중이 잘되지 않을 때 제가 흘려보내려고 했던 시간을 공부하는 데에<br>
                                쓰는 친구들을 보며 마음을 다잡고 공부할 수 있었습니다.</p>
                            <dl class="stu">
                                <dt>2024학년도 서울대학교 재료공학부 합격 <br>
                                    여학생 전문관 러셀 기숙 김*경</dt>
                                <dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt="서울대 로고"></dd>
                            </dl>
                        </li>
                    </ul>
                </li>
                <li>
                    <div>
                        <div class="baja-txt">
                            <p class="tit">최상위권 컨디션 유지를 위해<br>
                                숙면을 보장하는<br>
                                쾌적한 환경</p>
                            <p class="txt">효율적인 휴식과 컨디션 회복을 위해<br>
                                세심하게 설계된 쾌적한 숙소로<br>
                                최적의 환경에서 생활할 수 있도록<br>
                                편리함과 안락함을 모두 제공합니다.</p>
                        </div>
                        <div class="s-box">
                            <div class="s-slide swiper-container type01">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/baja_02.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/baja_03.jpg" alt=""></div>
                                </div>
                                <div class="swiper-button-next s01"></div>
                                <div class="swiper-button-prev s01"></div>
                            </div>
                        </div>
                    </div>
                    <ul class="stu-story">
                        <li><img src="<%=imgUrl%>/stu_w02.png" alt=""></li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
                            <p class="txt">인터넷 차단, 여학생만 있는 공간, 편한 숙소 등 공부에만 집중할 수 있는 환경이 장점입니다.<br>
                                숙소 화장실이 2개라서 단체 숙소 생활로 인한 불편함도 거의 없었습니다.</p>
                            <dl class="stu">
                                <dt>2024학년도 원광대학교 한의예과 합격<br>
                                    여학생 전문관 러셀 기숙 신*지</dt>
                                <dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_wonkwang.png" alt="원광대 로고"></dd>
                            </dl>
                        </li>
                    </ul>
                </li>
                <li>
                    <div>
                        <div class="baja-txt">
                            <p class="tit">균형 잡힌 수험생 식단을<br>
                                제공하는 프리미엄 식당</p>
                            <p class="txt">건강과 취향을 고려한 균형 잡힌 식단과<br>
                                쾌적한 식사 공간 다양한 메뉴 구성을 통해<br>
                                높은 만족도를 선사하며<br>
                                최상의 컨디션 유지를 돕습니다.</p>
                        </div>
                        <div class="s-box">
                            <div class="s-slide swiper-container type02">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/baja_04.jpg" alt=""></div>
                                    <div class="swiper-slide"><img src="<%=imgUrl%>/baja_05.jpg" alt=""></div>
                                </div>
                                <div class="swiper-button-next s02"></div>
                                <div class="swiper-button-prev s02"></div>
                            </div>
                        </div>
                    </div>
                    <ul class="stu-story">
                        <li><img src="<%=imgUrl%>/stu_w03.png" alt=""></li>
                        <li>
                            <p><img src="<%=Application("img_path_russel")%>/intro/2025/half/baja_review_tit.png" alt=""></p>
                            <p class="txt">여학생 전문관 러셀 기숙에서 가장 만족했던 부분은 급식입니다.<br>
                                저는 러셀을 다니면서 급식이 너무 맛있어서<br>
                                매일 3끼만을 기다리며 하루를 보낼 수 있었습니다.</p>
                            <dl class="stu">
                                <dt>2024학년도 고려대학교 자유전공학부 합격<br>
                                    여학생 전문관 러셀 기숙 윤*정</dt>
                                <dd><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt="고려대 로고"></dd>
                            </dl>
                        </li>
                    </ul>
                </li>
            </ul>
            <p class="r-txt">* 합격생 후기 합격생 인터뷰 중 일부 발췌</p>
            <% End If %>
        </div>
    </div>
</div>

<!-- tab04 학생 맞춤 관리 -->
<div class="cont js-cont <%=campusName%>">
    <!-- cont09 -->
    <div class="cont09">
        <h3 data-aos="flip-up"><img src="<%=imgUrl%>/cont09_tit.png" alt=""></h3>
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
								<div><img src="<%=imgUrl%>/studyHall_slide01_img01.jpg" alt=""></div>
								<p class="l-tit">실제 데이터 기반 분석 입시관리</p>
								<p class="l-txt">주기적인 모의고사 시행을 통해<br>
									누적한 성적 DB와 모의고사 성적 추이를 기반으로<br>
									대학별 전형을 분석하여 목표 대학에 맞춘<br>
									학생별 맞춤 입시 방향을 제시합니다.</p>
							</li>
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide01_img02.jpg" alt=""></div>
								<p class="l-tit">전문적인 1:1 입시 상담</p>
								<p class="l-txt">세분화된 목표 설정부터 성취를 위한 구체적인<br>
									개인별 지원 전략까지 개별 성적 포트폴리오를<br>
									기반으로 체계적인 수시/정시 1:1 컨설팅을 통해<br>
									최적의 지원 전략을 수립합니다.</p>
							</li>
                            <% If sCampusCode = "CD0348" Then '여기숙 %>
                            <li>
								<div><img src="<%=imgUrl%>/studyHall_slide01_img03.jpg" alt=""></div>
								<p class="l-tit">반수생 대상 설명회 및 특강</p>
								<p class="l-txt">입시 특강, 전형별 설명회를 통해 <br>
                                    풍부하고 정확한 입시 콘텐츠를 <br>
                                    제공하고 다양한 사례가 포함된 <br>
                                    메가스터디의 전문 입시 자료집 등을 통해 <br>
                                    최신 입시 정보를 제공합니다.                                     
                                </p>
							</li>
                            <% Else %>
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide01_img03.jpg" alt=""></div>
								<p class="l-tit">입시 교육 및 정시배치 상담</p>
								<p class="l-txt">학생들이 입학하면 기본적인 입시교육을 <br>
                                    진행합니다. 또한 수능 후 정시배치 상담을 통해 <br>
                                    입시컨설팅을 받으실 수 있으며 다양한 사례가 <br>
                                    포함된 메가스터디의 전문 입시 자료를 기반으로 <br>
                                    최신 입시 정보를 제공합니다. 
                                </p>
							</li>
                            <% End If %>
						</ul>
					</div>
					<div class="swiper-slide">
						<p class="tit">단기간 최대 효율을 위한 전략적인 학습 관리</p>
						<ul class="study-list">
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide02_img01.jpg" alt=""></div>
								<p class="l-tit">1:1 개별 학습 상담</p>
								<p class="l-txt">성적 데이터와 학습 현황을 기반으로<br>
									개인별 학습 스타일 및 취약점 분석에 따라<br>
									과목별 보완점과 학습 방향을 제시하고 구체적이고<br>
									실질적인 학습 계획과 설계, 점검이 진행됩니다.</p>
							</li>
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide02_img02.jpg" alt=""></div>
								<p class="l-tit">전략적 학습 스케줄 관리</p>
								<p class="l-txt">시간 활용이 중요한 반수생을 위해<br>
									철저한 시간 안배 및 효율적인 학습 전략을<br>
									제시하고 과목별 학습법 특강 및 설명회를 통해<br>
									시기별 상황에 맞춘 학습 가이드를 제시합니다.</p>
							</li>
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide02_img03.jpg" alt=""></div>
								<p class="l-tit">올바른 학습 루틴 형성</p>
                                <% If sCampusCode = "CD0348" Then '여기숙 %>
                                <p class="l-txt">느슨해지기 쉬운 환경 속 올바른 학습 루틴 <br>
                                    형성을 위해 러셀 학습 플래너, 러셀 일일수학 30제,<br>
                                    러셀 총평노트 등 다양한 콘텐츠를 활용하여<br>
                                    학습 습관의 개선 방향을 제시합니다.</p>
                                <% Else %>
								<p class="l-txt">느슨해지기 쉬운 환경 속 올바른 학습 루틴 <br>
                                    형성을 위해 러셀 학습 플래너, 러셀 일일수학 30제, <br>
                                    러셀 총평노트 등 다양한 콘텐츠를 활용하여 <br>
                                    1:1 개별 학습 습관의 개선 방향을 제시합니다.</p>
                                <% End If %>
							</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<p class="tit">집단적인 면학 분위기를 위한 엄격한 생활관리</p>
						<ul class="study-list">
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide03_img01.jpg" alt=""></div>
                                <% If sCampusCode = "CD0348" Then '여기숙 %>
								<p class="l-tit">자습시간 상시 관리</p>
								<p class="l-txt">담임 선생님과 주간 학생 관리 선생님이 바자관 내<br>
                                    상주하여 면학 분위기를 관리하고 효과적인 학습이 <br>
                                    이루어질 수 있도록 적극적으로 관리합니다.</p>
                                <% Else %>
                                <p class="l-tit">바자관 내 담임선생님 상주</p>
								<p class="l-txt">바른공부 자습전용관에 담임선생님이 상주하여 <br>
                                    빈틈없는 면학분위기를 관리하며, 반 학생들과 <br>
                                    적극적인 소통을 통하여 학습뿐만 아니라 생활적인 <br>
                                    부분도 꼼꼼하게 모니터링하며 관리합니다.</p>
                                <% End If %>
							</li>
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide03_img02.jpg" alt=""></div>
                                <% If sCampusCode = "CD0348" Then '여기숙 %>
                                <p class="l-tit">교육 점수 제도</p>
                                <% Else %>
								<p class="l-tit">생활 규정 교육 및 관리</p>
                                <% End If %>
								<p class="l-txt">휴대폰 소지, 자습시간 중 자리 이동 등<br>
                                    집중력이 저하될 수 있는 항목들을 통제하고 <br>
                                    학습 태도가 불성실한 경우 페널티 등을 부과하여 <br>
                                    학습에만 집중할 수 있는 면학 분위기를 형성합니다.</p>
							</li>
							<li>
								<div><img src="<%=imgUrl%>/studyHall_slide03_img03.jpg" alt=""></div>
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
            <% If sCampusCode = "CD0347" Then '남기숙 %>
            <p class="mt100"><img src="<%=img_path_russelsm%>/2025/half/cont09_txt.png" alt="표준 일과표, 입시 담임선생님의 24 HOURS 관리로 오직 학습에만 몰두할 수 있습니다."></p>
            <div class="tbl-box mt50">
                <table class="tbl-01 type02">
                    <colgroup>
                    <col style="width:15%;">
                    <col style="width:15%;">
                    <col style="width:auto;">
                    <col style="width:25%;">
                    </colgroup>
                    <thead>
                    <tr>
                        <th>교시</th>
                        <th>시간</th>
                        <th>월~토요일</th>
                        <th>일요일</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th class="bg-th" rowspan="2">0교시</th>
                        <td class="bg-th">AM6:20~AM7:20</td>
                        <td colspan="2">기상, 인원파악, 세면, 조식</td>
                    </tr>
                    <tr>
                        <td class="bg-th">AM7:20~AM8:20</td>
                        <td colspan="2">학습 계획서 작성, 명상의 시간, 아침 체조, 일일 TEST</td>
                    </tr>
                    <tr>
                        <th class="bg-th">1교시</th>
                        <td class="bg-th">AM8:20~AM9:20</td>
                        <td rowspan="3">오전 수업 및 의무 자습</td>
                        <td rowspan="3">의무 자습</td>
                    </tr>
                    <tr>
                        <th class="bg-th">2교시</th>
                        <td class="bg-th">AM9:35~AM10:35</td>
                    </tr>
                    <tr>
                        <th class="bg-th">3교시</th>
                        <td class="bg-th">AM10:50~AM11:50</td>
                    </tr>
                    <tr>
                        <th class="bg-th">점심식사</th>
                        <td class="bg-th">AM11:50~PM12:50</td>
                        <td colspan="2">점심식사 및 체조</td>
                    </tr>
                    <tr>
                        <th class="bg-th">영어듣기</th>
                        <td class="bg-th">PM12:50~PM13:10</td>
                        <td>영어듣기</td>
                        <td rowspan="2">의무 자습</td>
                    </tr>
                    <tr>
                        <th class="bg-th">4교시</th>
                        <td class="bg-th">PM13:10~PM14:10</td>
                        <td rowspan="3">오후 수업 / 의무 자습 / 질의 응답</td>
                    </tr>
                    <tr>
                        <th class="bg-th">5교시</th>
                        <td class="bg-th">PM14:25~PM15:25</td>
                        <td rowspan="2">Healing Time 및 종교 활동</td>
                    </tr>
                    <tr>
                        <th class="bg-th">6교시</th>
                        <td class="bg-th">PM15:40~PM16:40</td>
                    </tr>
                    <tr>
                        <th class="bg-th">담임시간</th>
                        <td class="bg-th">PM16:50~PM17:30</td>
                        <td colspan="2">일일 TEST 및 담임 시간</td>
                    </tr>
                    <tr>
                        <th class="bg-th">저녁식사</th>
                        <td class="bg-th">PM17:30~PM18:30</td>
                        <td colspan="2">저녁 식사 및 체조</td>
                    </tr>
                    <tr>
                        <th class="bg-th">7교시</th>
                        <td class="bg-th">PM18:30~PM19:30</td>
                        <td rowspan="3">질의 응답 및 의무 자습</td>
                        <td rowspan="2">주간 TEST</td>
                    </tr>
                    <tr>
                        <th class="bg-th">8교시</th>
                        <td class="bg-th">PM19:45~PM20:45</td>                    
                    </tr>
                    <tr>
                        <th class="bg-th">9교시</th>
                        <td class="bg-th">PM21:00~PM23:00</td>
                        <td>의무 자습</td>
                    </tr>
                    <tr>
                        <th class="bg-th">종료</th>
                        <td class="bg-th">PM23:00~PM23:40</td>
                        <td colspan="2">일과 종료, 세면, 인원 파악, 취침</td>
                    </tr>
                    </tbody>
                </table>
            </div>
            <p class="r-txt">* 표준 일과표는 학사 일정에 따라 변경될 수 있습니다.</p>
            <% End If %>
		</div>
    </div>
</div>

<!-- tab05 실전 학습 콘텐츠 -->
<div class="cont js-cont <%=campusName%>">
    <!-- cont10 -->
    <div class="cont10">
        <h3 data-aos="flip-up" class="mb100"><img src="<%=imgUrl%>/cont10_tit.png" alt=""></h3>
        <div class="inner">
            <!-- 프로그램 슬라이드 -->
			<div class="program-slide swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img01.png" alt="OMEGA"></p>
						<span class="s-label">전 과목</span>
						<ul class="list-03">
							<li>실제 수능과 비슷한 난이도의<br>전 과목 FULL 모의고사</li>
                            <li>신유형 포함 및 평가원 트렌드를 반영한<br>문제로 수능 출제 패턴 체화</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA link</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img02.png" alt="OMEGA link"></p>
						<span class="s-label">전 과목</span>
						<ul class="list-03">
							<li>복습 최적화 OMEGA 준 연계<br>하프 모의고사</li>
                            <li>10지 선다형, OX 문제 등 과목별<br>맞춤 문항으로 섬세한 실력 보완</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA black</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img03.png" alt="OMEGA black"></p>
						<span class="s-label">수학/사탐/과탐Ⅰ</span>
						<ul class="list-03">
							<li>최상위권을 결정짓는 고난도<br>실전 모의고사</li>
                            <li>1등급을 넘어 만점을 향한 고난도 문항<br>완전 정복</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA blue</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img04.png" alt="OMEGA blue"></p>
						<span class="s-label">수학/과탐Ⅰ</span>
						<ul class="list-03">
							<li>안정적인 상위권 성적 확보를 위한<br>실전 모의고사</li>
                            <li>상수 문제 집중 훈련으로<br>실수 완벽 방어</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA weekly</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img05.png" alt="OMEGA weekly"></p>
						<span class="s-label">국/수/영/사탐/과탐Ⅰ&middot;Ⅱ</span>
						<ul class="list-03">
							<li>매주 제공되는 하프 문항 연습 문제로<br>실전 감각 유지</li>
                            <li>빠른 정답 확인이 가능한 표지 날개<br>구성으로 학습 시간 단축</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_mogo.png" alt="집체 모의고사"></label>
						<p class="tit">전국 대단위 실전 모의고사</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img06.png" alt="전국 대단위 실전 모의고사"></p>
						<span class="s-label p">전 과목</span>
						<ul class="list-03">
							<li>전국 수험생과 경쟁하는<br>6월 모평·수능 대비 실전 모의고사</li>
                            <li>성적 분석 리포트, 메가스터디 강사진의<br>해설 강의로 학습 효과 극대화</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_mogo.png" alt="집체 모의고사"></label>
						<p class="tit">메가X대성 더 프리미엄 모의고사</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img07.png" alt="메가X대성 더 프리미엄 모의고사"></p>
						<span class="s-label p">전 과목</span>
						<ul class="list-03">
							<li>러셀X메가스터디학원, 대성학원 재원생<br>전체가 응시하는 실전 모의고사</li>
                            <li>과목별 전체 출제진의 다 회차 검토를<br>거친 고퀄리티 문항</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_math.png" alt="수학 전용 실전"></label>
						<p class="tit">ALPHA</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img08.png" alt="ALPHA"></p>
						<span class="s-label r">수학 공통 + 선택</span>
						<ul class="list-03">
							<li>수능 기출 및 신유형 문제를 동시에<br>연습할 수 있는 수학 모의고사</li>
                            <li>서초 메가스터디학원 전임 강사가<br>직접 출제한 고퀄리티 문항 </li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_plan.png" alt="학습계획 컨텐츠"></label>
						<p class="tit">러셀 학습 플래너</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img09.png" alt="러셀 학습 플래너"></p>
						<ul class="list-03">
							<li>매일 시간별·과목별 목표 학습량과<br>실제 학습량 비교</li>
                            <li>담임 선생님의 피드백을 통해 학습 상황 점검</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_plan.png" alt="학습계획 컨텐츠"></label>
						<p class="tit">러셀 일일수학 30제</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img10.png" alt="일일수학 30제"></p>
						<ul class="list-03">
							<li>매일 일정량의 수학 문제 학습으로<br>문제 풀이 습관 형성</li>
                            <li>지속적인 문제 풀이 훈련으로 실수 방지</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_plan.png" alt="학습계획 컨텐츠"></label>
						<p class="tit">러셀 총평노트</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img11.png" alt="러셀 총평노트"></p>
						<ul class="list-03">
							<li>누적 기록을 통해 성적 변화를 확인하고 <br>향후 목표 설정 및 보완</li>
                            <li>실수·오답을 바탕으로<br>자기 평가를 진행해 취약점 개선</li>
						</ul>
					</div>
				</div>
			</div>
            <p class="r-txt">* ALPHA 및 학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’됩니다.<br>
                이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라 사용 여부 등이 변경 및 조정될 수 있습니다.</p>
            
			<!-- 반수반 월별 모의고사 일정 -->
            <h4 class="mt100 mb50"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont06_tit02.png" alt="반수반 월별 모의고사 일정"></h4>
            <div class="moth-box">
                <ul class="moth-list">
                    <li class="moth">3월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li></li>
                    <li></li>
                    <li class="bg-y05">[미니 모의고사]<br>
                        OMEGA weekly</li>
                    <li class="bg-p">[기출변형]<br>
                        알파 모의고사</li>
                    <li class="bg-b">[전 과목 모의고사]<br>
                        메가X대성<br>
                        더 프리미엄<br>
                        모의고사</li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">4월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li></li>
                    <li></li>
                    <li class="bg-y05">[미니 모의고사]<br>
                        OMEGA weekly</li>
                    <li class="bg-p">[기출변형]<br>
                        알파 모의고사</li>
                    <li class="bg-b">[전 과목 모의고사]<br>
                        메가X대성<br>
                        더 프리미엄<br>
                        모의고사</li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">5월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li></li>
                    <li class="bg-y04">[실전 모의고사]<br>
                        OMEGA blue</li>
                    <li class="bg-y05">[미니 모의고사]<br>
                        OMEGA weekly</li>
                    <li class="bg-p">[기출변형]<br>
                        알파 모의고사</li>
                    <li class="bg-m">[전 과목 모의고사]<br>
                        전국 대단위<br>
                        실전 모의고사</li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">6월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li></li>
                    <li class="bg-y04">[실전 모의고사]<br>
                        OMEGA blue</li>
                    <li class="bg-y05">[미니 모의고사]<br>
                        OMEGA weekly</li>
                    <li class="bg-p">[기출변형]<br>
                        알파 모의고사</li>
                    <li></li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">7월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li class="bg-y03">[상위권 풀 모의고사]<br>
                        OMEGA black</li>
                    <li class="bg-y04">[실전 모의고사]<br>
                        OMEGA blue</li>
                    <li></li>
                    <li></li>
                    <li class="bg-b">[전 과목 모의고사]<br>
                        메가X대성<br>
                        더 프리미엄<br>
                        모의고사</li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">8월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li class="bg-y03">[상위권 풀 모의고사]<br>
                        OMEGA black</li>
                    <li class="bg-y04">[실전 모의고사]<br>
                        OMEGA blue</li>
                    <li></li>
                    <li></li>
                    <li class="bg-b">[전 과목 모의고사]<br>
                        메가X대성<br>
                        더 프리미엄<br>
                        모의고사</li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">9월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li class="bg-y03">[상위권 풀 모의고사]<br>
                        OMEGA black</li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li class="bg-m">[전 과목 모의고사]<br>
                        전국 대단위<br>
                        실전 모의고사</li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">10월</li>
                    <li class="bg-y">[풀 모의고사]<br>
                        OMEGA</li>
                    <li class="bg-y02">[하프 모의고사]<br>
                        OMEGA link</li>
                    <li class="bg-y03">[상위권 풀 모의고사]<br>
                        OMEGA black</li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li class="bg-b">[전 과목 모의고사]<br>
                        메가X대성<br>
                        더 프리미엄<br>
                        모의고사</li>
                </ul>
                <ul class="moth-list">
                    <li class="moth">11월</li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li></li>
                    <li class="bg-b">[전 과목 모의고사]<br>
                        메가X대성<br>
                        더 프리미엄<br>
                        모의고사</li>
                </ul>
            </div>
            <p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
        </div>
    </div>

    <!-- bottom-bar -->
    <div class="bottom-bar">
        <% If sCampusCode = "CD0348" Then '여기숙 %>
        <p data-aos="fade-down" data-aos-offset="100">
			짧은 시간 더 높은 목표의 대학에 합격하는 공식<br>
			<%=txtCampus02%> 반수반<br>
			<strong><%=txtCampus02%> 반수반과 함께한다면<br>
				2026 최상위권 대입 합격 결과의 주인공은 여러분입니다.</strong></p>
        <% Else %>
        <p data-aos="fade-down" data-aos-offset="100">
			짧은 시간 더 높은 목표의 대학에 합격하는 공식<br>
			<%=txtCampus02%> 반수반<br>
			<strong><%=txtCampus02%> 반수반에서 함께한다면<br>
				2026 최상위권 대입 합격 결과의 주인공은 여러분입니다.</strong></p>
        <% End If %>
    </div>
</div>