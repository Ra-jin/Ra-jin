<div class="cont js-cont <%=campusName%>">
    <% If sCampusCode = "INTRO" Then '인트로 %>
	<div class="cont01">
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont01_tit.png" alt="러셀은 결과로 증명합니다."></h3>
        <div class="inner" data-aos="fade-up">
			<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont01_img.png" alt=""></div>
		</div>
	</div>
	<% End If %>
	<div class="cont02">
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_tit.png" alt="러셀 2025학년도 대입 올해도 탁월한 입결 달성"></h3>
		<% If sCampusCode = "INTRO" Then '인트로 %>
		<div class="inner" data-aos="fade-up">
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대 의예과</strong></dt>
                        <dd><strong>13</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>메이저 의예과</strong></dt>
                        <dd><strong>115</strong><span>명</span></dd>
                    </dl>
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont02_badge.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>전국 의예과</strong></dt>
                        <dd><strong>1,269</strong><span>명</span></dd>
                    </dl>
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont02_badge.png" alt="" /></span>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>의치한약수</strong></dt>
                        <dd><strong>2,220</strong><span>명</span></dd>
                    </dl>
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont02_badge.png" alt="" /></span>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대</strong></dt>
                        <dd><strong>243</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대/연세대/고려대</strong></dt>
                        <dd><strong>1,224</strong><span>명</span></dd>
                    </dl>
                    <span class="badge"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont02_badge.png" alt="" /></span>
                </li>
            </ul>
            
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    * 2025학년도 대입에 합격한 러셀학원, 러셀CORE 학원, 러셀 기숙학원(남-의대관, 여-의대관, 서의치관), 최상위권 전문관(구. 양지 기숙), 자연계 전문관(구. 서초 기숙), 안성 기숙의 합격 결과(단과 수강생 제외/복수 대학 합격자 포함)<br>
					** 2020-2025학년도 러셀에서 배출한 메이저 의대/전국 의예과, 의학과, 의과대학/전국 의&middot;치&middot;한&middot;약&middot;수(석학사 통합과정 포함)/서울대, 연세대, 고려대 합격자 수 2025학년도 최다 배출(단과 수강생 제외/ 복수 대학 합격자 포함)<br>
					- 2025학년도 메이저 의대(서울대 의예과 13명, 연세대 의예과 16명, 가톨릭대 의예과 18명, 성균관대 의예과 22명, 고려대 의과대학 22명, 울산대 의예과 24명)<br>
					- 2025학년도 서울대 243명, 연세대 418명, 고려대 563명<br>
					※ 최종 업데이트: 2025-03-25｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 예정입니다.


                </div>
            </div> 
            <!-- <a href="<%=pass_url%>" class="btn-black">2024학년도 대입 합격 결과</a> -->
        </div>
		<% ElseIf sCampusCode = "CD0247" Then '강남 %>
		<div class="inner" data-aos="fade-up">
			<div class="ar-box">
				<p class="s-tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_stit.png" alt="러셀 강남 최상위권 대학 합격자 현황"></p>
				<ul class="bay-l-key">
					<li>
						<div style="width:277px">
							<p>
								5개년 연속<br>
								<strong>서울대 의예과</strong> 합격<sup>1)</sup>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								의학계열 누적 합격생<br>
								<strong>711명</strong> 배출<sup>2)</sup>
							</p>
						</div>
					</li>
					<li>
						<div style="width:240px">
							<p>
								최상위권 대학<br>
								누적 합격 현황<sup>3)</sup>
							</p>
						</div>
					</li>
				</ul>
				<div class="s-detail">
					<div style="width:277px">
						<dl>
							<dt>2023학년도 이윤서 학생</dt>
							<dd>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/img_stu01.png" alt=""></div>
							</dd>
						</dl>
						<dl>
							<dt>2023학년도 김OO 학생</dt>
							<dd>
								<div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></div>
							</dd>
						</dl>
						<dl>
							<dt>2022학년도 서OO 학생</dt>
							<dd>
								<div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></div>
							</dd>
						</dl>
						<dl>
							<dt>2021학년도 김OO 학생</dt>
							<dd>
								<div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_m.png" alt="" /></div>
							</dd>
						</dl>
						<dl>
							<dt>2020학년도 양지헌 학생</dt>
							<dd>
								<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2024/winter/img_stu02.png" alt="" /></div>
							</dd>
						</dl>
						<dl>
							<dt>2019학년도 이OO 학생</dt>
							<dd>
								<div><img src="<%=Application("img_path_russel")%>/intro/2024/winter/img_stu_w.png" alt="" /></div>
							</dd>
						</dl>
					</div>
					<ul class="bay-s-silver">
						<li>
							<div>
								<p>의예과 <strong>388명</strong></p>
							</div>
						</li>
						<li>
							<div>
								<p>치의예과 <strong>81명</strong></p>
							</div>
						</li>
						<li>
							<div>
								<p>한의예과 <strong>117명</strong></p>
							</div>
						</li>
						<li>
							<div>
								<p>수의예과 <strong>35명</strong></p>
							</div>
						</li>
						<li>
							<div>
								<p>약학과 <strong>90명</strong></p>
							</div>
						</li>
					</ul>
					<ul class="bay-s-silver" style="width:240px">
						<li>
							<div style="width:213px">
								<p>
									의치한수약 <strong>711명</strong>
								</p>
							</div>
							<p class="sub">
								의예과 388명, 치의예과 81명,<br>
								한의예과 117명, 수의예과 35명, 약학과 90명
							</p>
						</li>
						<li class="mt30">
							<div style="width:176px">
								<p>
									서연고 <strong>694명</strong>
								</p>
							</div>
							<p class="sub">
								서울대 132명, 연세대 271명,<br>
								고려대 291명
							</p>
						</li>
						<li class="mt30">
							<div style="width:210px">
								<p>
									서성한이중경외시<br>
									+ 카이스트, 포항공대<br>
									<strong>1,414명</strong>
								</p>
							</div>
						</li>
					</ul>
				</div>
                <div class="info-stxt">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        1) 2019-2023학년도 러셀 강남학원에서 서울대학교 의예과에 합격한 년도 수 기준(23학년도 2명, 19~22학년도 각 1명)<br>
						2) 2018-2025학년도 러셀 강남학원 바른공부 자습전용관 재원생 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함) (2025/03/07 기준)<br>
						3) 2018-2025학년도 러셀 강남학원 내 의약학 계열 및 주요 대학 누적 합격생 수 기준<br>
						- 주요 대학: 서울대, 연세대, 고려대, 서강대, 성균관대, 한양대(서울), 이화여대, 중앙대(서울), 경희대(서울/국제), 한국외대(서울), 서울시립대, 카이스트, 포항공대
                    </div>
                </div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0001" Then '대치 %>
		<div class="inner" data-aos="fade-up">
            
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대 의예과</strong></dt>
                        <dd><strong>5</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>메이저 의대</strong></dt>
                        <dd><strong>21</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>전국 의예과</strong></dt>
                        <dd><strong>130</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>의치한약수</strong></dt>
                        <dd><strong>216</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대</strong></dt>
                        <dd><strong>53</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대/연세대/고려대</strong></dt>
                        <dd><strong>210</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 2025학년도 러셀 대치 재원생의 합격자 기준 (*복수 대학 합격자 및 중복 합격자 포함)<br>
                    ※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과

                </div>
            </div>
        </div>
		<% ElseIf sCampusCode = "CD0249" Then '영통 %>
		<div class="inner" data-aos="fade-up">
			<div class="ar-box">
				<p class="s-tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_stit.png" alt="러셀 영통 2020~2025학년도 합격자 현황"></p>
				<ul class="bay-l-key">
					<li>
						<div style="width:275px;">
							<p>
								의&middot;치&middot;한&middot;약&middot;수<br>
								<strong>299</strong><span>명</span><sup>1)</sup>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								서울대<br>
								<strong>76</strong><span>명</span><sup>2)</sup>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								SKY<br>
								<strong>327</strong><span>명</span><sup>3)</sup>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-silver">
					<li>
						<div>
							<p>
								서&middot;성&middot;한&middot;이<br>
								<strong>282</strong><span>명</span><sup>4)</sup>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								중&middot;경&middot;외&middot;시<br>
								<strong>284</strong><span>명</span><sup>5)</sup>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								교대&middot;경대사관&middot;<br>
								특성화대<br>
								<strong>97</strong><span>명</span><sup>6)</sup>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								주요 15개 대<br>
								<strong>1,059</strong><span>명</span><sup>7)</sup>
							</p>
						</div>
					</li>
				</ul>
				<p class="r-txt mt40">※ 2020~2025학년도 러셀 영통 바른공부 자습전용관 재원생 기준(2025-03-04 기준)
				</p>
				<div class="info-stxt mt30">
					<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
					<div class="data-view">
						1) 2025학년도 러셀 영통에서 배출한 의치한약수 합격자 수(단과 수강생 제외/복수 대학 합격자 포함) (2025-03-04 기준)<br>
						2) 2025학년도 러셀 영통에서 배출한 서울대 합격자 수(단과 수강생 제외/복수 대학 합격자 포함) (2025-03-04 기준)<br>
						3) 2025학년도 러셀 영통에서 배출한 서울대, 고려대, 연세대 합격자 수(단과 수강생 제외/복수 대학 합격자 포함) (2025-03-04 기준)<br>
						4) 2025학년도 러셀 영통에서 배출한 서강대, 성균관대, 한양대, 이화여대 합격자 수(단과 수강생 제외/복수 대학 합격자 포함) (2025-03-04 기준)<br>
						5) 2025학년도 러셀 영통에서 배출한 중앙대, 경희대, 한국외대, 서울시립대 합격자 수(단과 수강생 제외/복수 대학 합격자 포함) (2025-03-04 기준)<br>
						6) 2025학년도 러셀 영통에서 배출한 교대, 경대사관, 특성화대 합격자 수(단과 수강생 제외/복수 대학 합격자 포함) (2025-03-04 기준)<br>
						7) 2025학년도 러셀 영통에서 배출한 주요 15개 대학교 합격자 수(단과 수강생 제외/복수 대학 합격자 포함) (2025-03-04 기준)<br>
						- 주요 15개 대학교: 서울대, 연세대, 고려대, 서강대, 성균관대, 한양대, 이화여대, 중앙대, 경희대, 한국외대, 서울시립대, 건국대, 동국대, 홍익대, 숙명여대<br>
						※ 본 결과는 최종 합격자를 기준으로 집계하였습니다.
	
					</div>
				</div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0341" Then '대전 %>
		<div class="inner" data-aos="fade-up">
			<div class="ar-box">
				<ul class="bay-m-key mt0">
					<li>
						<div>
							<p>
								서울대 의예과<br>
								<strong>4</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								메이저 의대<br>
								<strong>6</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								전국 의예과<br>
								<strong>92</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-key mt40">
					<li>
						<div style="width:308px;">
							<p>
								메디컬<br>(의/치/한/약/수)<br>
								<strong>126</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								SKY/KAIST<br>
								<strong>21</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
                <div class="info-stxt">
                    <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
                    <div class="data-view">
                        ※ 최종 업데이트 : 2025-02-28｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
                        ※ 러셀 대전 바른공부 자습전용관 재원생의 2025학년도 수시/정시 최종 합격 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
                        ※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과

                    </div>
                </div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
		<div class="inner" data-aos="fade-up">
			<div class="ar-box">
				<p class="s-tit mb30"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_stit.png" alt="2025학년도 메이저 의예과 8명 합격*"></p>
				<ul class="bay-m-key mt0">
					<li>
						<div>
							<p>
								연세대<br>
								<b>부산과고 이OO</b>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								가톨릭대<br>
								<b>해운대고 손00</b>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								성균관대<br>
								<b>해운대고 이00</b>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								울산대<br>
								<b>학산여고 허서윤</b>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-key mt0">
					<li>
						<div>
							<p>
								울산대<br>
								<b>센텀여고 최00
								</b>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								울산대<br>
								<b>해운대고 손00</b>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								울산대<br>
								<b>신도고 김00
								</b>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								울산대<br>
								<b>해운대고 이00
								</b>
							</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="ar-box mt30">
				<p class="s-tit mb30"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_stit02.png" alt="2025학년도 러셀 센텀 의예과 역대 최다 합격 배출**"></p>
				<ul class="bay-l-key">
					<li>
						<div>
							<p>
								의학계열<br>
								<strong>106</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								의예과<br>
								<strong>71</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								치한약수<br>
								<strong>35</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-l-key mt30">
					<li>
						<div>
							<p>
								SKY<br>
								<strong>31</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								주요대학<br>
								<strong>330</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
			</div>
			<div class="info-stxt">
				<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
				<div class="data-view">
					* 2024년 러셀 센텀 바른공부 자습전용관 재원생 기준 2025학년도 메이저 의예과, 의/치/한/약/수, 서울대, 연세대, 고려대, 주요 대학 합격자 수(복수 합격자 포함)<br>
					- 주요 대학: 전국 의학계열 대학/서울대/연세대/고려대/서강대/성균관대/한양대/이화여대/중앙대/경희대/한국외대/서울시립대/건국대/동국대/홍익대/숙명여대/부산대/경북대/경찰대/사관학교/교육대학/이공계특성화대학<br>
					** 2020-2025학년도 러셀 센텀에서 배출한 전국 의예과 합격자 수 2025학년도 최다 배출(단과 수강생 제외/복수 대학 합격자 포함)<br>
					※ 홈페이지 대입 실적 기준, 2025.03.01 기준｜본 결과는 최종 합격자를 기준으로 집계하였습니다.
				</div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0349" Then '울산 %>
		<div class="inner" data-aos="fade-up">
            
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>
							<strong>메이저 의대</strong>
						</dt>
                        <dd><strong>2</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>전국 의예과
						</strong></dt>
                        <dd><strong>29</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>치&middot;한&middot;수&middot;약
						</strong></dt>
                        <dd><strong>31</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>
                        <strong>서울대</strong></dt>
                        <dd><strong>2</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>연세대&middot;고려대
						</strong></dt>
                        <dd><strong>26</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
							<strong>KAIST</strong></dt>
                        <dd><strong>2</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2025-03-10｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
                    ※ 2024년 러셀 울산 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
                    ※ 메이저 의대: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과, 고려대 의예과

                </div>
            </div>
        </div>
		<% ElseIf sCampusCode = "CD0245" Then '목동 %>
		<div class="inner" data-aos="fade-up">
			<div class="ar-box">
				<p class="s-tit"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_stit.png" alt="결과로 증명하는 러셀 목동 2021-25학년도 최상위권 대학 누적 합격 현황1)"></p>
				<ul class="bay-m-key mt0">
					<li>
						<div>
							<p>
								의예과<br>
								<strong>102</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								치한수<br>
								<strong>60</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								약학과<br>
								<strong>62</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div style="position: relative;">
							<p>
								과학기술원<br>
								<strong>18</strong><span>명</span><br>
								<span style="position: absolute;left: 50%;bottom: -18px;min-width: 113px;color: #aaa;font-size: 14px;font-weight: 400;line-height: 1;letter-spacing: -1px;transform: translateX(-50%);">* 카이스트 8명 포함 *</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-key mt40">
					<li>
						<div>
							<p>
								서울대<br>
								<strong>34</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								연세대<br>
								<strong>89</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								고려대<br>
								<strong>105</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								교대 외<br>
								특수 대학<sup>2)</sup><br>
								<strong>59</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div style="width:220px;">
							<p>
								최상위권<br>
								주요대학<sup>3)</sup><br>
								<strong>1,389</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
					<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
					<div class="data-view">
						1) 2022-2025학년도 러셀 목동학원 바른공부 자습전용관 재원생 합격 결과 기준 (단과 수강생 제외/복수 대학 합격자 포함)<br>
						2) 2022-2025학년도 러셀 목동학원에서 배출한 교대 외 특수 대학(경찰대, 해군사관학교, 육군사관학교, 공군사관학교, 한국에너지공과대) 누적 합격생 수 기준<br>
						3) 2022-2025학년도 러셀 목동학원에서 배출한 주요 대학(의치한수약, SKY, 서성한이, 중경외시, 건동홍숙) 누적 합격생 수 기준<br>
						※ 최종 업데이트 : 2025-03-04 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.
	
					</div>
				</div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0244" Then '분당 %>
		<div class="inner" data-aos="fade-up">
			<div class="ar-box">
				<ul class="bay-l-key">
					<li>
						<div>
							<p>
								분당 지역<br>
								입결 압도적<br>
								<strong>1위</strong><sup>2)</sup>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								역대 수능<br>
								만점자 배출<br>
								<strong>4명</strong><sup>3)</sup>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-key mt40">
					<li>
						<div>
							<p>
								의예<br>
								<strong>80</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								치의예<br>
								<strong>18</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								한의예<br>
								<strong>10</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								수의예<br>
								<strong>12</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								약학<br>
								<strong>29</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-key mt40">
					<li>
						<div>
							<p>
								서울대<br>
								<strong>35</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								연세대<br>
								<strong>54</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								고려대<br>
								<strong>70</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								카이스트<br>
								<strong>9</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								포스텍<br>
								<strong>4</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-silver mt30">
					<li>
						<div>
							<p>
								성균관대<br>
								<strong>57</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								서강대<br>
								<strong>21</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								한양대<br>
								<strong>34</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								이화여대<br>
								<strong>26</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-silver mt30">
					<li>
						<div>
							<p>
								중앙대<br>
								<strong>41</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								경희대<br>
								<strong>46</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								한국외대<br>
								<strong>9</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								서울시립대<br>
								<strong>5</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								건동홍숙인아<br>
								<strong>92</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
					<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
					<div class="data-view">
						1) 러셀 분당 바른공부 자습전용관 재원생의 2025학년도 합격 결과 기준(단과 수강생 제외/복수 대학 합격자, 유료 컨설팅 포함)<br>
						
						2) 2025 분당지역에서 입결을 공개한 학원 중 의치한약수+SKY 합격생 수 산출 기준 (홈페이지 대입 실적 기준/2025.03.01 기준)<br>
						3) 러셀 분당 바른공부 자습전용관 재원 이력이 있는 수능 만점자 기준(2020학년도 2명, 2021학년도 1명, 2025학년도 1명)<br>
						※ 최종 업데이트 : 2025-03-01 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.

					</div>
				</div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
		<div class="inner" data-aos="fade-up">         
			<div class="ar-box">
				<p class="s-tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_stit.png" alt="2025학년도 합격생 현황"></p>
				<ul class="bay-l-key">
					<li>
						<div>
							<p>
								서울대<br>
								<strong>1</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								전국 의예<br>
								<strong>29</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								메디컬<br>
								<span class="fz18 mt0">(의&middot;치&middot;한&middot;수&middot;약)</span><br>
								
								<strong>50</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-l-key mt30">
					<li>
						<div>
							<p>
								서&middot;연&middot;고<br>
								<strong>9</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div style="width:305px">
							<p>
								주요 15개 대학<br>
								<strong>70</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								교대<br>
								<strong>8</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
					<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
					<div class="data-view">
						※ 2024년 러셀CORE 원주 바른공부 자습전용관 재원생 중 수시&middot;정시 최종 합격 기준(단과 수강생 제외/복수 대학 합격자 포함) <br>
						※ 주요 15개 대학: 서울/연세/고려/서강/성균관/한양/이화/중앙/경희/외대/시립/건국/동국/홍익/숙명<br>
						※ 최종 업데이트 : 2025-03-26 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.

					</div>
				</div>
			</div>
        </div>
		<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
		<div class="inner" data-aos="fade-up">
			<div class="ar-box">
				<ul class="card-list">
					<li>
						<p>
							<span>개원이후</span><br>
							<strong>메이저 의대</strong>
						</p>
						<div>
							<span>
								총 <strong>14</strong>명<sup>1)</sup>
							</span>
						</div>
					</li>
					<li>
						<p>
							<span>개원이후</span><br>
							<strong>의약학계열</strong>
						</p>
						<div>
							<span>
								총 <strong>372</strong>명<sup>2)</sup>
							</span>
						</div>
					</li>
					<li>
						<p>
							<span>개원이후</span><br>
							<strong>서울대</strong>
						</p>
						<div>
							<span>
								총 <strong>116</strong>명<sup>3)</sup>
							</span>
						</div>
					</li>
					<li>
						<p>
							<span>개원이후</span><br>
							<strong>서.연.고</strong>
						</p>
						<div>
							<span>
								총 <strong>472</strong>명<sup>4)</sup>
							</span>
						</div>
					</li>
					<li>
						<p>
							<span>개원이후</span><br>
							<strong>서.성.한.이</strong>
						</p>
						<div>
							<span>
								총 <strong>540</strong>명<sup>5)</sup>
							</span>
						</div>
					</li>
					<li>
						<p>
							<span>개원이후</span><br>
							<strong>중.경.외.시</strong>
						</p>
						<div>
							<span>
								총 <strong>465</strong>명<sup>6)</sup>
							</span>
						</div>
					</li>				
					<li>
						<p class="tac">
							<span>2020~2024학년도
							</span><br>
							<strong>4년 연속 서울대 의예과 배출
							</strong>
						</p>
					</li>
					<li>
						<p class="tac">
							<span>2020~2025학년도
							</span><br>
							<strong>5년 연속 메이저 의대 배출
							</strong>
						</p>
					</li>
				</ul>
				<ul class="bay-m-key">
					<li>
						<div>
							<p>
								<strong>2</strong><span>명</span><br>
								메이저 의예
							</p>
							<span class="flag"><img src="<%=Application("img_path_russel")%>/russel_pc/2025/summer/flag.png" alt="5년 연속"></span>
						</div>
					</li>
					<li>
						<div>
							<p>
								<strong>58</strong><span>명</span><br>
								의약학계열
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								<strong>16</strong><span>명</span><br>
								서울대
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								<strong>62</strong><span>명</span><br>
								연고대
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-m-key mt30">
					<li>
						<div>
							<p>
								<strong>103</strong><span>명</span><br>
								서.성.한.이
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								<strong>79</strong><span>명</span><br>
								중.경.외.시
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								<strong>63</strong><span>명</span><br>
								건.동.홍.숙
							</p>
						</div>
					</li>					
				</ul>
				<div class="info-stxt">
					<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
					<div class="data-view">
						최종 업데이트 : 2025.02.28 기준 <br>
						2025학년도 수시, 정시 합격 기준/ 러셀 평촌 바른공부 자습전용관 재원생 합격생 기준(단과 수강생 제외/ 복수대학 합격자 포함) <br>
						1) 2018~2025학년도 러셀 평촌에서 배출한 메이저 의대 합격자 수(단과 수강생 제외/복수대학 합격자 포함) <br>
						
						2) 2018~2025학년도 러셀 평촌에서 배출한 의약학계열 합격자  수(단과 수강생 제외/복수대학 합격자 포함) <br>
						3) 2018~2025학년도 러셀 평촌에서 배출한 서울대 합격자 수(단과 수강생 제외/복수대학 합격자 포함) <br>
						4) 2018~2025학년도 러셀 평촌에서 배출한 서울대, 연세대, 고려대 합격자 수(단과 수강생 제외/복수대학 합격자 포함) <br>
						5) 2018~2025학년도 러셀 평촌에서 배출한 서강대, 성균관대, 한양대, 이화여대 합격자 수(단과 수강생 제외/복수대학 합격자 포함) <br>
						6) 2018~2025학년도 러셀 평촌에서 배출한 중앙대, 경희대, 한국외대, 서울시립대 합격자 수(단과 수강생 제외/복수대학 합격자 포함) <br> <br>

						메이저 의예 : 서울대, 연세대(서울), 성균관대, 가톨릭대, 울산대, 고려대 <br>
						의약학계열 : 전국 의예과/ 의학과/ 의과대학, 전국 치의예과, 전국 한의예과, 전국 약학과/약학부, 전국 수의예과 모든 대학  <br>


					</div>
				</div>
			</div>
		</div>
		<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
		<div class="inner" data-aos="fade-up">         
			<div class="ar-box">
				<p class="s-tit mb50"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont02_stit.png" alt="2025학년도 합격생 현황"></p>
				<ul class="bay-l-key">
					<li>
						<div>
							<p>
								메이저 의예과<br>
								<strong>2</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								전국 의예과<br>
								<strong>36</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-l-key mt30">
					<li>
						<div>
							<p>
								치한약수<br>
								<strong>32</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								주요대학+교대,<br>
								과기원<br>
								<strong>51</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
					<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
					<div class="data-view">
						※ 최종 업데이트 : 2025-02-28 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
						※ 러셀CORE 전주 바른공부 자습전용관 재원생의 2025학년도 수시/정시 최종 합격 기준(단과 수강생 제외/복수 대학 합격자 포함)<br>
						※ 메이저 의예과: 서울대 의예과, 연세대 의예과, 성균관대 의예과, 가톨릭대 의예과, 울산대 의예과<br>
						※ 주요 대학: 서강대, 성균관대, 한양대(서울), 중앙대(서울), 이화여대, 경희대(서울/국제), 한국외대(서울/글로벌), 서울시립대, 건국대(서울), 동국대(서울), 홍익대(서울), 숙명여대, 인하대, 아주대

					</div>
				</div>
			</div>
        </div>
		<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
		<div class="inner" data-aos="fade-up">         
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대 의예과</strong></dt>
                        <dd><strong>1</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>메이저 의대</strong></dt>
                        <dd><strong>11</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>전국 의예과</strong></dt>
                        <dd><strong>44</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>의치한약수</strong></dt>
                        <dd><strong>63</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대/연세대/고려대</strong></dt>
                        <dd><strong>11</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서&middot;성&middot;한&middot;이/중&middot;경&middot;외&middot;시</strong></dt>
                        <dd><strong>44</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2025-03-07 기준 ｜본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
                    ※ 2025학년도 수시/정시 최종 합격 기준 / 러셀CORE 창원 바른공부 자습전용관 재원생 합격생 기준 (단과 수강생 제외/복수 대학 합격자 포함)<br>
					※ 메이저 의대 : 서울대 의예, 연세대 의예, 가톨릭대 의예, 울산대 의예, 성균관대 의예, 고려대 의예

                </div>
            </div>
        </div>
		<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
		<div class="inner" data-aos="fade-up">         
			<div class="ar-box">
				<ul class="bay-l-key">
					<li>
						<div>
							<p>
								<b>2025학년도</b><br>
								의예과<br>
								<strong>14</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								<b>2025학년도</b><br>
								의치한약수<br>
								<strong>28</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<ul class="bay-l-key mt30">
					<li>
						<div>
							<p>
								<b>2025학년도</b><br>
								서울대<br>
								<strong>3</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								<b>2025학년도</b><br>
								연세대<br>
								<strong>6</strong><span>명</span>
							</p>
						</div>
					</li>
					<li>
						<div>
							<p>
								<b>2025학년도</b><br>
								고려대<br>
								<strong>6</strong><span>명</span>
							</p>
						</div>
					</li>
				</ul>
				<div class="info-stxt">
					<span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/regular/ico_info.png" alt="i" /></i></span>
					<div class="data-view">
						*2024년 러셀CORE 청주 바른공부 자습전용관 재원생 기준 2025학년도 의/치/한/약/수, 서울대, 연세대, 고려대 합격자 수<br>
						 (단과 수강생 제외/복수 대학 합격자 포함)<br>
						 ※ 최종 업데이트 : 2025-03-14 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.

					</div>
				</div>
			</div>
        </div>
		<% ElseIf sCampusCode = "CD0250" Then '부천 %>
		<div class="inner" data-aos="fade-up">          
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서울대</strong></dt>
                        <dd><strong>14</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>의치한수약</strong></dt>
                        <dd><strong>48</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>연고대</strong></dt>
                        <dd><strong>50</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>서성한이</strong></dt>
                        <dd><strong>63</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>중경외시</strong></dt>
                        <dd><strong>46</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>2025학년도<br>
                        <strong>특수대학</strong></dt>
                        <dd><strong>11</strong><span>명</span></dd>
                    </dl>
                </li>
                <li style="margin-left:24px;">
                    <dl>
                        <dt>2025학년도<br>
                        <strong>기타대학</strong></dt>
                        <dd><strong>57</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2025-03-10 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
                    ※ 2024년 러셀 부천 바른공부 자습전용관 재원생의 수시/정시 최종 합격 기준(단과 수강생 제외/복수 대학 합격자 및 중복 합격자 포함)<br>
                    - 특수 대학 : KAIST, POSTECH, DGIST, GIST, UNIST, KENTECH, 경찰대, 공군사관, 해군사관, 육군사관, 간호사관<br>
                    - 기타 대학 : 건국대, 동국대, 홍익대, 숙명여대, 인하대, 아주대, 교대

                </div>
            </div>
        </div>
		<% ElseIf sCampusCode = "CD0257" Then '중계 %>
		<div class="inner" data-aos="fade-up">
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>
							<strong>의예과</strong>
						</dt>
                        <dd><strong>26</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>의치한약수
						</strong></dt>
                        <dd><strong>52</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>서연고</strong></dt>
                        <dd><strong>57</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <ul class="result-list">
                <li style="width:384px;">
                    <dl>
                        <dt>
                        <strong>서성한이</strong></dt>
                        <dd><strong>53</strong><span>명</span></dd>
                    </dl>
                </li>
                <li style="width:384px;">
                    <dl>
                        <dt>
                        <strong>중경외시</strong></dt>
                        <dd><strong>48</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    *2025학년도 러셀 중계학원 바른공부 자습전용관 재원생 합격 결과 기준 (단과 수강생 제외/복수 대학 합격자 포함)<br>
					※ 최종 업데이트 : 2025-03-07 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.
                </div>
            </div>
        </div>
		<% ElseIf sCampusCode = "CD0342" Then '대구 %>
		<div class="inner" data-aos="fade-up">
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>
							<strong>전국 의예</strong>
						</dt>
                        <dd><strong>216</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>메이저 의예
						</strong></dt>
                        <dd><strong>13</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>치&middot;한&middot;수&middot;약학</strong></dt>
                        <dd><strong>134</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>
                        <strong>서&middot;연&middot;고</strong></dt>
                        <dd><strong>87</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>서성한이<br>
							과학기술원/중경외시
							</strong></dt>
                        <dd><strong>186</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>경북대</strong><br><span class="fz22">(*의약학계열 71명)</span></dt>
                        <dd><strong>131</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 최종 업데이트 : 2025-03-26 | 본 결과는 최종 합격자를 기준으로 집계하였으며, 지속적으로 업데이트될 수 있습니다.<br>
                    ※ 러셀 대구 바른공부 자습전용관 재원생의 2025학년도 최종 합격 기준(단과 수강생 제외/복수 대학 합격자 및 수시·정시 합격자 중복 포함)<br>
                    ※ 메이저 의예: 서울대, 연세대, 성균관대, 가톨릭대, 울산대, 고려대

                </div>
            </div>
        </div>
		<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
		<div class="inner" data-aos="fade-up">
            <ul class="result-list mt70">
                <li>
                    <dl>
                        <dt>
							<strong>서울대 의예</strong>
						</dt>
                        <dd><strong>1</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>연세대 의대
						</strong></dt>
                        <dd><strong>3</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>메이저 의예</strong></dt>
                        <dd><strong>10</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <ul class="result-list">
                <li>
                    <dl>
                        <dt>
                        <strong>전국 의예</strong></dt>
                        <dd><strong>86</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>메디컬</strong><br><span class="fz22">(의치한수약)</span></dt>
                        <dd><strong>155</strong><span>명</span></dd>
                    </dl>
                </li>
                <li>
                    <dl>
                        <dt>
                        <strong>서연고</strong></dt>
                        <dd><strong>33</strong><span>명</span></dd>
                    </dl>
                </li>
            </ul>
            <div class="info-stxt">
                <span>데이터 산출 기준 <i><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_info.png" alt="i" /></i></span>
                <div class="data-view">
                    ※ 러셀CORE 광주  바른공부 자습전용관 재원생의 대입 합격 기준(2025.02.25 기준｜복수 대학 합격자 포함/단과 수강생 제외)<br>
					※ 메이저 의예: 서울대, 연세대, 성균관대, 가톨릭대, 울산대 기준

                </div>
            </div>
        </div>
		<% End If %>
	</div>
	<div class="cont03">
		<% If sCampusCode = "INTRO" OR sCampusCode = "CD0001" OR sCampusCode = "CD0248" OR sCampusCode = "CD0250" Then '인트로/대치/평촌/부천 %>
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/cont03_tit.png" alt="러셀 썸머스쿨에서 여름 방학을 보낸 선배들은 최상위권을 향해 도약하였습니다.">
		</h3>
		<% Else %>
		<h3 data-aos="fade-down"><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/cont03_tit.png" alt="러셀 썸머스쿨에서 여름 방학을 보낸 선배들은 최상위권을 향해 도약하였습니다.">
		</h3>
		<% End If %>
		<div class="inner">
			<% If sCampusCode = "CD0247" Then '강남 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>고려대학교 의과대학 합격</strong>
								<span>러셀 강남 최원영</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72645834')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
							
						</div>
					</div>
					<p>
						<strong>
							시간표에 따른 규칙적인 일과를 지키면서 계획적인
							학습 습관을 들일 수 있었습니다.
						</strong><br>
						썸머스쿨은 현역에게는 수능 전 하루 종일 공부에 집중할 수 있는 거의
						마지막 기간이기 때문에 썸머스쿨을 슬기롭게 활용하는 것의 중요성은
						강조해도 더할 게 없습니다. 러셀의 썸머스쿨은 매우 규칙적인 시간표가
						존재하기 때문에 저는 이에 따라 매일 같은 시각에 등원하고 하원하며
						시간표를 최대한 따르며 살려고 노력하였습니다. 결과적으로 계획적이고
						체계적인 독서 습관의 함양에 큰 도움이 된 것 같습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>가천대학교 의예과 합격</strong>
								<span>러셀 강남 고영훈</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74853349')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
							<!-- <a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨에서 규칙적인 학습 계획을 수립하면서
