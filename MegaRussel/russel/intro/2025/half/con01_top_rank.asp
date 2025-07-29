<div class="cont01 <%=campusName%>">
	<% If sCampusCode = "INTRO" Then '인트로 %>
	<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_tit.png" alt="성공적인 반수를 위한 변함없는 공식, 최상위권 대입 결과로 증명된 러셀 반수반"></h3>
	<% Else %>
	<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_tit.png" alt="성공적인 반수를 위한 변함없는 공식, 최상위권 대입 결과로 증명된 러셀 반수반"></h3>
	<% End If %>
	<div class="inner">
		<% If sCampusCode = "CD0001" Then '대치 %>
		<div class="result-box style01">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀 대치 최상위권 입시 결과"></p>
			<ul class="num-list tp02">
				<li>
					<p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img01.png" alt=""></p>
					<p class="stu-tit">2018 <i>1)</i><br>
						<strong>수능 만점자 배출</strong></p>
				</li>
				<li>
					<p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img02.png" alt=""></p>
					<p class="stu-tit">2020 <i>2)</i><br>
						<strong>수능 만점자 배출</strong></p>
				</li>
				<li>
					<p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img03.png" alt=""></p>
					<p class="stu-tit">2021 <i>3)</i><br>
						<strong>수능 전국 수석 배출</strong></p>
				</li>
				<li>
					<p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img04.png" alt=""></p>
					<p class="stu-tit">2025 <i>4)</i><br>
						<strong>수능 만점자 배출</strong></p>
				</li>
				<li>
					<p class="stu-num"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_img05.png" alt=""></p>
					<p class="stu-tit">2025 <i>4)</i><br>
						<strong>수능 만점자 배출</strong></p>
				</li>
			</ul>
			<!-- <p class="mt70"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt02.png" alt="2024 최상위권 입시 결과"></p>
			<ul class="num-list ver01">
				<li>
					<p class="stu-num">2024 대입<br>메이저 의예과<i>4)</i></p>
					<p class="stu-tit"><strong>총 35명 합격</strong></p>
				</li>
				<li>
					<p class="stu-num">2024 대입<br>전국 의예과<i>4)</i></p>
					<p class="stu-tit"><strong>총 119명 합격</strong></p>
				</li>
				<li>
					<p class="stu-num">2024 대입<br>의/치/한/수/약<i>4)</i></p>
					<p class="stu-tit"><strong>총 199명 합격</strong></p>
				</li>
				<li>
					<p class="stu-num">2024 대입<br>서/연/고<i>4)</i></p>
					<p class="stu-tit"><strong>총 230명 합격</strong></p>
				</li>
			</ul> -->

			<p class="mt70"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt03.png" alt="2025 최상위권 수시 입시 결과"></p>
			<ul class="num-list ver01">
				<li>
					<p class="stu-num">2025 대입<br>메이저 의예과<i>4)</i></p>
					<p class="stu-tit"><strong>총 21명 합격</strong></p>
				</li>
				<li>
					<p class="stu-num">2025 대입<br>전국 의예과<i>4)</i></p>
					<p class="stu-tit"><strong>총 130명 합격</strong></p>
				</li>
				<li>
					<p class="stu-num">2025 대입<br>의/치/한/수/약<i>4)</i></p>
					<p class="stu-tit"><strong>총 216명 합격</strong></p>
				</li>
				<li>
					<p class="stu-num">2025 대입<br>서/연/고<i>4)</i></p>
					<p class="stu-tit"><strong>총 210명 합격</strong></p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				1) 2018학년도 수능 실성적 기준<br>
				2) 2020학년도 수능 실성적 기준<br>
				3) 2021학년도 수능 실성적 기준 (*표준점수/백분위 합 기준)<br>
				4) 2025학년도 러셀 대치 재원생의 합격자 기준(*복수대학 합격자 및 중복 합격자 포함)
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0245" Then '목동 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀 대치 최상위권 입시 결과"></p>
			<ul class="num-list tp04 mb40">
				<li>
					<p class="stu-num">의예과</p>
					<p class="stu-tit"><strong>102</strong>명</p>
				</li>
				<li>
					<p class="stu-num">치한수</p>
					<p class="stu-tit"><strong>60</strong>명</p>
				</li>
				<li>
					<p class="stu-num">약학과</p>
					<p class="stu-tit"><strong>62</strong>명</p>
				</li>
				<li>
					<p class="stu-num">과학기술원</p>
					<p class="stu-tit"><strong>18</strong>명<br>
					<span>* 카이스트 8명 포함 *</span></p>
				</li>
			</ul>
			<ul class="num-list tp04">
				<li>
					<p class="stu-num">서울대</p>
					<p class="stu-tit"><strong>34</strong>명</p>
				</li>
				<li>
					<p class="stu-num">연세대</p>
					<p class="stu-tit"><strong>89</strong>명</p>
				</li>
				<li>
					<p class="stu-num">고려대</p>
					<p class="stu-tit"><strong>105</strong>명</p>
				</li>
				<li>
					<p class="stu-num">교대 외<br>특수 대학</p>
					<p class="stu-tit"><strong>59</strong>명</p>
				</li>
				<li>
					<p class="stu-num">최상위권<br>주요대학</p>
					<p class="stu-tit"><strong>1,389</strong>명</p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				*러셀 목동 2022-2025학년도 바른공부 자습전용관 재원생 기준 (복수 대학 합격자 포함, 단과 수강생 미포함)
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0244" Then '분당 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="5년 연속 분당지역 입결 압도적 1위!"></p>
			<ul class="num-list big">
				<li>
					<p class="stu-tit"><strong>974</strong><span>명 </span>합격</p>
				</li>
			</ul>
			<ul class="num-list tp04 mt40">
				<li>
					<p class="stu-num">수능만점자 <i>3)</i></p>
					<p class="stu-tit"><strong>4</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대 의예</p>
					<p class="stu-tit"><strong>9</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메이저 의대</p>
					<p class="stu-tit"><strong>44</strong>명</p>
				</li>
				<li>
					<p class="stu-num">의예</p>
					<p class="stu-tit"><strong>231</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp04 mt40">
				<li>
					<p class="stu-num">메디컬</p>
					<p class="stu-tit"><strong>437</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대</p>
					<p class="stu-tit"><strong>116</strong>명</p>
				</li>
				<li>
					<p class="stu-num">연세대</p>
					<p class="stu-tit"><strong>218</strong>명</p>
				</li>
				<li>
					<p class="stu-num">고려대</p>
					<p class="stu-tit"><strong>200</strong>명</p>
				</li>
			</ul>

			<p class="mt80"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt02.png" alt="2024학년도 대입 합격 현황"></p>
			<ul class="num-list ver02 mt40">
				<li>
					<p class="stu-num">메이저 의예 <i>4)</i></p>
					<p class="stu-tit"><strong>13</strong>명</p>
				</li>
				<li>
					<p class="stu-num">의예</p>
					<p class="stu-tit"><strong>48</strong>명</p>
				</li>
				<li>
					<p class="stu-num">치의예</p>
					<p class="stu-tit"><strong>17</strong>명</p>
				</li>
				<li>
					<p class="stu-num">한의예</p>
					<p class="stu-tit"><strong>15</strong>명</p>
				</li>
				<li>
					<p class="stu-num">약학</p>
					<p class="stu-tit"><strong>32</strong>명</p>
				</li>
				<li>
					<p class="stu-num">수의예</p>
					<p class="stu-tit"><strong>15</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대</p>
					<p class="stu-tit"><strong>31</strong>명</p>
				</li>
				<li>
					<p class="stu-num">카이스트</p>
					<p class="stu-tit"><strong>6</strong>명</p>
				</li>
				<li>
					<p class="stu-num">연세대</p>
					<p class="stu-tit"><strong>48</strong>명</p>
				</li>
				<li>
					<p class="stu-num">고려대</p>
					<p class="stu-tit"><strong>45</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서&middot;성&middot;한&middot;이</p>
					<p class="stu-tit"><strong>98</strong>명</p>
				</li>
				<li>
					<p class="stu-num">중&middot;경&middot;외&middot;시</p>
					<p class="stu-tit"><strong>104</strong>명</p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				러셀 분당 20~24학년도 바른공부 자습전용관 재원생만을 대상으로 한 결과 (단과만 수강생 미포함, 중복 대학 합격자 포함)<br>
				1) 홈페이지에 입시 결과를 공개한 분당 지역 학원 중 의치한약수+SKY 합격생 수 기준<br>
				2) 최상위권 대학(의예, 치의예, 한의예, 약학, 수의예, 서울대, 연세대, 고려대)<br>
				3) 20학년도 2명, 21학년도 1명, 25학년도 1명(바자관 이력이 있는 학생 중 수능 실채점 만점자)<br>
				4) 메이저 의예(서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대)
			</div>
		</div>

		<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="2024학년도 합격생 현황"></p>
			<ul class="num-list tp05 mt50">
				<li>
					<p class="stu-num">서울대</p>
					<p class="stu-tit"><strong>1</strong>명</p>
				</li>
				<li>
					<p class="stu-num">전국 의예</p>
					<p class="stu-tit"><strong>29</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메디컬<br>
						<span>(의&middot;치&middot;한&middot;수&middot;약)</span></p>
					<p class="stu-tit"><strong>50</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp05 mt30">
				<li>
					<p class="stu-num">서&middot;연&middot;고</p>
					<p class="stu-tit"><strong>9</strong>명</p>
				</li>
				<li>
					<p class="stu-num">주요 15개 대학</p>
					<p class="stu-tit"><strong>70</strong>명</p>
				</li>
				<li>
					<p class="stu-num">교대</p>
					<p class="stu-tit"><strong>8</strong>명</p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				※ 2024년 러셀CORE 원주 바른공부 자습전용관 재원생 합격자 기준<br>
				※ 복수 대학 합격자 포함<br>
				※ 주요 15개 대학: 서울/연세/고려/서강/성균관/한양/이화/중앙/경희/외대/시립/건국/동국/홍익/숙명<br>
				※ 최종 업데이트: 2025-03-26
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
		<div>
			<ul class="result-list">
				<li>
					<div class="stu-info">
						<p><strong>순천향대 의예과 합격</strong><br>
							[HS반] 송OO<br>
						<!-- <span>* 재원기간 24년 1월~수능까지</span> -->
						</p>

						<dl>
							<dt>2025 수능 285</dt>
							<dd>2024 수능 245.5</dd>
						</dl>
					</div>
					<div>
						<table class="tbl-01">
							<colgroup>
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>구분</th>
									<th>국어</th>
									<th>수학</th>
									<th>탐구1</th>
									<th>탐구2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>2025 수능</th>
									<td>1</td>
									<td>2</td>
									<td>1</td>
									<td>1</td>
								</tr>
								<tr>
									<th>2024 수능</th>
									<td>4</td>
									<td>2</td>
									<td>2</td>
									<td>4</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
				<li>
					<div class="stu-info">
						<p><strong>세명대 한의예과 합격</strong><br>
							[서의치반] 연OO<br>
							<!-- <span>* 재원기간 24년 1월~수능까지</span> -->
						</p>

						<dl>
							<dt>2025 수능 281</dt>
							<dd>2024 수능 238</dd>
						</dl>
					</div>
					<div>
						<table class="tbl-01">
							<colgroup>
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>구분</th>
									<th>국어</th>
									<th>수학</th>
									<th>탐구1</th>
									<th>탐구2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>2025 수능</th>
									<td>1</td>
									<td>2</td>
									<td>2</td>
									<td>3</td>
								</tr>
								<tr>
									<th>2024 수능</th>
									<td>2</td>
									<td>3</td>
									<td>4</td>
									<td>4</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
				<li>
					<div class="stu-info">
						<p><strong>연세대 화학과 합격</strong><br>
							[HS반] 신OO<br>
							<!-- <span>* 재원기간 24년 1월~수능까지</span> -->
						</p>

						<dl>
							<dt>2025 수능 290</dt>
							<dd>2024 수능 237.5</dd>
						</dl>
					</div>
					<div>
						<table class="tbl-01">
							<colgroup>
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>구분</th>
									<th>국어</th>
									<th>수학</th>
									<th>탐구1</th>
									<th>탐구2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>2025 수능</th>
									<td>1</td>
									<td>1</td>
									<td>2</td>
									<td>2</td>
								</tr>
								<tr>
									<th>2024 수능</th>
									<td>3</td>
									<td>2</td>
									<td>5</td>
									<td>3</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
				<li>
					<div class="stu-info">
						<p><strong>경상대 약학과 합격</strong><br>
							[HS반] 이OO<br>
							<!-- <span>* 재원기간 24년 3월~수능까지</span> -->
						</p>

						<dl>
							<dt>2025 수능 279</dt>
							<dd>2024 수능 184</dd>
						</dl>
					</div>
					<div>
						<table class="tbl-01">
							<colgroup>
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
								<col style="width:;">
							</colgroup>
							<thead>
								<tr class="low">
									<th>구분</th>
									<th>국어</th>
									<th>수학</th>
									<th>탐구1</th>
									<th>탐구2</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<th>2025 수능</th>
									<td>1</td>
									<td>2</td>
									<td>3</td>
									<td>2</td>
								</tr>
								<tr>
									<th>2024 수능</th>
									<td>4</td>
									<td>3</td>
									<td>4</td>
									<td>7</td>
								</tr>
							</tbody>
						</table>
					</div>
				</li>
			</ul>
		</div>
		<% ElseIf sCampusCode = "CD0247" Then '강남 %>
		<div class="result-box style03">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀 강남 최상위권 대학 합격자 현황"></p>
			<ul class="num-list big">
				<li>
					<p class="stu-tit">최근 5개년 연속<br>
						<strong>서울대 의예과</strong> 합격</p>
				</li>
				<li>
					<p class="stu-tit">의학계열 누적 합격생<br>
						<strong>711명</strong> 배출</p>
				</li>
				<li>
					<p class="stu-tit">최상위권 대학<br>
						누적 합격현황</p>
				</li>
			</ul>
			<div class="num-bottom">
				<div>
					<ul class="first-list">
						<li>
							<p class="stu-num"><strong>2023학년도</strong> 이윤서 학생</p>
							<p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/img_stu01.png" alt="" /></p>
						</li>
						<li>
							<p class="stu-num"><strong>2023학년도</strong> 김OO 학생</p>
							<p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></p>
						</li>
						<li>
							<p class="stu-num"><strong>2022학년도</strong> 서OO 학생</p>
							<p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></p>
						</li>
						<li>
							<p class="stu-num"><strong>2021학년도</strong> 김OO 학생</p>
							<p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_m.png" alt="" /></p>
						</li>
						<li>
							<p class="stu-num"><strong>2020학년도</strong> 양지헌 학생</p>
							<p><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/img_stu02.png" alt="" /></p>
						</li>
						<li>
							<p class="stu-num"><strong>2019학년도</strong> 이OO 학생</p>
							<p><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></p>
						</li>
					</ul>
				</div>
				<div>
					<ul class="second-list silver">
						<li>
							<p>의예과 <strong>388명</strong></p>
						</li>
						<li>
							<p>치의예과 <strong>81명</strong></p>
						</li>
						<li>
							<p>한의예과 <strong>117명</strong></p>
						</li>
						<li>
							<p>수의예과 <strong>35명</strong></p>
						</li>
						<li>
							<p>약학과 <strong>90명</strong></p>
						</li>
					</ul>
				</div>    
				<div>
					<ul class="third-list silver">
						<li>
							<p>의치한수약 <strong>711명</strong></p>
						</li>
					</ul>
					<p class="info-txt">의예과 388명, 치의예과 81명, <br> 한의예과 117명, 수의예과 35명, 약학과 90명</p>
					<ul class="third-list silver">
						<li style="width:176px">
							<p>서연고 <strong>694명</strong></p>
						</li>
					</ul>
					<p class="info-txt">서울대 132명, 연세대 271명, <br> 고려대 291명</p>
					<ul class="third-list silver">
						<li class="p0">
							<p>서성한이중경외시 <br>
								+ 카이스트, 포항공대<br>
								<strong>1,414명</strong>
							</p>
						</li>
					</ul>
				</div>
			</div>  
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				2018-2025학년도 러셀 강남학원 자습전용관 재원생 합격 결과 기준(단과 수강생 제외, 복수대학 합격자 포함)(2025-03-07 기준)

			</div>
		</div>
		<% ElseIf sCampusCode = "CD0250" Then '부천 %>
		<div class="result-box style02 pb110">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀 강남 최상위권 대학 합격자 현황"></p>
			<ul class="num-list tp05 non mt50">
				<li>
					<p class="stu-num">2025학년도 <br>
						의치한수약 합격
					</p>
					<p class="stu-tit"><strong>48</strong>명</p>
				</li>
				<li>
					<p class="stu-num">2025학년도 <br>
						서울대 합격</p>
					<p class="stu-tit"><strong>14</strong>명</p>
				</li>
				<li>
					<p class="stu-num">2025학년도 <br>
						연고대 합격</p>
					<p class="stu-tit"><strong>50</strong>명</p>
				</li>
			</ul>
			<!-- <ul class="num-list ver03 mt40">
				<li>
					<p class="stu-num">서성한이</p>
					<p class="stu-tit"><strong>45</strong>명</p>
				</li>
				<li>
					<p class="stu-num">중경외시</p>
					<p class="stu-tit"><strong>27</strong>명</p>
				</li>
				<li>
					<p class="stu-num">특수대학*</p>
					<p class="stu-tit"><strong>11</strong>명</p>
				</li>
				<li>
					<p class="stu-num">기타대학**</p>
					<p class="stu-tit"><strong>41</strong>명</p>
				</li>
			</ul>
			<p class="r-txt">*특수대학: KAIST, POSTECH, DGIST, GIST, UNIST, KENTECH, 경찰대, 공군사관, 해군사관, 육군사관, 간호사관<br>
				**기타대학: 건동홍숙, 인하, 아주, 교대</p> -->
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				2024년 러셀 부천 바른공부 자습전용관 재원생 기준(중복합격자 포함/2025.02.21 기준)

			</div>
		</div>
		<% ElseIf sCampusCode = "CD0249" Then '영통 %>
		<div class="result-box style02">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀 영통 2020~2024학년도 합격생 현황"></p>
			<ul class="num-list tp05 non mt50">
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
		<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="최상위권의 선택! 러셀 센텀 2024학년도 입결 현황"></p>
			<ul class="num-list tp04">
				<li>
					<p class="stu-num">의예과</p>
					<p class="stu-tit"><strong>71</strong>명</p>
				</li>
				<li>
					<p class="stu-num">치/한/약/수</p>
					<p class="stu-tit"><strong>35</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서연고</p>
					<p class="stu-tit"><strong>32</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서성한이</p>
					<p class="stu-tit"><strong>56</strong>명</p>
				</li>
				<li>
					<p class="stu-num">중경외시</p>
					<p class="stu-tit"><strong>41</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp04 mt50">
				<li>
					<p class="stu-num">건동혹숙</p>
					<p class="stu-tit"><strong>23</strong>명</p>
				</li>
				<li>
					<p class="stu-num">이공계특성화</p>
					<p class="stu-tit"><strong>7</strong>명</p>
				</li>
				<li style="width: 270px;">
					<p class="stu-num">경찰대&middot;사관학교&middot;교육대</p>
					<p class="stu-tit"><strong>4</strong>명</p>
				</li>
				<li>
					<p class="stu-num">부산대&middot;<br>경북대</p>
					<p class="stu-tit"><strong>62</strong>명</p>
				</li>
			</ul>
			<p class="r-txt">※ 러셀 센텀학원 바른공부 자습전용관 재원생 25학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)
			</p>
		</div>
		<div class="result-box mt60">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt02.png" alt="최상위권의 선택! 러셀 센텀 5개년 누적 입결 현황"></p>
			<ul class="num-list tp04 mt50">
				<li>
					<p class="stu-num">의예과</p>
					<p class="stu-tit"><strong>294</strong>명</p>
				</li>
				<li>
					<p class="stu-num">치/한/약/수</p>
					<p class="stu-tit"><strong>194</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서연고</p>
					<p class="stu-tit"><strong>193</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서성한이</p>
					<p class="stu-tit"><strong>275</strong>명</p>
				</li>
				<li>
					<p class="stu-num">중경외시</p>
					<p class="stu-tit"><strong>245</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp04 mt50">
				<li>
					<p class="stu-num">건동혹숙</p>
					<p class="stu-tit"><strong>116</strong>명</p>
				</li>
				<li>
					<p class="stu-num">이공계특성화</p>
					<p class="stu-tit"><strong>34</strong>명</p>
				</li>
				<li style="width: 270px;">
					<p class="stu-num">경찰대&middot;사관학교&middot;교육대</p>
					<p class="stu-tit"><strong>66</strong>명</p>
				</li>
				<li>
					<p class="stu-num">부산대&middot;<br>경북대</p>
					<p class="stu-tit"><strong>384</strong>명</p>
				</li>
			</ul>
			<p class="r-txt">※ 러셀 센텀학원 바른공부 자습전용관 재원생 20~25학년도 합격자 기준 (단과 수강생 제외, 복수대학 합격자 포함)
			</p>
		</div>
		<% ElseIf sCampusCode = "CD0341" Then '대전 %>
		<div class="result-box">
			<ul class="num-list ver04">
				<li>
					<p class="stu-tit">2025학년도 최종 합격<br>
						서울대학교 의예과 <span>4명</span></p>
				</li>
				<li>
					<p class="stu-tit">2025학년도 최종 합격<br>
						전국 의예 <span>92명</span></p>
				</li>
				<li>
					<p class="stu-tit">2025학년도 최종 합격<br>
						의/치/한/약/수 <span>126명</span></p>
				</li>
				<li>
					<p class="stu-tit">2025학년도 최종 합격<br>
						SKY / KAIST <span>21명</span></p>
				</li>
			</ul>
			<ul class="num-list tp05 non mt50">
				<li>
					<p class="stu-num">서울대 의예</p>
					<p class="stu-tit"><strong>4</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메이저 의예</p>
					<p class="stu-tit"><strong>6</strong>명</p>
				</li>
				<li>
					<p class="stu-num">전국 의예과</p>
					<p class="stu-tit"><strong>92</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메디컬<br>
						(의/치/한/약/수)</p>
					<p class="stu-tit"><strong>126</strong>명</p>
				</li>
				<li>
					<p class="stu-num">SKY/카이스트</p>
					<p class="stu-tit"><strong>21</strong>명</p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				※ 최종 업데이트 : 2025-02-28 기준<br>
				※ 2025학년도 수시/정시 최종 합격 기준 / 러셀 대전 바른공부 자습전용관 재원생 합격생 기준<br>
				(단과 수강생 제외/복수대학 합격자 포함)<br>
				※ 메이저 의예 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0349" Then '울산 %>
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
					<p class="stu-num">KAIST/DGIST<br>
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
				※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
				※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt02.png" alt=""></p>
			<ul class="num-list tp05 non">
				<li>
					<p class="stu-num">의예과</p>
					<p class="stu-tit"><strong>26</strong>명</p>
				</li>
				<li>
					<p class="stu-num">의치한약수</p>
					<p class="stu-tit"><strong>52</strong>명</p>
				</li>
			</ul>
			<ul class="num-list ver03 mt40">
				<li>
					<p class="stu-num">서연고</p>
					<p class="stu-tit"><strong>58</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서성한이</p>
					<p class="stu-tit"><strong>55</strong>명</p>
				</li>
				<li>
					<p class="stu-num">중경외시</p>
					<p class="stu-tit"><strong>48</strong>명</p>
				</li>
			</ul>
			<p class="r-txt">*2025학년도 러셀 중계 바른공부 자습전용관 재원생 기준<br>
				(복수 대학 합격자 중복 포함, 단과 수강생 미포함(2025-05-11 기준))</p>
		</div>
		<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="최상위권의 선택! 러셀 센텀 5개년 누적 입결 현황"></p>
			<ul class="num-list tp05">
				<li>
					<p class="stu-num">메이저 의예</p>
					<p class="stu-tit"><strong>2</strong>명</p>
				</li>
				<li>
					<p class="stu-num">의약학계열</p>
					<p class="stu-tit"><strong>58</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대</p>
					<p class="stu-tit"><strong>16</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp05 mt40">
				<li style="min-width:220px">
					<p class="stu-num">연고대</p>
					<p class="stu-tit"><strong>62</strong>명</p>
				</li>
				<li style="min-width:220px">
					<p class="stu-num">서&middot;성&middot;한&middot;이</p>
					<p class="stu-tit"><strong>103</strong>명</p>
				</li>
				<li style="min-width:220px">
					<p class="stu-num">중&middot;경&middot;외&middot;시</p>
					<p class="stu-tit"><strong>79</strong>명</p>
				</li>
				<li style="min-width:220px">
					<p class="stu-num">건&middot;동&middot;홍&middot;숙</p>
					<p class="stu-tit"><strong>63</strong>명</p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				- 최종 업데이트: 2025.02.28 기준 <br>
				- 2025학년도 수시, 정시 합격 기준/ 러셀 평촌 바른공부 자습전용관 재원생 합격생 기준(단과 수강생 제외/ 복수대학 합격자 포함) <br>
				- 메이저 의예 : 서울대, 연세대(서울), 성균관대, 가톨릭대, 울산대, 고려대 <br>
				- 의약학계열 : 전국 의예과/ 의학과/ 의과대학, 전국 치의예과, 전국 한의예과, 전국 약학과/약학부, 전국 수의예과 모든 대학 
			</div>
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
		<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="2025학년도 대입 합격 현황, 의치한약수 68명 합격"></p>
			<ul class="num-list tp05">
				<li>
					<p class="stu-num">메이저 의예과 </p>
					<p class="stu-tit"><strong>2</strong>명</p>
				</li>
				<li>
					<p class="stu-num">전국 의예과</p>
					<p class="stu-tit"><strong>36</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp05">
				<li>
					<p class="stu-num">치한수약</p>
					<p class="stu-tit"><strong>32</strong>명</p>
				</li>
				<li>
					<p class="stu-num">주요대학/교대, 과기원</p>
					<p class="stu-tit"><strong>51</strong>명</p>
				</li>
			</ul>
		</div>
		<!-- 데이터 산출기준 -->
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				※ 최종 업데이트 : 2025-02-24 기준 / 지속 업데이트 예정<br>
				※ 2025학년도 수시/정시 최종 합격 기준 (복수 대학 합격자 포함)<br>
				※ 러셀CORE 전주 바른공부 자습전용관 재원생 합격생 기준 (단과 수강생 미포함)
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
		<div class="result-box">
			<p class="mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont01_txt01.png" alt="러셀CORE 광주 2024학년도 합격생 현황, 광주지역 재학생 수석 배출"></p>
			
			<ul class="num-list tp05 non mt50">
				<li>
					<p class="stu-num">서울대 의예과
					</p>
					<p class="stu-tit"><strong>1</strong>명</p>
				</li>
				<li>
					<p class="stu-num">메이저 의대
					</p>
					<p class="stu-tit"><strong>11</strong>명</p>
				</li>
				<li>
					<p class="stu-num">전국 의예과
					</p>
					<p class="stu-tit"><strong>44</strong>명</p>
				</li>
			</ul>
			<ul class="num-list tp05 non mt50">
				<li>
					<p class="stu-num">의치한약수</p>
					<p class="stu-tit"><strong>63</strong>명</p>
				</li>
				<li>
					<p class="stu-num">SKY/KAIST</p>
					<p class="stu-tit"><strong>12</strong>명</p>
				</li>
			</ul>
		</div>
		<!-- 데이터 산출기준 -->
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				※ 최종 업데이트 : 2025-03-07 기준 ｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다. <br>
				※ 2025학년도 수시/정시 최종 합격 기준 / 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준 (단과 수강생 제외/복수 대학 합격자 포함)<br>
				※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예, 고려대 의예
				
			</div>
		</div>
		<% ElseIf sCampusCode = "INTRO" Then '인트로 %>
		<div class="result-box">
			<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_txt01_intro.png" alt="2025학년도 러셀 최상위권 대입 결과"></p>
			<ul class="num-list tp01 mt70">
				<li>
					<p class="stu-num">메이저 의대<i>1)</i></p>
					<p class="stu-tit"><strong>115</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
				<li>
					<p class="stu-num">전국 의예과<i>2)</i></p>
					<p class="stu-tit"><strong>1,269</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
				<li>
					<p class="stu-num">의&middot;치&middot;한&middot;약&middot;수<i>3)</i></p>
					<p class="stu-tit"><strong>2,220</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
			</ul>
			<ul class="num-list tp01 mt60">
				<li>
					<p class="stu-num">서울대 의예과<i>4)</i></p>
					<p class="stu-tit"><strong>13</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대<i>5)</i></p>
					<p class="stu-tit"><strong>243</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대&middot;연세대&middot;고려대<i>6)</i></p>
					<p class="stu-tit"><strong>1,224</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				※ 최종 업데이트 : 2025-03-25 기준｜2025학년도 대입에 합격한 러셀 학원 재원생의 결과 (단과 수강생 제외/복수 대학 포함) <br>
				※ 본 결과는 최상위권 전문관(구 양지 기숙), 자연계 전문관(구 서초 기숙), 서의치관, 남의대관, 여의대관, 안성기숙 입결 결과가 포함되어 있습니다. <br> <br>
				1) 2020-2025학년도 러셀에서 배출한 메이저 의대 합격자 중 2025학년도 최다 배출 <br>
				ㄴ 2025학년도 메이저 의대(서울대 13명, 연세대 16명, 가톨릭대 18명, 성균관대 22명, 고려대 22명, 울산대 24명) <br>
				2) 2020-2025학년도 러셀에서 배출한 전국 의예과, 의학과, 의과대학 합격자 중 2025학년도 최다 배출 <br>
				3) 2020-2025학년도 러셀에서 배출한 전국 의·치·한·약·수 (석학사 통합과정 포함) 합격자 중 2025학년도 최다 배출 <br>
				4) 2025학년도 러셀에서 배출한 서울대 의예과 합격자 수  <br>
				5) 2025학년도 러셀에서 배출한 서울대 합격자 수  <br>
				6) 2020-2025학년도 러셀에서 배출한 서울대, 연세대, 고려대 합격자 중 2025학년도 최다 배출 <br>
				ㄴ (서울대 243명, 연세대 418명, 고려대 563명)
			</div>
		</div>

		<div class="result-box mt120 d-start">
			<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_txt02.png" alt="러셀 수험생의 성적 향상"></p>
			<ul class="graph-list">
				<li class="doughnut">
					<p><strong>10명 중 9명</strong><i>1)</i> 성적 상승</p>
					<p>※상위권 재원생 기준<i>2)</i></p>
					<div class="chart-box">
						<canvas id="doughnut-chart02"></canvas>
						<p class="chart"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_img.png" alt=""></p>
					</div>
				</li>
				<li>
					<p>5개년 평균<i>3)</i> 성적향상 점수</p>
					<p>※전체 재원생 중 성적 상승 인원 기준<i>4)</i></p>
					<div class="graph-box">
						<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_img02.png" alt=""></div>
						<p class="bubble"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_bubble.png" alt="" /></p>
                        <p class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_arrow.png" alt="" /></p>
					</div>
				</li>	
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				1) 국수탐(2) 백분위 합 ‘국어(100)’+‘수학(100)’+‘탐구 두 과목의 평균(100)’ 값으로 300점 만점 기준<br>
				2) 2021~2025학년도 러셀 당해연도 재원한 ‘N수 이상’ 인원 중, ‘입학(직전년도) 수능’과 <br>
				&nbsp;‘졸업(해당연도) 수능’ 국수탐(2) 백분위 값이 모두 있는 인원 중 졸업 수능 국수탐(2) 백분위 합 인문 270, 자연 280 이상<br>
				3) 국수탐(2) 백분위 합 ‘국어(100)’+‘수학(100)’+‘탐구 두 과목의 평균(100)’ 값으로 300점 만점 기준 졸업 성적 - 입학 성적<br>
				4) 2021~2025학년도 러셀 당해연도 재원한 ‘N수 이상’ 인원 중, ‘입학(직전년도) 수능’과<br>
				&nbsp;‘졸업(해당연도) 수능’ 국수탐(2) 백분위 값이 모두 있는 인원만 반영
			</div>
		</div>
		<% Else %>
		<div class="result-box">
			<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_txt01.png" alt="2025학년도 러셀 최상위권 대입 결과"></p>
			<ul class="num-list tp01 mt70">
				<li>
					<p class="stu-num">메이저 의대<i>2)</i></p>
					<p class="stu-tit"><strong>115</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
				<li>
					<p class="stu-num">전국 의예과<i>3)</i></p>
					<p class="stu-tit"><strong>1,274</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
				<li>
					<p class="stu-num">의&middot;치&middot;한&middot;약&middot;수<i>4)</i></p>
					<p class="stu-tit"><strong>2,222</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
			</ul>
			<ul class="num-list tp01 mt60">
				<li>
					<p class="stu-num">서울대 의예과<i>5)</i></p>
					<p class="stu-tit"><strong>13</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대<i>6)</i></p>
					<p class="stu-tit"><strong>244</strong>명</p>
				</li>
				<li>
					<p class="stu-num">서울대&middot;연세대&middot;고려대<i>7)</i></p>
					<p class="stu-tit"><strong>1,215</strong>명</p>
					<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-badge.png" alt=""></p>
				</li>
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				※ 최종 업데이트 : 2025-03-10 기준
				<br><br>
				1) 최상위권 전문관(구, 양지 기숙), 자연계 전문관(구, 서초 기숙), 서의치관, 남의대관, 여의대관 포함<br>
				2) 2020-2025학년도 러셀에서 배출한 메이저 의대 합격자 수 2025학년도 최대 배출(단과 수강생 제외/복수 대학 합격자 포함)<br>
				&nbsp;ㄴ 2025학년도 메이저 의대(서울대 13명, 연세대 16명, 가톨릭대 18명, 성균관대 22명, 고려대 22명, 울산대 24명)<br>
				3) 2020-2025학년도 러셀에서 배출한 전국 의예과, 의학과, 의과대학 합격자 수 2025학년도 최대 배출(단과 수강생 제외/복수 대학 합격자 포함)<br>
				4) 2020-2025학년도 러셀에서 배출한 전국 의&middot;치&middot;한&middot;약&middot;수 (석학사 통합과정 포함) 합격자 수 2025학년도 최대 배출(단과 수강생 제외/복수 대학 합격자 포함)<br>
				5) 2025학년도 러셀에서 배출한 서울대 의예과 합격자 수 (단과 수강생 제외/복수 대학 합격자 포함)<br>
				6) 2025학년도 러셀에서 배출한 서울대 합격자 수 (단과 수강생 제외/복수 대학 합격자 포함)<br>
				7) 2025학년도 러셀에서 배출한 서울대, 연세대, 고려대 합격자 수 (단과 수강생 제외/복수 대학 합격자 포함)<br>
				&nbsp;ㄴ (서울대 244명, 연세대 416명, 고려대 555명) 
			</div>
		</div>

		<div class="result-box mt120 d-start">
			<p><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_txt02.png" alt="러셀 수험생의 성적 향상"></p>
			<ul class="graph-list">
				<li class="doughnut">
					<p><strong>10명 중 9명</strong><i>1)</i> 성적 상승</p>
					<p>※상위권 재원생 기준<i>2)</i></p>
					<div class="chart-box">
						<canvas id="doughnut-chart02"></canvas>
						<p class="chart"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_img.png" alt=""></p>
					</div>
				</li>
				<li>
					<p>5개년 평균<i>3)</i> 성적향상 점수</p>
					<p>※전체 재원생 중 성적 상승 인원 기준<i>4)</i></p>
					<div class="graph-box">
						<div><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_img02.png" alt=""></div>
						<p class="bubble"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_bubble.png" alt="" /></p>
                        <p class="arrow"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont01_arrow.png" alt="" /></p>
					</div>
				</li>	
			</ul>
		</div>
		<div class="info-stxt">
			<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/half/ico_info.png" alt="i" /></i></span>
			<div class="data-view">
				1) 국수탐(2) 백분위 합 ‘국어(100)’+‘수학(100)’+‘탐구 두 과목의 평균(100)’ 값으로 300점 만점 기준<br>
				2) 2021~2025학년도 러셀 당해연도 재원한 ‘N수 이상’ 인원 중, ‘입학(직전년도) 수능’과 <br>
				&nbsp;‘졸업(해당연도) 수능’ 국수탐(2) 백분위 값이 모두 있는 인원 중 졸업 수능 국수탐(2) 백분위 합 인문 270, 자연 280 이상<br>
				3) 국수탐(2) 백분위 합 ‘국어(100)’+‘수학(100)’+‘탐구 두 과목의 평균(100)’ 값으로 300점 만점 기준 졸업 성적 - 입학 성적<br>
				4) 2021~2025학년도 러셀 당해연도 재원한 ‘N수 이상’ 인원 중, ‘입학(직전년도) 수능’과<br>
				&nbsp;‘졸업(해당연도) 수능’ 국수탐(2) 백분위 값이 모두 있는 인원만 반영
			</div>
		</div>
		<% End If %>
		<% If sCampusCode = "CD0244" or sCampusCode = "CD0343" Then '분당/코어원주 %>
		<a class="result-btn" href="<%=result_url%>">대입 합격 결과 자세히 보기</a>
		<% End If %>
	</div>
