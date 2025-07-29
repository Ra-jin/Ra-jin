<div class="cont04">
	<h4 class="mb40" data-aos="flip-left"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/snow_01.png" alt=""></h4>
	<h3><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont04_tit.png" alt="학습의 의욕을 높여주는 확실한 동기부여"></h3>
	<div class="inner">
		<div class="manage-navi swiper-container">
			<div class="swiper-wrapper">
				<% If sCampusCode <> "CD0341" Then '대전 %>
				<div class="swiper-slide">장학제도</div>
				<% End If %>
				<div class="swiper-slide">집단적인<br>면학분위기</div>
				<div class="swiper-slide">1:1 멘토링</div>
			</div>
		</div>
		
		<div class="manage-slide swiper-container">
			<div class="swiper-wrapper">
				<!-- 장학제도 -->
				<% If sCampusCode <> "CD0341" Then '대전 %>
				<div class="swiper-slide">
					<% If sCampusCode = "CD0257" Then '중계 %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_slide01.jpg" alt=""></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/manage_slide01.jpg" alt=""></div>
					<% End If %>
					<div class="mn-wrap">
						<p><strong>학구열에 대한 보상으로 <br>
							동기 부여하는 장학 제도</strong>
							입학 성적에 적용되어<br>
							재원생들의 노력과 성공의 결과를 응원하며<br>
							학습동기와 성취를 부여합니다.</p>
						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>독서실 비용 부담을 덜어주는 장학 제도가 잘 나누어져 있고 학생들의 불이익을 최소한으로 하는 방식으로 구성되어 있어서 만족했습니다.</p>
								<p><strong>고려대학교 경제학과</strong> 러셀 강남 장정윤</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>러셀의 장학 혜택 덕분에 학비 부담을 덜고 오로지 <br>
									목표 달성에 집중할 수 있었습니다.</p>
								<p><strong>을지대학교 의예과</strong> 러셀 목동 강동훈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>장학 혜택이 좋은 성적을 유지해야 하는 동기가 되어 <br>
									더 열심히 공부할 수 있었습니다.</p>
								<p><strong>울산대학교 의예과</strong> 러셀CORE 창원 손예주</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>부담을 덜어주고 공부 의욕을 높이는 장학혜택이 좋았습니다. 좋은 성적을 유지해야 하는 동기가 되어 <br>
									더 열심히 공부할 수 있었습니다.</p>
								<p><strong>연세대학교 정치외교학과</strong> 러셀CORE 청주 김화랑</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>장학 혜택 덕분에 부담을 가지지 않고 <br>
									편히 공부할 수 있었습니다.</p>
								<p><strong>경희대학교 의예과</strong> 러셀 평촌 유현우</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0257" Then '중계 %>
						<dl class="mn-info pt0">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>다양한 장학 혜택이 존재해서 <br>
									학생들의 성적 상승 욕구를 일으켜주었습니다.</p>
								<p><strong>경북대학교 수의예과</strong> 러셀 중계 강민수</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>동기부여가 되는 장학 제도가 있어서 슬럼프가 올 때 <br>
									자극제로 활용해서 열심히 공부했던 기억이 있습니다.</p>
								<p><strong>동아대 의예과</strong> 러셀 울산 신○훈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>모의고사를 응시한 뒤 게시되는 순위표를 보면서 <br>
									조금 더 좋은 성적을 내고자 하는 동기부여도 받을 수 있었습니다.</p>
								<p><strong>전북대학교 의예과</strong> 러셀CORE 전주 이상민</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="mn-info">
							<dt class="mr10"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>장학 혜택과 승강반 제도는 수험생들의 부담을 줄여주고 동기 부여를 얻으며 공부를 더 열심히 할 수 있어서 좋았습니다.</p>
								<p><strong>서울대학교 첨단융합학부</strong> 러셀 분당 이준수</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0249" Then '영통 %>
						<dl class="mn-info pt0">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>러셀의 장학제도 덕분에 동기부여도 되었고, <br>
									금전적으로 많은 도움을 받았습니다.</p>
								<p><strong>충남대학교 의예과</strong> 러셀 영통 송민근</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0342" Then '대구 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>흔들릴 수 있는 기간에 심리적으로 독려해 주면서 
									동기부여가 되어 실제 학습에 도움이 되었던 것 <br>
									같습니다.</p>
								<p><strong>가천대학교 의예과</strong> 러셀 대구 이승훈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="mn-info">
							<dt class="ml0"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<dd>
								<p>장학 혜택을 통해 더 열심히 공부해야겠다는 마음가짐을 <br>
									가졌으며, 인강과 교재에 더 많은 투자를 해 <br>
									제게 맞는 공부를 할 수 있었습니다.</p>
								<p><strong>서울대학교 치의학학석사통합과정</strong> 러셀CORE 원주 윤은서</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="mn-info">
							<% If sCampusCode = "CD0340" Then '코어광주 %>
							<dt class="mr15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu01.jpg" alt=""></dt>
							<% Else %>
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/manage_stu01.jpg" alt=""></dt>
							<% End If %>
							<dd>
								<p>부담을 덜어주고 공부 의욕을 높이는 장학혜택이 <br>
									좋았습니다. 좋은 성적을 유지해야 하는 동기가 <br>
									되어 더 열심히 공부할 수 있었습니다.</p>
								<p><strong>연세대학교 정치외교학과</strong> 러셀CORE 청주 김화랑</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
				<% End If %>
				<!-- 집단적인 면학분위기 -->
				<div class="swiper-slide">
					<% If sCampusCode = "CD0245" or sCampusCode = "CD0345" or sCampusCode = "CD0346" or sCampusCode = "CD0248" or sCampusCode = "CD0257" or sCampusCode = "CD0349" or sCampusCode = "CD0340" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0343" or sCampusCode = "CD0344" or sCampusCode = "CD0342" Then '목동/코어창원/코어청주/평촌/중계/울산/코어광주/분당/영통/코어원주/코어전주/대구 %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_slide02.jpg" alt=""></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/manage_slide02.jpg" alt=""></div>
					<% End If %>
					<div class="mn-wrap">
						<p>
							<strong>학구열을 체감할 수 있는 구조로 <br>
							긍정적 경쟁 유도</strong>
							<% If sCampusCode = "CD0257" Then '중계 %>
							학생들의 학구열을 체감할 수 있는<br>
							개방형 구조로 설계되어 긍정적인 경쟁심을<br>
							유도하고 학습 동기로 작용하게 합니다.
							<% Else %>
							최상위권의 학구열을 체감할 수 있는<br>
							개방형 구조로 설계되어 긍정적인 경쟁심을<br>
							유도하고 학습 동기로 작용하게 합니다.
							<% End If %>
						</p>
						

						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>바자관의 가장 좋은 장점은 면학 분위기입니다. <br>
									집중력이 흐트러질 때마다 주변 친구들이 공부하는 모습을 보며 자극을 받아 더 열심히 공부하며 <br>
									집중하는 데 도움을 받았습니다.</p>
								<p><strong>고려대학교 건축사회환경공학부</strong> 러셀 강남 이종헌</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>개방형 구조의 자습관 덕분에 공부하다가 힘들 때마다 친구들을 보며 동기부여를 얻었고, 지치지 않고 <br>
									오랜 시간 수험생활을 하는데 큰 도움이 되었습니다.</p>
								<p><strong>성균관대학교 의예과</strong> 러셀 목동 이소정</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0341" Then '대전 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>바자관의 통유리창 덕분에 다른 친구들이 공부하는 모습을 보고 동기부여를 받을 수 있었고, 수납공간과 책상의 격벽이 본인의 공간을 확실히 구분해 주어 방해받지 않고 학습에 집중할 수 있었습니다.</p>
								<p><strong>가톨릭대학교 의예과</strong> 러셀 대전 윤훈석</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>자습관이 개방형 구조로 되어있기 때문에 <br>
									학습 중 의지가 약해질 때에는 옆에서 공부하는 <br>
									친구들을 보며 마음을 다잡을 수 있었습니다.</p>
								<p><strong>서울대학교 자유전공학부</strong> 러셀CORE 창원 백준서</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>바자관의 장점은 집단적인 면학 분위기입니다. 주위 <br>
									친구들이 열심히 공부하는 모습에 자극을 받아 저 또한 <br>
									더 열심히 공부할 수 있었고, 자투리 시간에도 공부하는 분위기가 형성되어 있어 좋았습니다.</p>
								<p><strong>을지대학교 의예과</strong> 러셀CORE 청주 김이담</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>모두가 열정적으로 공부하는 환경이 조성되고, 학생들 서로가 이에 자극을 받아 더 열심히 학업에 임하게 되는 선순환이 되었습니다.</p>
								<p><strong>고려대학교 경영학과</strong> 러셀 평촌 김윤서</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0257" Then '중계 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>바른공부 자습전용관은 통유리 창과 하얀 바닥재로 <br>
									탁 트여있고 쾌적한 느낌을 줍니다. 열심히 공부하는 학생들을 보며 혼자가 아니라는 생각을 하게 되면서 <br>
									더 힘을 내어 공부할 수 있게 됩니다.</p>
								<p><strong>아주대학교 의학과</strong> 러셀 중계 이예준</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>바자관 내부가 개방감이 있어 좋았습니다. 칸막이가 투명해서 다 같이 공부하는 느낌이라 답답한 느낌 없이 오히려 재미있게 공부했던 기억이 있습니다.</p>
								<p><strong>동의대 한의예과</strong> 러셀 울산 김○경</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>바자관은 개방형 구조로 되어 있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 <br>
									자극을 받을 수 있었습니다.</p>
								<p><strong>서울대학교 인문계열</strong> 러셀CORE 광주 김효원</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>바자관의 장점은 좋은 면학 분위기와 긍정적인 경쟁심 자극입니다. 바자관에는 공부를 하고자 하는 친구들로 가득 차 있습니다. 평소 승부욕이 많은 성격이라 주위를 보며 자극을 받고 공부를 이어갈 수 있었습니다.</p>
								<p><strong>인제대학교 의예과</strong> 러셀CORE 전주 구정모</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0001" Then '대치 %>
						<dl class="mn-info">
							<dt class="mr10"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>공부하다 정신적으로 지칠 때도 주변 친구들이 열심히 
									공부하는 모습들을 보면 동기부여가 되어 힘이 났습니다. 
									이러한 분위기 덕분에 수능 날까지 잡념 없이 앞만 보고 
									달려갈 수 있었습니다.</p>
								<p><strong>을지대학교 의예과</strong> 러셀 대치 박찬서</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="mn-info">
							<dt class="mr10"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>개방형 구조와 넓은 통로 덕분에 쾌적한 분위기 속에서 
									공부할 수 있었고, 옆에서 집중하고 있는 학생들을 보며 
									긍정적인 경쟁심을 자극받을 수 있었습니다.</p>
								<p><strong>강릉원주대학교 치의예과</strong> 러셀 분당 박은한</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0342" Then '대구 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>고개를 들면 100명이 넘는 친구들이 열심히 공부하고 <br>
									있는 모습이 바로 보여 공부가 지치고 힘들 때에도 
									해이해지지 않고 마음을 다잡을 수 있었습니다.</p>
								<p><strong>아주대학교 의예과</strong> 러셀 대구 김규진</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="mn-info pt0">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>열심히 학습하는 친구들을 보며 해이해지는 순간에도 
									마음을 다잡을 수 있었습니다.</p>
								<p><strong>강원대학교 의예과</strong> 러셀CORE 원주 정동준</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/manage_stu02.jpg" alt=""></dt>
							<dd>
								<p>개방형으로 설계된 바른공부 자습전용관의 책상 배치도 큰 장점이었습니다. 열심히 공부하는 친구들의 모습을 보며 긍정적인 경쟁심이 생겨 자연스럽게 동기부여가 되었던 점이 좋았습니다.</p>
								<p><strong>연세대학교 의예과</strong> 러셀 영통 임희수</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
				<!-- 1:1 멘토링 -->
				<div class="swiper-slide">
					<% If sCampusCode = "INTRO" or sCampusCode = "CD0246" Then '인트로/센텀 %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/manage_slide03.jpg" alt=""></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_slide03.jpg" alt=""></div>
					<% End If %>
					<div class="mn-wrap">
						<p><strong>슬럼프 극복과 학습 동기를<br>
							부여하는 1:1 멘토링</strong>
							1:1 멘토링으로 지속적인 학습 동기를 부여하고 <br>
							슬럼프 극복 및 안정적인 수험 생활이 가능하도록<br>
							학습 고충 상담 등 끊임없는 소통을 진행합니다.</p>
						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>수능 전 논술 전형 합격에 회의를 품고 있을 때 지속적으로 격려를 해주셔서 수능이 끝나고 논술 공부를 열심히 하여 합격하는 좋은 결과를 이끌어 내주셨습니다.</p>
								<p><strong>가천대학교 의예과</strong> 러셀 강남 박태원</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>공부를 하다가 지칠 때가 많았는데, 그럴 때마다 <br>
									담임 선생님과의 상담을 통해 수험 생활을 버틸 수 있었습니다.</p>
								<p><strong>경희대학교 한의예과</strong> 러셀 목동 윤동한</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0341" Then '대전 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 각종 입시 상담은 물론 조언과 격려를 많이 해주셔서 힘든 수험생활 동안 지치지 않고 <br>
									공부할 수 있었습니다.</p>
								<p><strong>을지대학교 의예과</strong> 러셀 대전 김우찬</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 자기 주도적 학습 습관 형성을 <br>
									도와주시고, 올바른 공부 방법을 알려주셔서 <br>
									원하는 성과를 얻을 수 있었습니다.</p>
								<p><strong>서울시립대학교 건축학과</strong> 러셀CORE 창원 김한성</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0250" Then '부천 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>바자관 담임 선생님께서 개인별로 상담해 주셔서 현재 나의 공부 상황이나 부족한 과목 등을 확인할 수 있도록 도와주셨고, 이후 공부 방향성에 대한 조언 덕분에 <br>
									질 좋은 학습을 이어나갈 수 있었습니다.</p>
								<p><strong>인제대학교 의예과</strong> 러셀 부천 박승균</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>입시 기간 동안 제 불안감을 관리해 주셨습니다. <br>
									명확한 대입지도가 심리적 도움이 되었습니다.</p>
								<p><strong>고려대학교 신소재공학부</strong> 러셀 평촌 설송민</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0257" Then '중계 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>바자관 바로 앞에 교무실이 있어 입시나 학습 관련하여 고민이 생기면 선생님께 찾아가 상담받을 수 있어서 좋았습니다. 매주 바자관 일정 공지와 함께 응원의 <br>
									말씀을 해주셔서 수험 기간 중 큰 힘이 되었습니다.</p>
								<p><strong>고려대학교 의예과</strong> 러셀 중계 동나영</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>여러모로 의지가 많이 된다는 점이 입시 담임 선생님의 <br>
									최대 장점이라고 생각합니다. 저도 정신적인 부분에서나 학업적인 부분에서 도움을 많이 받았습니다.</p>
								<p><strong>부산대 의예과</strong> 러셀 울산 옥○리</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
						<dl class="mn-info">
							<dt class="mr15"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서는 1:1로 상담해 주시며 앞으로의 <br>
									계획이나 부족한 부분에 대해 스스로 생각해 볼 수 <br>
									있도록 도와주셨습니다.</p>
								<p><strong>조선대학교 의예과</strong> 러셀CORE 광주 김나연</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>조언과 격려를 해주는 사람이 주변에 있다는 것만으로도 <br>
									큰 힘이 됩니다. 저는 이 큰 힘을 담임 선생님으로부터 <br>
									받았던 것 같습니다. 지칠 때마다 힘이 돼 주던 선생님의 따뜻한 말들이 아직도 기억에 오래 남습니다.</p>
								<p><strong>원광대학교 의예과</strong> 러셀CORE 전주 임석민</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0001" Then '대치 %>
						<dl class="mn-info">
							<dt class="mr10"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님 덕분에 수험 생활의 스트레스와 슬럼프를 
									슬기롭게 넘길 수 있었습니다. 제가 원할 때면 언제든 
									상담을 요청해서 고민을 해결할 수 있다는 점이 심리적 안정감을 주었습니다.</p>
								<p><strong>서울대학교 조경·지역시스템공학부</strong> 러셀 대치 박선우</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="mn-info">
							<dt class="mr10"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서는 성적/입시 상담 외에도 심리적인 <br>
									부분에 있어서까지 고민을 들어주시고 항상 친절하게 
									답변해 주셔서 수험생활 동안 많은 도움을 받았습니다.</p>
								<p><strong>서울대학교 의예과</strong> 러셀 분당 김기민</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0249" Then '영통 %>
						<dl class="mn-info">
							<dt class="mr10"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>전반적인 학습 계획 수립부터 원서 접수에 이르기까지 여러 분야에서 담임 선생님의 조언이 도움이 많이 되었습니다.</p>
								<p><strong>계명대학교 의예과</strong> 러셀 영통 양나경</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0342" Then '대구 %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>도움이 필요할 때 담임 선생님이 계심으로써 <br>
									큰 어려움 없이 문제를 해결할 수 있었으며 공부가 
									힘들어질 때쯤 담임 선생님께서 조언을 해주셔서 <br>
									마음을 다잡는 데 도움이 되었습니다.</p>
								<p><strong>경희대학교 치의예과</strong> 러셀 대구 김수현</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="mn-info pt20">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님과의 학습 상담을 통해 조언을 구하고 <br>
									문제 해결, 불안감 해소 등에 도움이 되었습니다.</p>
								<p><strong>덕성여자대학교 약학과</strong> 러셀CORE 원주 이강은</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="mn-info">
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/manage_stu03.jpg" alt=""></dt>
							<dd>
								<p>슬럼프가 오거나 고민이 생길 때마다 담임 선생님과<br>
									상담을 했었는데요, 언제든 친절하게 고민을 들어주시고 <br>
									현실적인 방안을 제시해 주셔서 의지도 많이 되고 <br>
									동기부여도 많이 받았던 것 같습니다.</p>
								<p><strong>대전대학교 한의예과</strong> 러셀CORE 청주 김경진</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
			</div>
		</div>
		<% If sCampusCode = "INTRO" Then '인트로 %>
		<p class="r-txt">*각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.<br>
			*합격생 후기 일부 발췌</p>
		<% Else %>
		<p class="r-txt">*합격생 후기 일부 발췌</p>
		<% End If %>
	</div>