자연스럽게 학습 습관을 만들 수 있었습니다. 

						</strong><br>
						여름 방학은 고3 현역으로서 제대로 된 수능 공부를 시작할 수 있는 마지막
기회라고 생각합니다. 이 기회를 놓치지 않기 위해 러셀 썸머스쿨에 등록했고,
수능 최저를 맞추기 위한 실력의 기반을 다지는 계기가 되었습니다. 
썸머스쿨에서 제일 좋았던 점은 규칙적인 학습 계획을 수립할 수 있다는
점이었습니다. 처음엔 힘들었지만 자연스럽게 학습 습관을 만들 수 있었고, 
썸머가 끝나고 나서도 러셀에서의 집중을 이어갈 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>전북대학교 수의예과  합격</strong>
								<span>러셀 강남 이승헌</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74677859')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
							<!-- <a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨 기간 최고의 수업을 들으며 학습 루틴을
형성하면서 수능을 준비할 수 있었습니댜. 

						</strong><br>
						썸머스쿨 기간은 내신이 끝난 후 본격적 수능 공부를 시작하는 시기입니다.
이 시기에 수능 최고의 선생님들의 수업 수강,  주간지를 통한 학습 루틴 형성,
각종 입시 자료를 옆에 두고 수능을 준비 할 수 있다는 것은 큰 가치가 있다고
생각합니다.  특히 하루 일정에 변수가 거의 없다는 점이 학습 계획을 꾸준히
지키는 데 도움이 되었습니다. 이때의 경험을 바탕으로 처음인 수험 생활을
마지막 수험 생활로 만들 수 있었습니다. 

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>고려대학교<br>
									건축사회환경공학부 합격</strong>
								<span>러셀 강남 이종헌</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74674816')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
							<!-- <a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨에서의 학습 시간 관리, 담임 선생님과의<br>
							
