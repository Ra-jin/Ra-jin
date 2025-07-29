<div class="cont js-cont <%=campusName%>">
	<div class="cont10">
		<h3 data-aos="fade-down" class="mb60"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/winter_overall/cont10_tit.png" alt=""></h3>
		<div class="inner">
            
			<% If sCampusCode = "CD0349" Then '울산 %>
			<div class="ar-box">
				<ul class="bay-m-key type02">
					<li>
						<div>
							<p>
								메이저 의대<br>
								<strong>2</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								전국 의예과<br>
								<strong>29</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								치&middot;한&middot;수&middot;약<br>
								<strong>31</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>

				<ul class="bay-m-key type02 mt40">
					<li>
						<div>
							<p>
								서울대<br>
								<strong>2</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								연세대·고려대<br>
								<strong>26</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								KAIST<br>
								<strong>2</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-03-10｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
						※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
						※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과
                    </div>
                </div>
			</div>
			<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
			<div class="ar-box">
				<ul class="bay-m-key type02">
					<li>
						<div>
							<p>
								서울대 의예<br>
								<strong>1</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								연세대 의대<br>
								<strong>3</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								메이저 의대<br>
								<strong>10</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>

				<ul class="bay-m-key type02 mt30">
					<li>
						<div>
							<p>
								전국 의예<br>
								<strong>86</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								메디컬<br>
								(의치한수약)<br>
								<strong>155</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								서연고<br>
								<strong>33</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        * 러셀CORE 광주 바른공부 자습전용관 재원생 대입 합격 기준(2025.02.25 기준) (복수 대학 합격자 포함/단과 수강생 제외)<br>
						* 메이저 의예 : 서울대/연세대/성균관대/가톨릭대/울산대 기준
                    </div>
                </div>
			</div>
			<% ElseIf sCampusCode = "CD0249" Then '영통 %>
			<div class="ar-box">
				<ul class="bay-m-key type02">
					<li>
						<div>
							<p>
								의&middot;치&middot;한&middot;수&middot;약<br>
								<strong>299</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								서울대<br>
								<strong>76</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								SKY<br>
								<strong>327</strong>명
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-silver mt40">
					<li>
						<div>
							<p>
								서&middot;성&middot;한&middot;이<br>
								<strong>282</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								중&middot;경&middot;외&middot;시<br>
								<strong>284</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								교대&middot;경대사관&middot;<br>
								특성화대<br>
								<strong>97</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								주요 15개 대<br>
								<strong>1,059</strong>명
							</p>
						</div>
					</li>
				</ul>
				<div class="r-txt mt40">※ 2020~2025학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2025.03.04 기준)</div>
			</div>
			<% ElseIf sCampusCode = "CD0342" Then '대구 %>
			<div class="ar-box">
				<ul class="bay-m-key type02">
					<li>
						<div>
							<p>
								전국 의예<br>
								<strong>216</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								메이저 의예<br>
								<strong>13</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								치&middot;한&middot;수&middot;약학<br>
								<strong>134</strong>명
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-key type02 mt40">
					<li>
						<div>
							<p>
								서&middot;연&middot;고<br>
								<strong>87</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								서성한이<br>
								과학기술원<br>
								중경외시<br>
								<strong>187</strong>명
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								경북대<br>
								<span class="flag">(*메디컬계열 71명)</span><br>
								<strong>131</strong>명
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-03-26｜본 결과는 최종 합격자를 기준으로 집계하였습니다.<br>
						※ 러셀 대구 바른공부 자습전용관 재원생의 2025학년도 최종 합격 기준(단과 수강생 제외/복수 대학 합격자 및 수시·정시 합격자 중복 포함)<br>
						※ 메이저 의예: 서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대
                	</div>
				</div>
			</div>
            <% Else %>
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>메이저 의대</dt>
                        <dd><strong class="counter" data-count="115">0</strong><span>명</span><sup>1)</sup></dd>
                    </dl>
					<span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont09_badge.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dt>전국 의예과</dt>
                        <dd><strong class="counter" data-count="1269">0</strong><span>명</span><sup>2)</sup></dd>
                    </dl>
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont09_badge.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dt>의&middot;치&middot;한&middot;약&middot;수</dt>
                        <dd><strong class="counter" data-count="2220">0</strong><span>명</span><sup>3)</sup></dd>
                    </dl>
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont09_badge.png" alt="" /></span>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>서울대 의예과</dt>
                        <dd><strong class="counter" data-count="13">0</strong><span>명</span><sup>4)</sup></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>서울대</dt>
                        <dd><strong class="counter" data-count="243">0</strong><span>명</span><sup>5)</sup></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>서울대&middot;연세대&middot;고려대 </dt>
                        <dd><strong class="counter" data-count="1224">0</strong><span>명</span><sup>6)</sup></dd>
                    </dl>
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/winter/cont09_badge.png" alt="" /></span>
                </li>
            </ul>
            
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2025-03-25 기준｜2025학년도 대입에 합격한 러셀 학원 재원생의 결과 (단과 수강생 제외/복수 대학 포함)<br>
					※ 본 결과는 최상위권 전문관(구 양지 기숙), 자연계 전문관(구 서초 기숙), 서의치관, 남의대관, 여의대관, 안성기숙 입결 결과가 포함되어 있습니다.<br>
					1) 2020-2025학년도 러셀에서 배출한 메이저 의대 합격자 중 2025학년도 최다 배출<br>
					ㄴ 2025학년도 메이저 의대(서울대 13명, 연세대 16명, 가톨릭대 18명, 성균관대 22명, 고려대 22명, 울산대 24명)<br>
					2) 2020-2025학년도 러셀에서 배출한 전국 의예과, 의학과, 의과대학 합격자 중 2025학년도 최다 배출<br>
					3) 2020-2025학년도 러셀에서 배출한 전국 의·치·한·약·수 (석학사 통합과정 포함) 합격자 중 2025학년도 최다 배출<br>
					4) 2025학년도 러셀에서 배출한 서울대 의예과 합격자 수 <br>
					5) 2025학년도 러셀에서 배출한 서울대 합격자 수 <br>
					6) 2020-2025학년도 러셀에서 배출한 서울대, 연세대, 고려대 합격자 중 2025학년도 최다 배출<br>
					ㄴ (서울대 243명, 연세대 418명, 고려대 563명)
                </div>
            </div>
            <% End If %> 
            <a href="<%=pass_url%>" class="btn-black mt60">2025학년도 대입 합격 결과</a>
        </div>
	</div>
    
    <div class="bottom-bar">
		<p data-aos="fade-down" data-aos-offset="100">
            최상위권 도약의 터닝포인트, 윈터스쿨<br>
			2026 <%=txtCampus%> 윈터스쿨 종합반에서 Win 하는 학습 습관을 완성하세요.
        </p>
	</div>
</div>