<div class="cont js-cont <%=campusName%>">
	<div class="cont06">
		<h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half_overall/cont06_tit.png" alt=""></h4>
		<p class="s-tit mb100" data-aos="flip-up">한, 두 문제로 합격의 당락이 좌우되는 최상위권 경쟁에서 실전력은 필수입니다.<br>
			검증된 시기별 맞춤 콘텐츠와 집체 모의고사 실시를 통해 실전력 향상의 최적화된 훈련을 제공합니다.</p>
		<div class="inner02">
			<!-- 프로그램 슬라이드 -->
			<div class="program-slide swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img01.png" alt="OMEGA 모의고사"></p>
						<span class="s-label">전 과목</span>
						<ul class="list-03">
							<li>실제 수능과 비슷한 난이도의 <br>
								전 과목 FULL 모의고사</li>
							<li>신유형 포함 및 평가원 트렌드를 반영한 <br>
								문제로 수능 출제 패턴 체화</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA link</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img02.png" alt="OMEGA link"></p>
						<!-- <p class="r-txt">* OMEGA 모의고사와 세트로 구성</p> -->
						<span class="s-label">전 과목</span>
						<ul class="list-03">
							<li>복습 최적화 OMEGA 준 연계 <br>
								하프 모의고사</li>
							<li>10지 선다형, OX 문제 등 과목별 <br>
								맞춤 문항으로 섬세한 실력 보완</li>
						</ul>
					</div>
					<% If sCampusCode <> "CD0343" Then '코어원주 제외 %>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA black</p>
						<% If sCampusCode = "CD0257" Then '중계 %>
						<p class="img"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/program_slide_img03.png" alt="OMEGA black"></p>
						<span class="s-label">수학/사탐/과탐Ⅰ</span>
						<ul class="list-03">
							<li>고득점을 위한 
								고난도 실전 모의고사</li>
							<li>고난도 문항 완전 정복</li>
						</ul>
						<% Else %>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img03.png" alt="OMEGA black"></p>
						<span class="s-label">수학/사탐/과탐Ⅰ</span>
						<ul class="list-03">
							<li>최상위권을 결정짓는 고난도  <br>
								실전 모의고사								
							</li>
							<li>1등급을 넘어 만점을 향한 고난도 문항<br>
								완전 정복</li>
						</ul>
						<% End If %>
					</div>
					<% End If %>
					<% If sCampusCode <> "CD0343" and sCampusCode <> "CD0250" and sCampusCode <> "CD0257" Then '코어원주/부천/중계 제외 %>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA blue</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img04.png" alt="OMEGA blue"></p>
						<span class="s-label">수학/과탐Ⅰ</span>
						<ul class="list-03">
							<li>안정적인 상위권 성적 확보를 위한 <br>
								실전 모의고사</li>
							<li>상수 문제 집중 훈련으로 <br>실수 완벽 방어</li>
						</ul>
					</div>
					<% End If %>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_omega.png" alt="오메가 시리즈"></label>
						<p class="tit">OMEGA weekly</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img05.png" alt="OMEGA weekly"></p>
						<% If sCampusCode = "CD0250" Then '부천 제외 %>
						<span class="s-label">국/수/영</span>
						<% Else %>
						<span class="s-label">국/수/영/사탐/과탐Ⅰ&middot;Ⅱ</span>
						<% End If %>
						<ul class="list-03">
							<li>매주 제공되는 하프 문항 연습 문제로 <br>
								실전 감각 유지</li>
							<li>빠른 정답 확인이 가능한 표지 날개<br>구성으로 학습 시간 단축 </li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_mogo.png" alt="집체 모의고사"></label>
						<p class="tit">전국 대단위 실전 모의고사</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img06.png" alt="전국 대단위 실전 모의고사"></p>
						<span class="s-label p">전 과목</span>
						<ul class="list-03">
							<li>전국 수험생과 경쟁하는 <br>
								6월 모평·수능 대비 실전 모의고사</li>
							<li>성적 분석 리포트, 메가스터디 강사진의<br>
								해설 강의로 학습 효과 극대화</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_mogo.png" alt="집체 모의고사"></label>
						<p class="tit">메가X대성 더 프리미엄 모의고사</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img07.png" alt="메가X대성 더 프리미엄 모의고사"></p>
						<span class="s-label p">전 과목</span>
						<ul class="list-03">
							<li>러셀X메가스터디학원, 대성학원 재원생<br>전체가 응시하는 실전 모의고사 </li>
							<li>과목별 전체 출제진의 다 회차 검토를 <br>
								거친 고퀄리티 문항</li>
						</ul>
					</div>
					<% If sCampusCode <> "CD0257" Then '중계 제외 %>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_math.png" alt="수학 전용 실전"></label>
						<p class="tit">ALPHA</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img08.png" alt="알파 모의고사"></p>
						<span class="s-label r">수학 공통 + 선택</span>
						<ul class="list-03">
							<li>수능 기출 및 신유형 문제를 동시에 <br>연습할 수 있는 수학 모의고사 </li>
							<li>서초 메가스터디학원 전임 강사가 <br>
								직접 출제한 고퀄리티 문항 </li>
						</ul>
					</div>
					<% End If %>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_plan.png" alt="학습계획 컨텐츠"></label>
						<p class="tit">러셀 학습 플래너</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img09.png" alt="러셀 학습 플래너"></p>
						<ul class="list-03">
							<li>매일 시간별·과목별 목표 학습량과 <br>
								실제 학습량 비교</li>
							<li>담임 선생님의 피드백을 통해 학습 상황 점검
							</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_plan.png" alt="학습계획 컨텐츠"></label>
						<p class="tit">러셀 일일수학 30제</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img10.png" alt="일일수학 30제"></p>
						<ul class="list-03">
							<li>매일 일정량의 수학 문제 학습으로 <br>
								문제 풀이 습관 형성</li>
							<li>지속적인 문제 풀이 훈련으로 실수 방지
							</li>
						</ul>
					</div>
					<div class="swiper-slide">
						<label for=""><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_plan.png" alt="학습계획 컨텐츠"></label>
						<p class="tit">러셀 총평노트</p>
						<p class="img"><img src="<%=Application("img_path_russel")%>/intro/2025/half/program_slide_img11.png" alt="러셀 총평노트"></p>
						<ul class="list-03">
							<li>누적 기록을 통해 성적 변화를 확인하고 <br>
								향후 목표 설정 및 보완</li>
							<li>실수&middot;오답을 바탕으로 <br>자기 평가를 진행해 취약점 개선</li>
						</ul>
					</div>
				</div>
			</div>
			<div>
				<p class="r-txt">
					<% If sCampusCode = "CD0257" Then '중계 %>
					*학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’됩니다.
					<% Else %>
					* ALPHA 및 학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’됩니다.
					<% End If %>
					<br>
					이외 콘텐츠는 유료로 시행되는 학습 콘텐츠로 학원 정책 및 사정에 따라 사용 여부 등이 변경 및 조정될 수 있습니다.</p>
			</div>
			<!-- //프로그램 슬라이드 -->

			<!-- 반수반 월별 모의고사 일정 -->
			<h4 class="mt100 mb50"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont06_tit02.png" alt=""></h4>
			<% If sCampusCode = "CD0249" Then '영통 %>
			<div class="moth-box">
				<ul class="moth-list">
					<li class="moth">3월</li>
					<li class="bg-y">[풀 모의고사]<br>
						OMEGA</li>
					<li class="bg-y02">[하프 모의고사]<br>
						OMEGA link</li>
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
					<li class="bg-b">[전 과목 모의고사]<br>
						메가X대성<br>
						더 프리미엄<br>
						모의고사</li>
				</ul>
			</div>
			<% Else %>
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
			<% End If %>

			<p class="r-txt">* 상기 일정은 평가원 시행 계획 및 학원 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
		</div>
	 </div>
</div>
<div class="bt-banner">
	<% If sCampusCode = "CD0249" Then '영통 %>
	<p>짧은 시간 더 높은 목표의 대학에 합격하는 공식 <%=txtCampus%> 반수반<br>
		<strong><%=txtCampus%> 반수반과 함께한다면<br>
			2026 최상위권 대입 합격 결과의 주인공은 여러분입니다.</strong></p>
	<% Else %>
	<p>짧은 시간 더 높은 목표의 대학에 합격하는 공식 <%=txtCampus%> 반수종합반<br>
		<strong><%=txtCampus%> 반수종합반과 함께한다면<br>
			2026 최상위권 대입 합격 결과의 주인공은 여러분입니다.</strong></p>
	<% End If %>
</div>