상담 경험은 수능 직전까지 큰 도움이 되었습니다.
						</strong><br>
						주변 친구들의 공부법과 조교 선생님들과의 소통, 담임 선생님과의
상담을 통해 수능 공부 방식을 점검하고 이후 제 커리큘럼에 확신을
갖고 끝까지 유지한 점이 멘탈 관리 및 시간 관리에 있어 큰 도움이
되었던 것 같습니다. 또한 예비령 시스템을 썸머스쿨 이후에도 스스로 
적용하며 엄격하게 학습시간을 관리한 것이 공부 계획 및 실현에 있어 
큰 도움이 되었습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0249" Then '영통 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 의예과 합격</strong>
								<span>러셀 영통 임희수</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/66647106')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							러셀 영통은 집단적인 면학 분위기가 좋아 공부에<br>
							집중하는 것을 방해하는 요소가 현저하게 적었습니다.
						</strong><br>
						바자관의 장점은 수능 표준 시간표대로 공부할 수 있다는 점입니다.<br>
						수능 시간표대로 공부를 하여서 실전 모의고사에 집중하기 쉬웠고,<br>
						실전 모의고사뿐만 아니라 시간에 맞춘 공부를 하면서 공부 리듬을<br>
						형성하는 데 큰 도움이 되었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>가톨릭대학교 의예과 합격</strong>
								<span>러셀 영통 이정묵</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72295451')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p style="letter-spacing: -0.2px;">
						<strong>
							바자관의 장점은 규칙적인 생활을 하도록<br>
							도와준다는 점입니다.

						</strong><br>
						시간표가 수능 시간표와 유사하게 구성되어 있어 머리를 쓰던 시간에 시험을 볼 수 있도록 한다는 점이 좋았습니다.  그리고 자습 시간을 충분히 확보할 수 있어서 원하는 공부를 할 수 있는 점도 만족스러웠습니다.<br>
						이와 더불어 담임 선생님께서 학습 계획을 짜는 것을 도와주셔서<br>
						그 계획에 맞춰 공부할 수 있어 효율적으로 학습할 수 있었던 것 같습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>울산대학교 의예과 합격</strong>
								<span>러셀 영통 이진형</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72645953')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							바자관의 면학 분위기 덕분에 공부 의욕이 상승되었고,<br>
							 러셀 영통은 최고의 공부 자극제였습니다.


						</strong><br>
						방학은 고등학생에게 있어서 황금과도 같은 시간입니다.<br>
						 스터디카페나
