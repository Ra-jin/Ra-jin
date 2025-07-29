<div class="cont js-cont-wrap <%=campusName%>">
	<div class="cont10">
		<div class="inner">
			<h3><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/cont10_tit.png" alt="러셀에서 올바른 학습 습관을 만들어 학습했던 수험생들은 최상위권 대입 합격 결과로 러셀이 옳았음을 증명했습니다.2025학년도 러셀 최상위권 대입 합격 결과"></h3>
        	
			<% If campus_code = "CD0349" Then '울산 %>
			<div class="result-wrap">
				<div class="result-list type04 mt40">
					<ul>
						<li>
							<div>
								메이저 의대
								<p><strong>2</strong>명</p>
							</div>
						</li>
						<li>
							<div>
								전국 의예과
								<p><strong>29</strong>명</p>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div>
								치&middot;한&middot;수&middot;약
								<p><strong>31</strong>명</p>
							</div>
						</li>
						<li>
							<div>
								서울대
								<p><strong>2</strong>명</p>
							</div>
						</li>
					</ul>
					<ul>
						<li class="mb0">
							<div>
								연세대&middot;고려대
								<p><strong>26</strong>명</p>
							</div>
						</li>
						<li class="mb0">
							<div>
								KAIST
								<p><strong>2</strong>명</p>
							</div>
						</li>
					</ul>
				</div>        
			</div>
			<!-- 데이터 산출기준 -->
			<div class="data-wrap">
				<a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/ico_info.png" alt=""></span></a>
				<div class="layer-wrap">
					<div class="bg-mask"></div>
					<div class="layer-in">
						<p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
						※ 최종 업데이트 : 2025-03-10｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
						<br>
						※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
						<br>
						※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과

					</div>
				</div>
			</div>
			<% ElseIf campus_code = "CD0340" Then '코어광주 %>
			<div class="result-wrap">
				<div class="result-list type04 mt40">
					<ul>
						<li>
							<div>서울대 의예

								<p><strong>1</strong>명</p>
							</div>
						</li>
						<li>
							<div>연세대 의대

								<p><strong>3</strong>명</p>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div>메이저 의예

								<p><strong>10</strong>명</p>
							</div>
						</li>
						<li>
							<div>전국 의예

								<p><strong>86</strong>명</p>
							</div>
						</li>
					</ul>
					<ul>
						<li class="mb0">
							<div>
								메디컬<br>
								(의치한수약)
								<p><strong>155</strong>명</p>
							</div>
						</li>
						<li class="mb0">
							<div>
								서연고
								<p><strong>33</strong>명</p>
							</div>
						</li>
					</ul>
				</div>        
			</div>
			<!-- 데이터 산출기준 -->
			 <div class="data-wrap">
				<a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/ico_info.png" alt=""></span></a>
				<div class="layer-wrap">
					<div class="bg-mask"></div>
					<div class="layer-in">
						<p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
						* 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2025.02.25 기준) (복수 대학 합격자 포함/단과 수강생 제외)<br>
						* 메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
					</div>
				</div>
			 </div>
			<% ElseIf campus_code = "CD0249" Then '영통 %>
			<div class="result-wrap">
				<div class="result-list type04 mt40">
					<ul>
						<li>
							<div>의&middot;치&middot;한&middot;수&middot;약

								<p><strong>299</strong>명</p>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div>서울대
								<p><strong>76</strong>명</p>
							</div>
						</li>
						<li>
							<div>SKY
								<p><strong>327</strong>명</p>
							</div>
						</li>
					</ul>
					<ul class="silver">
						<li>
							<div>서&middot;성&middot;한&middot;이

								<p><strong>282</strong>명</p>
							</div>
						</li>
						<li>
							<div>중&middot;경&middot;외&middot;시
								<p><strong>284</strong>명</p>
							</div>
						</li>
					</ul>
					<ul class="silver">
						<li class="mb0">
							<div>교대&middot;경대사관&middot;<br>
							특성화대
								<p><strong>97</strong>명</p>
							</div>
						</li>
						<li class="mb0">
							<div>주요 15개 대
								<p><strong>1,059</strong>명</p>
							</div>
						</li>
					</ul>
				</div>        
			</div>
			<!-- 데이터 산출기준 -->
			 <div class="data-wrap">
				<a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/ico_info.png" alt=""></span></a>
				<div class="layer-wrap">
					<div class="bg-mask"></div>
					<div class="layer-in">
						<p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
						※ 2020~2025학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2025.03.04 기준)
					</div>
				</div>
			 </div>
			<% ElseIf campus_code = "CD0342" Then '대구 %>
			<div class="result-wrap">
				<div class="result-list type04 mt40">
					<ul>
						<li>
							<div>전국 의예

								<p><strong>216</strong>명</p>
							</div>
						</li>
						<li>
							<div>메이저 의예

								<p><strong>13</strong>명</p>
							</div>
						</li>
					</ul>
					<ul>
						<li>
							<div>치&middot;한&middot;수&middot;약학

								<p><strong>134</strong>명</p>
							</div>
						</li>
						<li>
							<div>서&middot;연&middot;고

								<p><strong>87</strong>명</p>
							</div>
						</li>
					</ul>
					<ul>
						<li class="mb0">
							<div>서성한이<br>
								과학기술원<br>
								중경외시
								<p><strong>187</strong>명</p>
							</div>
						</li>
						<li class="mb0">
							<div>경북대<br>
							<span>(*메디컬계열 71명)</span>
								<p><strong>131</strong>명</p>
							</div>
						</li>
					</ul>
				</div>        
			</div>
			<!-- 데이터 산출기준 -->
			 <div class="data-wrap">
				<a class="data-txt" href="javascript:void(0)">데이터 산출 기준 <span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter/ico_info.png" alt=""></span></a>
				<div class="layer-wrap">
					<div class="bg-mask"></div>
					<div class="layer-in">
						<p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
						※ 최종 업데이트 : 2025-03-26｜본 결과는 최종 합격자를 기준으로 집계하였습니다.<br>
						※ 러셀 대구 바른공부 자습전용관 재원생의 2025학년도 최종 합격 기준(단과 수강생 제외/복수 대학 합격자 및 수시·정시 합격자 중복 포함)<br>
						※ 메이저 의예: 서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대

					</div>
				</div>
			 </div>
			<% End If %>
			<a class="btn-common" href="<%=result_btn_url%>"><%=result_btn%></a>
		</div>
	</div>
    <% If campus_code = "INTRO" Then '인트로 %>
	<div class="cont10">
		<h3><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/cont10_tit.jpg" alt="러셀 2025 대입 각 지역 입결1위"></h3>
		<!-- #include virtual = "/inc/result/map03.asp" -->
	</div>
	<% End If %>
	<div class="bottom-txt">
		<p>
			최상위권 도약의 터닝포인트, 윈터스쿨<br>
			2026 <%=txtCampus%><br>
			윈터스쿨 종합반에서 Win 하는<br>
			학습 습관을 완성하세요.
		</p>
	</div>
</div>