</div>

<div class="cont05">
	<h4 class="mb40" data-aos="flip-left"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/snow_02.png" alt=""></h4>
	<% If sCampusCode = "CD0257" Then '중계 %>
	<h3><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/cont05_tit.png" alt="학습에만 집중할 수 있는 최적화된 환경"></h3>
	<% Else %>
	<h3><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont05_tit.png" alt="학습에만 집중할 수 있는 최적화된 환경"></h3>
	<% End If %>
	
	<div class="inner">
		<div class="baja-navi swiper-container">
			<div class="swiper-wrapper">
				<div class="swiper-slide">바른공부 자습전용관</div>
				<div class="swiper-slide">입시관리</div>
				<div class="swiper-slide">학습관리</div>
				<div class="swiper-slide">생활관리</div>
				<div class="swiper-slide">설명회 및 특강</div>
			</div>
		</div>
		
		<div class="baja-slide swiper-container">
			<div class="swiper-wrapper">
				<!-- 바른공부 자습전용관 -->
				<div class="swiper-slide">
					<div style="position:relative;">
						<% If sCampusCode = "CD0245" or sCampusCode = "CD0345" or sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0349" or sCampusCode = "CD0344" or sCampusCode = "CD0244" or sCampusCode = "CD0249" or sCampusCode = "CD0343" Then '목동/코어창원/부천/중계/울산/코어전주/분당/영통/코어원주 %>
						<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_slide01.jpg" alt="">
						<% Else %>
						<img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_slide01.jpg" alt="">
						<% End If %>
						<a href="javascript:void(0)" class="bt-tt02" style="position:absolute;right:0;bottom:0;width:80px;height:80px;"></a>
					</div>
					<div>
						<p><strong>학습에만 집중할 수 있도록 설계된 <br>바른공부 자습전용관</strong>
							넓은 책상과 편안한 의자, 쾌적한 환경을 조성하여<br>
							오랜 시간 학습에 무리 없도록 오직 학습에만<br>
							전념할 수 있는 최적의 학습 환경을 제공합니다.</p>

						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>필요할 때 제가 원하는 책이나 필기구가 있어야 마음이 편한 스타일인데 넓은 책상과 개인 책장이 있어 바자관에서 하루의 대부분을 보내도 문제없을 만큼 좋았습니다.</p>
								<p><strong>서울대 수의예과</strong> 러셀 강남 김태영</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>편한 의자, 넓은 책상과 책장, 적절한 온도, 자유롭게 사용할 수 있는 제빙기 등의 편리한 시설 덕분에 편안하게 공부에만 집중할 수 있었습니다.</p>
								<p><strong>이화여자대학교 약학전공</strong> 러셀 목동 김나온</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0341" Then '대전 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>러셀 대전에서는 오로지 수능 공부에만 <br>
									집중할 수 있어서 좋았습니다.</p>
								<p><strong>충남대학교 의예과</strong> 러셀 대전 허관훈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>책상이 넓어 책을 많이 올려두어도 편하게 공부할 수 있었고, 스탠딩 책상은 집중력을 높이는 데 도움이 되었습니다.</p>
								<p><strong>경북대학교 의예과</strong> 러셀CORE 창원 최재원</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>오랜 시간 앉아 공부해야 하는 수험생들에게 공간적인 여유는 중요한 요소인데, 책상이 넓어 교재나 문제지를 넉넉하게 펼쳐놓고 공부할 수 있어 좋았습니다.</p>
								<p><strong>충북대학교 의예과</strong> 러셀CORE 청주 오우영</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0250" Then '부천 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>바자관의 장점은 충분한 자습 시간이 보장된다는 점입니다. 오전 8시부터 오후 10시까지 자율학습이 가능했기 때문에 과목별 공부량을 자유롭게 조절할 수 있었고 보다 효율적으로 공부할 수 있었습니다.</p>
								<p><strong>인제대학교 의예과</strong> 러셀 부천 도유빈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>넓은 책상과 스탠딩 책상이 모의고사를 풀어도 공간이 넉넉히 남아서 도움이 되었습니다.</p>
								<p><strong>서울대학교 공과대학</strong> 러셀 평촌 선하람</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0257" Then '중계 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>여유로운 책상과 책장의 크기로 인해 많은 양의 학습 자료를 수납할 수 있고 바자관에서는 핸드폰을 사용할 <br>
									수 없어 온전히 공부에 집중할 수 있었습니다.</p>
								<p><strong>서울대학교 통계학과</strong> 러셀 중계 예승희</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd class="pl20">
								<p>기본적으로 학습 환경이 매우 쾌적하고, <br>
									책상이 넓다는 점이 정말 마음에 들었습니다.</p>
								<p><strong>서울대 컴퓨터공학부</strong> 러셀 울산 안채원</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>피곤할 때면 스탠딩 책상을 이용해 기분 전환할 수 있었고, 바자관이 개방형 구조로 되어 있어 열심히 하는 친구들의 모습에 긴장감을 유지할 수 있었습니다.</p>
								<p><strong>연세대학교 의예과</strong> 러셀CORE 광주 최정윤</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>편안한 책상과 의자, 쾌적한 바자관의 환경이 <br>
									공부를 오래 지속하는 데 도움이 되었습니다.</p>
								<p><strong>인제대학교 의예과</strong> 러셀CORE 전주 구정모</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0001" Then '대치 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>바자관은 공부 환경이 쾌적하고 개방형 구조이기에 <br>
									답답한 느낌 없이 차분한 마음으로 공부를 할 수 있었습니다.</p>
								<p><strong>연세대학교 의예과</strong> 러셀 대치 송정욱</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>칸막이 없이 탁 트여 있어 공부하다가 지칠 때 주위를 둘러보면서 좋은 자극을 받을 수 있어 좋았습니다.</p>
								<p><strong>성균관대학교 의예과</strong> 러셀 분당 권인경</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0249" Then '영통 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>편안한 의자, 공기청정기와 밝은 조명 등으로 조성된 쾌적한 환경에서 공부에만 온전히 몰입할 수 있어서 좋았습니다.</p>
								<p><strong>서울대학교 정치외교학부</strong> 러셀 영통 윤소정</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0342" Then '대구 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd class="pt20">
								<p>바자관의 장점은 쾌적한 환경입니다. 책상이 넓어 모의고사를 풀기에 용이했고, 바로 옆의 개인 책장을 이용할 수 있어서 책을 찾기 위해 사물함까지 이동해야 하는 번거로움이 없었습니다.</p>
								<p><strong>고려대학교 의예과</strong> 러셀 대구 송지안</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>바자관의 장점은 쾌적한 환경입니다. 독서실이나 스터디 카페는 먼지도 많고 어두운 곳이 많아서 답답했는데, 바자관은 밝고 깨끗한 환경이 유지되어 공부하는데 더 집중이 잘 되었습니다.</p>
								<p><strong>가톨릭관동대학교 의예과</strong> 러셀CORE 원주 신정재</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>넓은 책상과 스탠딩 책상이 공부에<br>
									집중을 하는 데 도움이 되었습니다.</p>
								<p><strong>가톨릭 관동대학교 의예과</strong> 러셀CORE 원주 정희찬</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
				<!-- 입시관리 -->
				<div class="swiper-slide">
					<% If sCampusCode = "INTRO" or sCampusCode = "CD0245" or sCampusCode = "CD0246" or sCampusCode = "CD0250" Then '인트로/목동/센텀/부천 %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_slide02.jpg" alt=""></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_slide02.jpg" alt=""></div>
					<% End If %>
					<div>
						<div class="baja-txt">
							<% If sCampusCode = "CD0257" Then '중계 %>
							<p><strong class="mb0">목표 대학 합격을 위한 <br>
							전문적인 맞춤 입시관리</strong></p>
							<% Else %>
							<p><strong class="mb0">최상위권 대학 합격을 위한 <br>
							전문적인 맞춤 입시관리</strong></p>
							<% End If %>
							<ul class="list-base list-chck">
								<li>목표 대학/학과에 맞춘 입시 방향 제시</li>
								<li>내신 및 모의고사 성적 추이와 입학 전형을 <br>
									분석하여 맞춤 전략 제안</li>
								<li>수시/정시 1:1 컨설팅을 통해 최적의 지원 전략 제공</li>
							</ul>
						</div>
						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>매 모의고사 이후 1:1 상담을 통해 성적을 바탕으로 앞으로의 학습 방향을 보완해 주시고, 수시 정시 가리지 않고 다양한 입시정보를 제공해 주셔서 원서 접수에 도움을 받았습니다.</p>
								<p><strong>연세대학교 통합디자인학과</strong> 러셀 강남 신재윤</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 제 생기부와 내신의 장단점을 파악하시고, 대학마다 다른 입시제도에 관해 알려주셔서 대학 원서를 넣는데 큰 도움을 받았습니다.</p>
								<p><strong>서울대학교 전기정보공학부</strong> 러셀 목동 김건우</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0341" Then '대전 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 바른공부 자습전용관 앞 <br>
									상담 부스에서 수시로 상담하며 <br>
									철저히 관리해 주셔서 좋았습니다.</p>
								<p><strong>을지대학교 의예과</strong> 러셀 대전 김우찬</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>혼자서는 입시 방향성과 전략을 세우기가 어려웠으나, 담임 선생님과의 상담을 통해 남은 기간을 체계적으로 준비할 수 있었습니다.</p>
								<p><strong>충북대학교 의예과</strong> 러셀CORE 창원 손원후</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 저에게 유리한 전형을 객관적인 지표를 통해 추천해 주셔서 이를 기반으로 원서접수를 하고, 목표하던 대학에 합격할 수 있었습니다.</p>
								<p><strong>고려대학교 철학과</strong> 러셀CORE 청주 최승연</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>1년 내내 제 학습 경과를 지켜봐 주신 선생님이신 만큼 저에게 맞추어 현실적인 방향으로 입시 상담을 진행해 주셨기 때문에 의지할 수 있었습니다.</p>
								<p><strong>연세대학교 아시아학과</strong> 러셀 평촌 권나영</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0257" Then '중계 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd class="pt20">
								<p>수시 원서를 쓸 때 많은 도움을 주셨습니다. 제가 합격한 대학교뿐만 아니라 다른 5장을 어떻게 적을지 같이 고민해 주시고 설명해 주셔서 후회 없이 원서를 <br>
									작성할 수 있었습니다.</p>
								<p><strong>동국대학교 의예과</strong> 러셀 중계 정지안</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>원서를 접수하기 1시간 전까지도 바자관 담임 선생님과 작년 경쟁률, 입결 컷을 공유하며 후회 없는 <br>
									원서접수를 할 수 있었습니다.</p>
								<p><strong>연세대 불어불문학과</strong> 러셀 울산 오○원</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서는 힘들거나 막막할 때 찾아가면 정말 진심으로 학생들을 생각해 주셨고 학습 방향에 대한 조언도 해주셔서 많은 도움이 되었습니다.</p>
								<p><strong>이화여자대학교 의예과</strong> 러셀CORE 광주 최정윤</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd style="padding-top: 22px;">
								<p>학습 방향이 불분명하고 방황할 때, 입시 담임 선생님께서 
									명확한 기준에 따른 과목별 공부시간 분배 등에 대한 <br>
									조언을 해주셨습니다. 덕분에 가장 힘든 시기에 <br>
									덜 흔들리고 공부할 수 있어 좋았습니다.</p>
								<p><strong>전북대학교 의예과</strong> 러셀CORE 전주 유동균</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0001" Then '대치 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 입시에 대한 풍부한 정보를 바탕으로 
									상담해 주셔서 많은 도움이 되었고, 저에게 적합한 <br>
									수시 전형을 추천해 주셨습니다.</p>
								<p><strong>연세대학교 의예과</strong> 러셀 대치 송정욱</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 많은 선배들의 데이터를 기반으로 한 입시 상담을 해주시기 때문에 실질적인 도움을 받을 수 있었습니다.</p>
								<p><strong>성균관대학교 의예과</strong> 러셀 분당 이세윤</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0249" Then '영통 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd class="pt20">
								<p>수시 신청뿐만 아니라 입시의 마지막까지 함께 고민해 주시면서 어떤 대학의 어떤 학과를 고르는 편이 좋을지 상담해 주셨었는데, 정말 큰 도움이 되었고 아직까지도 감사하게 생각하고 있습니다.</p>
								<p><strong>서울대학교 첨단융합학부</strong> 러셀 영통 김민준</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0342" Then '대구 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd class="pt20">
								<p>입시와 관련된 구체적인 정보를 친절하게 알려주셔서 감사했습니다. 원서 접수 기간에도 고민하고 있을 때 상담을 통해서 보다 원활하게 원서를 작성할 수 있었습니다.</p>
								<p><strong>대구가톨릭대학교 의예과</strong> 러셀 대구 박수민</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>원서 작성 기간 지원 학교에 대한 고민이 많았지만 담임 선생님과의 상담을 통해 적절한 대학교들을 선정하여 원서를 작성하고, 선생님과 함께 지속 수정한 것이 많이 도움 되었습니다.</p>
								<p><strong>연세대학교 교육학부</strong> 러셀CORE 원주 장서영</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께서 입시관리를 해주시는 것이 <br>
									많은 도움이 되었습니다. 수시 지원할 때 어떤 전략을 세울지 함께 상담한 것이 효과적이었습니다.</p>
								<p><strong>고려대학교 의예과</strong> 러셀 분당 조한준</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
				<!-- 학습관리 -->
				<div class="swiper-slide">
					<% If sCampusCode = "INTRO" or sCampusCode = "CD0341" or sCampusCode = "CD0246" Then '인트로/대전/센텀 %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_slide03.jpg" alt=""></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_slide03.jpg" alt=""></div>
					<% End If %>
					<div>
						<div class="baja-txt">
							<p><strong class="mb0">수능까지 성취도 있는 학습을 위한 <br>
								체계적인 학습관리</strong></p>
							<ul class="list-base list-chck">
								<li>성적 데이터와 학습 현황 기반 <br>
									과목별 보완점과 학습 방향 상담</li>
								<li>올바른 습관 형성 및 방법 개선을 위한 위한 플래너 점검</li>
								<li>목표 성적 맞춤 학습 전략과 시기별 학습 가이드 제시</li>
							</ul>
						</div>
						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>6평 9평이 끝나고 상담을 진행하면서 보완해야 할 부분들을 수정하고, 매주 플래너 검사를 통해 모든 과목을 고르게 공부할 수 있도록 도와주셨습니다.</p>
								<p><strong>건양대학교 의예과</strong> 러셀 강남 송하준</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님께 1:1 상담을 받으며 학습 전반을 돌아볼 <br>
									수 있어서 좋았고, 의지할 수 있는 선생님이 계셔서 <br>
									고3 생활의 불안감이 적었습니다.</p>
								<p><strong>이화여자대학교 약학전공</strong> 러셀 목동 김나온</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님과의 상담을 통해 제 학습 상황을 객관적으로 진단할 수 있었고, 어떤 방향으로 공부를 이어가야 할지 구체적인 계획을 세울 수 있었습니다.</p>
								<p><strong>연세대학교 경영학과</strong> 러셀CORE 창원 박성범</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님과의 상담 과정에서 석차 등 객관적인 지표를 활용해 실력을 점검하고 앞으로의 학습 계획을 수립해 나갈 수 있었습니다.</p>
								<p><strong>연세대학교 정치외교학과</strong> 러셀CORE 청주 김화랑</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>공부를 어떠한 방향으로 해야 하는지에 대해서 <br>
									알 수 있었습니다.</p>
								<p><strong>인하대학교 의예과</strong> 러셀 평촌 선현우</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0257" Then '중계 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님이 입시상담을 진행해 주셔서 모르는 점을 해결할 수 있었고 목표를 구체화할 수 있었습니다.</p>
								<p><strong>가천대학교 의예과</strong> 러셀 중계 임건빈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>처음 해보는 입시이기에 모르는 것도 많고 앞으로의 <br>
									공부 방향에 대해 막막할 때, 입시 관련 고민을 해결해 주셔서 많은 도움이 되었습니다.</p>
								<p><strong>경북대 수의예과</strong> 러셀 울산 황순민</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>담임 선생님은 제겐 지지대였습니다. 자습을 하다 보면 스트레스도 받고, 무엇을 공부해야 할지 갈피를 못 잡는 경우가 있는데 멘토 역할을 해주셨습니다.</p>
								<p><strong>전북대학교 약학과</strong> 러셀CORE 광주 정성은</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
						<dl class="bj-info">
							<dt class="m0"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd style="padding-top: 22px;">
								<p>모의고사 후 담임 선생님과의 상담이 도움이 되었습니다. 나아진 점과 부족한 점을 함께 찾아보고 보안하기 위해 앞으로의 공부 계획을 모색했던 것이 실력 향상에 큰 도움이 되었습니다.</p>
								<p><strong>전북대학교 의예과</strong> 러셀CORE 전주 이상민</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0001" Then '대치 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>바자관 학생들을 꾸준히 관리해 주셔서 학습 태도를 <br>
									형성하는 데에도 큰 도움을 받을 수 있었습니다.</p>
								<p><strong>서울대학교 사회교육과</strong> 러셀 대치 유수빈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>고민이 생겼을 때 언제든 담임 선생님과 편안한 <br>
									분위기로 상담하였고, 항상 응원해 주셔서 힘든 수험 기간을 버텨낼 수 있었습니다.</p>
								<p><strong>한림대학교 의학과</strong> 러셀 분당 이재현</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0249" Then '영통 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>제가 취약한 과목에 대한 학습 계획을 세워주시고 지속적으로 동기를 불어넣어 주신 덕분에 성적을 크게 향상시킬 수 있었습니다.</p>
								<p><strong>서울대학교 치의학학석사통합과정</strong> 러셀 영통 이가윤</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0342" Then '대구 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd class="pt20">
								<p>총평 노트를 작성한 뒤 이를 바탕으로 상담을 <br>
									진행하면서 시험에 대해 객관적인 위치에서 분석해 
									주셔서 어떤 부분이 부족한지 더 잘 알 수 있었고 항상 <br>
									제 주변에서 많은 지원을 해 주신 것 같습니다.</p>
								<p><strong>가천대학교 의예과</strong> 러셀 대구 이승훈</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>수시로 1:1 상담이 진행되어 진로와 학습적인 부분에서 
									고민되는 점을 바로바로 해소할 수 있었습니다.</p>
								<p><strong>강원대학교 수의예과</strong> 러셀CORE 원주 조양현</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_stu03.jpg" alt=""></dt>
							<dd>
								<p>학습에 대해서는 담임 선생님과 심층적인 상담을 통해 공부의 방향을 설정해나가는데 도움이 되었습니다.</p>
								<p><strong>부산대학교 의예과</strong> 남학생 전문관 러셀 기숙학원 강태욱</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
				<!-- 생활관리 -->
				<div class="swiper-slide">
					<% If sCampusCode = "INTRO" or sCampusCode = "CD0341" or sCampusCode = "CD0246" or sCampusCode = "CD0250" or sCampusCode = "CD0001" or sCampusCode = "CD0342" Then '인트로/대전/센텀/부천/대치/대구 %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_slide04.jpg" alt=""></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_slide04.jpg" alt=""></div>
					<% End If %>
					<div>
						<div class="baja-txt">
							<p><strong class="mb0">집단적인 면학분위기 형성을 위한 <br>
								엄격한 생활관리</strong></p>
							<ul class="list-base list-chck">
								<li>전자 출결 관리 시스템 및 바자관 모니터링 등 체계적 출결 관리</li>
								<li>엄격한 태도 점수 제도로 면학분위기 저해 요소 관리</li>
								<li>안정적인 수험생활이 가능하도록 동반자 역할</li>
							</ul>
						</div>
						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>자습 중간에 선생님과 조교분들께서 <br>
									돌아다니면서 잠을 깨워주셨는데, 나중에는 발걸음 소리만 들려도 자동적으로 잠에서 깨게 되면서 공부시간을 효율적으로 확보할 수 있었습니다.</p>
								<p><strong>서울대학교 인문계열</strong> 러셀 강남 민고은</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>휴대폰을 수거하고, 매시간 출석 관리를 <br>
									해주셔서 생활 패턴과 자습 시간을 <br>
									유지하는데 큰 도움이 되었습니다.</p>
								<p><strong>건국대학교 의예과</strong> 러셀 목동 김승연</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0341" Then '대전 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>최적의 면학분위기를 위해 항상 노력해 주시는 <br>
									담임 선생님 덕분에 쾌적하게 공부할 수 있었습니다.</p>
								<p><strong>서울대학교 전기정보공학부</strong> 러셀 대전 노유찬</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>태도 점수 제도와 담임 선생님의 관리로 면학 분위기가 흐트러지지 않고 집중력을 꾸준히 유지할 수 있었습니다.</p>
								<p><strong>서강대학교 전자공학과</strong> 러셀CORE 창원 이윤성</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>러셀의 전용 와이파이는 인터넷 사용과 관련된 딴짓을 완벽히 차단하여 공부 습관을 바로잡아 주었습니다.</p>
								<p><strong>고려대학교 철학과</strong> 러셀CORE 청주 최승연</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>바자관은 면학 분위기 조성이 잘 되어 있기 때문에 <br>
									방해 없이 공부에 집중할 수 있었습니다.</p>
								<p><strong>대구한의대 한의예과</strong> 러셀 울산 송○후</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>태도 점수 제도로 벌점을 받지 않기 위해 지각하지 않고 떠들지 않고 좋은 면학 분위기를 조성할 수 있어서 좋았습니다.</p>
								<p><strong>조선대학교 의예과</strong> 러셀CORE 광주 송다현</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu02.jpg" alt=""></dt>
							<dd style="padding-top:22px">
								<p>공부에만 집중할 수 있는 환경이 매우 좋았습니다. 
									주기적으로 관리 감독을 해주시는 선생님들이 계셔서 딴짓을 하거나 잠을 잘 수 없기에 스스로 공부를 하기 힘들어하는 학생들에게 긍정적 효과를 줄 것이라 생각합니다.</p>
								<p><strong>전북대학교 의예과</strong> 러셀CORE 전주 유동균</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>쉬는 시간까지도 바자관 안은 면학 분위기가 유지<br>
									되었기 때문에 호흡이 긴 국어나 수학을 풀고 오답까지 
									할 수 있는 집중력이 유지되었습니다.</p>
								<p><strong>서울대학교 첨단융합학부</strong> 러셀 분당 이준수</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0249" Then '영통 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>매 교시 선생님들께서 바자관을 돌아다니시면서 면학 분위기를 조성해 주시는 것이 공부에 집중하는 데에 도움이 되었습니다.</p>
								<p><strong>성균관대학교 약학과</strong> 러셀 영통 정희성</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0342" Then '대구 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd class="pt20">
								<p>형식적인 상담이 아니라, 학생 개개인을 신경 써 주시며 생활 면에서 힘든 점은 없는지, 부족한 점은 어떻게 보완하면 좋을지 같이 고민해 주셔서 심적인 면에서도, 성적 관리 면에서도 많은 도움을 받았습니다.</p>
								<p><strong>고려대학교 의예과</strong> 러셀 대구 송지안</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>교육점수를 받으면 복도에 이름과 사유가 쓰인 공지가 <br>
									붙고, 강제 퇴원까지 진행된다는 점 덕분에 
									올바른 생활습관을 유지할 수 있었습니다.</p>
								<p><strong>연세대학교 경영학과</strong> 러셀CORE 원주 김연주</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_stu04.jpg" alt=""></dt>
							<dd>
								<p>매 교시 선생님들이 출석 체크를 하고 쉬는 시간이 <br>
									아닌 이상 자습관 출입이 어렵기 때문에 면학 분위기가 흐트러지지 않았습니다.</p>
								<p><strong>서울대학교 조경·지역시스템공학부</strong> 러셀 대치 박선우</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
				<!-- 설명회 및 특강 -->
				<div class="swiper-slide">
					<% If sCampusCode = "INTRO" or sCampusCode = "CD0246" Then '인트로/센텀 %>
					<div><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_slide05.jpg" alt=""></div>
					<% Else %>
					<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_slide05.jpg" alt=""></div>
					<% End If %>
					<div>
						<div class="baja-txt">
							<p><strong>다양한 최신 정보를 제공하는 <br>
								설명회 및 특강</strong>
								입시 특강, 전형별 설명회 등 다양한 입시 콘텐츠와 <br>
								풍부하고 정확한 최신 입시 정보를 제공하고 <br>
								과목별 학습법 특강 및 설명회로 시기별 상황에 맞춘<br>
								학습 가이드를 제시하여 효율적인 학습 전략 수립이 가능합니다.</p>
						</div>
						<% If sCampusCode = "CD0247" Then '강남 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu05.jpg" alt=""></dt>
							<dd class="pt20">
								<p>학기 초부터 학생부 종합 전형에 대해 조언해 주신 덕분에 제때 생활기록부를 채울 수 있었고, 시기마다 입시와 관련된 구체적인 정보를 알려주셔서 <br>
									원서 접수에 도움이 되었습니다.</p>
								<p><strong>고려대학교 반도체공학과</strong> 러셀 강남 임동원</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0245" Then '목동 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu01.jpg" alt=""></dt>
							<dd>
								<p>생활관리 특강은 마음이 해이해지기 쉬운 시기에 <br>
									적절한 강의여서 공부하는 자세를 다잡는 것에 <br>도움이 되었습니다.</p>
								<p><strong>이화여자대학교 약학전공</strong> 러셀 목동 김나온</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu05.jpg" alt=""></dt>
							<dd>
								<p>다양한 입시 특강과 합격 사례 설명회를 통해 실질적인 정보를 얻고, 앞으로의 준비 방향을 구체화할 수 있었습니다.</p>
								<p><strong>경성대학교 약학과</strong> 러셀CORE 창원 김진헌</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0349" Then '울산 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu05.jpg" alt=""></dt>
							<dd class="pt20">
								<p>단순한 원서 접수에 대한 이야기뿐만 아니라 수험생이 
									가져야 할 마음가짐이나 태도까지도 배울 수 있어 
									감사했습니다. 또한, 입시 전략에 대한 <br>
									부담을 많이 덜어 낼 수 있어서 좋았습니다.</p>
								<p><strong>연세대 경영학과</strong> 러셀 울산 김하은</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu05.jpg" alt=""></dt>
							<dd style="margin-left: 25px;">
								<p>재수생들과 경쟁하며 제 위치를 가늠할 수 있었고, <br>
									상위권에 들기 위해 더 열심히 공부할 수 있었습니다.</p>
								<p><strong>전남대학교 의예과</strong> 러셀CORE 광주 정유경</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0244" Then '분당 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu05.jpg" alt=""></dt>
							<dd>
								<p>공개특강과 다른 프로그램이 도움이 많이 되었습니다. 기존 자습 시간을 방해하지 않으면서 유익한 정보를 빠르게 습득할 수 있어 좋았습니다.</p>
								<p><strong>서울대학교 경영대학</strong> 러셀 분당 채성준</p>
							</dd>
						</dl>
						<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_stu05.jpg" alt=""></dt>
							<dd>
								<p>계속해서 바뀌는 입시정보를 빠르고 정확하게 
									알려주셔서, 시간이 부족한 수험생 입장에서 <br>
									많은 도움을 받았습니다.</p>
								<p><strong>연세대학교 의예과</strong> 러셀CORE 원주 박성환</p>
							</dd>
						</dl>
						<% Else %>
						<dl class="bj-info">
							<dt><img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_stu05.jpg" alt=""></dt>
							<dd class="pt20">
								<p>다양한 특강이 개설되어서 도움이 많이 되었습니다. <br>
									입시 전형에 관한 특강과 설명회 등을 들었는데 <br>
									합격한 사례들을 바탕으로 앞으로의 공부 계획을 <br>
									세우는 데에도 많은 도움이 됐습니다.</p>
								<p><strong>경북대학교 수의예과</strong> 러셀 대구 안준영</p>
							</dd>
						</dl>
						<% End If %>
					</div>
				</div>
			</div>
		</div>
		<% If sCampusCode = "INTRO" Then '인트로 %>
		<p class="r-txt">*각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.<br>
			*합격생 후기 일부 발췌</p>
		<% Else %>
		<p class="r-txt">*합격생 후기 일부 발췌</p>
		<% End If %>

		<!-- 바자관 시설보기 팝업 -->
		<div class="layer-pop layer">
			<a href="javascript:void(0)" class="bt-close"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/bt_close.png" alt="닫기"></a>
			<div class="layer-wrap">
				<% If sCampusCode = "INTRO" Then '인트로 %>
				<img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_slide_pop_intro.jpg" alt="" />
				<% ElseIf sCampusCode = "CD0247" or sCampusCode = "CD0341" or sCampusCode = "CD0246" or sCampusCode = "CD0346" or sCampusCode = "CD0248" or sCampusCode = "CD0340" or sCampusCode = "CD0001" or sCampusCode = "CD0342" Then '강남/대전/센텀/코어청주/평촌/코어광주/대치/대구 %>
				<img src="<%=Application("img_path_russel")%>/intro/2025/winter/baja_slide_pop.jpg" alt="" />
				<% Else %>
				<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/baja_slide_pop.jpg" alt="" />
				<% End If %>
			</div>
		</div>
		<!-- //바자관 시설보기 팝업 -->
	</div>