독서실 등에 혼자 다니면 관리가 되지 않는 경우가 많으나,<br>바자관은
저에게 있어서 정말 공부에만 집중할 수 있도록<br>큰 도움을 주었습니다.
8시 등원 시간을 지키다 보니, 자연스럽게<br>규칙적인 생활 습관이
저의 몸에 자리잡게 되었습니다.


					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>아주대학교 의학과 합격</strong>
								<span>러셀 영통 김진욱</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							담임 선생님과의 상담을 통해 전체적인 공부 과정을<br>
							 점검할 수 있었고 더 열심히 공부할 수 있었습니다.

						</strong><br>
						바자관의 개방형 구조는 제 주변에서 공부하고 있는 학생들을 보며
자극을 받아 저도 쉽게 집중하여 공부를 할 수 있었습니다.<br>

또한 러셀 플래너를 통해 하루의 계획을 미리 적어 놓고 공부하는 것이
도움이 되었는데,  플래너는 하루 공부의 큰 틀을 잡기 좋으며 어떤 과목을 어느 정도의 양을 공부했는지 알 수 있어서 좋았습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>충남대학교 의예과 합격</strong>
								<span>러셀 영통 송민근</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_05.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							담임 선생님께서 항상 독려해 주셔서 더욱 각성하여<br>
							 공부할 수 있었습니다.

						</strong><br>
						바자관에서 다른 학생들이 열심히 공부하는 모습을 보고, 저도 자극을
받아 더욱 공부를 열심히 할 수 있었던 것 같습니다.  또한 매달 보았던<br>

