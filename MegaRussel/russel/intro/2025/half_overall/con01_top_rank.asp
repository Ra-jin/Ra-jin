<div class="cont01 <%=campusName%>">
	<% If sCampusCode = "CD0342" or sCampusCode = "CD0340" Then '대구/코어광주 %>
	<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/cont01_tit.png" alt="성공적인 반수를 위한 변함없는 공식, 최상위권 대입 결과로 증명된 러셀 반수반"></h3>
	<% Else %>
	<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_tit.png" alt="성공적인 반수를 위한 변함없는 공식, 최상위권 대입 결과로 증명된 러셀 반수반"></h3>
	<% End If %>
	<div class="inner">
		<% If sCampusCode = "CD0349" Then '울산 %>
		<div class="result-box">
			<ul class="num-list tp04">
				<li>
					<p class="stu-num">메이저 의예</p>
					<p class="stu-tit"><strong>2</strong>명</p>
				</li>
				<li>
					<p class="stu-num">전국 의예과</p>
					<p class="stu-tit"><strong>29</strong>명</p>
				</li>
				<li>
					<p class="stu-num">치한수약학</p>
					<p class="stu-tit"><strong>31</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대</p>
					<p class="stu-tit"><strong>2</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서연고</p>
					<p class="stu-tit"><strong>26</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp04" style="margin-top: 42px;">
				<li>
					<p class="stu-num">KAIST/DGIST/<br>
						UNIST</p>
					<p class="stu-tit"><strong>13</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서성한</p>
					<p class="stu-tit"><strong>22</strong>명</p>
				</li>
				<li>
					<p class="stu-num">중경외시이</p>
					<p class="stu-tit"><strong>29</strong>명</p>
				</li>
				<li>
					<p class="stu-num">건동홍숙</p>
					<p class="stu-tit"><strong>18</strong>명</p>
				</li>
				<li>
					<p class="stu-num">지방거점 국립대</p>
					<p class="stu-tit"><strong>53</strong>명</p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				※ 최종 업데이트 : 2025-03-10｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다. <br>
				※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함) <br>
				※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0249" Then '영통 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀 영통 2020~2024학년도 합격생 현황"></p>
			<ul class="num-list tp05 mt50">
				<li>
					<p class="stu-num">의&middot;치&middot;한&middot;수&middot;약</p>
					<p class="stu-tit"><strong>299</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대</p>
					<p class="stu-tit"><strong>76</strong>명</p>
				</li>
				<li>
					<p class="stu-num">SKY</p>
					<p class="stu-tit"><strong>327</strong>명</p>
				</li>
			</ul>
			<ul class="num-list ver03 mt40">
				<li>
					<p class="stu-num">서&middot;성&middot;한&middot;이</p>
					<p class="stu-tit"><strong>282</strong>명</p>
				</li>
				<li>
					<p class="stu-num">중&middot;경&middot;외&middot;시</p>
					<p class="stu-tit"><strong>284</strong>명</p>
				</li>
				<li>
					<p class="stu-num">교대&middot;경대사관&middot;<br>특성화대</p>
					<p class="stu-tit"><strong>97</strong>명</p>
				</li>
				<li>
					<p class="stu-num">주요 15개 대</p>
					<p class="stu-tit"><strong>1,059</strong>명</p>
				</li>
			</ul>
			<p class="r-txt">※ 2020~2025학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2025.03.04 기준)</p>
		</div>
		<% ElseIf sCampusCode = "CD0342" Then '대구 %>
		<div class="result-box style02">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="올해도 역시 러셀 대구, 2024년에도 러셀 대구는 ‘결과’로 증명해냈습니다"></p>
			<ul class="num-list tp04 non">
				<li>
					<p class="stu-num">연세대 의예</p>
					<p class="stu-tit"><strong>1</strong>명</p>
				</li>
				<li>
					<p class="stu-num">성균관대 의예</p>
					<p class="stu-tit"><strong>2</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메이저 의예</p>
					<p class="stu-tit"><strong>12</strong>명<br>
					<span style="bottom:-50px;">(서울대, 연세대, 성균관대,<br>
						가톨릭대, 울산대 기준)</span></p>
				</li>
				<li>
					<p class="stu-num">전국 의예</p>
					<p class="stu-tit"><strong>152</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp04 non mt50">
				<li>
					<p class="stu-num">치&middot;한&middot;수&middot;약&middot;학</p>
					<p class="stu-tit"><strong>85</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서&middot;연&middot;고</p>
					<p class="stu-tit"><strong>53</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서성한이 과학기술원</p>
					<p class="stu-tit"><strong>73</strong>명</p>
				</li>
				<li>
					<p class="stu-num">경북대</p>
					<p class="stu-tit"><strong>68</strong>명<br>
					<span>(*의약학계열 36명)</span></p>
				</li>
			</ul>
			<p class="r-txt">*2024년 러셀 대구 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 및 수시 중복 합격자 포함, 단과 수강생 미포함)<br>
				*2025.02.07 기준이며, 지속적으로 업데이트 될 예정입니다.</p>
		</div>
		<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀CORE 광주 2024학년도 합격생 현황, 광주지역 재학생 수석 배출"></p>
			<ul class="num-list tp05">
				<li>
					<p class="stu-num">서울대 의예</p>
					<p class="stu-tit"><strong>1</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메이저 의예</p>
					<p class="stu-tit"><strong>10</strong>명</p>
				</li>
				<li>
					<p class="stu-num">연세대 의예</p>
					<p class="stu-tit"><strong>3</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp05 mt30">
				<li>
					<p class="stu-num">전국 의예</p>
					<p class="stu-tit"><strong>86</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메디컬<br>
						<span>(의치한수약)</span></p>
					<p class="stu-tit"><strong>155</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서연고</p>
					<p class="stu-tit"><strong>33</strong>명</p>
				</li>
			</ul>
		</div>
		<!-- 데이터 산출기준 -->
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				* 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2025.02.27 기준) <br>
				(복수 대학 합격자 포함/단과 수강생 제외)<br>
				* 25학년도 대학수학능력시험 응시한 광주 지역 재학생 표준점수 최고점 기준<br>
				* 메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
			</div>
		</div>
		<ul class="review-report">
			<li data-aos="zoom-in-up">
				<dl>
					<dt>
						<div>2025</div>
						<p class="name">러셀CORE 광주 HS 종합반 <span>윤OO</span></p>
					</dt>
					<dd>
						<div>
							<p class="after"><strong>2025학년도 297.5점</strong></p>
							<p class="before">2024학년도 284.5점</p>
						</div>
						<p class="up">백분위 <strong>83.9% 상승</strong></p>
					</dd>
				</dl>
				<div class="review-box">
					<table class="tbl-01 stu-tbl">
						<colgroup>
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
						</colgroup>
						<thead>
							<tr class="low">
								<th>구분</th>
								<th>국어</th>
								<th>수학</th>
								<th>영어</th>
								<th>탐구1</th>
								<th>탐구2</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>2025 수능</th>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
								<td>1</td>
							</tr>
							<tr>
								<th>2024 수능</th>
								<td>2</td>
								<td>1</td>
								<td>1</td>
								<td>2</td>
								<td>1</td>
							</tr>
						</tbody>
					</table>
				</div>
			</li>
			<li data-aos="zoom-in-up">
				<dl>
					<dt>
						<div>2025</div>
						<p class="name">러셀CORE 광주 서의치대 종합반 <span>공OO</span>
						</p>
					</dt>
					<dd>
						<div>
							<p class="after"><strong>2025학년도 282점</strong></p>
							<p class="before">2024학년도 204.5점</p>
						</div>
						<p class="up">백분위 <strong>81.2% 상승</strong></p>
					</dd>
				</dl>
				<div class="review-box">
					<table class="tbl-01 stu-tbl">
						<colgroup>
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
						</colgroup>
						<thead>
							<tr class="low">
								<th>구분</th>
								<th>국어</th>
								<th>수학</th>
								<th>영어</th>
								<th>탐구1</th>
								<th>탐구2</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>2025 수능</th>
								<td>2</td>
								<td>1</td>
								<td>2</td>
								<td>2</td>
								<td>1</td>
							</tr>
							<tr>
								<th>2024 수능</th>
								<td>5</td>
								<td>4</td>
								<td>3</td>
								<td>4</td>
								<td>3</td>
							</tr>
						</tbody>
					</table>
				</div>
			</li>
			<li data-aos="zoom-in-up">
				<dl>
					<dt>
						<div>2025</div>
						<p class="name">러셀CORE 광주 블루 종합반 <span>정OO</span>
						</p>
					</dt>
					<dd>
						<div>
							<p class="after"><strong>2025학년도 267점</strong></p>
							<p class="before">2024학년도 185.5점</p>
						</div>
						<p class="up">백분위 <strong>71.2% 상승</strong></p>
					</dd>
				</dl>
				<div class="review-box">
					<table class="tbl-01 stu-tbl">
						<colgroup>
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
						</colgroup>
						<thead>
							<tr class="low">
								<th>구분</th>
								<th>국어</th>
								<th>수학</th>
								<th>영어</th>
								<th>탐구1</th>
								<th>탐구2</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>2025 수능</th>
								<td>2</td>
								<td>2</td>
								<td>1</td>
								<td>4</td>
								<td>2</td>
							</tr>
							<tr>
								<th>2024 수능</th>
								<td>4</td>
								<td>3</td>
								<td>3</td>
								<td>5</td>
								<td>5</td>
							</tr>
						</tbody>
					</table>
				</div>
			</li>
			<li data-aos="zoom-in-up">
				<dl>
					<dt>
						<div>2025</div>
						<p class="name">러셀CORE 광주 HS 종합반 <span>홍OO</span>
						</p>
					</dt>
					<dd>
						<div>
							<p class="after"><strong>2025학년도 285점</strong></p>
							<p class="before">2024학년도 253점</p>
						</div>
						<p class="up">백분위 <strong>68.1% 상승</strong></p>
					</dd>
				</dl>
				<div class="review-box">
					<table class="tbl-01 stu-tbl">
						<colgroup>
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
							<col style="width:auto;">
						</colgroup>
						<thead>
							<tr class="low">
								<th>구분</th>
								<th>국어</th>
								<th>수학</th>
								<th>영어</th>
								<th>탐구1</th>
								<th>탐구2</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>2025 수능</th>
								<td>2</td>
								<td>1</td>
								<td>1</td>
								<td>2</td>
								<td>1</td>
							</tr>
							<tr>
								<th>2024 수능</th>
								<td>4</td>
								<td>1</td>
								<td>2</td>
								<td>2</td>
								<td>3</td>
							</tr>
						</tbody>
					</table>
				</div>
			</li>
		</ul>
		<% End If %>
	</div>