</div>
<div class="cont js-cont <%=campusName%>">
	<div class="cont06">
		<% If sCampusCode = "CD0257" Then '중계 %>
		<h3 class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/cont06_tit.png" alt="많은 학생들의 선택에는 이유가 있습니다. 러셀의 윈터스쿨이 더욱 특별한 이유"></h3>
		<% Else %>
		<h3 class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_tit.png" alt="최상위권의 선택에는 이유가 있습니다. 러셀의 윈터스쿨이 더욱 특별한 이유"></h3>
		<% End If %>

		<div class="inner" data-aos="fade-up">
			<ul class="sys-img">
				<% If sCampusCode = "CD0341" Then '대전 %>
				<li class="on">
                    <img class="off" src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/cont06_sys_img01.png" alt="" />
                    <img class="on" src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/cont06_sys_img01_on.png" alt="" />
                </li>
				<% Else %>
                <li class="on">
                    <img class="off" src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_sys_img01.png" alt="" />
                    <img class="on" src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_sys_img01_on.png" alt="" />
                </li>
				<% End If %>
                <li>
                    <img class="off" src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_sys_img02.png" alt="" />
                    <img class="on" src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_sys_img02_on.png" alt="" />
                </li>
                <li>
                    <img class="off" src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_sys_img03.png" alt="" />
                    <img class="on" src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_sys_img03_on.png" alt="" />
                </li>
            </ul>
            <!-- <p class="sys-bg"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont06_bg.jpg" alt="" /></p> -->
		</div>
	</div>

	<div class="cont07">
		<h3 class="mb80" data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont07_tit.png" alt="메가스터디온,오프 전문 강사진의 최상위권 수준별 맞춤 단과"></h3>
		<ul class="danka-list">
			<li>
				<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/danka_bubble01.png" alt=""></p>
				<p><%=danka_list01%></p>
			</li>
			<li>
				<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/danka_bubble02.png" alt=""></p>
				<p><%=danka_list02%></p>
			</li>
			<li>
				<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/danka_bubble03.png" alt=""></p>
				<p><%=danka_list03%></p>
			</li>
			<li>
				<p class="ico"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/danka_bubble04.png" alt=""></p>
				<p><%=danka_list04%></p>
			</li>
		</ul>
		
		<!-- 선생님 롤링 슬라이드 -->
        <!--#include virtual="/intro/2025/winter/teacher_slide.asp" -->
        <!-- //선생님 롤링 슬라이드 -->
		 
        <div class="inner">
            <% If sCampusCode = "INTRO" Then '인트로 %>
            <p class="r-txt">※ 학원 홈페이지에서 학원별 출강 선생님을 확인할 수 있으며, 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% Else %>
            <p class="r-txt">※ 학원 운영에 따라 출강 선생님은 변경될 수 있습니다.</p>
            <% End If %>
            <ul class="danka-link">
				<% If sCampusCode = "CD0248"  Then '평촌 %>
                <li>
                    <dl>
						<dt>개념부터 실전까지<br>
						빈틈없는 커리큘럼으로 수능 실전 완성
						</dt>
                        <dd>고3 윈터 강좌</dd>
                    </dl>
                    <ul>
                        <li>메가스터디 수능 전문 강사진의<br>
                        몰입감 높은 현장 강의</li>
                        <li>필요한 수업만 전략적으로 선택</li>
                    </ul>
                    <a href="<%=go3_url%>">자세히 보기</a>
                </li>
				<% Else %>
                <li>
                    <dl>
						<% If sCampusCode = "CD0257" Then '중계 %>
                        <dt>목표 성적을 만드는 단계별 커리큘럼</dt>
						<% Else %>
						<dt>1등급을 만드는 단계별 커리큘럼</dt>
						<% End If %>
                        <dd>정규&middot;특강 단과</dd>
                    </dl>
                    <ul>
						<% If sCampusCode = "CD0343" Then '코어원주 %>
						<li>메가스터디 수능 전문 강사진의<br>
							몰입감 높은 대치동 LIVE 강의</li>
						<% Else %>
                        <li>메가스터디 수능 전문 강사진의<br>
							몰입감 높은 현장강의</li>
						<% End If %>
                        <li>평일 저녁/주말 시간대에<br>
							필요한 수업만 전략적으로 선택</li>
                    </ul>
                    <a href="<%=go3_url%>">자세히 보기</a>
                </li>
				<% End If %>
				<% If sCampusCode = "CD0341" or sCampusCode = "CD0349" or sCampusCode = "CD0343" or sCampusCode = "CD0340" Then '대전/울산/코어원주/코어광주 %>
				<% ElseIf sCampusCode = "CD0248"  Then '평촌 %>
                <li>
                    <dl>
                        <dt>겨울방학 약점 보완&실력 향상을 위한<br>
                        단기집중 완성 솔루션</dt>
                        <dd>고1,2 윈터 강좌</dd>
                    </dl>
                    <ul>
                        <li>나에게 필요한 과목/진도를 선택<br>
                        수강하여 취약점 보완</li>
                        <li>취약과목 집중 보완 및 수시 최저<br>
                        등급 대비 집중 학습을 위한 특강</li>
                    </ul>
                    <a href="<%=am_url%>">자세히 보기</a>
                </li>
				<% Else %>
                <li>
                    <dl>
                        <dt>오직 N수생을 위한 평일 오전/오후 단과</dt>
                        <dd>AM 단과</dd>
                    </dl>
                    <ul>
                        <li>평일 오전/오후 시간대에<br>
							체계적인 과목 편성</li>
                        <li>관리력이 강력한 선생님의<br>
							N수생 전용 집중 관리형 수업</li>
                    </ul>
                    <a href="<%=am_url%>">자세히 보기</a>
                </li>
				<% End If %>
            </ul>
        </div>
	</div>
	<div class="cont08">
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont08_tit.png" alt="학습 습관을 탄탄하게 만들고 실력을 향상시키는 검증된 시기별 맞춤 콘텐츠와 집체 모의고사"></h3>
		<div class="inner">
			<div class="ct-navi swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">학습계획 콘텐츠</div>
					<div class="swiper-slide">OMEGA 시리즈</div>
					<div class="swiper-slide">집체 모의고사 시리즈</div>
					<% If sCampusCode <> "CD0257" Then '중계 제외 %>
					<div class="swiper-slide">수학 전용 실전 콘텐츠</div>
					<% End If %>
				</div>
			</div>
			
			<div class="ct-slide mt60 swiper-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide01.png" alt=""></p>
						<ul>
							<% If sCampusCode = "CD0341" Then '대전 %>
							<li><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/ct01_img01.png" alt=""></li>
							<% Else %>
							<li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img01.png" alt=""></li>
							<% End If %>
							<li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img02.png" alt=""></li>
							<li><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct01_img03.png" alt=""></li>
						</ul>
						<p class="r-txt">*학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’되며, 학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide02.png" alt=""></p>
						<% If sCampusCode = "CD0250" or sCampusCode = "CD0257" or sCampusCode = "CD0343" Then '부천/코어원주 %>
						<div class="img">
							<img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter/ct02_img.png" alt="">
							<a href="/event/omega_intro/index.asp" style="top:<%=omega_top%>;left:<%=omega_left%>;bottom:inherit"></a>
						</div>
						<% Else %>
						<div class="img">
							<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct02_img.png" alt="">
							<a href="/event/omega_intro/index.asp" style="top:<%=omega_top%>;left:<%=omega_left%>;bottom:inherit"></a>
						</div>
						<% End If %>
						<p class="r-txt">* 학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide03.png" alt=""></p>
						<ul>
							<li class="img">
								<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct03_img01.png" alt="">
								<a href="/event/2025/jdsm/index.asp" style="left:158px;bottom:57px;"></a>
							</li>
							<li class="img">
								<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct03_img02.png" alt="">
								<a href="/intro/2022/premium/index.asp" style="left:158px;bottom:57px;"></a>
							</li>
						</ul>
						<p class="r-txt" style="padding-right:137px">*학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
					<% If sCampusCode <> "CD0257" Then '중계 제외 %>
					<div class="swiper-slide">
						<p class="mb70"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct_slide04.png" alt=""></p>
						<div class="img">
							<img src="<%=Application("img_path_russel")%>/intro/2025/winter/ct04_img.png" alt="">
							<a href="/event/2025/alpha/index.asp" style="left:535px;"></a>
						</div>
						<p class="c-txt mt30">*ALPHA는 재원생 대상으로 ‘전액 지원’되며, 학원별로 콘텐츠는 상이할 수 있습니다.</p>
					</div>
					<% End If %>
				</div>
			</div>
		</div>
	</div>
</div>