더 프리미엄 모의고사도  큰 도움이 되었던 것 같습니다. 시험 문제를 다채롭게 내어 제가 준비하지 못했던 부분이 어디인지 알려주었던 것 같습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>계명대학교 의예과 합격</strong>
								<span>러셀 영통 양나경</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_06.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							정해진 시간표대로 진행되는 썸머스쿨에 참여하여<br>
							하루하루를 가치 있게 보낼 수 있었습니다.

						</strong><br>
						저는 러셀 영통에서 썸머와 윈터스쿨을 모두 진행하였습니다. 바자관의 장점인 표준 시간표와 전용 와이파이는 올바른 공부 습관을 확립하고, 온전히 공부에 집중하는 데 매우 큰 도움이 된다고 생각합니다.  또한 바자관 담임 선생님과 함께 전반적인 학습 계획 수립 부터 효과적인 학습 계획까지 여러 방면으로 많은 도움을 받았었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울대학교<br>
									치의학학석사통합과정 합격</strong>
								<span>러셀 영통 이가윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_07.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72853411')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							여름 방학 동안 바자관에서 온전히 공부에만<br>
							집중할 수 있었습니다.


						</strong><br>
						저는 여름 방학이 9모 전 마지막 기회라고 생각하고 규칙적인 러셀의
시간표에 따라 공부하다 보니 저만의 루틴을 잡아갈 수 있었습니다.
8시까지 등원하여 10시까지 공부하면서 공부의 양을 극대화할 수 있었고,
성적 상승을 이루어낼 수 있었습니다.


					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 치의예과 합격</strong>
								<span>러셀 영통 류예진</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_08.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 다니면서 하루 동안 푸는 문제의<br>
							개수가 늘어나는 것이 보여 즐거웠습니다.

						</strong><br>
						학습에 방해가 되는 요소를 최소화한 바자관 환경에서 긴 시간 동안 공부를 꾸준히 해서 집중력과 공부의 양이 늘어날 수 있었습니다. 특히 핸드폰을 보는 시간이 줄어든 게 도움이 되었습니다. 또한 담임 선생님과 주기적으로 학습 계획을 짜면서 공부에 동기 부여가  더 크게 된 것 같습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0341" Then '대전 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>순천향대학교 의예과 합격</strong>
								<span>러셀 대전 하태솔</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/48232680')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							규칙적으로 수능 시간에 맞춰 공부할 수 있는<br>
습관을 들일 수 있어서 좋았습니다.
						</strong><br>
						바자관의 장점은 어느 정도 강제성 확보라고 생각합니다.<br> 담임 선생님들의 꾸준한 관리 덕분에 수험 생활 동안<br>마음이 풀어지지 않을 수 있어서
좋았습니다. 또한, 매달 응시하는<br>모의고사를 통해 실전에서의 시간 관리를 연습할 수 있어 좋았습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2023학년도</dt>
							<dd>
								<strong>서울대학교 의예과 합격</strong>
								<span>러셀 대전 이상후</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/34136621')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							러셀 대전은 흠잡을 곳이 없는<br>대입 최적의
공간입니다.
						</strong><br>
						공부에만 집중할 수 있는 좋은 면학 분위기, 전문적인 관리와
학생 중심의 담임 선생님, 순공 시간을 최대화할 수 있는 체계적인 시간표,
다양한 모의고사를 통한 실전 훈련 등 어느 한 쪽에 치우쳐져 있지 않은
완벽한 육각형이라는 인상을 받았습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2023학년도</dt>
							<dd>
								<strong>을지대학교 의예과 합격</strong>
								<span>러셀 대전 김우찬</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/34135695')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							러셀 대전 담임 선생님 덕분에 힘든 수험 생활 동안
지치지 않고 공부할 수 있었습니다.


						</strong><br>
						러셀 대전의 장점은 담임 선생님의 꼼꼼한 관리와 체계적인 학원
시스템입니다. 바른공부 자습전용관 앞 상담 부스에서 수시로 상담하며 철저한 관리를 받을 수 있어서 좋았습니다.



					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>고려대학교(세종) 약학과 합격</strong>
								<span>러셀 대전 나호찬</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/49682508')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							바자관의 면학 분위기와 시설이<br>가장 좋았던 것
같습니다.

						</strong><br>
						공부할 때 환경이 정말 중요하다고 생각하는데 열심히 하는 친구들이<br>
주변에 많아서 자연스럽게 스스로 더 열심히 할 수 있게
동기<br>부여되었고, 시설이 좋아서 공부할 때 집중을 잘할 수 있었습니다.<br>

또한 매달 보는 모의고사가 실전 연습에 도움이 많이 되었습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">*2023-2024학년도 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0246" Then '센텀 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>한양대학교 의예과 합격</strong>
								<span>러셀 센텀 김수훈</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72746745')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							OMEGA 모의고사*를 통한 실전 연습이<br>
							저에게 아주 큰 도움이 되었습니다.


						</strong><br>
						평소 영어 과목에 어려움을 느끼고 있었는데, 하반기부터 집중적으로
OMEGA 모의고사*를 풀며 실제 수능과 유사한 문제를 미리 풀어볼 수
있었습니다. 덕분에 실전 연습을 많이 해 볼 수 있었고, 실제 수능에서
좋은 점수를 얻을 수 있었습니다. 


					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>울산대학교 의예과 합격</strong>
								<span>러셀 센텀 허서윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72604533')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨 영어 듣기 프로그램을 통해<br>
							실전 문제 풀이에 대비할 수 있었습니다.
						</strong><br>
						점심 직후 영어듣기평가 시스템이 가장 좋았습니다. 저는 영어 듣기 시간에
문제와 지문을 동시에 푸는 연습을 했습니다. 실제 수능장에서 영어 듣기와
지문 풀이를 동시에 잘하려면 평소에 훈련을 많이 해 둬야 한다고 생각하는데, 러셀 썸머스쿨에서 듣기평가를 진행해서  많이 훈련할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>경상대학교 의예과 합격</strong>
								<span>러셀 센텀 이채원</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							정해진 시간표를 토대로 학생들이 효율적으로<br>
							공부할 수 있도록 돕는 점이 좋았습니다. 
						</strong><br>
						여름 방학은 내신이 끝난 후 본격적으로 수능 공부에 집중해야 하는
시기이기 때문에 썸머스쿨을 통해 공부하는 시간을 늘리고자 하였습니다. 썸머스쿨에서는 정해진 시간표를 토대로 학생들이 효율적으로 공부할 수 있도록 돕는 점이 좋았습니다. 썸머스쿨을 통해 규칙적인 공부를 하면서 공부의 효율을 극대화시킬 수 있었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>조선대학교 치의예과 합격</strong>
								<span>러셀 센텀 송윤지</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 통해 알찬 여름 방학을<br>
							보낼 수 있었습니다.
						</strong><br>
						여름 방학은 수능 대비에만 집중할 수 있는 마지막 기회이기 때문에
썸머스쿨을 통해 한 달을 알차게 보내고자 했습니다. 썸머스쿨에서는
아침 8시부터 밤 10시까지 시간표가 체계적으로 구성되어 있어 공부
루틴을 잡는 데 도움을 주었습니다. 썸머스쿨 때 다져 놓았던 공부 루틴이
수능 날까지 이어져 좋은 결과를 얻을 수 있었다고 생각합니다.
					</p>
				</li>
			</ul>
			<p class="r-txt">*OMEGA 모의고사(구 퀄)<br>
				※ 2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0349" Then '울산 %>
			<ul class="r-type-uni">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울대학교 컴퓨터공학부 합격</strong>
								<span>러셀 울산 안OO</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoul.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							매일매일 출석하는 친구들을 보며, 그런 친구들과<br>
							경쟁심을 불태우며 노력할 수 있었습니다.


						</strong><br>
						항상 같은 환경에서 공부하는 친구들을 기준으로 성적이 비교되다 보니, 승부욕도 두 배로 생기고 동기 부여가 되었습니다. 더불어, 친구들이 어떤
문제를 풀고 있는지 지나가며 보게 될 때가 있는데, 이를 참고해 기출-
N제-실모로 넘어가는 타이밍을 가늠할 수 있어 도움이 되었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>부산대학교 약학과  합격</strong>
								<span>러셀 울산 김OO
								</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_pusan.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							다같이 공부를 열심히 하는 분위기라서<br>
							같이 공부하게 되는 효과가 있었습니다.
						</strong><br>
						수능 시간을 고려한 시간표에 따라 종이 울려서 저 혼자 공부할 때와 다르게 적절한 쉬는  시간과 공부시간을 가질 수 있었습니다.<br>
매일 아침 영어 콘텐츠를 풀고 주기적으로 영어듣기 테스트도 시행하여 절대평가인 영어도 소홀히 하지 않을 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 경영학과 합격</strong>
								<span>러셀 울산 김OO</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_yonsei.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							합격을 위해 기꺼이 노력하기로 다짐한 사람들이<br>
							모여 있는 공간이기에 저에게 큰 도움이 되었습니다.


						</strong><br>
						바자관의 담임 선생님께서는 이 분야의 전문가라는 생각이 들어서 다른 조언들보다 더 신뢰할 수 있었기에 입시 전략에 대한 부담을 많이
덜 수 있었습니다. 단순히 원서접수에 대한 이야기뿐만 아니라
가져야 할 마음가짐이나 태도까지도 배울 수 있어 감사했습니다.


					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>고려대학교 경제학과 합격
								</strong>
								<span>러셀 울산 이OO</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_korea.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							1년이라는 주어진 시간 동안 몸과 마음이 지치지 않게 해 줄 최적의 요건을 모두 갖춘 곳이었습니다.

						</strong><br>
						수능이나 내신에서 좋은 성적을 받을 수 있는 비결은 꾸준함이라고
생각하는데 바자관이 제가 꾸준하게 공부를 이어나갈 수 있게
도와주었습니다. 또, 학원에서 시행되는 실전 모의고사를 수능과
유사한 고사장에서 경험할 수 있다는 점이 도움이 되었습니다.


					</p>
				</li>
			</ul>
			<p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0245" Then '목동 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>성균관대학교 의예과 합격</strong>
								<span>러셀 목동 이소정</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72374198')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							담임 선생님과의 상담을 통해 힘들었던 수험 생활<br>
							기간을 버틸 수 있었습니다.
						</strong><br>
						공부 정체기마다 담임 선생님께서 위로와 동기 부여를 계속해 주셨고, 저와 비슷한 상황을 겪는 선배들의 사례도 많이 들을 수 있었습니다.<br>
						긴 시간 동안 저의 정신적 버팀목이 되어 주신 덕분에 좋은 결과를 낼 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>영남대학교 의예과 합격</strong>
								<span>러셀 목동 이재훈</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74384395')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
							<!-- <a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
						</div>
					</div>
					<p>
						<strong>
							개방형 구조로 인해 다른 학생들을 보며 더 열심히<br>
							