</div>
<div class="cont02 <%=campusName%>">
	<% If sCampusCode = "INTRO" Then '인트로 %>
	<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont02_tit.png" alt="더 높은 꿈을 향해 도전했던 많은 수험생들은 러셀에서 짧은 시기, 성공적인 결과를 이루었습니다."></h3>
	<% Else %>
	<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont02_tit.png" alt="더 높은 꿈을 향해 도전했던 많은 수험생들은 러셀에서 짧은 시기, 성공적인 결과를 이루었습니다."></h3>
	<% End If %>
	<div class="inner">
		<!-- 학생후기 -->
		<div class="review-slide swiper-container <%=play%>">
			<% If sCampusCode = "CD0001" Then '대치 %>
			<div class="swiper-wrapper p2">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>연세대 치의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">바자관의 장점은<br>
							좋은 면학 분위기와 시설입니다.</p>
						<p>넓은 책상과 책꽂이 덕분에 공부할 때에 불편하지 않을 수 
							있었습니다. 또한 <strong>공간이 탁 트여있기 때문에 답답함이 없었고, 
								시간표에 맞게 공부 계획을 짤 수 있어 쾌적한 환경에서 
								효율적으로 공부할 수 있었습니다.</strong> 마지막으로 점심시간 종료 
								직후에 나오는 스트레칭 방송을 통해 오래 앉아있음에도 매일 
								스트레칭을 할 수 있어 도움이 되었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대치 정민지</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_jmj.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>을지대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">러셀의 장점은 담임선생님입니다.</p>
						<p>저는 이전까지 공부는 당연히 혼자 해야 하는 것이라고 
							생각했습니다. 그러나 러셀에서 만나게 된 담임선생님께서는 
							저의 성취에 같이 기뻐해 주시고, 힘들 때 위로도 해주시며 
							단순한 멘토 이상의 역할을 해주셨습니다. <strong>누군가가 옆에서 
								지켜봐 주고 있다는 사실만으로도 매일 14시간씩의 끝이 없어 
								보이던 공부도 해나갈 수 있었습니다.</strong> 혼자였더라면 절대 이룰 수 
								없을 결과를 얻게 된 가장 큰 이유는 러셀에 다니며 담임선생님을 만나게 된 것이라고 생각합니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대치 박찬서</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_pcs.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0245" Then '목동 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>연세대 간호학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">수험 생활 기간 담임 선생님과의 상담이<br>
							큰 힘이 되었습니다.</p>
						<p>공부하다가 지치거나 어떻게 공부해야 할지 막막할 때마다 
							<strong>담임 선생님께서 친절하게 상담해 주셔서 수험 기간 중 의지가 
								많이 되었습니다.</strong> 수험생활 중 성적 문제 및 슬럼프로 고민이 
								있을 때마다 담임선생님과의 상담을 통해 <strong>사고를 긍정적으로 
								바꾸고 수능 때까지 잘 마무리할 수 있었습니다.</strong></p>
					</div>
					<dl class="stu-info">
						<dt>러셀 목동 김채현</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_kch.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>연세대 융합인문사회학부 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">실전 모의고사를 통해 실전 감각을<br>
							최대한으로 끌어올릴 수 있었습니다.</p>
						<p>자습관에서 매월 응시하는 <strong>실전 모의고사를 통해 수능 전 
							실전 감각을 끌어올릴 수 있을뿐더러 성적 분석이 매우 잘 되었다고</strong> 
							생각합니다. 다른 수험생들과 비교하여 나의 위치가 어느 정도
							이고, 어떤 부분이 취약한지에 대한 분석이 제대로 이뤄졌다고 
							생각합니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 목동 김은재</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_kej.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>서울대 첨단융합학부 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">오로지 공부에만 집중할 수 있는<br>
							러셀 시스템 덕분에 학습량이 늘어났습니다.</p>
						<p><strong>휴대폰 제출과 학습 외 활동 제한</strong>으로 인해 알게 모르게 낭비되던 
							시간을 줄이고 <strong>오로지 공부에 집중할 수 있도록</strong> 해주었다는 것이 
							바자관의 큰 장점인 거 같습니다. 이로 인해 바자관을 다니기 전보다 <strong>
								훨씬 많은 공부시간을 확보</strong>할 수 있었고, 자연스럽게 
								집중하는 시간과 학습량도 늘어났습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 목동 채준영</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_cjy.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>고려대 식품자원경제학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">실제 수능과 유사한 환경에서<br>
							다양한 변수에 대비할 수 있었습니다.</p>
						<p>파이널 기간에 진행된 <strong>수능 실전 모의 훈련장을 통해 
							실제 수능 시험장과 비슷한 환경에서</strong> 실전 모의고사를 풀어보며 
							모의고사 시간 운용 방법을 계획할 수 있었습니다. 
							또한 시험장에서 생길 수 있는 <strong>다양한 변수에 대비하며 수능 
								준비를 철저하게</strong> 할 수 있었던 거 같습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 목동 설정연</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_sjy.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0244" Then '분당 %>
			<div class="swiper-wrapper p2">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>조선대 치의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">열심히 공부하는 분위기여서<br>
							더욱 공부에 집중할 수 있었습니다.</p>
						<p><strong>바른공부 자습전용관에서 가장 좋았던 점은 
							좋은 공부 환경</strong>입니다. 표준 시간표에 맞춰 자습하면서 
							수능 시간표에 적응하고 공부 리듬을 형성할 수 있었습니다. 
							또 자습 중 집중력이 떨어질 때는 주변의 학생들을 보며 
							다시 공부에 집중할 수 있었고 서서 공부할 수 있는 
							스탠딩 책상에서 공부하며 졸음을 깰 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 분당 양서진</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_ysj.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>성균관대 약학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">짧은 기간, 러셀 분당 면학 분위기로<br>
							해낼 수 있었습니다.</p>
						<p>타 대학을 다니다가 약 1년 5개월 만에 수능 공부를 
							다시 했습니다. 오랜만에 공부를 해서 오래 앉아있는 것조차 
							힘들었는데 <strong>러셀 분당의 훌륭한 면학 분위기 덕분에 
								짧은 기간임에도 저의 대입 계획을 끝까지 해낼 수 있었습니다.</strong></p>
					</div>
					<dl class="stu-info">
						<dt>러셀 분당 김지수</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_kjs.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
			<div class="swiper-wrapper p2">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>가톨릭관동대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">짧은 기간, 러셀의 다양한 콘텐츠와<br>
							담임 선생님의 관리가 많은 도움이 되었습니다.</p>
						<p>조금 늦게 공부를 시작하여 제 실력을 계속해서 점검할 필요가 
							있었는데, 학원에서 운영되는 다양한 모의고사 콘텐츠를 통해 
							제 자신의 전반적인 위치를 확인할 수 있어서 좋았습니다. 
							또한, 자신감이 떨어질 때마다 담임선생님과의 상담을 통해 
							불안감들을 덜 수 있었습니다. 지금 하고 있는 공부의 방향이 
							적절한지 매주 선생님께서 확인해 주시고 학습 및 생활적인 
							부분에 대해 상담해 주셔서 많은 도움이 되었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 원주 신정재</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_cjj.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>상지대 한의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">쾌적한 바자관 환경에서 학습하는 것이<br>
							좋았습니다.</p>
						<p>반수를 결심하고 공부를 시작하니 남들보다 늦은 것 같다는 
							생각에 두려움이 커져 불안해질 때도 많았는데, 이럴 때마다 
							담임선생님께 제 공부 계획에 대해서 상담도 받고, 고민을 
							이야기하다 보면 목표를 다시 상기하고 마음을 다 잡을 수 있어서 
							좋았습니다. 또, 환경에 예민한 시기였는데도 늘 청결하게 
							바자관을 유지해 주시고, 주기적으로 환기, 가습기 배치 등 
							쾌적한 환경을 위해 신경 써주셔서 매우 좋았습니다. </p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 원주 전혜주</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_jhj.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
			<div class="swiper-wrapper p2">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>충북대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">러셀 시스템으로 반복되던 실수를 줄이고<br>
							만족스러운 결과를 얻을 수 있었습니다.</p>
						<p>저는 실수를 많이 하는 스타일이라 이를 줄이는 것이 가장 
							중요한 과제였습니다. <strong>실수를 분석하고 같은 실수를 반복하지 
								않도록 하는데 러셀 총평노트가 많은 도움이 되었습니다.</strong> 
								모의고사 이후 러셀 총평노트를 작성하며 비슷한 유형에서 실수가 
								반복되는 경향을 파악할 수 있었고, 이를 의식적으로 신경 쓰며 
								실수를 줄여 최종적으로 만족스러운 성적을 받을 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 청주 오우영</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_ouy.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>연세대 정치외교학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">LIVE 강의와 현장강의를 병행하며<br>
							안정적인 수학 점수를 확보할 수 있었습니다.</p>
						<p>제가 반수를 하게 된 이유는 수학이었습니다. 현역 때는 
							수학 공부 양도 적었고 강의도 잘 듣지 않아 백분위 85로 3등급을 
							받게 되었지만, 반수 때에는 러셀CORE 청주에서 <strong>김기현 선생님과 
							장영진 선생님의 LIVE 강의를 들었고, 특히 김성민 선생님의 
							모의고사 해설 현장강의</strong>를 들어 백분위 96으로 2등급을 
							받을 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 청주 김화랑</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_khr.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0247" Then '강남 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>전북대 수의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">자습관에서 공부하며 자극을 받고 <br>
							다양한 특강을 들으면서 도움을 받았습니다.</p>
						<p>바자관이 개방형 구조라 <strong>다른 친구들이 열심히 공부하는 모습을 보며 자극을 받을 수 있었습니다. </strong>
							책상도 넓고 수납공간도 넉넉해서 편하게 공부할 수 있었습니다. 언제든 고민을 상담할 수 있는 담임 선생님이 계셔서 힘들 때 의지가 되었습니다. 
							또한 수험생들에게 도움이 되는 <strong>다양한 특강들이 알맞은 시기에 열려서 학습 동선 낭비 없이 많은 도움을 받을 수 있었습니다.</strong></p>
					</div>
					<dl class="stu-info">
						<dt>러셀 강남 전우호</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_jwh.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>한양대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">효율적으로 시간을 관리하고, 매달 모의고사를<br>
							보면서 실전 연습을 진행하였습니다.</p>
						<p><strong>철저한 관리가 이루어지고 시간을 효율적으로 사용</strong>할 수 있었습니다. 
							단과 하나를 제외하고 자습에 집중했는데 다른 학생들이 <strong>열심히 공부하는 면학분위기 속에서 항상 긴장감 있게 공부할 수 있었습니다. </strong>
							매달 메가X대성 더 프리미엄 모의고사를 비롯한 각종 모의고사를 통해서 실전 연습을 진행했습니다. 
							<strong>모의고사 콘텐츠 모두 기대했던 것보다 퀄리티가 아주 좋았고, 다양한 유형의 시험지를 경험할 수 있어 큰 도움이 되었습니다.</strong></p>
					</div>
					<dl class="stu-info">
						<dt>러셀 강남 박성원</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_psw.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>고려대 스마트모빌리티학부 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">담임 선생님의 입시 상담과 관리로 <br>
							공부에 집중할 수 있었습니다.</p>
						<p>입시를 준비하면서 어려운 부분을 담임 선생님께서 도와주셔서 공부에 집중할 수 있었습니다. 
							체계적인 자료와 전문성을 바탕으로 입시 상담을 진행해주시고, 공부하면서 힘들 때 선생님과 대화할 수 있다는 점도 큰 힘이 되었습니다. <br>
							또한 승강반 제도와 장학 혜택은 공부하는 데 좋은 동기부여가 되었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 강남 김주원</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_kjw.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>고려대 교육학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">충분한 자습시간 확보와 모의고사 실전 연습이<br>
							도움이 되었습니다.</p>
						<p>충분한 자습 시간을 확보하여 단과에서 배운 내용을 온전히 자신의 것으로 만들 수 있었습니다. 
							개방형 구조로 탁 트인 환경에서 공부하여 집중이 더 잘 되었고, 주변 학생들을 보며 동기부여도 받을 수 있었습니다.<br>
							매달 한 번씩 모의고사를 보며 실전 경험을 쌓았습니다. 
							이후에는 바로 시험을 복기하면서 러셀 총평노트를 작성하여 약점을 파악하며 향후 계획을 세울 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 강남 곽승연</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_ksy.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0250" Then '부천 %>
			<ul class="review-center">
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>인제대학교 의예과</strong>
                            <span>도유빈 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_dyb.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/o8fh-Rb-QG4')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/half/ico_play.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>인제대학교 의예과</strong>
                            <span>박승균 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_psg.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/QJtkbWa-5QU')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/half/ico_play.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>아주대학교 약학과</strong>
                            <span>이세빈 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_lsb.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/VrwaIysNcwY')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/half/ico_play.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>서울대학교 재료공학부</strong>
                            <span>이유나 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_lyn.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/dpc6mbssGMU?si=-wxwVVdE9CNVDI6J')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/half/ico_play.png" alt=""></a>
                    </div>
                </li>
                <li data-aos="flip-left">
                    <dl>
                        <dt>2025학년도</dt>
                        <dd>
                            <strong>인하대학교 의예과</strong>
                            <span>박정우 학생</span>
                        </dd>
                    </dl>
                    <div>
                        <div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/regular/stu_pjw.png" alt=""></div>
                        <a href="javascript:CastPopup('https://www.youtube.com/embed/KBE_r1K_hFc?si=CYwVZqEXqYjEbcbq')"><img src="<%=Application("img_path_russel")%>/russel_bc/2025/half/ico_play.png" alt=""></a>
                    </div>
                </li>
            </ul>

			<!-- <div class="swiper-wrapper">
				<div class="swiper-slide m0">
					<dl class="info-txt">
						<dt class="year">2025</dt>
						<dd><strong>강원대학교 의예과</strong><br>
							이가은 학생</dd>
					</dl>
					<div class="img">
						<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_lge.png" alt="">
						<a href="javascript:void(0);" onclick="CastPopup('https://www.youtube.com/embed/6Cl9aANssK0?si=MEGcNxGO9aW7mwql')"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-play.png" alt=""></a>
					</div>
				</div>
				<div class="swiper-slide">
					<dl class="info-txt">
						<dt class="year">2025</dt>
						<dd><strong>강원대학교 의예과</strong><br>
							이동규 학생</dd>
					</dl>
					<div class="img">
						<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_ldg.png" alt="">
						<a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/51835168')"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-play.png" alt=""></a>
					</div>
				</div>
				<div class="swiper-slide">
					<dl class="info-txt">
						<dt class="year">2025</dt>
						<dd><strong>강원대학교 의예과</strong><br>
							전찬영 학생</dd>
					</dl>
					<div class="img">
						<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_jcy.png" alt="">
						<a href="javascript:void(0);" onclick="CastPopup('https://www.youtube.com/embed/V7NJ6zIb1tU?si=nMjQB8Br5d2HsOMg')"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-play.png" alt=""></a>
					</div>
				</div>
			</div> -->
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
						<p><strong>학습 동선을 최소화하는 것</strong>이 큰 도움이 되었습니다. 또한, <strong>학습 및 입시에 대한 1:1 상담이 많은 도움이 되었습니다. </strong>
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
						<p>바자관의 장점은 <strong>개방형 구조</strong>입니다. 또한, <strong>러셀의 체조 시스템, 바자관 내에 공기청정기과 온도계를 상시 가동</strong>하여 쾌적한 환경에서 공부를 할 수 있었던 것도 좋았습니다. 
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
			<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>울산대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">7개월간 임팩트 있는 러셀 시스템으로<br>
							빠르게 합격할 수 있었습니다.</p>
						<p>대학교 재학 중으로, 공부를 늦게 시작해서 정해진 시간을 잘 활용하자는 느낌으로 반수를 시작하였습니다.
							혼자 할 수 있는 과목은 기출을 풀면서 빠르게 진도를 나갔으며 부족한 과목들은 <strong>러셀 센텀 현강을 들으면서 복습&과제를 빠짐없이 꾸준히</strong> 하였습니다. 
							수시를 쓸지 말지 고민 중 <strong>담임 선생님과 상담을 진행하여 전략적인 지원</strong>을 하게 되었으며 그 결과 합격할 수 있었습니다. 
							짧은 학습 기간이었지만 효율성 있는 공부를 하는 것이 포인트였습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 센텀 김OO</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>부산대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">짧은 수험 기간, 후회 없이 공부하여<br>
							러셀에서 좋은 결과를 얻었습니다.</p>
						<p>공부를 체계적으로 하고 싶어 <strong>러셀 학습 플래너를 가지고 매일 체크하면서 과목별 밸런스 있는 공부</strong>를 하기 위해 노력을 하였습니다. 
							비교적 늦게 시작해서 걱정되는 부분이 많았는데 <strong>담임 선생님께서 매달 진행되는 모의고사 성적표를 가지고</strong> 상담을 진행해 주시고 이후 
							학습에 대한 계획을 잘 말씀해 주셔서 수험 기간 동안 많은 도움이 되었습니다. 학습 기간은 짧았지만 나 자신을 믿으면서 공부한 것이 큰 힘이 되었습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 센텀 이OO</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>부산대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">현장 강의를 통해서 실력을 향상시킬 수 있는<br>
							러셀 센텀에서 원하는 곳을 갈 수 있었습니다.</p>
						<p>러셀 센텀에서는 <strong>인강이나 대치동에 출강하시는 유명 선생님들의 강의를 들을 수 있어 좋았습니다. </strong>
							또한 여러 단과 선생님들이 계셔서 자신의 스타일과 학습 정도에 맞는 단과 선생님을 수강할 수 있기에 실력 향상에 큰 도움이 됐습니다. 
							선생님들이 늦은 시간까지 <strong>질의에 성실히 응답해 주셔서</strong> 너무 감사했습니다. 
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 센텀 임OO</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_w.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>경상국립대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">수능 시간표에 맞춰진 바자관 시간표가<br>
							짦은 수험 기간에 큰 도움이 되었습니다.</p>
						<p>저는 <strong>바자관에서 체계적인 출결 관리와 시간표가</strong> 좋았습니다. 출결 카드를 이용하여 출석체크를 함으로써 학원에 안 나오는 날이 거의 없도록 하였고, 
							자습관 내에서는 시간표 대로 맞춰서 공부함으로써 저의 공부 리듬을 만들 수 있었습니다. 
							또 수능 전에는 <strong>수능 시간표에 맞추어</strong> 시간표가 운영되어 수능 시간표에 적응할 수 있도록 한 점이 좋았습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 센텀 윤OO</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>충남대 수의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">정해진 시간을 효율성 있게 공부할 수 있는<br>
							러셀에서 성공할 수 있었습니다.</p>
						<p>1학기를 마치고 와서 공부를 늦게 시작한 만큼 정해진 시간을 잘 활용하자는 느낌으로 반수를 시작하였습니다. 
							하루 10~12시간을 공부하면서 취약한 과목을 중점적으로 공부하면서 안정적으로 나오는 과목은 모의고사를 풀어 시험에 대한 실전 연습을 꾸준히 하였습니다. 
							<strong>러셀의 하반기 학습 콘텐츠들을 통해 수능과 같은 실전 훈련을 충분히 할 수 있어서 좋았습니다.</strong>
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 센텀 신OO</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_w.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>부산대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">긴 시간은 아니었지만 꾸준한 노력으로 <br>
							원하는 목표를 이룰 수 있었습니다.</p>
						<p>러셀 모의고사와 매달 응시하는 모의고사가 좋았습니다. 주기적으로 시험을 쳐서 실전 감각에 좋았고 과목별로 시간 분배를 연습하기에 좋았습니다. 
							6월 평가원 이후로 뭔가 공부의 방향성을 잃은 것 같아 힘들었는데, 담임 선생님과 장기적인 계획을 세워보면서 앞으로 나아가야 할 과정이 많다는 것을 상기해서 극복했습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 센텀 홍OO</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0341" Then '대전 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>충남대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">러셀 대전의 학습 환경 덕분에<br>
							최고의 수험생활을 보냈습니다.</p>
						<p><strong>러셀 대전에서는 오로지 수능 공부에만 집중할 수 있어서 좋았습니다. </strong>
							수능 시간에 최적화된 표준 시간표, 정말 열심히 수능 공부에 임하는 친구들 그리고 진심으로 대해주시는 선생님들 덕분에 최고의 수험생활을 보냈습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대전 허관훈</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_hgh.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>가톨릭대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">바자관의 자습 분위기가 좋았습니다.</p>
						<p><strong>개방감과 폐쇄성의 적절한 조화가 바자관의 큰 장점입니다. </strong><br>
							바자관의 통유리창 덕분에 다른 친구들이 공부하는 모습을 보고 동기부여를 받을 수 있었고, 
							수납공간과 책상의 격벽이 본인의 공간을 확실히 구분해 주어 방해받지 않고 학습에 집중할 수 있었습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대전 윤훈석</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_yhs.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2023</span>
						<strong>서울대 전기정보공학부 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">바자관 시간표 덕분에 공부시간을 <br>
							많이 확보할 수 있었습니다.</p>
						<p><strong>불필요한 수업은 줄이고 자습시간은 극대화할 수 있어서 좋았습니다.</strong> 
							탁 트인 개방형 구조의 바자관에서 공부하면서 최상위권 학생들에게 동기부여받을 수 있었고, 
							최적의 면학 분위기를 위해 항상 노력해 주시는 담임선생님 덕분에 쾌적하게 공부할 수 있었습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대전 노유찬</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_nuc.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>순천향대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">러셀 시스템 덕분에 수능까지 <br>
							열심히 공부할 수 있었습니다.</p>
						<p><strong>규칙적으로 시간에 맞춰 공부할 수 있는 습관을 들일 수 있어서 좋았습니다.</strong> 
							더불어 담임선생님께서 꾸준히 관리해 주시는 덕분에 마음이 풀어지지 않고 수능까지 열심히 공부할 수 있었습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대전 하태솔</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_hts.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>세명대 한의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">러셀 집체 모의고사가 많은 도움이 되었습니다.</p>
						<p><strong> 모의고사를 풀 때에 수능 시험장과 비슷한 환경을 조성해 주셔서 많이 도움이 되었습니다.</strong> 
							또한, 조회시간이나 종례시간에 담임선생님께서 항상 동기 부여가 되는 말씀을 해 주셔서 더 열심히 할 수 있도록 이끌어주셔서 감사했습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대전 임장원</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_ljw.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0349" Then '울산 %>
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
			<% ElseIf sCampusCode = "CD0257" Then '중계 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>고려대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">바자관의 장점은 좋은 면학 분위기와<br>
							관리 시스템입니다.</p>
						<p>바자관 내부는 대화 금지여서 조용한 분위기에서 공부에 몰입할 수 있으며, 개방형 구조와 통유리 창으로 탁 트여 있는 구조이기 때문에 옆에서 공부하는 친구들을 봐서라도 딴짓을 할 수 없어서 좋았습니다. 
							또한 바자관은 개인 스케줄을 제외하고는 오전 8시부터 밤 10시까지 의무 자습이기 때문에 훨씬 많은 공부량을 확보할 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 중계 동나영</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_dny.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>단국대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">러셀 시스템의 강점은 파이널 기간에 진행하는<br>
							실전 모의고사라 생각합니다.</p>
						<p>평소 경험해보지 못했던 유형의 문제들도 볼 수 있어서 좋고 모의고사를 채점한 뒤에 내가 무슨 과목, 
							어떤 파트에 결함이 있구나를 객관적으로 파악하고 자신을 보완할 수 있는 기회를 만들 수 있어서
							더 좋은 것 같습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 중계 김태형</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_kth.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>순천향대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">담임 선생님의 1:1 상담이<br>
							많은 도움이 되었습니다.</p>
						<p>담임 선생님께서 주기적으로 1:1 상담을 해 주셨는데 러셀에서 공부한 선배들이 실제로 어떻게 공부했는지 알려 주셔서 저의 공부 방향을 잡아나가는 데 참고할 수 있었습니다. 
							또 6장의 수시 원서를 어떻게 쓸지에 대해 담임 선생님과 여러 번의 상담을 통해 결정에 도움을 받았습니다. 
							선생님들께서 항상 웃으며 인사해 주시고 많이 응원해 주셔서 힘내서 공부할 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 중계 신미나</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_smn.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
			<div class="swiper-wrapper p2">
				<div class="swiper-slide" style="height: 500px !important;">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>서울대 산림과학부 합격</strong>
					</p>
					<div class="review-txt" style="height: 210px;">
						<p>바자관의 장점은 공기가 정말 좋고 2층에 있는 얼음이 공부할 때 정말 도움이 되었습니다. 또한 러셀의 시간표는 수능과 거의 유사하여 시간관리에도 정말 도움이 되었습니다. 또한 담임선생님은 아직 경험이 부족한 저에게 모의고사의 활용법, 공부법 등 제가 알지 못하는 많은 정보를 제공해 주셔서 좋았습니다. 또한 수능이 끝난 이후에도 정말 어려웠던 원서접수까지 끝까지 도와주셨습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 평촌 이근형</dt>
						<dd>
							<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_01.png" alt="">
							<a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/77249594')"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-play.png" alt=""></a>
						</dd>
					</dl>
				</div>
				<div class="swiper-slide" style="height: 500px !important;">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>연세대 의예과 합격</strong>
					</p>
					<div class="review-txt" style="height: 210px;">
						<p>러셀 평촌은 식당과 바자관이 한 건물에 있어서 식사를 하고 바로 공부를 하고 싶으면 빠르게 바자관으로 돌아와서 공부할 수 있고 점심시간이 충분하기 때문에 산책을 하는 등 컨디션 관리를 위해 선택할 수 있는 점이 많아서 좋았습니다. 그리고 장학혜택 덕분에 부담을 가지지 않고 편히 공부할 수 있었습니다. 또한 바자관 바로 앞에 담임선생님이 계시기 때문에 고민이 생기거나 하고 싶은 말이 있으면 바로 할 수 있어서 좋았고 3월부터 함께 지내기도 하였고 항상 친절하게 상담해 주셔서 의지할 수 있었습니다.						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 평촌 유현우</dt>
						<dd>
							<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_02.png" alt="">
							<a href="javascript:void(0);" onclick="CastPopup('https://tv.naver.com/v/72293389')"><img src="<%=Application("img_path_russel")%>/intro/2025/half/i-play.png" alt=""></a>
						</dd>
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
			<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
			<div class="swiper-wrapper p2">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>고려대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">수능 리듬에 최적화된 표준 시간표,<br>
							공부 리듬 형성과 집단적 면학 분위기</p>
						<p>가장 좋았던 점은 표준 시간표를 통한 공부 리듬 형성과 집단적인 면학 분위기였습니다.
							혼자 공부할 때에는 수능 시간표 대로 공부를 해야 하는 강제성도 없으며, 집중력을 잃을 때 바로잡아 줄 요소도 없습니다.
							하지만 러셀에서는 <strong>수능 리듬에 최적화될 수 있도록 표준 시간표에 맞춘 공부를 할 수 있었기에</strong> 실제 수능에서 큰 도움이 되었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 전주 서진원</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_sjw.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>전북대 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">러셀 학습 플래너를 통한 꾸준한 점검,<br>
							담임 선생님의 확실한 학습관리</p>
						<p><strong>러셀 학습 플래너를 통해 과목 간 공부량을 점검</strong>할 수 있어 좋았습니다. 
							이를 통해 목표를 달성하며 <strong>꾸준히 공부하는 습관을 형성</strong>할 수 있었으며, 
							<strong>담임 선생님의 학습관리</strong>와 함께 무탈한 수험생활을 마칠 수 있었습니다.
						</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 전주 최희민</dt>
						<dd><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/stu_chm.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>동아대학교 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">실전력을 향상 시켜준<br>
							러셀의 콘텐츠와 시스템</p>
						<p><strong>실전과 같은 분위기에서 모의고사</strong>를 볼 수 있는 기회가 많지 않은데, 
							러셀CORE 창원은 메가X대성 더 프리미엄 모의고사를 비롯해 다양한 실전 콘텐츠로 <strong>매주 수능과 같이 대비</strong>할 수 있었습니다. 
							또한 담임 선생님과의 상담을 통해 부족한 부분을 보완할 수 있어 효과적인 성적 향상의 계기가 되었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 창원 윤종빈</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>동아대학교 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">체계적인 공부 방향 설정으로 <br>
							성공적 입시 결과</p>
						<p>학습 계획을 짜는 데 어려움이 있었는데, <strong>담임 선생님과의 상담을 통해 체계적인 공부 방향을 설정</strong>할 수 있었습니다. 
							학습적인 측면 및 멘탈적으로도 잘 잡아주시고, 입시에서도 생기부를 기반하여 최적의 입시 방향을 잡아주셔서 성공적인 결과를 거둘 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 창원 제현수</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>충남대학교 수의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">대치동과 동일 콘텐츠,<br>
							학습 최적화된 동선 배치</p>
						<p><strong>서울에 가지 않아도 대치동 LIVE 수업과 콘텐츠를 동일하게 이용</strong>할 수 있다는 점이 마음에 들었습니다. 
							수업 외에도 <strong >한 건물에 자습관, 식당, 강의실을 같이 배치함으로써 이동 동선을 최소화하고 체력과 학습 분위기 유지 측면에서 큰 이점</strong>을 얻을 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 창원 백지훈</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2024</span>
						<strong>연세대학교 경제학부 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">단과 수업과 자습관을 한 번에<br> 
							해결하여 효율적인 시간관리</p>
						<p><strong>단과 수업과 자습관 이용을 한 번에 할 수 있다는 점</strong>이 좋았습니다. 
							관리형 독서실과 <strong>대치동 현장 단과의 장점을 지방에서 거의 그대로 구현한 것이 큰 장점</strong>인 것 같습니다.<br>
							주기적으로 치러지는 모의고사 역시 실력 향상에 큰 도움을 주었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 창원 윤득영</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_m.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% Else %>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>을지대학교 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">효율적인 학습이 가능했던<br>
							단과 선택과 표준 시간표</p>
						<p>저는 자신 있는 과목인 수학은 수업을 듣지 않았고, 부족했던 
							국어와 영어는 단과 수업을 들으며 공부했습니다. 원하는 단과 
							수업을 선택함으로써 시간을 효율적으로 쓸 수 있었습니다. 
							또한 바자관의 시간표가 수능형 리듬으로 짜여 있는 게 
							좋았습니다. 아침에 머리를 가볍게 예열하고 수능과 같이 국어, 
							수학을 오전에, 영어, 탐구를 오후에 공부하였고, 저녁에는
							그날 부족했던 과목을 추가적으로 공부할 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대치 박*서</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_pcs.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>동아대학교 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">학습에만 집중할 수 있는 환경과<br>
							실전 최적화된 시스템</p>
						<p>정말 공부에만 집중할 수 있는 환경이 조성되어 있다는 것이 
							큰 장점인 것 같습니다. 학원 내부는 항상 조용하기 때문에 
							어디서든지 공부를 할 수 있어 시간을 낭비하지 않고 알차게 
							쓸 수 있었습니다. 또한 다양한 실전 모의고사를 접할 수 있다는 
							것이 좋았습니다. 시험이 다가올수록 실전처럼 연습해 보고 
							싶다는 생각이 많이 들었습니다. 학원에서 모의고사 강의실을 
							운영하고 각종 모의고사 현장 응시를 통해 실전 연습을 충분히 
							해볼 수 있었다는 점이 좋았습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>여학생 전문관 러셀 기숙 최*원</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_cjw.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>가천대학교 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">시간을 효율적으로 <br>
							사용할 수 있는 동선 최소화</p>
						<p>프린터가 학원에 배치되어 있어 필요한 자료를 
							바로 뽑아 사용할 수 있어 시간 단축에 좋았고, 밥을 먹은 후 
							간단한 단체 체조를 통해 공부에 바로 집중할 수 있었던 점도 
							좋았습니다. 또한 모든 학원의 시스템이 한 건물에 있어 
							학습 동선을 최소화하여 시간 낭비 없이 공부할 수 있었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 센텀 박*효</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_pjh.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>연세대학교 영어영문학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">최적의 입시 상담으로<br>
							대입 성공의 길을 열어준 선생님</p>
						<p>저는 현역이 아니라 대학 진학 중 회의를 느끼고 반수를 
							결심하게 된 케이스라서, 늦은 대입에 부담과 이질감을 
							종종 느꼈던 것 같습니다. 그러나 담임 선생님의 친절한 
							지도 덕분에 보다 편안하게 제가 가고 싶은 길에 확신을 
							가지고 공부에 몰입할 수 있었습니다. 또한 데이터 기반의 
							입시 상담과 입시 전반 상황에 대해 잘 아시는 만큼, 
							알게 모르게 많은 의지를 했습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 대치 이*중</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_lgj.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>고려대학교 경제학과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">재수의 부담을 덜어주고<br>
							동기부여가 되었던 장학혜택</p>
						<p>승강반 제도가 저에게 큰 자극점이 되어 좋은 영향을 받았습니다.
							재수하면서 월마다 나가는 독서실 비용이 부담스러웠는데 
							장학제도가 잘 나누어져 있고 학생들의 불이익을 최소한으로 
							하는 방식으로 구성되어 있어 만족했습니다. 승반만 있는 것이 
							아니라 강반도 있어, 성적이 떨어지지 않기 위해서 공부를 
							더 열심히 했던 것 같습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀 강남 장*윤</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_jjy.png" alt=""></dd>
					</dl>
				</div>
				<div class="swiper-slide">
					<p class="info-txt">
						<span class="year">2025</span>
						<strong>카톨릭관동대학교 의예과 합격</strong>
					</p>
					<div class="review-txt">
						<p class="tit">N수에 꼭 필요한 실력점검<br>
							러셀 콘텐츠로 해결</p>
						<p>조금 늦게 공부를 시작하여 제 실력을 계속해서 점검할 필요가 
							있었는데, 학원에서 시행한 메가X대성 더 프리미엄 모의고사를 
							통해 제 자신의 전반적인 위치를 확인할 수 있어서 좋았습니다. 
							또한, 시험마다 학원생의 평균 점수를 알 수 있어서 
							시험의 객관적인 난이도를 파악할 수 있었고, 
							다음 시험의 전략을 짜는데 용이하게 만들었습니다.</p>
					</div>
					<dl class="stu-info">
						<dt>러셀CORE 원주 신*재</dt>
						<dd><img src="<%=Application("img_path_russel")%>/intro/2025/half/stu_sjj.png" alt=""></dd>
					</dl>
				</div>
			</div>
			<% End If %>

			<!-- 화살표 -->
			<% If sCampusCode <> "CD0001" and sCampusCode <> "CD0244" and sCampusCode <> "CD0343" and sCampusCode <> "CD0346" and sCampusCode <> "CD0250" and sCampusCode <> "CD0248" and sCampusCode <> "CD0340" and sCampusCode <> "CD0344" Then '대치/분당/코어원주/코어청주/부천/평촌/코어광주/코어전주 제외 %>
			<div class="swiper-button-next"></div>
    		<div class="swiper-button-prev"></div> 
			<% End If %>
		</div>
		<% If sCampusCode = "INTRO" or sCampusCode = "CD0001" or sCampusCode = "CD0343" or sCampusCode = "CD0346" or sCampusCode = "CD0246" or sCampusCode = "CD0342" Then '인트로/대치/코어원주/코어청주/센텀/대구 %>
		<p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌</p>
		<% ElseIf sCampusCode = "CD0250" Then '부천 %>
		<% Else %>
		<p class="r-txt">*합격생 인터뷰 중 일부 발췌</p>
		<% End If %>
		<!-- //학생후기 -->

		<% If sCampusCode = "INTRO" Then '인트로 %>
		<!-- 힉생입결 슬라이드 -->
		<div class="rolling-slide swiper-container mt70" dir="ltl">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">서울대학교<br>
						의예과</p>
					<p class="name">러셀 대치<br>
						<span>권수현</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">서울대학교<br>
						의예과</p>
					<p class="name">러셀 분당<br>
						<span>김기민</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">서울대학교<br>
						의예과</p>
					<p class="name">러셀 대치<br>
						<span>노서현</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">연세대학교<br>
						의예과</p>
					<p class="name">러셀 영통<br>
						<span>임희수</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">연세대학교<br>
						의예과</p>
					<p class="name">러셀 평촌<br>
						<span>유현우</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">연세대학교<br>
						의예과</p>
					<p class="name">러셀CORE 광주<br>
						<span>박채은</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">성균관대학교<br>
						의예과</p>
					<p class="name">러셀 목동<br>
						<span>이소정</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">성균관대학교<br>
						의예과</p>
					<p class="name">러셀 분당<br>
						<span>이세윤</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">성균관대학교<br>
						의예과</p>
					<p class="name">러셀 대구<br>
						<span>서예리</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">성균관대학교<br>
						의예과</p>
					<p class="name">러셀 센텀<br>
						<span>이재성</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭대학교<br>
						의예과</p>
					<p class="name">러셀 강남<br>
						<span>이예은</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭대학교<br>
						의예과</p>
					<p class="name">러셀 영통<br>
						<span>이정묵</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭대학교<br>
						의예과</p>
					<p class="name">러셀 대구<br>
						<span>장서윤</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭대학교<br>
						의예과</p>
					<p class="name">러셀 대전<br>
						<span>엄서영</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭대학교<br>
						의예과</p>
					<p class="name">러셀CORE 광주<br>
						<span>김도윤</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭대학교<br>
						의예과</p>
					<p class="name">러셀CORE 전주<br>
						<span>박성민</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">울산대학교<br>
						의예과</p>
					<p class="name">러셀 울산<br>
						<span>이예빈</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">울산대학교<br>
						의예과</p>
					<p class="name">러셀CORE 창원<br>
						<span>김태희</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">울산대학교<br>
						의예과</p>
					<p class="name">최상위권 전문관 러셀 기숙학원<br>
						<span>김규리</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">고려대학교<br>
						의예과</p>
					<p class="name">러셀 강남<br>
						<span>최원영</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">고려대학교<br>
						의예과</p>
					<p class="name">러셀 중계<br>
						<span>동나영</span></p>
				</div>
			</div>
		</div>

		<div class="rolling-slide swiper-container" dir="rtl">
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">경희대학교<br>
						의예과</p>
					<p class="name">러셀 평촌<br>
						<span>김성윤</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">경희대학교<br>
						의예과</p>
					<p class="name">러셀CORE 전주<br>
						<span>김하연</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">아주대학교<br>
						의학과</p>
					<p class="name">러셀 중계<br>
						<span>이예준</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">아주대학교<br>
						의학과</p>
					<p class="name">러셀 대전<br>
						<span>신유찬</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">인하대학교<br>
						의예과</p>
					<p class="name">러셀 부천<br>
						<span>박정우</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">한양대학교<br>
						의예과</p>
					<p class="name">러셀 센텀<br>
						<span>김수훈</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">한양대학교<br>
						의예과</p>
					<p class="name">남학생 전문관 러셀 기숙학원<br>
						<span>김선규</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭관동대학교<br>
						의예과</p>
					<p class="name">러셀CORE 원주<br>
						<span>김민솔</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">가톨릭관동대학교<br>
						의예과</p>
					<p class="name">여학생 전문관 러셀 기숙학원<br>
						<span>최윤서</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">강원대학교<br>
						의예과</p>
					<p class="name">러셀CORE 원주<br>
						<span>정동준</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">건국대학교<br>
						의예과</p>
					<p class="name">러셀 목동<br>
						<span>김승연</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">부산대학교<br>
						의예과</p>
					<p class="name">러셀 울산<br>
						<span>공승희</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">부산대학교<br>
						의예과</p>
					<p class="name">러셀CORE 창원<br>
						<span>김용준</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">부산대학교<br>
						의예과</p>
					<p class="name">남학생 전문관 러셀 기숙학원<br>
						<span>강태욱</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">연세대학교(미래)<br>
						의예과</p>
					<p class="name">최상위권 전문관 러셀 기숙학원<br>
						<span>강민준</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">을지대학교<br>
						의예과</p>
					<p class="name">러셀CORE 청주<br>
						<span>김이담</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">을지대학교<br>
						의예과</p>
					<p class="name">여학생 전문관 러셀 기숙학원<br>
						<span>박서연</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">인제대학교<br>
						의예과</p>
					<p class="name">러셀 부천<br>
						<span>도유빈</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">인제대학교<br>
						의예과</p>
					<p class="name">자연계 전문관 러셀 기숙학원<br>
						<span>노현곤</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">충북대학교<br>
						의예과</p>
					<p class="name">러셀CORE 청주<br>
						<span>오유영</span></p>
				</div>
				<div class="swiper-slide">
					<p class="year">2025학년도</p>
					<p class="grade">부산대학교 한의학전문대학원<br>
						학석사통합과정</p>
					<p class="name">자연계 전문관 러셀 기숙학원<br>
						<span>박규빈</span></p>
				</div>
			</div>
		</div>
		<p class="r-txt">*기숙학원 합격생의 경우, 학원 개편으로 인해 구 남의대관, 서의치관 진학실적이 포함될 수 있습니다.</p>
		<!-- //힉생입결 슬라이드 -->
		<% End If %>

		<p class="txt"><%=txtCampus%>에서 시작한다면 시간은 충분합니다.<br>
			더 이상 망설이지 말고 시작하세요.</p>
	</div>