</div>
<div class="cont02 <%=campusName%>">
	<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont02_tit.png" alt="더 높은 꿈을 향해 도전했던 많은 수험생들은 러셀에서 짧은 시기, 성공적인 결과를 이루었습니다."></h3>
	<div class="inner">
		<!-- 학생후기 -->
		<div class="review-slide swiper-container">
			<% If sCampusCode = "CD0349" Then '울산 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>아주대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">짧은 기간, 대입에 필요한<br>
							모든 환경을 제공해 주었습니다.</p>
						<p>입시 담임 선생님은 입시를 준비하는 과정에 있어서 <strong>내가 지금 올바른 방향으로 가고 있는지, 
							잘못된 방향으로 가고 있지는 않은지 계속해서 점검</strong>해 주십니다. 
							또한 모의고사를 치를 때마다 피드백을 통해 어떤 부분이 부족한지 모니터링할 수 있어서 학습 방향 설정에 큰 도움이 되었습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 울산 손○명</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>부산대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">입시 담임 선생님의<br>
							입시 컨설팅으로 합격할 수 있었습니다.</p>
						<p>대학 원서를 넣을 때 고민이 많았는데, 선생님께서 지난 입시 결과와 현재 상황을 알려주시며 어떤 식으로 넣으면 좋을지 추천도 해주셨고, 
							고민 상담도 잘 받아주셔서 큰 도움이 되었습니다. 
							또한 학원에서 모의고사를 친 후 이번 모의고사에서 아쉬웠던 점, 잘했던 점을 집어주시며 제가 다음 모의고사를 더 철저하게 준비할 수 있도록 큰 도움을 주셨던 분이 바로 담임 선생님이셨습니다. 
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 울산 공승희</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_ksh.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>부산대 약학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">모두가 최선을 다하는<br>
							학습 분위기가 큰 도움이 되었습니다.</p>
						<p>바자관이 독서실처럼 칸이 아예 막혀 있는 게 아니라 덜 답답했고 <strong>다 같이 공부를 열심히 하는 분위기라서 좋았습니다. </strong>
							점심, 저녁 시간에도 알차게 공부하는 사람들이 많아 저까지 쉬는 시간에 같이 공부하게 되는 효과가 있었습니다. 
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 울산 김○○</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>연세대 경영학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">문득 불안할 때마다<br>
							현실적인 조언이 오히려 도움이 되었습니다.</p>
						<p>바자관은 합격을 위해 기꺼이 노력하기로 다짐한 사람들이 모여있는 공간이기에, 주위 환경에 영향을 비교적 많이 받는 성향의 저에게 큰 도움이 되었습니다. 
							지친 기분이 들어도 주위에서 최선을 다하고 있는 다른 분들을 보며 다시 마음을 다잡고 오래 집중할 수 있었기에 <strong>바자관의 분위기가 전체적인 학습에서 큰 도움을 주었습니다.</strong>
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 울산 김○은</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_w.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0249" Then '영통 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>고려대 의과대학 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">수능 시간표와 유사한 <br>
							바자관의 표준 시간표가 큰 도움이 되었습니다.</p>
						<p><strong>수능 시간표와 유사하게 이루어지는 바자관의 표준 시간표가 큰 도움이 되었습니다. </strong>
							모의고사를 응시할 때에도 각 과목별로 따로 응시하는 것보다 수능 시간표에 맞춰 이어서 응시하는 것이 더 <strong>현장감 있기에, 
								러셀의 표준 시간표에 맞추어 공부하였습니다.</strong></p>
					</div>
					<dl class="stu-info">
						<dt>러셀 영통 오서준</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_osj.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>서울대학교 <br>
							치의학학석사통합과정 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">학습 및 입시에 대한 1:1 상담이<br>
							많은 도움이 되었습니다.</p>
						<p><strong>학습 동선을 최소화하는 것</strong>이 큰 도움이 되었습니다. <br>
							또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다. </strong>
							모의고사 이후 성적 분석을 토대로 한 상담은 학습 방향을 잡는 데에 도움이 되었고, 
							정확한 수치를 근거로 입시에 대한 구체적인 정보를 알려주셨습니다.
						</p>
					</div>
					<dl class="stu-info mt0">
						<dt>러셀 영통 최지원</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_cjw.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>전북대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">표준 시간표와 전용 와이파이로<br>
							집중도를 높일 수 있었습니다.</p>
						<p>바자관의 장점은 <strong>표준 시간표와 전용 와이파이</strong>입니다. 
							항상 자습시간이 정해져 있다 보니 딴 곳으로 잘 새지 않고 자습시간을 확보할 수 있으며 <strong>자습시간 동안에도 딴짓하지 않고 공부에만 집중</strong>할 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 영통 오준학</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_ojh.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>영남대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">바자관의 개방형 구조로 인해<br>
							주변 학생들을 보며 공부를 열심히 할 수 있었습니다.</p>
						<p>바자관의 장점은 <strong>개방형 구조</strong>라고 생각합니다. 
							<strong>집중이 안 될 때 주변 학생들이 공부하고 있는 모습을 보면 ‘나도 다시 열심히 해야겠다.’</strong>라는 생각이 들어서 좋았습니다. 
							또한 <strong>시간표가 수능 시간표와 비슷한 것이 습관 형성</strong>에 좋았습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 영통 박우영</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_pwy.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>전북대 치의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">멘탈을 강하게 만들어주는<br>
							자습관의 시스템으로 도움이 많이 되었습니다.</p>
						<p>바자관의 장점은 <strong>개방형 구조</strong>입니다. 또한, <strong>러셀의 체조 시스템, 바자관 내에 공기청정기과 온도계를 상시 가동</strong>하여 쾌적한 환경에서 공부를 할 수 있었던 것도 좋았습니다. <br>
							<strong>재수 초반에 멘탈적으로 지칠 대로 지쳐있었고</strong> 이런 상황에 <strong>가장 큰 힘이 되어주셨던 건 담임 선생님</strong>이라고 생각합니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 영통 우태현</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_wth.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>원광대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">심야 자습 제도와 나태해지지 않는 벌점 제도가<br>
							가장 좋았어요.</p>
						<p><strong>심야 자습 제도가 가장 좋았습니다.</strong> 10시에 학원이 끝나고 바로 바자관에 가서 복습하면 집중력이 흐트러지지 않고 12시까지 공부를 할 수 있었습니다. 
							또한 <strong>벌점 제도를 통해 나태해지지 않고 끝까지 달릴 수 있었던 것 같습니다.</strong></p>
					</div>
					<dl class="stu-info">
						<dt>러셀 영통 이수민</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_lsm.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0342" Then '대구 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>경북대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">개방형 구조의 바자관으로 <br>
							긍정적인 경쟁심 자극</p>
						<p>바자관은 개방형 구조로 되어 있어 수능이라는 같은 목표를 향해 가고 있는 
							많은 사람들을 보며 긍정적인 경쟁심을 자극받을 수 있습니다.<br>
							수험 생활을 하다 보면 집중력이 떨어지거나 마음가짐이 흐려지는 순간이 오는데 
							<strong>바자관의 철저한 출결 관리와 정해진 표준 시간표는 공부 리듬</strong>이 깨지지 않고 끝까지 공부하는 데 큰 도움이 되었습니다. </p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대구 강유현</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_kyh.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>가천대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">입시 정보 및 전문적인 지원 상담</p>
						<p>수시로 바자관을 관리 점검해 주시고 건의 사항 또한 빠르게 수리해 주십니다. 
							담임선생님을 통해서 수험생활 전반의 안내를 받고 
							입시에 유용한 정보들을 얻을 수 있습니다. <br>
							또한 수시 접수 이전에는 통계 프로그램을 이용해서 전문적인 지원 상담도 해주셔서 원서를 접수하는 데 도움이 되었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대구 임승재</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_lsj.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>대구한의대 한의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">주기적인 모의고사 진행으로<br>
							부족한 점 빠르게 보완</p>
						<p>주기적으로 진행되는 메가X대성 더 프리미엄 모의고사가 큰 도움이 되었습니다. 
							실제 수능 시간표와 동일하게 양질의 모의고사를 
							응시한 뒤 부족한 점을 최대한 많이 발견하고 보완할 수 있었습니다. 
							또한 차후 배부되는 <strong>수능 예상 성적표를 통해 저의 위치를 객관적으로 진단하고 공부 의지</strong>를 다시 다잡는 데 큰 도움이 되었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대구 박이완</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_piw.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>경북대 수의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">입시 관련 특강 및 설명회로<br>
							공부 계획 세우는 데 도움</p>
						<p>다양한 특강이 개설되어서 도움이 많이 되었습니다. <br>
							<strong>입시 초반에 정시 설명회나 논술 설명회와 같이 입시 전형에 관한 특강</strong>을 들었는데 
							합격한 사례들을 구체적으로 알 수 있어 합격 사례와 비교했을 때 내가 어떤 부분에서 부족한지 알 수 있었고 그것을 바탕으로, 
							앞으로의 공부 계획을 세우는 데에도 많은 도움이 됐습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대구 안준영</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_yjy.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
			<div class="swiper-wrapper p2">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>서울대 인문계열 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">학습시간을 확보할 수<br> 
							있었던 점이 가장 좋았습니다.</p>
						<p>바른공부 자습전용관의 장점은 학습에 집중할 수 있는 면학 분위기입니다. 
							개방형 구조로 되어있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다. 
							또한 체계적인 시스템으로 운영되기 때문에 학습시간을 충분히 확보할 수 있었고 시간을 효율적으로 사용하기 위해 집중력 있게 공부를 할 수 있었습니다. 
							또한 라이브 수업 수강을 통해 받을 수 있었던 현강 자료들이 도움이 되었습니다. 
							높은 퀄리티의 자료들을 통해 실력을 향상시킬 수 있었고 질의응답을 통해 어려웠거나 헷갈렸던 개념들을 확인하고 바로잡을 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 광주 김효원</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_khw.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>한양대학교 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">공부 외의 것들은 최대한 신경을 <br>
							안 쓰게 관리를 해줘서 좋았습니다.</p>
						<p>바른공부 자습전용관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다. 
							부족하다고 생각하는 과목을 찾아 듣다 보니 강제로 불필요한 수업을 들을 때와 달리 집중력 있게 수업을 들을 수 있었고 
							자습 시간 확보에도 도움이 되었습니다. 공부에만 집중할 수 있게 공부 외의 것들은 최대한 신경을 안 쓰게 관리를 해줘서 좋았습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 광주 엄태옥</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_utw.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% End If %>

			<!-- 화살표 -->
			<% If sCampusCode <> "CD0340" Then '코어광주 제외 %>
			<div class="swiper-button-next"></div>
    		<div class="swiper-button-prev"></div>
			<% End If %>
		</div>

		<% If sCampusCode = "CD0249" or sCampusCode = "CD0349" or sCampusCode = "CD0340" Then '영통/울산/코어광주 %>
		<p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
		<% Else %>
		<p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
		<% End If %>
		<!-- //학생후기 -->

		<p class="txt"><%=txtCampus%>에서 시작한다면 시간은 충분합니다.<br>
			더 이상 망설이지 말고 시작하세요.</p>
	</div>
