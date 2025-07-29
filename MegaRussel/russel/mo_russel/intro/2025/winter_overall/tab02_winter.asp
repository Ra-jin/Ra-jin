<div class="cont js-cont-wrap <%=campusName%>">
	<div class="cont06">
        <h3 data-aos="fade-up"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/cont06_tit.jpg" alt="러셀의 윈터스쿨에는 학습 습관 완성을 위한 모든 것이 준비되어 있습니다. 겨울방학 동안 올바른 학습 습관 형성은 물론, 최상위권 실력 향상을 위한 최대 효율의 러셀 시스템"></h3>
		<div class="inner" data-aos="fade-up">
			<div class="tit-wrap">
				<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/num_01.png" alt="01"></div>
				<h4>
					짧은 기간, 최대 효율의<br>
					<strong>효율적인 시간관리</strong>
				</h4>
				<h5>
					습관 형성에 필요한 8~9주 동안<br>
					최대의 효율을 낼 수 있도록 준비되어 있습니다.
				</h5>
			</div>
			<a class="i-bus" href="/info/schoolBus.asp">
				<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/ico_bus.png" alt="학원 전용 셔틀버스 운영">
			</a>
        	<% If campus_code = "CD0349" OR russelCore = 1 OR campus_code = "CD0342" Then '울산/코어학원/대구 %>
			<div class="t-wrap type01 core">
			<% Else %>
			<div class="t-wrap type01">
			<% End If %>
				<div class="tab-navi">
					<div class="swiper-wrapper">
        				<% If campus_code = "CD0249" Then '영통 %>
						<div class="swiper-slide">
							성적 향상<br>
							사례
						</div>
						<% Else %>
						<div class="swiper-slide">
							최대의<br>
							자습시간
						</div>
						<% End If %>
						<div class="swiper-slide">
							수능 맞춤<br>
							시간표
						</div>
						<div class="swiper-slide">
							학습 동선<br>
							최적화
						</div>
        				<% If campus_code = "CD0349" OR russelCore = 1 OR campus_code = "CD0342" Then '울산/코어학원/대구 %>
						<div class="swiper-slide">
							자체 식당<br>
							운영
						</div>
						<% End If %>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 최대의 자습시간 -->
						<div class="swiper-slide">
        					<% If campus_code = "CD0249" Then '영통 %>
							<h5>
								종합반의 효율적인 시간관리가 증명한<br>								선배들의 성적 향상 사례
							</h5>
							<p>
								실제 선배들이 증명한 결과와 같이,<br>
								종합반만의 체계적이고 꼼꼼한 시간 관리는<br>
								눈에 보이는 성적 향상으로 이어집니다.

							</p>
							<% Else %>
							<h5>
								최소 의무 수업, 최대 자습시간으로<br>
								충분한 자기주도 학습시간 확보
							</h5>
							<p>
								꼭 필요한 핵심 수업만으로 구성되어<br> 
								자습시간을 최대로 확보할 수 있는 시스템으로<br>
								시간을 효율적으로 사용하고<br>
								자기주도학습 습관을 형성합니다.
							</p>
							<% End If %>
        					<% If campus_code = "CD0249" Then '영통 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_slide01.jpg" alt=""></div>
							<% Else %>
							<div>
								<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/sys_slide01.jpg" alt="">
								<a class="data-txt" href="javascript:void(0)" style="position:absolute;bottom:10px;left:10px;width:100px;height:20px;"></a>
								<div class="layer-wrap">
									<div class="layer-in">
										<p class="js-close-mask"><a href="javascript:void(0)"><img src="<%=Application("img_path_russel")%>/m_russel/btn/btn_close_b.png" alt=""></a></p>
										1) 기존 종합반 의무수업 42T 대비 러셀 종합반 의무수업 17.5T 비교 시 수치<br>
										
										2) 기존 종합반 자습시간 46T 대비 러셀 종합반 자습시간 70.5T 비교 
										(일주일 88T 기준으로 비교, 및 선택자습시간도 포함) <br>
										* 실제 학원 운영상황에 따라 변경될 수 있습니다.

									</div>
								</div>
							</div>
							<% End If %>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									아침 자습을 활용한다면 오전 7시부터 심야 자습인 12시까지 추가로 공부할 수 있어 공부 시간을 충분히 확보할 수 있었습니다.
								</p>
								<dl>
									<dt>부산대 약학과

									</dt>
									<dd>
										러셀 울산 김가현

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									바자관의 장점은 단과를 선택적으로 들을 수 있어서 시간을 효율적으로 쓸 수 있다는 것입니다.
								</p>
								<dl>
									<dt>한양대 의예과 

									</dt>
									<dd>
										러셀CORE 광주 엄태옥

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									담임 선생님이 해이해질 때마다 항상 독려해 주시고, 꼼꼼한 관리 시스템 덕분에 더욱 공부에 집중할 수 있었습니다.
								</p>
								<dl>
									<dt>충남대학교 의예과

									</dt>
									<dd>
										러셀 영통 송민근
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									오로지 공부에만 집중할 수 있는 분위기가 형성되어 있습니다. 일단 자리에 앉으면, 열심히 하는 주변 친구들을 보면서 ‘뭐라도 시작해야겠다’라는 생각이 들어 공부에 탄력을 받을 수 있었습니다.
								</p>
								<dl>
									<dt>경북대학교 의예과

									</dt>
									<dd>
										러셀 대구 이효섭
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu01.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									학습 동선이 최소화된다는 점이<br>
									러셀 시스템의 가장 큰 장점이라고 생각합니다.
								</p>
								<dl>
									<dt>
										연세대학교 통합 디자인학과
									</dt>
									<dd>
										러셀 강남 신재윤
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/sys_stu01.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<!-- 수능 맞춤 시간표 -->
						<div class="swiper-slide">
							<h5>
								종합반 수업과 바자관 표준 시간표로<br>
								구성한 종합반 학습 시간표
							</h5>
							<p>
								실제 수능과 동일한 표준 시간표로 운영하여<br>
								학습과 생활 리듬이 수능에 최적화될 수 있도록<br>
								학습 습관을 형성합니다.
							</p>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div>
								<a href="javascript:void(0);" class="sch-btn">
									<img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_slide02.jpg" alt="종합반 학습 시간표 보기">
								</a>
							</div>
							<% Else %>
							<div>
								<a href="javascript:void(0);" class="sch-btn">
									<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/sys_slide02.jpg" alt="종합반 학습 시간표 보기">
								</a>
							</div>
							<% End If %>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									수험 생활에서 중요한 것이 생체리듬인데 정해진 시간표에 따라 체계적으로 공부할 수 있었습니다. 이를 통해 학습 리듬을 유지하면서 시간 낭비를 최소화할 수 있었습니다.
								</p>
								<dl>
									<dt>
										고려대 스마트모빌리티학부

									</dt>
									<dd>
										러셀 울산 유동훈

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									체계적인 시스템으로 운영되기 때문에 학습시간을 충분히 확보할 수 있었고 시간을 효율적으로 사용하기 위해 집중력 있게 공부를 할 수 있었습니다.
								</p>
								<dl>
									<dt>
										서울대학교 인문계열

									</dt>
									<dd>
										러셀CORE 광주 김효원

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									바자관에서는 수능 시간표에 맞춰 공부와 휴식을 조절하며 학습 리듬을 형성할 수 있어 만족스러웠습니다.
								</p>
								<dl>
									<dt>
										서울대학교 스마트시스템과학과

									</dt>
									<dd>
										러셀 영통 나혜민

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									바자관의 장점들 중 가장 마음이 들었던 것은 정형화된 시간표였습니다. 실제 수능 과목별 시간을 반영해 실전 모의고사를 연습하기에도 매우 좋은 환경이었고, 스스로 적절히 공부와 휴식을 조율할 수 있어 온전히 공부에만 집중할 수 있도록 만들어 주었습니다.
								</p>
								<dl>
									<dt>
										영남대학교 약학과

									</dt>
									<dd>
										러셀 대구 권민재

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu02.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									수업한 내용을 복습할 수 있는 충분한 시간이  있어, 공부하기 최적의 환경이라고 생각했습니다.
								</p>
								<dl>
									<dt>
										경상대학교 의예과
									</dt>
									<dd>
										남학생 전문관 러셀 기숙학원<br>
										손승빈
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/sys_stu02.png" alt=""></div>
							</div>
							<% End If %>
							<p class="r-txt">* 평일(월~금요일)바자관 표준 시간표 기준으로 작성하였으며,<br>
							학원 운영에 따라 상세 시간은 변동될 수 있습니다.
							</p>
						</div>
						<!-- 학습 동선 최적화 -->
						<div class="swiper-slide">
							<h5>
								이동에 낭비하는 시간 없는<br>
								학습 동선 최적화
							</h5>
        					<% If campus_code = "CD0249" Then '영통 %>
							<p>
								효율적인 동선의 강의실과 바자관, 급식을<br>
								한 번에 해결할 수 있도록 동선을 최적화하여<br>
								이동에 낭비되는 시간을 최소화하였습니다.
							</p>
							<% Else %>
							<p>
								한 건물 내의 강의실과 바자관, <%=baja_txt%>을 <br>
								한 번에 해결할 수 있도록 동선을 최적화하여<br>
								이동에 낭비되는 시간을 최소화하였습니다.
							</p>
							<% End If %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_slide03.jpg" alt=""></div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									수업과 자습, 주기적으로 치는 모의고사 응시를 한 건물 안에서 해결할 수 있어서 시간 낭비를 최소화할 수 있었던 점이 매우 만족스러웠습니다.
								</p>
								<dl>
									<dt>서울대 컴퓨터공학부 
									</dt>
									<dd>
										러셀 울산 안채원
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									이동에 낭비하는 시간이 없도록 도움을 주었습니다. 바른공부 자습전용관과 가까운 거리에 강의실이 있다는 점은 확실한 장점으로 다가왔습니다.
								</p>
								<dl>
									<dt>
										2024 동국대 한의예과

									</dt>
									<dd>
										러셀CORE 광주 권태완

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '코어광주 %>
							<div class="s-review">
								<p>
									자습, 급식, 수업을 효율적인 동선 내에서 해결할 수 있어 자신만의 공부 흐름에 방해받지 않고 최대한의 공부 시간을 확보할 수 있었습니다.
								</p>
								<dl>
									<dt>
										연세대학교 도시공학과

									</dt>
									<dd>
										러셀 영통 이강윤

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									학습 동선 최소화를 가장 큰 장점으로 생각합니다. 한 건물 안에서 급식, 단과 수업, 자습 등을 모두 해결할 수 있다 보니 시간 절약에 유용했습니다.
								</p>
								<dl>
									<dt>
										연세대학교 물리학과

									</dt>
									<dd>
										러셀 대구 장우익

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu03.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									수능 시간표에 입각한 시간 관리 시스템으로 일정한 루틴을 만들어 나가는 것이 가능합니다.
								</p>
								<dl>
									<dt>
										가천대학교 의예과
									</dt>
									<dd>
										러셀 대구 임승재
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/sys_stu03.png" alt=""></div>
							</div>
							<% End If %>
						</div>
        				<% If campus_code = "CD0349" OR russelCore = 1 OR campus_code = "CD0342" Then '울산/코어학원/대구 %>
						<!-- 자체 식당 운영 -->
						<div class="swiper-slide">
							<h5>
								건강과 안전, 시간 효율을 위한<br>
								자체 식당 운영
							</h5>
							<p>
								자체 식당 운영으로 균형 잡힌 식단을 유지하고<br>
								외부와의 접촉을 최소화, 이동 시간을 줄여<br>
								효율적으로 시간을 사용하고 <br>
								학습에 더욱 몰입할 수 있습니다.
							</p>
							<div>
								<img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_slide04.jpg" alt="">
							</div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									수험생들에게 밥은 정말 중요한 요소인데, 한 건물에 자체 식당까지 같이 있어서 학습 시간을 확보할 수 있어 도움이 되었습니다.
								</p>
								<dl>
									<dt>
										고려대 전자전기공학부

									</dt>
									<dd>
										러셀 울산 ○○○

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu04.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									자체 식당이 있어 급식과 단과와 자습을 한 건물에서 해결할 수 있었고, 이동시간을 줄여 효율적으로 공부하는 데에 도움이 되었습니다.
								</p>
								<dl>
									<dt>
										연세대 국어국문과 

									</dt>
									<dd>
										러셀CORE 광주 김지윤

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu04.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									한 건물 안에서 식당, 자습, 수업을 동시에 할 수 있는 것이 가장 좋았습니다.
								</p>
								<dl>
									<dt>
										경북대학교 약학과

									</dt>
									<dd>
										러셀 대구 황태준

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/sys_stu04.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<% End If %>
					</div>
				</div>
			</div>
        	<% If campus_code = "INTRO" Then '인트로 %>
			<p class="r-txt">
				*각 학원별로 시설 및 운영 방법은 상이할 수 있습니다.<br>
				*합격생 후기 일부 발췌
			</p>
			<% Else %>
			<p class="r-txt">
				*합격생 후기 일부 발췌
			</p>
			<% End If %>
            <!-- 바자관 표준 시간표 -->
            <!-- #include virtual = "/intro/2025/winter_overall/baja_time_table.asp" -->
            <!-- //바자관 표준 시간표 -->
		</div>
	</div>
	<div class="cont07">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/num_02.png" alt="02"></div>
			<h4>
				학습의 의욕을 높여주는<br>
				<strong>확실한 동기부여</strong>
			</h4>
			<h5>
				명확한 목표를 지향할 수 있는 시스템과 환경으로<br>지속적으로
				학습할 수 있는 동기를 부여합니다.
			</h5>
		</div>
		<div class="inner" data-aos="fade-up">
			<div class="t-wrap type02">
				<div class="tab-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							장학제도
						</div>
						<div class="swiper-slide">
							집단적인<br>
							면학분위기
						</div>
						<div class="swiper-slide">
							1:1 멘토링
						</div>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 장학제도 -->
						<div class="swiper-slide">
							<h5>
								학구열에 대한 보상으로<br>
								동기 부여하는 장학 제도
							</h5>
							<p>
								입학 성적에 적용되어<br>
								재원생들의 노력과 성공의 결과를 응원하며<br>
								학습동기와 성취를 부여합니다.
							</p>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/moti_slide01.jpg" alt=""></div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									동기부여가 되는 장학 제도가 있어서 슬럼프가 올 때 자극제로 활용해서 열심히 공부했던 기억이 있습니다.
								</p>
								<dl>
									<dt>
										동아대 의예과

									</dt>
									<dd>
										러셀 울산 신○훈

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									부담을 덜어주고 공부 의욕을 높이는 장학혜택이 
									좋았습니다. 좋은 성적을 유지해야 하는 동기가 
									되어 더 열심히 공부할 수 있었습니다.
								</p>
								<dl>
									<dt>
										연세대학교 정치외교학과
									</dt>
									<dd>
										러셀CORE 청주 김화랑
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									러셀의 장학제도 덕분에 동기부여도 되었고, 금전적으로 많은 도움을 받았습니다.
								</p>
								<dl>
									<dt>
										충남대학교 의예과
									</dt>
									<dd>
										러셀 영통 송민근
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									흔들릴 수 있는 기간에 심리적으로 독려해 주면서 동기부여가 되어 실제 학습에 도움이 되었던 것 같습니다.
								</p>
								<dl>
									<dt>
										가천대학교 의예과

									</dt>
									<dd>
										러셀 대구 이승훈 
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu01.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									부담을 덜어주고 공부 의욕을 높이는 장학혜택이 
									좋았습니다. 좋은 성적을 유지해야 하는 동기가 
									되어 더 열심히 공부할 수 있었습니다.
								</p>
								<dl>
									<dt>
										연세대학교 정치외교학과
									</dt>
									<dd>
										러셀CORE 청주 김화랑
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/moti_stu01.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<!-- 집단적인 면학분위기 -->
						<div class="swiper-slide">
							<h5>
								학구열을 체감할 수 있는 구조로<br>
								긍정적 경쟁 유도
							</h5>
							<p>
								최상위권의 학구열을 체감할 수 있는<br>
								개방형 구조로 설계되어 긍정적인 경쟁심을<br>
								유도하고 학습 동기로 작용하게 합니다.
							</p>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_slide02.jpg" alt=""></div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									바자관 내부가 개방감이 있어 좋았습니다. 칸막이가 투명해서 다 같이 공부하는 느낌이라 답답한 느낌 없이 오히려 재미있게 공부했던 기억이 있습니다.
								</p>
								<dl>
									<dt>
										동의대 한의예과 

									</dt>
									<dd>
										러셀 울산 김○경

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									바자관은 개방형 구조로 되어 있어 집중력이 떨어질 때 앞, 옆에서 치열하게 공부하고 있는 친구들을 보며 자극을 받을 수 있었습니다.
								</p>
								<dl>
									<dt>
										서울대학교인문계열 

									</dt>
									<dd>
										러셀CORE 광주 김효원

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									고개를 들면 100명이 넘는 친구들이 열심히 공부하고 있는 모습이 바로 보여 공부가 지치고 힘들 때에도 해이해지지 않고 마음을 다잡을 수 있었습니다.
								</p>
								<dl>
									<dt>
										아주대학교 의예과

									</dt>
									<dd>
										러셀 대구 김규진
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu02.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									개방형으로 설계된 바른공부 자습전용관의 
									책상 배치도 큰 장점이었습니다. 열심히 공부하는 
									친구들의 모습을 보며 긍정적인 경쟁심이 생겨 
									자연스럽게 동기부여가 되었던 점이 좋았습니다.
								</p>
								<dl>
									<dt>
										연세대학교 의예과
									</dt>
									<dd>
										러셀 영통 임희수
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/moti_stu02.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<!-- 1:1 멘토링 -->
						<div class="swiper-slide">
							<h5>
								슬럼프 극복과 학습 동기를<br>
								부여하는 1:1 멘토링
							</h5>
							<p>
								1:1 멘토링으로 지속적인 학습 동기를 부여하고<br>
								슬럼프 극복 및 안정적인 수험 생활이 가능하도록<br>
								학습 고충 상담 등 끊임없는 소통을 진행합니다.
							</p>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_slide03.jpg" alt=""></div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									여러모로 의지가 많이 된다는 점이 입시 담임 선생님의 최대 장점이라고 생각합니다. 저도 정신적인 부분에서나 학업적인 부분에서 도움을 많이 받았습니다.
								</p>
								<dl>
									<dt>
										부산대 의예과

									</dt>
									<dd>
										러셀 울산 옥○리

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									담임 선생님께서는 1:1로 상담해 주시며 앞으로의 계획이나 부족한 부분에 대해 스스로 생각해 볼 수 있도록 도와주셨습니다.
								</p>
								<dl>
									<dt>
										조선대학교 의예과

									</dt>
									<dd>
										러셀CORE 광주 김나연

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									전반적인 학습 계획 수립부터 원서 접수에 이르기까지 여러 분야에서 담임 선생님의 조언이 도움이 많이 되었습니다.
								</p>
								<dl>
									<dt>
										계명대학교 의예과

									</dt>
									<dd>
										러셀 영통 양나경

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									도움이 필요할 때 담임 선생님이 계심으로써 큰 어려움 없이 문제를 해결할 수 있었으며 공부가 힘들어질 때쯤 담임 선생님께서 조언을 해주셔서 마음을 다잡는 데 도움이 되었습니다.
								</p>
								<dl>
									<dt>
										경희대학교 치의예과

									</dt>
									<dd>
										러셀 대구 김수현
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/moti_stu03.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									슬럼프가 오거나 고민이 생길 때마다  담임 선생님과 상담을 했었는데요, 언제든   친절하게 고민을 들어주시고 현실적인 방안을 
									제시해 주셔서 의지도 많이 되고 동기부여도 
									많이 받았던 것 같습니다.
								</p>
								<dl>
									<dt>
										대전대학교 한의예과
									</dt>
									<dd>
										러셀CORE 청주 김경진
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/moti_stu03.png" alt=""></div>
							</div>
							<% End If %>
						</div>
					</div>
				</div>	
			</div>
			<p class="r-txt">
				*합격생 후기 일부 발췌
			</p>
		</div>
	</div>
	<div class="cont08">
		<div class="tit-wrap" data-aos="fade-up">
			<div class="num"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/num_03.png" alt="03"></div>
			<h4>
				학습에만 집중할 수 있는<br>
				<strong>최적화된 환경</strong>
			</h4>
			<h5>
				프리미엄 시설 및 환경, 최상위권<br>
				전문 입시 담임 선생님의 맞춤 관리로<br>
				오직 학습에만 집중할 수 있도록 설계했습니다.
			</h5>
		</div>
		<div class="inner" data-aos="fade-up">
			<div class="t-wrap type03">
				<div class="tab-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							바른공부<br>
							자습전용관
						</div>
						<div class="swiper-slide">
							입시관리
						</div>
						<div class="swiper-slide">
							학습관리
						</div>
						<div class="swiper-slide">
							생활관리
						</div>
						<div class="swiper-slide">
							설명회 및 특강
						</div>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 바른공부 자습전용관 -->
						<div class="swiper-slide">
							<h5>
								학습에만 집중할 수 있도록 설계된<br>
								바른공부 자습전용관
							</h5>
							<p>
								넓은 책상과 편안한 의자, 쾌적한 환경을<br>
								조성하여 오랜 시간 학습에 무리 없도록<br>
								오직 학습에만 전념할 수 있는<br>
								최적의 학습 환경을 제공합니다.
							</p>
        					<% If campus_code = "CD0349" OR campus_code = "CD0249" Then '울산/영통 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_slide01.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/opti_slide01.jpg" alt=""></div>
							<% End If %>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									기본적으로 학습 환경이 매우 쾌적하고, 책상이 넓다는 점이 정말 마음에 들었습니다.
								</p>
								<dl>
									<dt>
										서울대 컴퓨터공학부 

									</dt>
									<dd>러셀 울산 안채원

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									피곤할 때면 스탠딩 책상을 이용해 기분 전환할 수 있었고, 바자관이 개방형 구조로 되어 있어 열심히 하는 친구들의 모습에 긴장감을 유지할 수 있었습니다.
								</p>
								<dl>
									<dt>
										연세대학교 의예과

									</dt>
									<dd>러셀CORE 광주 최정윤

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									편안한 의자, 공기청정기와 밝은 조명 등으로 조성된 쾌적한 환경에서 공부에만 온전히 몰입할 수 있어서 좋았습니다.
								</p>
								<dl>
									<dt>
										서울대학교 정치외교학부

									</dt>
									<dd>러셀 영통 윤소정

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu01.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									바자관의 장점은 쾌적한 환경입니다. 책상이 넓어 모의고사를 풀기에 용이했고, 바로 옆의 개인 책장을 이용할 수 있어서 책을 찾기 위해 사물함까지 이동해야 하는 번거로움이 없었습니다.
								</p>
								<dl>
									<dt>
										고려대학교 의예과

									</dt>
									<dd>러셀 대구 송지안

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu01.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									넓은 책상과 스탠딩 책상이 공부에 집중을 하는 데 도움이 되었습니다.
								</p>
								<dl>
									<dt>
										가톨릭 관동대학교 의예과
									</dt>
									<dd>
										러셀CORE 원주 정희찬
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/opti_stu01.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<!-- 입시관리 -->
						<div class="swiper-slide">
							<h5>
								최상위권 대학 합격을 위한<br>
								전문적인 맞춤 입시관리
							</h5>
							<div class="type-list">
								<ul>
									<li>
										목표 대학/학과에 맞춘 입시 방향 제시
									</li>
									<li>
										내신 및 모의고사 성적 추이와 입학 전형을<br>
										분석하여 맞춤 전략 제안
									</li>
									<li>
										수시/정시 1:1 컨설팅을 통해 최적의<br>
										지원 전략 제공
									</li>
								</ul>
							</div>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_slide02.jpg" alt=""></div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									원서를 접수하기 1시간 전까지도 바자관 담임 선생님과 작년 경쟁률, 입결 컷을 공유하며 후회 없는 원서접수를 할 수 있었습니다.
								</p>
								<dl>
									<dt>
										연세대 불어불문학과

									</dt>
									<dd>
										러셀 울산 오○원

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									담임 선생님께서는 힘들거나 막막할 때 찾아가면 정말 진심으로 학생들을 생각해 주셨고 학습 방향에 대한 조언도 해주셔서 많은 도움이 되었습니다.
								</p>
								<dl>
									<dt>
										이화여자대학교 의예과

									</dt>
									<dd>
										러셀CORE 광주 최정윤

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									수시 신청뿐만 아니라 입시의 마지막까지 함께 고민해 주시면서 어떤 대학의 어떤 학과를 고르는 편이 좋을지 상담해 주셨었는데, 정말 큰 도움이 되었고 아직까지도 감사하게 생각하고 있습니다.
								</p>
								<dl>
									<dt>
										서울대학교 첨단융합학부
									</dt>
									<dd>
										러셀 영통 김민준
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu02.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									입시와 관련된 구체적인 정보를 친절하게 알려주셔서 감사했습니다. 원서 접수 기간에도 고민하고 있을 때 상담을 통해서 보다 원활하게 원서를 작성할 수 있었습니다.
								</p>
								<dl>
									<dt>
										대구가톨릭대학교 의예과
									</dt>
									<dd>
										러셀 대구 박수민
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu02.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									담임 선생님께서 입시관리를 해주시는 것이 많은 
									도움이 되었습니다. 수시 지원할 때 어떤 전략을 
									세울지 함께 상담한 것이 효과적이었습니다.
								</p>
								<dl>
									<dt>
										고려대학교 의예과
									</dt>
									<dd>
										러셀 분당 조한준
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/opti_stu02.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<!-- 학습관리 -->
						<div class="swiper-slide">
							<h5>
								수능까지 성취도 있는 학습을 위한<br>
								체계적인 학습관리
							</h5>
							<div class="type-list">
								<ul>
									<li>
										성적 데이터와 학습 현황 기반 과목별 보완점과<br>
										학습 방향 상담
									</li>
									<li>
										올바른 습관 형성 및 방법 개선을 위한<br>
										플래너 점검
									</li>
									<li>
										목표 성적 맞춤 학습 전략과 시기별<br>
										학습 가이드 제시
									</li>
								</ul>
							</div>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_slide03.jpg" alt=""></div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									처음 해보는 입시이기에 모르는 것도 많고 앞으로의 공부 방향에 대해 막막할 때, 입시 관련 고민을 해결해 주셔서 많은 도움이 되었습니다.
								</p>
								<dl>
									<dt>
										경북대 수의예과

									</dt>
									<dd>
										러셀 울산 황순민

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									담임 선생님은 제겐 지지대였습니다. 자습을 하다 보면 스트레스도 받고, 무엇을 공부해야 할지 갈피를 못 잡는 경우가 있는데 멘토 역할을 해주셨습니다.
								</p>
								<dl>
									<dt>
										전남대학교 약학과

									</dt>
									<dd>
										러셀CORE 광주 정성은

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									제가 취약한 과목에 대한 학습 계획을 세워주시고 지속적으로 동기를 불어넣어 주신 덕분에 성적을 크게 향상시킬 수 있었습니다.
								</p>
								<dl>
									<dt>
										서울대학교 치의학학석사통합과정

									</dt>
									<dd>
										러셀 영통 이가윤

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu03.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									총평 노트를 작성한 뒤 이를 바탕으로 상담을 진행하면서 시험에 대해 객관적인 위치에서 분석해 주셔서 어떤 부분이 부족한지 더 잘 알 수 있었고 항상 제 주변에서 많은 지원을 해 주신 것 같습니다.
								</p>
								<dl>
									<dt>
										가천대학교 의예과

									</dt>
									<dd>러셀 대구 이승훈

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu03.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									학습에 대해서는 담임 선생님과 심층적인 
									상담을 통해 공부의 방향을 설정해나가는데 
									도움이 되었습니다.
								</p>
								<dl>
									<dt>
										부산대학교 의예과
									</dt>
									<dd>
										남학생 전문관 러셀 기숙학원<br>
										강태욱
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/opti_stu03.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<!-- 생활관리 -->
						<div class="swiper-slide">
							<h5>
								집단적인 면학분위기 형성을 위한<br>
								엄격한 생활관리
							</h5>
							<div class="type-list">
								<ul>
									<li>
										전자 출결 관리 시스템 및 바자관 모니터링 등 <br>
										체계적 출결 관리
									</li>
									<li>
										엄격한 태도 점수 제도로 면학분위기<br>
										저해 요소 관리
									</li>
									<li>
										안정적인 수험생활이 가능하도록 동반자 역할
									</li>
								</ul>
							</div>
        					<% If campus_code = "CD0342" Then '대구 %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/opti_slide04.jpg" alt=""></div>
							<% Else %>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_slide04.jpg" alt=""></div>
							<% End If %>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									바자관은 면학 분위기 조성이 잘 되어 있기 때문에 방해 없이 공부에 집중할 수 있었습니다.
								</p>
								<dl>
									<dt>
										대구한의대 한의예과

									</dt>
									<dd>
										러셀 울산 송○후

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu04.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									태도 점수 제도로 벌점을 받지 않기 위해 지각하지 않고 떠들지 않고 좋은 면학 분위기를 조성할 수 있어서 좋았습니다.
								</p>
								<dl>
									<dt>
										조선대학교 의예과 

									</dt>
									<dd>
										러셀CORE 광주 송다현

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu04.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0342" Then '대구 %>
							<div class="s-review">
								<p>
									형식적인 상담이 아니라, 학생 개개인을 신경 써 주시며 생활 면에서 힘든 점은 없는지, 부족한 점은 어떻게 보완하면 좋을지 같이 고민해 주셔서 심적인 면에서도, 성적 관리 면에서도 많은 도움을 받았습니다.
								</p>
								<dl>
									<dt>
										고려대학교 의예과

									</dt>
									<dd>
										러셀 대구 송지안

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu04.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0249" Then '영통 %>
							<div class="s-review">
								<p>
									매 교시 선생님들께서 바자관을 돌아다니시면서 면학 분위기를 조성해 주시는 것이 공부에 집중하는 데에 도움이 되었습니다.
								</p>
								<dl>
									<dt>
										성균관대학교 약학과

									</dt>
									<dd>
										러셀 영통 정희성

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu04.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									매 교시 선생님들이 출석 체크를 하고 
									쉬는 시간이 아닌 이상 자습관 출입이 어렵기 때문에 면학 분위기가
									흐트러지지 않았습니다.
								</p>
								<dl>
									<dt>
										서울대학교 조경&middot;지역시스템공학부

									</dt>
									<dd>
										러셀 대치 박선우

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/opti_stu04.png" alt=""></div>
							</div>
							<% End If %>
						</div>
						<!-- 설명회 및 특강 -->
						<div class="swiper-slide">
							<h5>
								다양한 최신 정보를 제공하는<br>
								설명회 및 특강

							</h5>
							<p>
								입시 특강, 전형별 설명회 등 다양한<br>
								입시 콘텐츠와 풍부하고 정확한 최신 입시 정보를<br>
								제공하고 과목별 학습법 특강 및 설명회로<br>
								시기별 상황에 맞춘 학습 가이드를 제시하여<br>
								효율적인 학습 전략 수립이 가능합니다.

							</p>
							<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_slide05.jpg" alt=""></div>
        					<% If campus_code = "CD0349" Then '울산 %>
							<div class="s-review">
								<p>
									단순한 원서 접수에 대한 이야기뿐만 아니라 수험생이 가져야 할 마음가짐이나 태도까지도 배울 수 있어 감사했습니다. 또한, 입시 전략에 대한 부담을 많이 덜어 낼 수 있어서 좋았습니다.
								</p>
								<dl>
									<dt>
										연세대 경영학과

									</dt>
									<dd>
										러셀 울산 김하은

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu05.png" alt=""></div>
							</div>
        					<% ElseIf campus_code = "CD0340" Then '코어광주 %>
							<div class="s-review">
								<p>
									재수생들과 경쟁하며 제 위치를 가늠할 수 있었고, 상위권에 들기 위해 더 열심히 공부할 수 있었습니다.
								</p>
								<dl>
									<dt>
										전남대학교 의예과

									</dt>
									<dd>
										러셀CORE 광주 정유경

									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/<%=campusName%>/2025/winter_overall/opti_stu05.png" alt=""></div>
							</div>
							<% Else %>
							<div class="s-review">
								<p>
									다양한 특강이 개설되어서 도움이 
									많이 되었습니다. 입시 전형에 관한 특강과 
									설명회 등을 들었는데 합격한 사례들을 
									바탕으로 앞으로의 공부 계획을 세우는 데에도 
									많은 도움이 됐습니다.
								</p>
								<dl>
									<dt>
										경북대학교 수의예과
									</dt>
									<dd>
										러셀 대구 안준영
									</dd>
								</dl>
								<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/opti_stu05.png" alt=""></div>
							</div>
							<% End If %>
						</div>
					</div>
				</div>
			</div>
			<p class="r-txt">
				*합격생 후기 일부 발췌
			</p>
		</div>
	</div>
	<div class="cont09">
		<div class="tit-wrap">
			<h4>
				학습 습관을 탄탄하게 만들고 <br>
				실력을 향상시키는<br>
				<strong>검증된 시기별 맞춤 콘텐츠와<br>
				집체 모의고사</strong>
			</h4>
		</div>
		<div class="inner">
			<div class="t-wrap02 type04">
				<div class="tab-navi">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							학습계획<br>
							콘텐츠
						</div>
						<div class="swiper-slide">
							OMEGA<br>
							시리즈
						</div>
						<div class="swiper-slide">
							집체 모의고사<br>
							시리즈
						</div>
						<div class="swiper-slide">
							수학 전용 실전 콘텐츠
						</div>
					</div>
				</div>
                <div class="tab-slide swiper-container">
                    <div class="swiper-wrapper">
						<!-- 학습계획 콘텐츠 -->
						<div class="swiper-slide">
							<h5>
								효과적인 학습 습관 형성을 위한<br>
								<strong>학습 계획 콘텐츠</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide01.jpg" alt="러셀 학습 플래너"></div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide02.jpg" alt="러셀 일일수학 30제"></div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide03.jpg" alt="러셀 총평노트"></div>
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<p class="r-txt">
								*학습계획 콘텐츠는 재원생 대상으로 ‘전액 지원’되며,<br>
								학원별로 콘텐츠는 상이할 수 있습니다.

							</p>
						</div>
						<!-- OMEGA 시리즈 -->
						<div class="swiper-slide">
							<h5>
								처음부터 끝까지 가장 완벽한 수능 플랜<br>
								<strong>O<span>ptimum</span> MEGA<br>
								실전 모의고사 시리즈</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide04.jpg" alt="OMEGA">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;" href="/event/omega_intro/index.asp"></a>
										</div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide05.jpg" alt="OMEGA link"></div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide06.jpg" alt="OMEGA black"></div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide07.jpg" alt="OMEGA blue"></div>
									</div>
									<div class="swiper-slide">
										<div><img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide08.jpg" alt="OMEGA weekly"></div>
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<p class="r-txt">
								*학원별로 콘텐츠는 상이할 수 있습니다.
							</p>
						</div>
						<!-- 집체 모의고사 시리즈 -->
						<div class="swiper-slide">
							<h5>
								성적 향상을 위한 핵심 발판,<br>
								‘나의 위치 파악’<br>
								<strong>전국 집체 모의고사 시리즈</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide09.jpg" alt="전국 대단위 실전 모의고사">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;" href="/event/2025/jdsm/index.asp"></a>
										</div>
									</div>
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide10.jpg" alt="메가X대성 더 프리미엄 모의고사">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;" href="/intro/2022/premium/index.asp"></a>
										</div>
									</div>
								</div>
								<div class="swiper-pagination"></div>
							</div>
							<p class="r-txt">
								*학원별로 콘텐츠는 상이할 수 있습니다.
							</p>
						</div>
						<!-- 수학 전용 실전 콘텐츠 -->
						<div class="swiper-slide">
							<h5> 
								수능 수학 실력 향상을 위한<br>
								<strong>수학 전용 실전 콘텐츠</strong>
							</h5>
							<div class="swiper-container con-slide">
								<div class="swiper-wrapper">
									<div class="swiper-slide">
										<div>
											<img src="<%=Application("img_path_russel")%>/m_russel/intro/2025/winter_overall/con_slide11.jpg" alt="ALPHA">
											<a style="width:110px;height:30px;position:absolute;bottom:35px;left:95px;"href="/event/2025/alpha/index.asp"></a>
										</div>
									</div>
								</div>
							</div>
							<p class="r-txt mt0">
								*ALPHA는 재원생 대상으로 ‘전액 지원’되며,<br>
								학원별로 콘텐츠는 상이할 수 있습니다.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>