공부해야겠다는 자극을 받았습니다.

						</strong><br>
						바른공부 자습전용관의 장점은 온전히 개인만의 공부 공간이 있으면서도,
개방형 구조로 크게 답답함을 느끼지 않는다는 것입니다. 개방형 구조로 인해
다른 학생들이 공부하는 것을 보면서 자극을 받아 더 집중할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>이화여자대학교 약학전공 합격</strong>
								<span>러셀 목동 김나온</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							수험생에게 꼭 필요한 특강들을 진행해 주셔서<br>
							
공부 방향을 잡는 데 도움이 되었습니다.

						</strong><br>
						다양한 특강이 개설되어 입시 정보를 얻고 태도를 정비하기 좋았습니다.<br>
						
특히 고3 썸머스쿨 기간에 들었던 생활 관리 강의를 통해 마음이
해이해지기 쉬운 시기에 공부 방향을 잡는 것에 도움이 되었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울대학교<br>
								전기정보공학부  합격</strong>
								<span>러셀 목동 김건우</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							표준 시간표를 통해 반복적인 생활 습관을 체화하며<br>
							
규칙적인 생활 패턴을 만들 수 있었습니다.

						</strong><br>
						여름 방학에는 썸머스쿨을 다니며 자습관의 시간표를 통해 반복적인
생활을 하면서 규칙적인 생활 패턴을 만들 수 있었습니다. 방학 동안
러셀에서 공부한 것이 성적을 향상하는 데 큰 도움이 되었습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">
				※ 2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0244" Then '분당 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 생화학과  합격</strong>
								<span>러셀 분당 김민서</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							규칙적인 생활이 필수인<br>						
재학생에게 적합한 썸머스쿨 시스템!
						</strong><br>
						썸머스쿨을 통해 시간을 효율적으로 쓰는 습관을 길렀고,<br>
늦게 일어나거나 늦게 자는 일 없이 규칙적인 생활 패턴을 가지고<br>
방학을 보내게 되어 큰 도움이 되었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 치의예과  합격</strong>
								<span>러셀 분당 유연우</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							시간을 효율적으로 사용할 수 있는 동선 최소화
						</strong><br>
						러셀 분당의 가장 큰 장점은 학습 동선의 최소화입니다.<br>
						
바자관과 강의실이 한 건물에 있어 이동 시간을 단축시킬 수 있었고, <br>
수업이 끝나면 바로 자습을 할 수 있어 특히 좋았습니다. 이동에 낭비되는
시간을 줄여서 공부에 집중할 수 있도록 도움을 받았습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">
				※ 2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0248" Then '평촌 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>경희대학교 의예과 합격
								</strong>
								<span>러셀 평촌 김성윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01_v2.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72568938')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							생활습관을 형성할 수 있었습니다.
						</strong><br>
						썸머스쿨을 다니면서 규칙적인 시간표에 따라 공부하며 저만의 생활습관을 형성할 수 있었습니다. 아울러, 충분한 공부 시간을 확보했기에 기존에 목표했던 여름방학 때의 공부량을 충족할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>한양대학교(ERICA) <br> 약학과 합격
								</strong>
								<span>러셀 평촌 정민재</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02_v2.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/75382863')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							바자관 면학분위기와 담임선생님 덕분에 집중 할 수 있었습니다.
						</strong><br>
						바자관 앞에 담임선생님이 계셔서 면학분위기가 유지될 수 있었습니다. 또한 제 입시 상황에 맞는 알맞은 상담으로 수시전략과 앞으로 공부의 방향성에 대해 설정할 수 있게 되어 좋았습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울대학교 의예과 합격</strong>
								<span>러셀 대치 권수현</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_ksh.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72645714')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>썸머스쿨을 통해 수시 활동이 끝나고 해이해질 수<br>
							있는 시기에 공부 습관을 바로잡을 수 있었습니다.
						</strong><br>
						저는 수시가 끝난 고등학교 3학년 여름 방학에도 러셀 썸머스쿨에서<br>수능을 열심히 공부하였기 때문에 수능 최저를 모두 맞추고 5관왕이라는<br>좋은 성적을 거둘 수 있었다고 생각합니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 의예과 합격</strong>
								<span>러셀CORE 광주 박채은</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_pce.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72645446')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>방학을 체계적으로 보낼 수 있도록 해 준<br> 프로그램이 러셀의  썸머스쿨이었습니다.
						</strong><br>
						잘 짜인 시간표에 기반하여 기상-수면의 생활 리듬부터 공부 계획까지,<br>모든 요소를 편리하게 조절할 수 있었고 중식과 석식 등 공부 외적인<br>측면에 대한 부담도 줄일 수 있었습니다.
					</p>
				</li>
			</ul>
			<p class="r-txt">
				*2024-2025학년도 합격생 인터뷰 중 발췌
			</p>
			<% ElseIf sCampusCode = "CD0343" Then '코어원주 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교<br>
								 경영학과  합격</strong><br>
								<span>러셀CORE 원주 김연주</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							학원 내에서 규칙적으로 공부하고 식사하며<br>
							올바른 생활 습관 형성에 도움이 되었습니다.

						</strong><br>
						썸머스쿨 기간 아침 일찍부터 밤까지 공부하고 식사하며. <b>규칙적인 생활 습관을 가지는 데 큰 도움</b>이 되었습니다. 아침 일찍 공부를 시작하더라도 중간에 졸리면 더 자거나 끼니를 거르는 등 건강을 해칠 만한 습관을 가지고 있었는데,  <b>불규칙적으로 생활하는 일이 확연히 줄어들었습니다.</b>

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교<br>의류환경학과 합격</strong>
								<span>러셀CORE 원주 변재이</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							학습에만 몰두할 수 있는 바자관 내 환경 덕분에<br>
							스트레스 없이 공부할 수 있었습니다.

						</strong><br>
						썸머스쿨을 통해 자습 시간을 확보하여 공부량 자체를 늘릴 수 있었습니다. <b>바자관 내에서 온전히 집중하고 집에서는 휴식을 취하는 하루들을 반복하니 스트레스 없이 공부할 수 있었던 것 같습니다. </b>

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>가톨릭관동대학교<br>의예과 합격</strong>
								<span>러셀CORE 원주 정희찬</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74312357')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
							
						</div>
					</div>
					<p>
						<strong>
							해이해지는 여름 방학 기간, 다른 학생들과의<br>
							격차를 벌릴 수 있었습니다.

						</strong><br>
						다른 학생들이 여름 방학 기간 마음이 흔들릴 때, 대부분의 시간을 러셀CORE 원주에서 학습에 집중하여 격차를 벌릴수 있었습니다. 특히 <b>썸머스쿨을 통해 성적이 월등히 오를 수</b> 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>서울대학교<br> 물리천문학부 합격</strong>
								<span>러셀CORE 원주 이민성</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/48184714')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							방학을 최대한 활용하며 9월 평가원 모의고사도<br> 대비할 수 있었습니다.
						</strong><br>
						<b>썸머스쿨을 통해 방학을 최대한 활용</b>할 수 있었습니다. 정해진 시간에 등원하여 표준 시간표대로 공부했기 때문에 방학에도 흐트러지지 않고 학습할 수 있었으며, <b>9월 평가원 모의고사도 대비할 수 있었습니다.</b>
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>연세대학교<br>교육학부 합격</strong><br>
								
								<span>러셀CORE 원주 장서영</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_05.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/49173385')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							등·하원 시간이 명확하게 정해져 있어,<br>
							학습패턴을 일정하게 유지할 수 있었습니다.

						</strong><br>
						방학은 공부에 온전히 집중할 수 있는 얼마 없는 기간인지라 썸머스쿨을 통해 많은 공부시간을 확보할 수 있었습니다. <b>등&middot;하원시간이 명확하게 정해져 있어서 성실하게 방학기간을 보낼 수 있었고, 학습패턴을 일정하게 유지</b>할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>서울대학교<br>공과대학 광역 합격</strong>
								<span>러셀CORE 원주 정혜인</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_06.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/51775633')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨 기간 담임 선생님과 함께 보완한 생기부를<br>
							완성하여 학생부종합전형에 합격할 수 있었습니다. 

						</strong><br>
						고등학교 마지막 학기의 생기부를 어떻게 채워야 할지 고민이 많았는데, 썸머스쿨 기간 <b>담임 선생님께서 제 생기부를 분석해 주시며 어떤 면을 보완해야 하는지 조언</b>해 주셨습니다. 담임 선생님과 의논한 내용을 토대로 <b>생활기록부를 완성한 결과, 학종으로 대학에 합격</b>할 수 있었습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">
				* 2024-2025학년도 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0344" Then '코어전주 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>전남대학교 의예과  합격</strong>
								<span>러셀CORE 전주 문가영</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 통해 온전히 공부에만 집중할 수 있었으며<br>
							큰 폭의 성적 상승을 이루었습니다.

						</strong><br>
						썸머스쿨을 통해 규칙적인 공부를 할 수 있다는 점이 가장 좋았습니다.<br>
						온전히 공부에만 집중할 수 있는 환경에서 효율적으로 공부하며 큰 폭의 성적 상승을 이룰 수 있었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>원광대학교 의예과 합격</strong>
								<span>러셀CORE 전주 임석민</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 통해 얻은 학습 루틴을 그대로 유지하여<br>
							개학 후에도 효율적인 공부를 이어나갔습니다.
						</strong><br>
						썸머스쿨은 규칙적인 공부 루틴을 잡는 데 큰 도움을 주었습니다. <br>
						혼자서는 한 달이라는 긴 방학을 낭비하지 않고  공부하는 데 무리가 있다고 생각합니다. 저는 썸머스쿨을 통해 얻은 학습 루틴을 그대로 유지하여 개학 후에도 효율적인 공부를 이어 나갔습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>경희대학교 의예과  합격</strong>
								<span>러셀CORE 전주 김하연</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72565186')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							많은 학습 시간을 확보할 수 있어<br>
