<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
    rtnUrl = Request.Servervariables("PATH_INFO")

	apply = true
	IF curYmdhmin >= 202411131400 Then '신청/수정 마감
		apply = false
	End If

	strSql = ""
	strSql = strSql &" SELECT EM_NUM "
	strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
	strSql = strSql &" WHERE EM_TITLE LIKE '%2025 수능 실전 모의체험%' AND EM_DEL_FLG ='N' " ' 개발 - 10099

	Set objRs = russelobjdb.sqlQuery(strSql, 3)
	If Not (objRs.EoF And objRs.BoF) Then
		EM_NUM = objRs(0)
	End If
	objRs.close
	Set objRs = Nothing

	'기본 카운트 설정 수
	strSql = ""
	strSql = strSql & " SELECT SUM(CONVERT(int,ED_COUNT)) AS CNT "	
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE ED_EM_NUM = " & EM_NUM

	Set objRs = russelobjdb.sqlQuery(strSql, 1)
	If Not (objRs.EoF And objRs.BoF) Then
		addCnt = objRs("CNT")
	end if
	objRs.close
	Set objRs = Nothing

	'실제 접수자
	strSql = ""
	strSql = strSql & " SELECT COUNT(*) AS REALCNT "
	strSql = strSql & " FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
	strSql = strSql & " WHERE ED_EM_NUM = '"&EM_NUM&"' AND ED_MEM_TYPE = '1' "

	Set objRs = russelobjdb.sqlQuery(strSql, 1)
	If Not (objRs.EoF And objRs.BoF) Then
		realCnt = objRs("REALCNT")
	end if
	objRs.close
	Set objRs = Nothing
	
	function format(ByVal szString, ByVal Expression)
        If len(szString) < len(Expression) Then
            format = left(Expression, len(Expression)-len(szString)) & szString
        Else
            format = szString
        End If
    End function

    If isnull(cnt) Then
        cnt = realCnt
    End If
	
	cnt = addCnt + realCnt

	applyCnt  = format(cnt, "0000")

	If gLoginOk = True Then
        strSql = ""
        strSql = strSql &" SELECT count(*) as cnt "
        strSql = strSql &" FROM MS_EVTRUSSEL_DTL WITH(NOLOCK) "
        strSql = strSql &" WHERE ED_EM_NUM = '"&EM_NUM&"' "
	    strSql = strSql &"      AND ED_MEM_ID = '"&gLoginMemId&"'"
		strSql = strSql &"      AND ED_MEM_TYPE = '1'"

		Set objRs = russelobjdb.sqlQuery(strSql, 3)
        If Not (objRs.EoF And objRs.BoF) Then
            applyStatus = objRs(0)
        End If
        objRs.close
        Set objRs = Nothing

    Else
        applyStatus = 0
    End If

%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- #include virtual = "/inc/head.asp" -->
    <meta name="title" content="2023 러셀 수능 실전 모의체험" />
    <meta name="keywords" content="2023 러셀 수능 실전 모의체험, 수능 실전 모의체험, 수능 모의체험" />
	<meta name="description" content="수능 시험 당일, 수능 시험지로 수능 고사장과 가장 유사한 환경" />
    <link rel="stylesheet" type="text/css" href="./style.css" media="all" />
</head>

<body>
<!-- #include virtual = "/inc/header.asp" -->
<h2 class="sub-tit">
    <!-- #include virtual = "/inc/bt_back.asp" -->
    <strong class="tit">2025 수능 실전 모의체험</strong>