</div>

<!-- tab01 수준별 맞춤 단과 -->
<div class="cont js-cont <%=campusName%>">
	<div class="cont03">
		<% If sCampusCode = "CD0257" Then '중계 %>
		<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont03_tit.png" alt="효율적인 학습이 중요한 반수생활, 반수 최적화된 학습 시스템으로 빠르게 목표 대학 합격을 만들어 드립니다."></h3>
		<% Else %>
		<h3 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont03_tit.png" alt="효율적인 학습이 중요한 반수생활, 반수 최적화된 학습 시스템으로 빠르게 최상위권 대학 합격을 만들어 드립니다."></h3>
		<% End If %>
		
		<!-- fix-menu -->
		<div class="fix-menu-wrap">
			<nav class="fix-menu">
				<div class="menu">
					<a class="on" href="javascript:void(0);">최소 시간<br><strong>수준별 맞춤 단과</strong></a>
					<a href="javascript:void(0);">최대 효율<br><strong>바른공부 자습전용관</strong></a>
					<a href="javascript:void(0);">전략적 관리<br><strong>학생 맞춤 관리</strong></a>
					<a href="javascript:void(0);">맞춤 콘텐츠<br><strong>실전 학습 콘텐츠</strong></a>
				</div>
			</nav>
		</div>
		<!-- //fix-menu -->

		<h4 data-aos="flip-up"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont03_tit02.png" alt="맞춤 학습으로 시간을 줄이는 최상위권 수준별 맞춤 단과"></h4>
		<% If sCampusCode = "CD0341" Then '대전 %>
		<p class="s-tit" data-aos="flip-up">수준별 맞춤 단과로 불필요한 시간은 줄이고 꼭 필요한 자습시간을 확보하세요.</p>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
		<p class="s-tit" data-aos="flip-up">수능 고득점이 목표인 반수생들은 완성된 과목까지 강의를 수강할 필요가 없습니다.<br>
			부족한 과목만 선택 수강하는 수준별 맞춤 단과로<br>
			불필요한 시간은 줄이고 꼭 필요한 자습시간을 확보하세요.</p>
		<% Else %>
		<p class="s-tit" data-aos="flip-up">최상위권 대입이 목표인 반수생들은 완성된 과목까지 강의를 수강할 필요가 없습니다.<br>
			부족한 과목만 선택 수강하는 수준별 맞춤 단과로<br>
			불필요한 시간은 줄이고 꼭 필요한 자습시간을 확보하세요.</p>
		<% End If %>

		<div class="inner">
			<% If sCampusCode = "CD0244" or sCampusCode = "CD0343" or sCampusCode = "CD0341" Then '분당/코어원주/대전 %>
			<p class="mb100"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/half/cont03_img.jpg" alt=""></p>
			<% Else %>
			<p class="mb100"><img src="<%=Application("img_path_russel")%>/intro/2025/half/cont03_img.jpg" alt=""></p>
			<% End If %>

			<!-- 강사진 슬라이드 -->
			<p class="mb80"><img src="<%=Application("img_path_russel")%>/intro/2025/half/teacher_tit.png" alt=""></p>
			<!--#include virtual="/intro/2025/half/teacher_slide.asp"-->
			<!-- //강사진 슬라이드 -->
			
			<% If sCampusCode = "INTRO" Then '인트로 %>
			<p class="r-txt">* 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
			<% Else %>
			<p class="r-txt">*학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
			<% End If %>

			<!-- 단과 -->
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
				<% If sCampusCode <> "CD0343" and sCampusCode <> "CD0340" and sCampusCode <> "CD0341" Then '코어원주/광주/대전 제외 %>
                <li>
                    <dl>
                        <dt><%=am_stxt%></dt>
                        <dd><%=am_txt%></dd>
                    </dl>
					<ul>
						<li>평일 오전/오후 시간대에 체계적인 과목 편성</li>
						<li>관리력이 강력한 선생님의 N수생 전용 집중 관리형 수업</li>
					</ul>
                    <a href="<%=am_url%>">자세히 보기</a>
                </li>
				<% End If %>
            </ul>
		</div>
	</div>
</div>