수능에 최적화된 공부 리듬을 형성할 수 있었습니다.
						</strong><br>
						바자관에서  많은 학습 시간을 확보할 수 있어 좋았습니다.<br>
집에서 혼자 공부하면 늘어지기 쉬운데 정해진 시간 동안 자습을 해야 하는
시스템 덕분에 수능에 최적화된 공부 리듬을 형성할 수 있었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>고려대학교 간호학과  합격</strong>
								<span>러셀CORE 전주 최주혁</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							바자관에서 같은 층에 있는 강의실로 이동해서<br>
							
수업을 들으니 동선이 최소화 되어 좋았습니다.

						</strong><br>
						이곳에 오기 전까지는 여러 학원을 다니면서 장소를 옮겨 다니는 시간이
정말 아깝다고 느껴졌는데 러셀CORE 전주에서는 바자관에서 공부를
하다가 같은 층에 있는 강의실로 몇 걸음만 걸어가 수업까지 한번에
들으니 동선이 최소화되어 좋았습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">
				*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0345" Then '코어창원 %>
			<ul class="r-type-uni">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>울산대학교 의예과  합격</strong>
								<span>러셀CORE 창원 김태희</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_ulsan.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							담임 선생님과의 1:1 상담을 통해 정확한 목표를<br>
							
세우고 공부해 나갈 수 있었습니다.

						</strong><br>
						입시 경험이 풍부한 러셀CORE 창원의 담임 선생님께서 주시는 조언은
확실히 달랐습니다. 학습 방법에 대해 담임 선생님께 많은 질문을 드렸고, 그 과정에서 제 잘못된 학습 습관을 바로잡을 수 있었습니다. 덕분에
공부 방향이 명확해졌고, 효율적으로 시간을 활용할 수 있었습니다. 

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>부산대학교 의예과  합격</strong>
								<span>러셀CORE 창원 손원후
								</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_pusan.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							짧은 기간 최대한 공부 효율을 끌어 올릴 수 있도록<br>
							계획적인 학습을 하는 데 도움이 됐습니다.

						</strong><br>
						중간 방학 기간이 짧기 때문에 애매해지는 시간이 발생하여 자칫
흐트러질 수 있었지만, 규칙적인 러셀CORE 창원의 시간표와 관리를 통해
제 루틴을 유지할 수 있었습니다.  그렇기에 썸머스쿨을 통해 방학 기간
더욱 알찬 시간을 보낼 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>한양대학교 경영학과 합격</strong>
								<span>러셀CORE 창원 공민지</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_hanyang.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							대입을 준비하며, 여름 방학 동안 체계적인 환경에서<br>
							
공부하여 목표를 달성할 수 있었습니다.

						</strong><br>
						체계적인 환경과 더불어 같은 목표를 가진 학생들과 경쟁을 통해
자연스럽게 목표를 달성할 수 있었습니다. 개방된 공간에서 선의의
경쟁을 진행하며 월마다 진행되는 여러 모의고사 통해 나의 위치를
확인하며 원하던 목표 점수를 달성할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울시립대학교<br>
								건축학전공 합격
								</strong>
								<span>러셀CORE 창원 김한성</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/uni_logo/logo_seoulsilib.png" alt=""></div>
						</div>
					</div>
					<p>
						<strong>
							3학년 1학기를 마친 나에게 썸머스쿨의 시스템은<br>
							
원하는 결과를 얻기 위한 길라잡이었습니다.

						</strong><br>
						9평 및 마무리 준비를 어떻게 해야 할지 모르던 때 러셀CORE 창원에
등록 후 담임 선생님과 상담을 통해 공부 방향 및 수능에 대한 마음가짐을
확실하게 알게 되었습니다. 그 후 체계적으로 수능까지 준비 할 수 있게
되었고 원하는 결과를 얻게 되었습니다.


					</p>
				</li>
			</ul>
			<p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0346" Then '코어청주 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>대전대학교 한의예과  합격</strong>
								<span>러셀CORE 청주 김경진</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 통해 방학기간 온전히 공부에만 집중하며,<br>
효율적으로 시간을 보낼 수 있었습니다. 
						</strong><br>
						가장 좋았던 점은 규칙적인 생활이 가능하다는 것이었습니다.  등원, 식사, 
순공 시간 등 공부 루틴을 설정하고 이를 꾸준히 지켜나가는 데 큰 도움이 되었습니다. 이렇게 습관화 한 규칙적인 생활은 개학 이후에도 이어져 꾸준히 많은 양의 공부를 해나가는 데에 큰 동력이 되었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>고려대학교 철학과  합격</strong>
								<span>러셀CORE 청주 최승연</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							러셀의 체계적인 관리를 받으며 수능 준비에<br>
							매진하였고, 그 결과 안정적으로 합격할 수 있었습니다.

						</strong><br>
						썸머스쿨은 수능 시간표에 맞춘 표준 시간표가 존재하며, 러셀 전용 와이파이를 이용하여 딴짓을 방지하는 등 해이해진 저의 학습 패턴을 
바로잡는 데 큰 도움을 주었습니다. 그 결과 썸머스쿨을 마치고 개학을 
했을 때에도 시간을 낭비하지 않고, 바르게 형성된 태도로 공부할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>서울대학교 경영학과 합격</strong>
								<span>러셀CORE 청주 김하진</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/50589412')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							직접 대치동까지 가지 않아도, 대치동 수업을 듣고<br>
							
현강 자료를 받을 수 있어 좋았습니다.

						</strong><br>
						LIVE 수업을 통해 대치동까지 가지 않아도 대치동 수업을 들을 수 있고,
현강 자료도 받을 수 있으면서 동시에 시간도 절약할 수 있어 고민을
덜 수 있었습니다.  질 높은 현강 자료도 올해 수능을 준비하는 데 있어서
정말 큰 도움이 되었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>덕성여자대학교 약학과  합격</strong>
								<span>러셀CORE 청주 박예은</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/49229341')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							개방형 구조, 집단적인 면학 분위기의 바자관에서 <br>
스스로를 재정비하며 나아갈 수 있었습니다.
						</strong><br>
						바자관의 장점은 개방형 구조입니다. 공부하다가 피곤해지고 지루해질 때
고개를 들어보면 주변의 공부 분위기를 바로 확인할 수 있어서 다시 한 번
 마음을 다잡고 공부할 수 있었습니다. 또한 공부 시작 전 체조로 뻐근해진
몸을 풀 수 있었고, 집중력을 환기할 수 있어 매우 좋았습니다.

					</p>
				</li>
			</ul>
			<p class="r-txt">
				*2024, 2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0257" Then '중계 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>고려대학교 의예과  합격</strong>
								<span>러셀 중계 동나영</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72605104')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							바자관의 장점은 좋은 면학 분위기와<br>
							관리 시스템입니다.

						</strong><br>
						바자관 내부는 대화 금지여서 조용한 분위기에서 공부에 몰입할 수 있으며, 
개방형 구조와 통유리 창으로 탁 트여 있는 구조이기 때문에 옆에서 공부하는 친구들을 봐서라도 딴짓을 할 수 없어서 좋았습니다. 또한 바자관은 개인 스케줄을 제외하고는 오전 8시부터 밤 10시까지 의무 자습이기 때문에 훨씬 많은 공부량을 확보할 수 있었습니다. 

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>단국대학교 의예과 합격</strong>
								<span>러셀 중계 김태형
								</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							러셀 시스템의 강점은 파이널 기간에 진행하는<br>
							실전 모의고사라 생각합니다.

						</strong><br>
						평소 경험해보지 못했던 유형의 문제들도 볼 수 있어서 좋고<br>
						 모의고사를 채점한 뒤에  내가 무슨 과목, 어떤 파트에 결함이 있구나를<br>
						 객관적으로 파악하고  자신을 보완할 수 있는 기회를 만들 수 있어서<br>
						 더 좋은 것 같습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>순천향대학교 의예과 합격</strong>
								<span>러셀 중계 신미나</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							담임 선생님의 1:1상담이 많은 도움이 되었습니다.
						</strong><br>
						담임 선생님께서 주기적으로 1:1 상담을 해 주셨는데 러셀에서 공부한 선배들이 실제로 어떻게 공부했는지 알려 주셔서 저의 공부 방향을 잡아나가는 데 참고할 수 있었습니다. 또 6장의 수시 원서를 어떻게 쓸지에 대해 담임 선생님과 여러 번의 상담을 통해 결정에 도움을 받았습니다.  선생님들께서 항상 웃으며 인사해 주시고  많이 응원해 주셔서 힘내서 공부할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울대학교 통계학과  합격</strong>
								<span>러셀 중계 예승희</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<!-- <a href="javascript:CastPopup('https://tv.naver.com/v/51835181')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a> -->
							<a href="javascript:alert('곧 공개됩니다.');"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 통해 여름 방학에도 규칙적인 생활을<br>
							유지할 수 있었습니다.
						</strong><br>
						여름 방학 중에도 학교에 등교할 때처럼 규칙적인 생활을 유지하고<br>
						오후 10시까지 오랜 시간 동안  공부에 집중할 수 있는 환경이 좋았습니다. 쉬는 시간에는 적당한 휴식을 취하면서 긴 자습 시간 동안  지치지 않는 집중력을 향상시킨 것이 수능 시험장에서도 큰 도움이 되었다 생각합니다. 
					</p>
				</li>
			</ul>
			<p class="r-txt">
				*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0342" Then '대구 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>가톨릭대학교 의예과 합격</strong>
								<span>러셀 대구 장서윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/68536539')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							학기 중 부족한 공부량을 채울 수 있는 중요한 시기

						</strong><br>
						썸머스쿨을 통해 학기 중 부족했던 공부량을 채울 수 있었습니다.<br>
						학기 중에는 혼자 공부하고 정리할 시간이 부족했습니다. 썸머스쿨은
<b>8시 등원과 규칙적인 쉬는 시간과 같이 정해진 시간표</b>가 있었기 때문에 
이를 바탕으로 공부 시간을 확보할 수 있었습니다. 

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>인하대학교 의예과 합격</strong>
								<span>러셀 대구 지예손
								</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74388208')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							규칙적인 생활로 공부에만 집중할 수 있는 환경

						</strong><br>
						썸머스쿨에서 규칙적인 생활을 하고 공부에만 집중할 수 있었습니다. <br>
