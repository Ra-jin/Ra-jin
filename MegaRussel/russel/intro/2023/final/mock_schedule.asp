
<div class="inner">
	<p class="mb100" id="stit01_04"><img src="<%=Application("img_path_russel")%>/intro/2023/final/stit01_04.png" alt="04.파이널 실전 콘텐츠 집체 모의고사"></p>
	<!-- contents-list -->
	<div class="contents-list">
		<% If isCore = "1" Then '코어 %>
		<div>
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_03.jpg" alt="">
			<div>
				<p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀CORE<br>Weekly 모의고사</strong></p>
				<div class="c-txt-box">
					<a href="/intro/2022/weekly/index.asp">자세히 보기</a>
					<ul>
						<li>러셀CORE 선생님들이 직접 출제한<br>모의고사 콘텐츠 제공</li>
						<li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상 및 긴장감 유지</li>
					</ul>
				</div>
			</div>
		</div>
		<% End If %>
		<div>
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_01.jpg" alt="">
			<div>
				<p class="c-tit">최신 출제 경향 맞춤 실전 수능<strong>QUEL<br>모의고사</strong></p>
				<div class="c-txt-box">
					<a href="/event/2021/quel/index.asp">자세히 보기</a>
					<ul>
						<li>메가스터디 통합 전 영역 실전 수능<br>대비 모의고사</li>
						<li>최신 출제 경향에 맞춘<br>강도 있는 실전 훈련</li>
					</ul>
				</div>
			</div>
		</div>
		<div>
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_02.jpg" alt="">
			<div>
				<p class="c-tit">전략에 실전을 THE하다<strong>메가X대성<br>더 프리미엄 모의고사</strong></p>
				<div class="c-txt-box">
					<a href="/intro/2022/premium/index.asp">자세히 보기</a>
					<ul>
						<li>과목별 전문 출제진 구성 및<br>다회차 검토 과정</li>
						<li>전과목 모두 구성 및<br>정확한 객관적인 위치 확인</li>
					</ul>
				</div>
			</div>
		</div>
		
		<% If sCampusCode = "INTRO" Then '인트로 %>
		<div>
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_03.jpg" alt="">
			<div>
				<p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀CORE<br>Weekly 모의고사</strong></p>
				<div class="c-txt-box">
					<a href="/intro/2022/weekly/index.asp">자세히 보기</a>
					<ul>
						<li>러셀CORE 선생님들이 직접 출제한<br>모의고사 콘텐츠 제공</li>
						<li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상 및 긴장감 유지</li>
					</ul>
				</div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0342" Then '러셀대구 %>
		<div>
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_03.jpg" alt="">
			<div>
				<p class="c-tit">러셀CORE 선생님 직접 출제<strong>러셀<br>Weekly 모의고사</strong></p>
				<div class="c-txt-box">
					<a href="/intro/2022/weekly/index.asp">자세히 보기</a>
					<ul>
						<li>러셀CORE 선생님들이 직접 출제한<br>모의고사 콘텐츠 제공</li>
						<li>매주 정해진 시간에 집체 모의고사<br>응시하여 실전 감각 향상 및 긴장감 유지</li>
					</ul>
				</div>
			</div>
		</div>
		<% End If %>

		<div>
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_04.jpg" alt="">
			<div>
				<p class="c-tit">러셀 수학 월간지<strong>월간 학습지<br>(월간 장영진)</strong></p>
				<div class="c-txt-box">
					<a href="/intro/info/monthly/index.asp">자세히 보기</a>
					<ul>
						<li>수학 장영진 선생님의 자작 문항으로<br>매월 집체 모의고사 진행</li>
						<li>수험생활에 필요한 다양한 수학&middot;입시<br>관련 정보 제공</li>
					</ul>
				</div>
			</div>
		</div>
		<% If sCampusCode = "CD0250" Then '부천 %>
		<div class="mock-bc">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_bc01.jpg" alt="">
			<div>
				<p class="c-tit">시기별 꼭 필요한 핵심 문제 학습<strong>러셀 부천<br>수/영 주간지</strong></p>
				<div class="c-txt-box mt60">
					<ul>
						<li>러셀 부천 출강 수학/영어 선생님 제공</li>
						<li>최신 출제 경향과 시기별 학습 패턴을<br>반영한 콘텐츠 제공</li>
						<li>누적학습과 확인학습을 한번에 가능</li>
					</ul>
				</div>
			</div>
		</div>
		<div class="mock-bc">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_bc02.jpg" alt="">
			<div>
				<p class="c-tit">고득점을 결정짓는 문항 집중 연습<strong>월간 수학 학습지<br>(월간 정창민)</strong></p>
				<div class="c-txt-box mt50">
					<ul>
						<li>난이도별 구성 및 문제풀이 훈련</li>
						<li>기출 분석을 통한 부족한 개념 보완<br>및 문제 해결력 향상</li>
						<li>러셀 부천 합격 선배들에게<br>검증된 콘텐츠</li>
					</ul>
				</div>
			</div>
		</div>
	    <!-- 부천 고3 제외 : bc-go3-off -->
		<div class="mock-bc bc-go3-off">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_bc03.jpg" alt="">
			<div>
				<p class="c-tit">수능 대응 시나리오 완성을 위한<strong>러셀 부천<br>실전 수능반</strong></p>
				<div class="c-txt-box mt60">
					<ul>
						<li>수능과 같은 조건에서 훈련</li>
						<li>수능 당일 평소 능력 발휘할 수<br> 있도록 마인드 컨트롤 실습</li>
					</ul>
				</div>
			</div>
		</div>
	    <!-- //부천 고3 제외 -->
		<% End If %>
	</div>
	<!-- //contents-list -->
	
	<!-- mock-schedule -->
	<div class="mock-schedule">
		
		<% If sCampusCode = "CD0342" Then '러셀대구 %>
		<p>러셀 대구 파이널 실전 콘텐츠 집체 모의고사 시행 일정</p>
		<% Else %>
		<p><%=txtCampus%> 파이널 실전 콘텐츠 집체 모의고사 시행 일정</p>
		<% End If %>
		<table>
			<colgroup>
				<col style="width:12%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
				<col style="width:8%" />
			</colgroup>
			<thead>
				<tr>
					<th rowspan="2">구분</th>
					<th colspan="4">9월</th>
					<th colspan="4">10월</th>
					<th colspan="3">11월</th>
				</tr>
				<tr>
					<th>1주차</th>
					<th>2주차</th>
					<th>3주차</th>
					<th>4주차</th>
					<th>1주차</th>
					<th>2주차</th>
					<th>3주차</th>
					<th>4주차</th>
					<th>1주차</th>
					<th>2주차</th>
					<th>3주차</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<th>평가원</th>
					<td class="bg-01">9평</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="bg-01">수능</td>
				</tr>
				<% If isCore = "1" Then '코어 %>
				<tr>
					<th>러셀CORE<br>Weekly 모의고사</th>
					<td></td>
					<td class="bg-04">25회</td>
					<td></td>
					<td class="bg-04">26회</td>
					<td class="bg-04">27회</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="bg-04">28회</td>
					<td></td>
				</tr>
				<% End If %>
				<tr>
					<th>QUEL<br>모의고사</th>
					<td></td>
					<td></td>
					<td class="bg-02">3회</td>
					<td></td>
					<td></td>
					<td class="bg-02">4회</td>
					<td></td>
					<td class="bg-02">5회</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<th>메가X대성<br>더 프리미엄<br>모의고사</th>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="bg-03">10월</td>
					<td></td>
					<td class="bg-03">11월</td>
					<td></td>
					<td></td>
				</tr>
				<% If sCampusCode = "CD0342" Then '러셀대구 %>
				<tr>
					<th>러셀<br>Weekly 모의고사</th>
					<td></td>
					<td class="bg-04">25회</td>
					<td></td>
					<td class="bg-04">26회</td>
					<td class="bg-04">27회</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="bg-04">28회</td>
					<td></td>
				</tr>				
				<% ElseIf sCampusCode = "INTRO" Then '인트로 %>
				<tr>
					<th>러셀CORE<br>Weekly 모의고사</th>
					<td></td>
					<td class="bg-04">25회</td>
					<td></td>
					<td class="bg-04">26회</td>
					<td class="bg-04">27회</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td class="bg-04">28회</td>
					<td></td>
				</tr>
				<% End If %>
				<tr>
					<th>월간 장영진<br>모의고사</th>
					<td class="bg-05">9월호</td>
					<td></td>
					<td></td>
					<td></td>
					<td class="bg-05">10월호</td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</tbody>
		</table>
		<p>※ 상기 일정 및 시행 요일은 학원별 학사일정에 따라 변경 및 조정될 수 있습니다.</p>
	</div>
	<!-- //mock-schedule -->
	<div class="pic-wrap">
		<% If sCampusCode = "CD0250" Then '부천 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05_bc.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0244" Then '분당 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05_bd.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05_jg.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05_pc.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0249" Then '영통 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05_yt.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0342" Then '러셀대구 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05_dg.png" alt="" /></p>
		<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05_cw.jpg" alt="" /></p>
		<% Else %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_05.jpg" alt="" /></p>
		<% End If %>
		
		<% If sCampusCode = "CD0250" Then '부천 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_06_bc.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0244" Then '분당 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_06_bd.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_06_jg.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_06_pc.jpg" alt="" /></p>
		<% ElseIf sCampusCode = "CD0342" Then '러셀대구 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_06_dg.png" alt="" /></p>
		<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_06_cw.jpg" alt="" /></p>
		<% Else %>
		<p><img src="<%=Application("img_path_russel")%>/intro/2023/final/cont01_img04_06.jpg" alt="" /></p>
		<% End If %>
	</div>

	<!-- st-review -->
	<div class="st-review">
		
		<% If sCampusCode = "CD0247" Then '강남 %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_jyw.png" alt="">
			<span><strong>2023 경희대학교(서울) 의예과 합격</strong>러셀 강남 정연욱</span>
		</p>
		<div class="s-txt">
			<div>
				"<strong>러셀에서 좋았던 점은 모의고사 이후 총평 적는 것입니다.</strong> 모의고사를 풀고 난 직후 다시 그때 상황을 복기해서 <br>
				<strong>나의 약점이나 부족했던 부분들을 찾아내는 게 학습 방향성을 정하는 데에 큰 도움</strong>이 되었습니다. 또한 러셀에는<br>
				<strong>퀄, 메가X대성 더 프리미엄 모의고사 등 여러 모의고사</strong>가 있기 때문에 이에 대한 <strong>피드백을 통해서 보다 구체적인<br>
				학습 목표들을 설정</strong>할 수 있었습니다."
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0250" Then '부천 %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_khj.png" alt="">
			<span><strong>2023 덕성여자대학교 약학과 합격</strong>러셀 부천 김희진</span>
		</p>
		<div class="s-txt">
			<div>
				"메가X대성 더 프리미엄 모의고사가 좋았습니다. 사설 모의고사 중 평가원과 유사한 문제를 찾기<br>
				어려울뿐더러 <strong>실전 분위기에서 모의고사를 풀 수 있는 기회를 갖기 힘든데, 질 높은 문제를 <br>
				실전 분위기에서 풀 수 있다는 점</strong>이 좋았습니다."
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_lyj.png" alt="">
			<span><strong>2023 이화여자대학교 약학과 합격</strong>러셀 중계 이유진</span>
		</p>
		<div class="s-txt">
			<div>
				"<strong>저는 메가X대성 프리미엄 모의고사가 제일 좋았습니다.</strong> 모의고사 퀄리티도 좋고 실제 수능 시간표대로<br>
				긴장감을 느끼며 시험을 볼 수 있어서 실전 연습에 많은 도움이 되었습니다. 학원 다니기 전에 몇 번<br>
				응시 했었는데, 매번 만족스러웠기 때문에 학원 등록하기로 결심했을 때 다른 학원은 고려하지 않고 <br>
				바로 러셀 중계학원으로 등록했습니다."
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0249" Then '영통 %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_kcy.png" alt="">
			<span><strong>2023 이화여자대학교 약학부 합격</strong>러셀 영통 김채연</span>
		</p>
		<div class="s-txt">
			<div>
				"<strong>메가X대성 THE PREMIUM 모의고사와 QUEL 모의고사를 매월 보면서 저의 실력을 점검</strong>할 수 있었고 <strong>실제 수능을<br>
				보는 것처럼 시뮬레이션</strong>을 해 볼 수 있어 좋았습니다.<br>
				또한 시험 이후에 나오는 <strong>성적표를 통해 저의 위치를 객관적으로 파악하고 반성하거나 성취감</strong>을 느낄 수 있었습니다."
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_syj.png" alt="">
			<span><strong>2023 덕성여자대학교 약학과 합격</strong>러셀 평촌 신영진</span>
		</p>
		<div class="s-txt">
			<div>
				"<strong>퀄 모의고사와 메가X대성 더 프리미엄 모의고사가 좋았습니다.</strong> 수능 공부를 하면서 개념을 익히고 <br>
				여러 문제를 푸는 것도 좋지만, 모의시험을 자주 치르면서 시험에 대한 긴장감도 줄이고 실력도 쌓을 수 있었습니다. <br>
				문제를 풀면서 시간 관리를 하거나  문제 푸는 습관도 점검할 수 있었습니다. 특히 메대프의 경우, 전국 단위 백분위와 <br>
				유형별 정답률이 분석되기 때문에 제 위치를 알고 또 어느 분야가 부족한지 인지하고 고칠 수 있었던 점에서 <br>정말 좋았습니다."
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0341" Then '대전 %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_jhh.png" alt="">
			<span><strong>2023 연세대학교(서울) 의예과 합격</strong>러셀CORE 대전 조한혁</span>
		</p>
		<div class="s-txt">
			<div>
				"<strong>러셀CORE 대전에서 가장 좋았던 시스템은 QUEL 모의고사와 메가X대성 더 프리미엄 모의고사</strong>였습니다.<br>수험장 분위기, 시간표 등 실제 수험장과 가장 유사하게 구현하여 모의고사를 치르기 때문에 수능날<br>발생할 수 있는 일을 시뮬레이션해 볼 수 있고, 수능장에서 해야 할 루틴을 미리 테스트 해볼 수 있었습니다.<br><strong>9평 이후 매달 집체모의고사를 응시하며 부족한 부분을 채울 수 있었고, 동기 부여를 받을 수 있었습니다.</strong>"
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_male.png" alt="">
			<span><strong>2023 조선대학교 의예과 합격</strong>러셀CORE 광주 조OO</span>
		</p>
		<div class="s-txt">
			<div>
				"저는 수능 대비를 위해선 그와 가장 비슷한 환경에서 <strong>가장 비슷한 퀄리티의 문제를 풀어보는 게 중요하다고<br>생각하는데 이 점에서 퀄 모의고사와 메대프 모의고사는 여기에 가장 부합하는 시험</strong>이라고 생각합니다.<br>거기에 성적도 체계적으로 산출되고 분석해주시니 본인의 부족한 점을 점검하고 개선해가는 데에는 더없이<br>좋은 시스템이라고 생각합니다.<br>또한 <strong>자습, 단과, 급식을 모두 한 건물에서 해결할 수 있으니 이동시간도 절약되고 너무 편했습니다.</strong><br>그렇기에 남는 시간에 자습, 산책 등을 자유롭게 할 수 있으니 공부하는 데 최적의 환경이라고 생각합니다.""
			</div>
		</div>       
		<% Else %>
		<p class="s-pic">
			<img src="<%=Application("img_path_russel")%>/intro/2023/final/st_bsj.png" alt="">
			<span><strong>2023 연세대학교(서울) 의예과 합격</strong>
				러셀 분당 백승주</span>
		</p>
		<div class="s-txt">
			
			<% If sCampusCode = "CD0244" Then '분당 %>
			<div>
				"<strong>러셀학원에서 가장 좋았던 시스템은 현장에서 응시하는 실전 모의고사</strong>였습니다. 한 달에 한 번씩 <strong>수능과 똑같은<br>시간표로 진행되기 때문에 수능 실전 연습을 하기에 적합</strong>하였습니다.<br>
				또한 <strong>문제 퀄리티가 좋아서 실제 수능을 푸는 마음가짐</strong>으로 임할 수 있었고, 시험이 끝난 후 오답을 분석하면서 <br>배워 갈 점들을 많이 얻었습니다. 모의고사가 끝난 후 성적표에 <strong>제 등수나 영역별 점수가 자세히 나와서 <br>저의 객관적인 위치를 확인</strong>할 수 있었고, 동기 부여를 받을 수 있었습니다."
			</div>
			<% Else %>
			<div>
				"<strong>러셀학원에서 가장 좋았던 시스템은 메가X대성 더 프리미엄 모의고사</strong>였습니다. 한 달에 한 번씩 보는 메대프는<br>
				<strong>수능과 똑같은 시간표로 진행되기 때문에 수능 실전 연습을 하기에 적합</strong>하였습니다.<br>또한 <strong>문제 퀄리티가 좋아서 실제 수능을 푸는 마음가짐</strong>으로 임할 수 있었고, 시험이 끝난 후 오답을 분석하면서 배워 갈<br>점들을 많이 얻었습니다. 메대프가 끝난 후 성적표에 <strong>제 등수나 영역별 점수가 자세히 나와서 저의 객관적인 위치를<br>확인</strong>할 수 있었고, 동기 부여를 받을 수 있었습니다."
			</div>
			<% End If %>
		</div>
		<% End If %>
	</div>
	<!-- //st-review -->
</div>
<script>
	$(function(){
		if(window.location.href.indexOf('/russel_dg/2023/final_overall/') > -1){
			$('#stit01_04 img').attr('src','<%=Application("img_path_russel")%>/russel_dg/2023/final_overall/stit01_04.jpg')
		}
	})
</script>