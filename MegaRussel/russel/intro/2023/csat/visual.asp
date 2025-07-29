<!-- visual -->
<div class="visual">
	<p class="visual-bg"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/v-bg02.jpg" alt="" /></p>
	<div class="v-inner">
		<p class="top-txt"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/top_txt.gif" alt="" /></p>
		<p class="v-txt01"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/v_txt01.png" alt="2023 러셀" /></p>
		<p class="ico-grade"><span>고2  ·고1 · 중3</span></p>
		<p class="v-txt02"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/v_txt02.png" alt="수능 실전 모의체험" /></p>
		<p class="date"><strong>2024학년도 <span>수능 당일</span> 11월 16일(목) 오후 2시</strong></p>
		<p class="ico-pen"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/ico_pen.png" alt="" /></p>
		<p class="ico-event"><img src="<%=Application("img_path_russel")%>/intro/2023/csat/ico_event.png" alt="" /></p>
		<div class="v-txt03">
			<img src="<%=Application("img_path_russel")%>/intro/2023/csat/v_txt03.png" alt="러셀 수능 실전 모의체험이란, 수능 시험 당일, 수능 문항으로 수능 고사장과 가장 유사한 환경에서 수능 전 영역*을 미리 경험해 볼 수 있는 누적 1만명** 이상의 선배들이 직접 체험한 프로그램입니다. " />
			<!-- 주석 -->
			<div class="info-stxt">
				<div class="data-view">
					* 국어/수학/영어/탐구 영역 시행(한국사, 제2외국어 제외)<br>** 2014~2022년 러셀 전체학원 수능 실전 모의체험 응시자 수 기준           
				</div>
			</div>
		</div>
		<div class="btn-wrap02">
			<div>
				<a href="#scrollArea">신청안내 바로가기</a>
				<div>
					<% If curYmdhmin >= 202311151400 and applyStatus = 0 then %>
						<a href="javascript:fn_eventGo('write');"> 
						<!--<a href="javascript:fn_deadLine();"> 2024.08 웹기획팀 확인 위해 신청하기 팝업 이동되도록 변경 -->
							<strong>
								<% If applyStatus = 0 then %>
									모의체험 신청하기
								<% else %>
									모의체험 신청 확인하기
								<% end if%>
									<span><img src="<%=Application("img_path_russel")%>/intro/2023/csat/ico_hand.png" alt="" /></span>
							</strong>
						</a>
						<div class="ico-end" style="position:absolute;top:-50px;right:30px;"><div><strong>신청 마감</strong></div></div>
					<% ELSE %>
						<a href="javascript:fn_eventGo('write');">
							<strong>
								<% If applyStatus = 0 then %>
									모의체험 신청하기
								<% else %>
									모의체험 신청 확인하기
								<% end if%>
									<span><img src="<%=Application("img_path_russel")%>/intro/2023/csat/ico_hand.png" alt="" /></span>
							</strong>
						</a>
						<% If curYmdhmin >= 202311151400 then %>
							<div class="ico-end" style="position:absolute;top:-50px;right:30px;"><div><strong>신청 마감</strong></div></div>
						<% END IF %>
					<% END IF %>
				</div>
			</div>
			<ul class="l-txt">
				<li>※ 신청 후 응시장소 및 선택과목 변경을 원하는 경우,   [신청 확인하기] 버튼을 클릭하여 <strong>11/15(수) 오후 2시까지 수정 가능합니다. </strong>
				</li>
				<li><strong>※ 응시하고자 하는 학생의 ID로 신청</strong>해야 현장 응시 및 성적처리 후 성적 분석 리포트 열람이 가능합니다.</li>
			</ul>
		</div>
	</div>
</div>
<!-- //visual -->
<!-- Tab btn -->

<%	
	isStr_apply = 0
	isStr_exam = 0
	isStr_report = 0

	apply_class_on = false
	exam_class_on = false
	report_class_on = false
	
	rtnUrl = Request.Servervariables("PATH_INFO")
	
	isStr_apply = instr(rtnUrl,"apply")
	isStr_exam = instr(rtnUrl,"exam")
	isStr_report = instr(rtnUrl,"report")

	if isStr_apply > 0 then
		apply_class_on = true
	end if

	if isStr_exam > 0 then
		exam_class_on = true
	end if

	if isStr_report > 0 then
		report_class_on = true
	end if
%>

<script>
	function fn_deadLine(){
		alert("수능 실전 모의체험 신청이 마감되었습니다.");
	}
</script>
<!-- //Tab btn -->