썸머스쿨 때 <b>다양한 모의고사를 통해 약점을 확인하고 실전 감각</b>을
키웠습니다. 
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>경북대학교 의예과 합격</strong>
								<span>러셀 대구 한승윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74388237')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							고3 학교 생활과 수능 준비에 이르기까지 큰 밑거름

						</strong><br>
						오롯이 자기 공부에만 집중할 수 있는 기회라서 좋았습니다. <br>
						<b>방학이라 자칫 나태해질 수 있는 기간에 규칙적인 생활로 자기주도학습</b>을
다질 수 있어 고3 학교 생활과 수능 준비에 이르기까지  큰 밑거름이
되었다고 생각합니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>경북대학교 약학과  합격</strong>
								<span>러셀 대구 황태준</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74388079')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							규칙적인 학습과 넉넉한 자습 시간 확보

						</strong><br>
						썸머스쿨이 시작되니 <b>공부 시간을 확실히 넉넉하게 확보</b>할 수 있었고, 매일 2시간씩 부족한 과목에 시간을 투자하여 결국 만족스러운 성적을 거두게 되었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>경상대학교 수의예과 합격</strong>
								<span>러셀 대구 탁건우</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_05.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/74387838')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							규칙적인 자습 시간으로<br>개학 후에도 효율적인 학습 유지
						</strong><br>
						여름 방학에는 날씨도 덥고 시기적으로 공부에 대한 열정이 식기
마련이기에 썸머스쿨을 통해 치고 나갈 수 있는 기회라 생각했습니다. 
바자관의 적절한 실내 온도와 <b>규칙적인 자습 일정이 방학 기간에도<br>

	학습 루틴을 수립</b>하는 데 큰 도움을 주었습니다. 이 덕에 개학 이후에도 
여름 방학과 같이 효율적인 학습을 할 수 있었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 물리학과  합격</strong>
								<span>러셀 대구 장우익</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_06.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72932212')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							방학 동안 마음을 다잡고 착실하게<br>진행할 수 있었던 기회
						</strong><br>
						체력적인 부분이나 생활 패턴에서 망가져 있었습니다. 그런 상황에서 개학을 하고 나니 공부를 할 시간이 줄어든다는 것을 더 강하게 느낄 수 있었습니다. 그 감각을 바탕으로 <b>마음을 강하게 다잡고 계획을 착실하게 세워가며 달릴 수 있는 기회</b>가 되었던 것 같습니다.
					</p>
				</li>
			</ul>
			<p class="r-txt">
				*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% ElseIf sCampusCode = "CD0340" Then '코어광주 %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>인제대학교 의예과  합격</strong>
								<span>러셀CORE 광주 고가람</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_01.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/48188982')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 통해 긴장감 유지
						</strong><br>
						방학 때 러셀을 다니면서 학교를 다니지 않아도<br>
						긴장감을 잃지 않고 꾸준히 공부할 수 있다는 점이 좋았습니다. 

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>전북대학교 의예과 합격</strong>
								<span>러셀CORE 광주 김민수</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_02.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/48188950')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							썸머스쿨을 통해 효율적으로 시간 관리

						</strong><br>
						혼자 공부하는 학생들은 방학이기에 굉장히 많은 시간을 효율적으로
관리하지 못하는 경우가 많은데 바자관을 다니면서 많은 시간을
효율적으로 관리할 수 있었고, 규칙적인 생활을 할 수 있었습니다. 

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>동국대학교 한의예과 합격</strong>
								<span>러셀CORE 광주 권태완</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_03.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/48188348')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							실력 향상에 큰 도움을 주는 퀄리티 높은 콘텐츠

						</strong><br>
						바른공부 자습전용관과 가까운 거리에 강의실이 있어서 수업 중 배운
내용을 바로 복습할 수 있었으며, 검증된 강사진의 퀄리티 높은 콘텐츠는 
실력 향상에 큰 도움을 주었습니다.

					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2024학년도</dt>
							<dd>
								<strong>연세대학교 의예과 합격</strong>
								<span>러셀CORE 광주 강세빈</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/<%=campusName%>/2025/summer/stu_04.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/48188890')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>
							바자관의 장점은 선생님의 세심한 관리
						</strong><br>
						수험 생활을 하며 스트레스를 받다 보면 사소한 불편에도 집중이<br>
						
잘 안될 때가 있는데 선생님께서  늘 신경 써 주셔서 쾌적한 환경에서
공부할 수 있다는 점이 좋았습니다. 
					</p>
				</li>
			</ul>
			<p class="r-txt">
				*2024 합격생 인터뷰 중 일부 발췌
			</p>
			<% Else %>
			<ul class="r-type-play">
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울대학교 의예과 합격</strong>
								<span>러셀 대치 권수현</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_ksh.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72645714')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>썸머스쿨을 통해 수시 활동이 끝나고 해이해질 수<br>
							있는 시기에 공부 습관을 바로잡을 수 있었습니다.
						</strong><br>
						저는 수시가 끝난 고등학교 3학년 여름 방학에도 러셀 썸머스쿨에서<br>수능을 열심히 공부하였기 때문에 수능 최저를 모두 맞추고 5관왕이라는<br>좋은 성적을 거둘 수 있었다고 생각합니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>연세대학교 의예과 합격</strong>
								<span>러셀CORE 광주 박채은</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_pce.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72645446')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>방학을 체계적으로 보낼 수 있도록 해 준<br> 프로그램이 러셀의  썸머스쿨이었습니다.
						</strong><br>
						잘 짜인 시간표에 기반하여 기상-수면의 생활 리듬부터 공부 계획까지,<br>모든 요소를 편리하게 조절할 수 있었고 중식과 석식 등 공부 외적인<br>측면에 대한 부담도 줄일 수 있었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>성균관대학교 의예과 합격
								</strong>
								<span>러셀 분당 이세윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_lsy.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72377915')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>바자관은 개방형 구조를 가져 집단적인<br>
							면학 분위기가 형성된다는 점이 좋았습니다.
						</strong><br>
						주위를 돌아봤을 때 친구들이 열심히 공부하고 있는 모습을 보면<br>나도 힘을 내서 공부해야겠다는 마음이 생겼던 것 같습니다.<br>
						이렇게, 서로에게 긍정적인 영향을 발휘할 수 있는 면학 분위기를<br>
						가지고 있는 것이 가장 큰 장점이라고 생각합니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>가톨릭대학교 의예과 합격</strong>
								<span>러셀 대구 장서윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_jsy.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/68536539')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>썸머스쿨을 통해 학기 중에 부족했던<br>
							공부량을 채울 수 있었습니다.
						</strong><br>
						학기 중에는 학교에 다녀야 했기 때문에 혼자 공부하고 정리할 시간이<br>부족했습니다.  썸머스쿨은 8시 등원하고 쉬는 시간은 규칙적으로<br>갖는 등 정해진 시간표가 있었기 때문에 이를 바탕으로 공부 시간을<br>확보할 수 있었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>울산대학교 의예과 합격</strong>
								<span>러셀CORE 창원 김태희</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_kth.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72855787')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>담임 선생님과의 1:1 상담을 통해 정확한 목표를<br>
						
							세우고 공부해 나갈 수 있었습니다. 
							
						</strong><br>
						인터넷에 검색해서 나오는 정보와 입시 경력이 매우 많으신 러셀<br>담임 선생님께서 알려  주시는 팁은 질적인 차이가 분명히 있습니다. <br>
						학습 방법에 대해서도 담임 선생님께 많은 질문을 드렸고 그 결과<br>저의 안 좋은 학습 습관들을 고쳐 나갈 수 있었습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>울산대학교 의예과 합격</strong>
								<span>러셀 울산 이예빈</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_lyb.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/73090623')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>썸머스쿨에서는 등원 시간이 정해져 있어<br>
							규칙적인 생활을 하는 데 도움이 됐습니다. 
						</strong><br>
						공부는 한 번에 많이 하는 것이 아니라 꾸준히 지속적으로 하는 것이<br>중요한 만큼 방학 때 알찬 시간을 보내는 것에 있어 썸머스쿨은<br>좋은 선택이었던 것 같습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>고려대학교 의과대학 합격</strong>
								<span>러셀 강남 최원영</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_cwy.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72645834')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>썸머스쿨 덕분에 계획적이고 체계적인<br>
							독서 습관 함양에 큰 도움이 된 것 같습니다.
						</strong><br>
						러셀의 썸머스쿨은 매우 규칙적인 시간표가 존재하기 때문에<br> 
						저는 이에 따라 매일 같은 시각에 등원하고 하원하며 시간표를 최대한 <br>
						따르고자 노력하였습니다. 결과적으로 계획적이고 체계적인<br>
						독서 습관의 함양에 큰 도움이 된 것 같습니다.
					</p>
				</li>
				<li data-aos="fade-up">
					<div>
						<dl>
							<dt>2025학년도</dt>
							<dd>
								<strong>서울대학교<br>
								치의학학석사통합과정 합격</strong>
								<span>러셀 영통 이가윤</span>
							</dd>
						</dl>
						<div>
							<div><img src="<%=Application("img_path_russel")%>/intro/2025/summer/stu_lgy.jpg" alt=""></div>
							<a href="javascript:CastPopup('https://tv.naver.com/v/72853411')"><img src="<%=Application("img_path_russel")%>/intro/2025/summer/ico_play.png" alt=""></a>
						</div>
					</div>
					<p>
						<strong>여름 방학 동안 바자관에서<br>
							온전히 공부에만 집중할 수 있었습니다.
						</strong><br>
						9모 전 마지막 기회라고 생각하고 규칙적인 러셀의 시간표에 따라<br>
						공부하다 보니 저만의 루틴을 잡아갈 수 있었습니다. <br>
						아침 8시에 등원하여 밤 10시까지 공부하면서 공부의 양을<br>
						극대화할 수 있었고, 성적 상승을 이루어 낼 수 있었습니다. 
					</p>
				</li>
			</ul>
			<p class="r-txt">*2025 합격생 인터뷰 중 일부 발췌
			</p>
			<% End If %>
		</div>
	</div>
</div>