</h2>
<section class="sub-wrap">
	<!-- mock-wrap -->
    <div class="mock-wrap">
		<!-- visual -->
		<div class="visual">
			<p class="img-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/top_txt.gif" alt="#전국 러셀 학원 #현장 응시 #누구나 응시 가능" /></p>
			<p class="img-pen"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/img_pen.png" alt="" /></p>
			<div class="txt"><p>수능 당일<br><strong>11월 14일(목) 오후 2시</strong></p></div>
			<p class="grade">고2&middot;고1&middot;중3</p>
			<div class="data-wrap">
				<div class="data-txt"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/ico_i.jpg" alt="i"> </div>
				<div class="data-detail">
					*  국어/수학/영어/탐구 영역 시행(한국사, 제2외국어 제외) <br>
					**2014~2023년 러셀 전체학원 수능 실전 모의체험 응시자 수 기준					
				</div>
			</div>
			
			<div class="btn-wrap">
				<div>
					<a href="#scrollArea">신청안내 바로가기</a>
					<div>
						<% If curYmdhmin >= 202411131400 and applyStatus = 0 then %>
							<a onclick="fn_deadLine();">
								<strong>
									<% If applyStatus = 0 then %>
										모의체험 신청하기
									<% else %>
										모의체험 신청 확인하기
									<% end if%>
										<span><img src="<%=Application("img_path_russel")%>/intro/2024/csat/ico_hand.png" alt="" /></span>
								</strong>
							</a>
							<div class="ico-end" style="position:absolute;top:-50px;right:30px;">
								<div style="margin-top:25px; transform:rotate(-15deg); color:#d91f24;"><strong>신청 마감</strong></div>
							</div>
						<% ELSE %>
							<a onclick="fn_eventGo('write');">
								<strong>
									<% If applyStatus = 0 then %>
										모의체험 신청하기
									<% else %>
										모의체험 신청 확인하기
									<% end if%>
										<span><img src="<%=Application("img_path_russel")%>/intro/2024/csat/ico_hand.png" alt="" /></span>
								</strong>
							</a>
							
						<% END IF %>
						<% If curYmdhmin >= 202411131400 then %>
							<div class="ico-end" style="position:absolute;top:-50px;right:30px;">
								<div style="margin-top:25px; transform:rotate(-15deg); color:#d91f24;"><strong>신청 마감</strong></div>
							</div>
						<% END IF %>
					</div>
				</div>
				<ul class="l-txt list-bullet m0">
					<li>
						신청 후 응시장소 및 선택과목 변경을 원하는 경우, [신청 확인하기] 버튼을 클릭하여 <strong>11/13(수) 오후 2시까지 수정 가능합니다. </strong>
					</li>
					<li>
						<strong style="text-decoration: underline;">응시하고자 하는 학생의 ID로 신청</strong>해야 현장 응시 및 성적처리 후 성적 분석 리포트 열람이 가능합니다.
					</li>
				</ul>
			</div>
		</div>
		<!-- //visual -->

		<!-- Q1 -->
		<div class="q1-wrap">
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/tit01.jpg" alt="수능을 먼저 경험한 선배들은 왜 수능 실전 모의체험을 강력 추천할까요?" /></p>
			<div class="rv-slide-wrap">
				<div class="swiper-container rv-slide">
					<div class="swiper-wrapper">
						<div class="swiper-slide">
							<img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q01_slide02.jpg" alt="" />
						</div>
						<div class="swiper-slide">
							<img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q01_slide01.jpg" alt="" />
						</div>
					</div>
					<p class="l-txt">* 2024 러셀 수능 실전 모의체험 이벤트 내 후기 중 일부 내용 발췌</p>
					<div class="swiper-pagination type01"></div>
				</div>
			</div>
		</div>
		<!-- //Q1 -->

		<!-- Q2 -->
		<div class="q2-wrap">
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/tit02.jpg" alt="러셀 수능 실전 모의체험 미리보기" /></p>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_tit.jpg" alt="Q1. 수능 실전 모의체험, 어떻게 치러지나요?" /></p>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_img01.jpg" alt="구본류" /></p>	
			<div class="c-slide-wrap">
				<div class="swiper-container c-slide">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_slide01.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_slide02.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_slide03.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_slide04.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_slide05.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_slide06.jpg" alt="" /></div>
					</div>
				</div>
			</div>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q02_img02.jpg" alt="수능과 동일한 시험 스케줄, 수능 고사장과 가장 유사한 환경" /></p>
		</div>
		<!-- //Q2 -->
		
		<!-- Q3 -->
		<div class="q3-wrap">
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_tit.jpg" alt="Q2. 수능 실전 모의체험은 어떤 의미를 갖나요?" /></p>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_img01.jpg" alt="" /></p>	
			<div class="swiper-container st-slide">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_slide01.png" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_slide02.png" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_slide03.png" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_slide04.png" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_slide05.png" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_slide06.png" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q03_slide07.png" alt="" /></div>
				</div>
				<p class="l-txt">* 2024 러셀 수능 실전 모의체험 이벤트 내 후기 중 일부 내용 발췌</p>
				<div class="swiper-pagination type02"></div>
			</div>
		</div>
		<!-- //Q3 -->

		<!-- Q4 -->
		<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_tit.jpg" alt="Q3. 수능 실전 모의체험 응시자에게는 어떤 혜택이 있나요?" /></p>
		<div class="box-tab">
			<div class="t-bt">
				<a href="#" class="tab-link on" data-tab="1"><span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_bt01.jpg" alt="특별 장학 혜택" /></span></a>
				<a href="#" class="tab-link" data-tab="2"><span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_bt02.jpg" alt="응시생 대상 설명회" /></span></a>
				<a href="#" class="tab-link" data-tab="3"><span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_bt03.jpg" alt="성적 분석 리포트" /></span></a>
			</div>
			<div class="t-cont on" id="tab-content-1">
				<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_tab01.jpg" alt="장학 혜택 지원 과정" /></p>
			</div>
			<div class="t-cont slide-area" id="tab-content-2">
				<div class="swiper-container t-slide t-02">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_slide2_1.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_slide2_2.jpg" alt="" /></div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
			<div class="t-cont slide-area" id="tab-content-3">
				<div class="swiper-container t-slide t-03">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_slide3_1.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_slide3_2.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q04_slide3_3.jpg" alt="" /></div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</div>
		<!-- //Q4 -->

		<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/q05_tit.jpg" alt="실제 수능 당일, 실제 수능의 현장감을 그대로 전국 러셀 학원 동시 시행" /></p>
		<div class="map-area">
			<!-- 각 지역 입결 지도 -->
			<!-- #include virtual = "/intro/2024/csat/map.asp" -->
			<!-- //각 지역 입결 지도 -->
			<a href="javascript:window.open('/intro/2024/csat/pop_map.asp','popup_mock','scrollbars=yes,width=720,height=900')" class="map-banner">학원 위치 자세히 보기</a>
		</div>

		<!-- <a href="javascript:window.open('/intro/2024/csat/pop_map.asp','popup_mock','scrollbars=yes,width=720,height=900')" class="map-banner">
			<img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/map_banner.jpg" alt="집에서 가까운 러셀학원 어디서든 2024 수능 실전 모의체험이 가능합니다. 학원 위치 자세히 보기" />
		</a> -->


		<!-- 온라인 신청 및 응시 안내 -->
		<p class="img" id="scrollArea"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/tit03.jpg" alt="러셀 수능 실전 모의체험 신청 및 응시 안내" /></p>
		<div class="info-tab">
			<!-- <img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/tab02_bt01.jpg" alt="현장 응시 안내" /> -->
			<div class="info-cont on">
				<table class="tbl-type01">
					<colgroup>
						<col style="width:15%" />
						<col style="width:80%" />
					</colgroup>
					<thead>
						<tr>
							<th>구분</th>
							<th><strong>현장</strong> 응시 안내</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th><b>대상</b></th>
							<td>실제 수능 시험을 미리 경험해보고 싶은 현재 고2 수험생<br>
								<span class="color-gray-03 f12">※ 현재 중3, 고1 학생도 신청 가능하며, 현장에서는 별도 응시장소에서 진행합니다. (*러셀 대치는 고2만 신청 가능)</span></td>
						</tr>
						<tr>
							<th><b>일시</b></th>
							<td><strong>2024년 11월 14일(목)  오후 2시</strong><br><span class="color-red">※ 11월 13일(수) 오후 2시 신청마감 ※</span></td>
						</tr>
						<tr>
							<th><b>응시료</b></th>
							<td>전액 지원</td>
						</tr>
						<tr>
							<th><b>신청 방법</b></th>
							<td>
								<ul class="list-dot">
									<li>러셀 학원 사이트 가입 후 <u>온라인으로만 신청 가능</u>합니다. 
										<% IF curYmdhmin <= 202411131400 Then%>
											<a onclick="fn_eventGo('write');">[신청하기]</a>
										<% ELSE %>
											<a onclick="fn_deadLine();">[신청하기]</a>
										<% END IF %>
									</li>
									<li>러셀 학원 사이트 신규 회원 신청안내 : <a <%if gLoginOk = true then%> onClick="alert('이미 로그인하였습니다.')" <%else%> href="https://mcampus.megastudy.net/member/join.asp" <%end if%>>회원가입</a> → 로그인 → [신청하기] 버튼 클릭 → 신청서 작성 → 제출 → 신청 완료</li>
								</ul>
								<ul class="list-bullet m0">
									<li>응시장소 및 선택과목 변경이 필요한 경우 상단 [신청 확인하기] 버튼을 클릭하여 <u class="color-red">11/13(수) 오후 2시까지 변경 가능</u>합니다.</li>
									<li><u class="color-red">응시하고자 하는 학생의 ID로 신청</u>해야 현장 응시 및 성적처리 후 성적 분석 리포트 열람이 가능합니다.</li>
									<li><u class="color-red">부모님 또는 타인의 ID로 신청할 경우 현장 응시가 제한</u>되거나 정상적인 모의체험 이용이 불가합니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th><b>장소</b></th>
							<td>러셀 강남, 대치, 목동, 부천, 분당, 영통, 중계, 평촌, 대구, 센텀, 울산<br>
							러셀CORE 광주, 대전, 원주, 전주, 창원, 청주
							<br>
							<a href="javascript:window.open('/intro/2024/csat/pop_map.asp','popup_mock','scrollbars=yes,width=720,height=900')" class="color-gray-02">[장소 자세히 보기]</a></td>
						</tr>
						<tr>
							<th><b>준비물</b></th>
							<td>신분증, 컴퓨터용 사인펜, 개인 도시락(저녁)</td>
						</tr>
						<tr>
							<th><b>시험<br>시간표</b></th>
							<td>
								<table class="tbl-type01 tbl-center">
									<colgroup>
										<col style="width:17%">
										<col style="width:17%">
										<col style="width:23%">
										<col style="width:43%">
									</colgroup>
									<thead class="sub-thead">
										<tr>
											<th>교시</th>
											<th>과목</th>
											<th>문항 수</th>
											<th>시험시간</th>
										</tr>
									</thead>
									<tbody class="sub-tbody">
										<tr>
											<th><b>1교시</b></th>
											<td><b>국어</b></td>
											<td>45문항</td>
											<td>14:30 ~ 15:50 (80분)</td>
										</tr>
										<tr>
											<th><b>2교시</b></th>
											<td><b>수학</b></td>
											<td>30문항</td>
											<td>16:20 ~ 18:00 (100분)</td>
										</tr>
										<tr>
											<th colspan="3"><b>저녁시간</b></th>
											<td>18:00 ~ 19:00 (60분)</td>
										</tr>
										<tr>
											<th><b>3교시</b></th>
											<td><b>영어</b></td>
											<td>45문항</td>
											<td>19:20 ~ 20:30 (70분)</td>
										</tr>
										<tr>
											<th><b>4교시</b></th>
											<td><b>탐구</b></td>
											<td>각 20문항 (2과목)</td>
											<td>21:00 ~ 22:00 (60분)</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<th><b>응시<br>후<br>성적<br>공개<br>일정</b></th>
							<td>
								<ul class="list-dot">
									<li><strong>11/15(금) : 성적분석 리포트 내 등급컷, 해설강의 오픈</strong></li>
									<li><strong>11/20(수) : 성적분석 리포트 내 가채점 성적통지표 오픈</strong></li>
									<li><strong>12/10(화) : 성적분석 리포트 내 실채점 성적통지표 오픈</strong></li>
								</ul>
								<ul class="list-bullet mt0">
									<li>위 일정은 학원 사정에 따라 변경 될 수 있습니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th><b>유의사항</b></th>
							<td>
								<ul class="list-dot">
									<li>시험장에는 <strong>오후 2시까지 입실</strong>해주세요.</li>
									<li>입실 후 시험장 외부 출입이 불가합니다. (저녁식사 지참 必)</li>
									<li>한국사는 별도 시험 진행없이, 시험지만 제공됩니다.</li>
									<li>학원별 예약 인원 초과 시, 사전 마감될 수 있습니다.</li>
								</ul>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<!-- <div class="info-cont">
			</div> -->
		</div>
		<!-- 온라인 신청 및 응시 안내 -->

		<!-- box-danka -->
		<div class="box-danka">
			<a href="/intro/2024/winter/index.asp" class="box-go"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/banner_goto.jpg" alt="" /></a>
		</div>
		<!-- //box-danka -->
		<div class="apply-campus-info">
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2024/csat/tit04.jpg" alt="" /></p>
			<!--학원별 모집안내-->
			<!-- #include virtual = "/inc/campus_list_link.asp" -->
			<!--//학원별 모집안내-->
		</div>
        <p><a href="<%=pc_url%>intro/2024/csat/apply.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
  </div>
	<!-- //mock-wrap -->