</div>

<!-- tab01 수준별 맞춤 단과 -->
<div class="cont js-cont <%=campusName%>">
	<div class="cont03">
		<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont03_tit.png" alt="효율적인 학습이 중요한 반수생활, 반수 최적화된 학습 시스템으로 빠르게 최상위권 대학 합격을 만들어 드립니다."></h3>
		
		<!-- fix-menu -->
		<div class="fix-menu-wrap">
			<nav class="fix-menu">
				<div class="menu">
					<a class="on" href="javascript:void(0);"><%=menu_tit01%></a>
					<a href="javascript:void(0);">최대 효율<br><strong>바른공부 자습전용관</strong></a>
					<a href="javascript:void(0);">전략적 관리<br><strong>학생 맞춤 관리</strong></a>
					<a href="javascript:void(0);">맞춤 콘텐츠<br><strong>실전 학습 콘텐츠</strong></a>
				</div>
			</nav>
		</div>
		<!-- //fix-menu -->
		<% If sCampusCode = "CD0349" Then '울산 %>
		<h4 class="mb60" data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/cont03_tit02.png" alt="수능까지 빈틈없이 진행되어 반드시 성적이 향상되는 종합반 연간 커리큘럼"></h4>
		<div class="inner">
			<table class="tbl-01 c-tbl">
				<colgroup>
					<col style="width:7%;">
					<col style="width:;">
					<col style="width:9%;">
					<col style="width:;">
					<col style="width:9%;">
					<col style="width:;">
					<col style="width:9%;">
				</colgroup>
				<thead>
					<tr class="low">
						<th>구분</th>
						<th>5~6월</th>
						<th>6월 모평</th>
						<th>7월~8월</th>
						<th>9월 모평</th>
						<th>9월~11월</th>
						<th>수능</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th class="bg-th">국어</th>
						<td>기출 문제 분석과<br>
							원리와 논리 적용 심화<br>
							(6평 대비 1달간 집중모의고사)</td>
						<td rowspan="5">평가원<br>
							모의고사<br>
							[6월]</td>
						<td>실전모의고사와<br>
							6월 모평 기준 핵심 원리 총 정리<br>
							(9평 대비 1달간 집중모의고사)</td>
						<td rowspan="5">평가원<br>
							모의고사<br>
							[9월]</td>
						<td>실전모의고사와<br>
							9월 모평 기준 핵심 원리 최종 정리<br>
							(수능 대비 2달간 집중모의고사)</td>
						<td rowspan="5" class="last">대학수학<br>
							능력시험<br>
							[11월]</td>
					</tr>
					<tr>
						<th class="bg-th">수학</th>
						<td>핵심 주제 정리 및<br>
							유형별 고난도 문제 풀이</td>
						<td>최신 경향 문제 풀이 및<br>
							모의고사 형태로 전체 단원 정리</td>
						<td>핵심 개념 정리 및 <br>
							FINAL 실전모의고사</td>
					</tr>
					<tr>
						<th class="bg-th">영어</th>
						<td>독해, EBS 소재 연계<br>
							6평 전략 실전 모의고사</td>
						<td>문제풀이 및 모의고사,<br>
							9평 전략 실전 모의고사</td>
						<td>6,9평 분석 및 유형별 최종 정리,<br>
							파이널 및 실전 봉투 모의고사</td>
					</tr>
					<tr>
						<th class="bg-th">과학<br>탐구</th>
						<td>개념정리 및 수능 기출과<br>
							EBS 변형문제 풀이,<br>
							중상~상 난이도 문제풀이</td>
						<td>상 난이도 문제풀이 및<br>
							실전 모의고사</td>
						<td>FINAL 실전 모의고사</td>
					</tr>
					<tr>
						<th class="bg-th">논술</th>
						<td>수리논술 기본 및<br>
							공통수학/수Ⅰ,Ⅱ/미적분</td>
						<td>실전모의고사 및<br>
							기학/확통 특강</td>
						<td>실전모의고사 및<br>
							대학별 파이널(수능 전/수능 후)</td>
					</tr>
				</tbody>
			</table>
			<p class="r-txt">※ 학원 사정에 의해 연간 커리큘럼 내용은 변경될 수 있습니다.</p>
		</div>
		<% Else %>
		<h4 class="mb60" data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/cont03_tit02.png" alt="수능까지 빈틈없이 진행되어 반드시 성적이 향상되는 종합반 연간 커리큘럼"></h4>
		<p class="s-tit" data-aos="flip-up"><%=danka_txt%></p>
		<% End If %>

		<div class="inner">
			<% If sCampusCode = "CD0349" or sCampusCode = "CD0342" Then '울산/대구 %>
			<!-- 강사진 슬라이드 -->
			<div class="d-wrap">
				<% If sCampusCode = "CD0349" Then '울산 %>
				<p class="mb80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/teacher_tit.png" alt=""></p>
				<% End If %>
				<ul class="danka-list">
					<li>
						<p><strong>러셀 강남&middot;대치&middot;기숙</strong> 및<br><strong>메가스터디 인강</strong> 출강</p>
					</li>
					<li>
						<p>종합반 전 과목<br><strong>현장 강의 진행</strong></p>
					</li>
					<li>
						<p>과목별 성취도에 맞춘<br><strong>수준별 맞춤 수업</strong></p>
					</li>
					<li>
						<p><strong>1:1 맞춤 관리</strong> 및<br><strong>질의응답 직접 진행</strong></p>
					</li>
				</ul>
			</div>
			<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
			<p class="mb100"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/cont03_img.jpg" alt=""></p>
			<p class="mb80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half_overall/teacher_tit.png" alt=""></p>
			<% End If %>

			<!--#include virtual="/intro/2025/half_overall/teacher_slide.asp"-->
			<!-- //강사진 슬라이드 -->
			<p class="r-txt">*학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>

			<!-- 단과 -->
			<% If sCampusCode = "CD0249" Then '영통 %>
			<div class="tbl-box">
				<h3 class="tit">영통 재수종합반[반수] <strong>수업 시간표</strong></h3>
                <table class="tbl-01 type02">
                    <colgroup>
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                        <col style="width:auto" />
                    </colgroup>
                    <thead>
                        <tr>
                            <th>요일</th>
                            <th>월</th>
                            <th>화</th>
                            <th>수</th>
                            <th>목</th>
                            <th>금</th>
                            <th>토</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th rowspan="3" class="bg-th">
                                오전<br>
                                (8:40~<br>
                                12:10)
                            </th>
                            <td></td>
                            <td class="sub-pk">국어<br>
                                강민기T<br>
                                [주1회]
                            </td>
                            <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                김유한T<br>
                                [주1회]
                            </td>
                            <td class="sub-pk">국어<br>
                                강민기T<br>
                                [주1회]
                            </td>
                            <td class="sub-gr">영어<br>
                                김민경T<br>
                                [주1회]
                            </td>
                            <td class="sub-dg" style="position:relative;">생활과윤리<br>
                                차현호T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="sub-gr">영어<br>
                                김민경T<br>
                                [주1회]
                            </td>
                            <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                김형민T<br>
                                [주1회]
                            </td>
                            <td class="sub-gr">영어<br>
                                김민경T<br>
                                [주1회]
                            </td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                최봉서T<br>
                                [주1회]
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th rowspan="3" class="bg-th">
                                오후<br>
                                (13:30<br>
                                ~<br>
                                17:00)
                            </th>
                            <td class="sub-pp">지구과학I<br>
                                양이석T<br>
                                [주1회]
                            </td>
                            <td class="sub-pp">물리학I<br>
                                박민규T<br>
                                [주1회]
                            </td>
                            <td class="sub-bl">수학<span class="fz12">(수I/수II)</span><br>
                                김유한T<br>
                                [주1회]
                            </td>
                            <td class="sub-pp">생명과학I<br>
                                박소영T<br>
                                [주1회]
                            </td>
                            <td class="sub-bl">수학<span class="fz12">(미적분)</span><br>
                                김유한T<br>
                                [주1회]
                            </td>
                            <td class="sub-pk" style="position:relative;">국어<br>
                                신용선T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="sub-bl">수학<span class="fz12">(미적분)</span><br>
                                최봉서T<br>
                                [주1회]
                            </td>
                            <td></td>
                            <td class="sub-bl">수학<span class="fz12">(확통)</span><br>
                                김형민T<br>
                                [주1회]
                            </td>
                            <td></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td class="sub-pp">화학I<br>
                                박건수T<br>
                                [주1회]
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <th rowspan="2" class="bg-th">
                                저녁<br>
                                (18:30<br>
                                ~<br>
                                22:00)
                            </th>
                            <td class="sub-dg" style="position:relative;">수학<span class="fz12">(수I/수II)</span><br>
                                김가람T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                            <td class="sub-dg" style="position:relative;">정치와법<br>
                                박지은T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                            <td class="sub-dg" style="position:relative;">수학<span class="fz12">(수I/수II)</span><br>
                                장영진T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                            <td class="sub-dg" style="position:relative;">사회문화<br>
                                정정T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                            <td class="sub-dg" style="position:relative;">수리논술<br>
                                유홍조T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                            <td class="sub-dg" style="position:relative;">사회문화<br>
                                손고운T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                        </tr>
                        <tr>
                            <td></td>
                            <td class="sub-dg" style="position:relative;">윤리와사상<br>
                                차현호T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                            <td class="sub-dg" style="position:relative;">인문논술<br>
                                장진석T<br>
                                [주1회]
                                <label for="">50%<br>지원</label>
                            </td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
			</div>
			<% ElseIf sCampusCode = "CD0349" or sCampusCode = "CD0342" Then '울산/대구 %>
			<% Else %>
			<ul class="danka-link">
				<li>
					<dl>
						<dt><%=go3_stxt%></dt>
						<dd><%=go3_txt%></dd>
					</dl>
					<ul>
						<li>메가스터디 수능 전문 강사진의 몰입감 높은 현장 강의</li>
						<li>평일 저녁/주말 시간대에 필요한 수업만 전략적으로 선택</li>
					</ul>
					<a href="<%=go3_url%>">자세히 보기</a>
				</li>
				<!-- <li>
					<dl>
						<dt><%=am_stxt%></dt>
						<dd><%=am_txt%></dd>
					</dl>
					<ul>
						<li>평일 오전/오후 시간대에 체계적인 과목 편성</li>
						<li>관리력이 강력한 선생님의 N수생 전용 집중 관리형 수업</li>
					</ul>
					<a href="<%=am_url%>">자세히 보기</a>
				</li> -->
			</ul>
			<% End If %>
		</div>
	</div>
</div>