</section>
<!-- #include virtual = "/inc/footer.asp" -->
<script type="text/javascript" src="./ui.js"></script>
<script>
	function fn_eventGo(flg){
    	var flg = flg;
    
		if(flg == "write"){
    
			<% If gLoginOk = false Then %>
            	alert("로그인 후 이용 가능합니다.");
				location.href="/member/login.asp?rtnUrl=%2Fintro%2F2024%2Fcsat%2Fapply%2Easp%3F"
				return;
			<% End If %>

    		if ('<%=applyStatus%>' == "0"){
				alert("반드시 응시하고자 하는 학생의 ID로 신청하시기 바랍니다.");
            	window.open('/intro/2024/csat/pop_apply.asp','popup_mock','scrollbars=yes,width=680,height=900');
            	return;
        	} else {
            	window.open('/intro/2024/csat/pop_view.asp','popup_mock','scrollbars=yes,width=650,height=700');
            	return;
        	}
    	} 

		else if(flg == "modify"){
			<% If gLoginOk = false Then %>
            	alert("로그인 후 이용 가능합니다.");
				location.href="/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fcsat%2Fapply%2Easp%3F"
				return;
			<% End If %>
		
			if ('<%=applyStatus%>' == "0"){
				alert("수능 실전 모의체험 신청 확인은 사전 신청자만 이용가능합니다.");
				return;
        	} else {
            	window.open('/intro/2024/csat/pop_view.asp','popup_mock','scrollbars=yes,width=720,height=900');
            	return;
        	}
		}
		
		else if(flg == "end"){
        	alert("마감되었습니다.");
    	}
	}

	function fn_deadLine(){
		alert("수능 실전 모의체험 신청이 마감되었습니다.");
	}

</script>
</body>
</html>