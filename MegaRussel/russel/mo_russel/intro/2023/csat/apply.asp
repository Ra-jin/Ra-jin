<!-- #include virtual="/Public/Method.asp" -->
<!-- #include virtual="/Public/class.Mssql.asp" -->
<!-- #include virtual="/member/inc/member.asp" -->
<%
    rtnUrl = Request.Servervariables("PATH_INFO")

	apply = true
	IF curYmdhmin >= 202311151400 Then '신청/수정 마감
		apply = false
	End If

	strSql = ""
	strSql = strSql &" SELECT EM_NUM "
	strSql = strSql &" FROM MS_EVTRUSSEL_MAS WITH(NOLOCK) "
	strSql = strSql &" WHERE EM_TITLE LIKE '%2024 수능 실전%' AND EM_DEL_FLG ='N' "

	Set objRs = russelobjdb.sqlQuery(strSql, 3)
	If Not (objRs.EoF And objRs.BoF) Then
		EM_NUM = objRs(0)
	End If
	objRs.close
	Set objRs = Nothing

	if EM_NUM = "" OR IsNull(EM_NUM) Then
		Response.Write "<script type='text/javascript'>alert('잘못된 접근입니다.');history.go(-1);</script>"
		Response.End
	End If

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
    <strong class="tit">2024 수능 실전 모의체험</strong>
</h2>
<section class="sub-wrap">
	<!-- mock-wrap -->
    <div class="mock-wrap">
		<!-- visual -->
		<div class="visual">
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/visual.jpg" alt="2024 러셀 고2,고1,중3 수능 실전 모의체험" /></p>
			<p class="img-top"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/top_txt.gif" alt="#전국 러셀 학원 #현장 응시 #누구나 응시 가능" /></p>
			<p class="img-pen"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/img_pen.png" alt="" /></p>
			<div class="txt"><p><strong>2024학년도</strong> 수능 당일<br><strong>11월 16일(목) 오후 2시</strong></p></div>

			<div class="data-wrap">
				<div class="data-txt">데이터 산출 기준 <img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/ico_i.png" alt="i"> </div>
				<div class="data-detail">
				*  국어/수학/영어/ 탐구 영역 시행(한국사, 제2외국어 제외)<br>
				**2014~2022년 러셀 전체학원 수능 실전 모의체험 응시자 수 기준
				</div>
			</div>

			<div class="btn-wrap">
				<div>
					<a href="#scrollArea">신청안내 바로가기</a>
					<div>
						<% If curYmdhmin >= 202311151400 and applyStatus = 0 then %>
							<a onclick="fn_deadLine();">
								<strong>
									<% If applyStatus = 0 then %>
										모의체험 신청하기
									<% else %>
										모의체험 신청 확인하기
									<% end if%>
										<span><img src="<%=Application("img_path_russel")%>/intro/2023/csat/ico_hand.png" alt="" /></span>
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
										<span><img src="<%=Application("img_path_russel")%>/intro/2023/csat/ico_hand.png" alt="" /></span>
								</strong>
							</a>
							<% If curYmdhmin >= 202311151400 then %>
								<div class="ico-end" style="position:absolute;top:-50px;right:30px;">
									<div style="margin-top:25px; transform:rotate(-15deg); color:#d91f24;"><strong>신청 마감</strong></div>
								</div>
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
		<!-- //visual -->

		<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/tit01.jpg" alt="실제 수능 당일, 실제 수능의 현장감을 그대로 전국 러셀 학원 동시 시행" /></p>
		<div class="inner">
			<!-- 지도 loop -->
			<div class="map-wrap">
				<ul class="map-txt">
					<li class="gn on">러셀 강남</li>
					<li class="dc">러셀 대치</li>
					<li class="md">러셀 목동</li>
					<li class="bc">러셀 부천</li>
					<li class="bd">러셀 분당</li>
					<li class="yt">러셀 영통</li>
					<li class="jg">러셀 중계</li>
					<li class="pc">러셀 평촌</li>
					<li class="dg">러셀 대구</li>
					<li class="ct">러셀 센텀</li>
					<li class="us">러셀 울산</li>
					<li class="core-gj">러셀CORE 광주</li>
					<li class="core-dj">러셀CORE 대전</li>
					<li class="core-wj">러셀CORE 원주</li>
					<li class="core-jj">러셀CORE 전주</li>
					<li class="core-cw">러셀CORE 창원</li>
					<li class="core-cj">러셀CORE 청주</li>
				</ul>
				<ul class="map-img">
					<li class="gn on">러셀<br>
						강남</li>
					<li class="dc">러셀<br>
						대치</li>
					<li class="md">러셀 목동</li>
					<li class="bc">러셀 부천</li>
					<li class="bd">러셀 분당</li>
					<li class="yt">러셀 영통</li>
					<li class="jg">러셀 중계</li>
					<li class="pc">러셀 평촌</li>
					<li class="dg">러셀 대구</li>
					<li class="ct">러셀 센텀</li>
					<li class="us">러셀 울산
						<!-- <span class="flag-txt"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/flag_us_1.jpg" alt="" /></span> -->
					</li>
					<li class="core-gj">러셀CORE 광주</li>
					<li class="core-dj">러셀CORE 대전</li>
					<li class="core-wj">러셀CORE 원주</li>
					<li class="core-jj">러셀CORE 전주</li>
					<li class="core-cw">러셀CORE <br>
						창원</li>
					<li class="core-cj">러셀CORE 청주</li>
				</ul>
			</div>
			<!-- //지도 loop -->
			<a href="javascript:window.open('/intro/2023/csat/pop_map.asp','popup_mock','scrollbars=yes,width=720,height=900')" class="map-banner">
				<img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/map_banner.jpg" alt="집에서 가까운 러셀학원 어디서든 2024 수능 실전 모의체험이 가능합니다. 학원 위치 자세히 보기" />
			</a>
		</div>

		<!-- //수능, 미리 경험하면 다릅니다 -->

		<!-- Q1 -->
		<div class="q1-wrap">
			<p class="img mt40"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/tit02.jpg" alt="러셀 수능 실전 모의체험 미리보기" /></p>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q01_tit.jpg" alt="Q1. 수능 실전 모의체험, 어떻게 치러지나요?" /></p>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q01_img01.jpg" alt="구본류" /></p>
			<div class="c-slide-wrap">
			<div class="swiper-container c-slide">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q01_slide01.jpg" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q01_slide02.jpg" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q01_slide03.jpg" alt="" /></div>
					</div>
				</div>
			</div>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q01_img02.jpg" alt="수능과 동일한 시험 스케줄, 수능 고사장과 가장 유사한 환경" /></p>
		</div>
		<!-- //Q1 -->

		<!-- Q2 -->
		<div class="q2-wrap">
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q02_tit.jpg" alt="Q2. 수능 실전 모의체험은 어떤 의미를 갖나요?" /></p>
			<div class="swiper-container st-slide">
				<div class="swiper-wrapper">
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q02_slide01.jpg" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q02_slide02.jpg" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q02_slide03.jpg" alt="" /></div>
					<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q02_slide04.jpg" alt="" /></div>
				</div>
				<p class="l-txt">* 2023 러셀 수능 실전 모의체험 이벤트 내 후기 중 일부 내용을 발췌하였습니다.
				</p>
				<div class="swiper-pagination"></div>
			</div>
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q02_img01.jpg" alt="수능 실전 모의체험 성적 분석 리포트" /></p>
		</div>
		<!-- //Q2 -->

		<!-- Q3 -->
		<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_tit.jpg" alt="Q3. 수능 실전 모의체험 응시자에게는 어떤 혜택이 있나요?" /></p>
		<div class="box-tab">
			<div class="t-bt">
				<a href="#" class="on"><span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_bt01.jpg" alt="특별 장학 혜택" /></span></a>
				<a href="#"><span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_bt02.jpg" alt="응시생 대상 설명회" /></span></a>
				<a href="#"><span><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_bt03.jpg" alt="성적 분석 리포트" /></span></a>
			</div>
			<div class="t-cont on">
				<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_tab01.jpg" alt="장학 혜택 지원 과정" /></p>
			</div>
			<div class="t-cont"><p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_tab02.jpg" alt="설명회" /></p></div>
			<div class="t-cont slide-area">
				<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_tab03.jpg" alt="" /></p>
				<div class="swiper-container t-slide">
					<div class="swiper-wrapper">
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_slide01.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_slide02.jpg" alt="" /></div>
						<div class="swiper-slide"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/q03_slide03.jpg" alt="" /></div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</div>
		<!-- //Q3 -->
		<!-- 온라인 신청 및 응시 안내 -->
		<p class="img" id="scrollArea"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/tit03.jpg" alt="러셀 수능 실전 모의체험 신청 및 응시 안내" /></p>
		<div class="info-tab">
			<div class="info-bt">
				<a href="#" class="on"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/tab02_bt01.jpg" alt="현장 응시 안내" /></a>
				<!-- <a href="#"></a> -->
			</div>
			<div class="info-cont on">
				<table class="tbl-type01">
					<colgroup>
						<col style="width:15%" />
						<col style="width:80%" />
					</colgroup>
					<tbody>
						<tr>
							<th>대상</th>
							<td>실제 수능 시험을 미리 경험해보고 싶은 현재 고2 수험생<br>
								<span class="color-gray-03 f12">※ 현재 중3, 고1 학생도 신청 가능하며, 현장에서는 별도 응시장소에서 진행합니다. (*러셀 대치는 고2만 신청 가능합니다.)</span></td>
						</tr>
						<tr>
							<th>일시</th>
							<td><strong>2023년 11월 16일(목)  오후 2시 30분</strong><br><span class="color-red">※ 11월 15일(수) 오후 2시 신청마감 ※</span></td>
						</tr>
						<tr>
							<th>응시료</th>
							<td>전액 지원</td>
						</tr>
						<tr>
							<th>신청 방법</th>
							<td>
								<ul class="list-dot">
									<li>러셀 학원 사이트 가입 후 <u>온라인으로만 신청 가능</u>합니다.
										<% IF curYmdhmin <= 202311151400 Then%>
											<a onclick="fn_eventGo('write');">[신청하기]</a>
										<% ELSE %>
											<a onclick="fn_deadLine();">[신청하기]</a>
										<% END IF %>
									</li>
									<li>러셀 학원 사이트 신규 회원 신청안내 : <a <%if gLoginOk = true then%> onClick="alert('이미 로그인하였습니다.')" <%else%> href="https://mcampus.megastudy.net/member/join.asp" <%end if%>>회원가입</a> → 로그인 → [신청하기] 버튼 클릭 → 신청서 작성 → 제출 → 신청 완료</li>
								</ul>
								<ul class="list-bullet m0">
									<li>응시장소 및 선택과목 변경이 필요한 경우 상단 [신청 확인하기] 버튼을 클릭하여 <u class="color-red">11/15(수) 오후 2시까지 변경 가능</u>합니다.</li>
									<li><u class="color-red">응시하고자 하는 학생의 ID로 신청</u>해야 현장 응시 및 성적처리 후 성적 분석 리포트 열람이 가능합니다.
										</li>
									<li><u class="color-red">부모님 또는 타인의 ID로 신청할 경우 현장 응시가 제한</u>되거나 정상적인 모의체험 이용이 불가합니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>장소</th>
							<td>러셀 강남, 대치, 목동, 부천, 분당, 영통, 중계, 평촌, 대구, 센텀, 울산<br>
							러셀CORE 광주, 대전, 원주, 전주, 창원, 청주
							<br>
							<a href="javascript:window.open('/intro/2023/csat/pop_map.asp','popup_mock','scrollbars=yes,width=720,height=900')" class="color-gray-02">[장소 자세히 보기]</a></td>
						</tr>
						<tr>
							<th>준비물</th>
							<td>신분증, 컴퓨터용 사인펜, 개인 도시락(저녁)</td>
						</tr>
						<tr>
							<th>시험<br>시간표</th>
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
											<th>1교시</th>
											<td>국어</td>
											<td>45문항</td>
											<td>14:30 ~ 15:50 (80분)</td>
										</tr>
										<tr>
											<th>2교시</th>
											<td>수학</td>
											<td>30문항</td>
											<td>16:20 ~ 18:00 (100분)</td>
										</tr>
										<tr>
											<th colspan="3">저녁시간</th>
											<td>18:00 ~ 19:00 (60분)</td>
										</tr>
										<tr>
											<th>3교시</th>
											<td>영어</td>
											<td>45문항</td>
											<td>19:20 ~ 20:30 (70분)</td>
										</tr>
										<tr>
											<th>4교시</th>
											<td>탐구</td>
											<td>각 20문항 (2과목)</td>
											<td>21:00 ~ 22:00 (60분)</td>
										</tr>
									</tbody>
								</table>
							</td>
						</tr>
						<tr>
							<th>응시<br>
							후<br>
							성적<br>
							공개<br>
							일정</th>
							<td>
								<ul class="list-dot">
									<li><strong>11/17(금) : 성적분석 리포트 내 등급컷, 해설강의 오픈</strong></li>
									<li><strong>11/22(수) : 성적분석 리포트 내 가채점 성적통지표 오픈</strong></li>
									<li><strong>12/12(화) : 성적분석 리포트 내 실채점 성적통지표 오픈</strong></li>
								</ul>
								<ul class="list-bullet mt0">
									<li>위 일정은 학원 사정에 따라 변경 될 수 있습니다.</li>
								</ul>
							</td>
						</tr>
						<tr>
							<th>유의사항</th>
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
			<a href="/intro/2023/winter/index.asp" class="box-go">
				<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/banner_winter.jpg" alt="" /></p>
				<div class="box-gray">
					<div class="gray-in">
						<div>
							올바른 학습 습관<br>탄탄한 실력 형성<br><strong>단과&amp;자습&amp;관리</strong>
						</div>
					</div>

					<div class="gray-in">
						<div>
							12월 5주부터<br>순차 개강<br><strong>현재 모집 중</strong>
						</div>
					</div>
				</div>
			</a>
		</div>
		<!-- //box-danka -->
		<div class="apply-campus-info">
			<p class="img"><img src="<%=Application("img_path_russel")%>/m_russel/intro/2023/csat/tit04.jpg" alt="" /></p>
			<!--학원별 모집안내-->
			<!-- #include virtual = "/inc/campus_list_link.asp" -->
			<!--//학원별 모집안내-->
		</div>
        <p><a href="<%=pc_url%>intro/2023/csat/apply.asp" target="_blank" class="bt-pc">PC페이지로 이동</a></p>
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
            	alert("로그인 후 신청 가능합니다.");
				location.href="/member/login.asp?rtnUrl=%2Fintro%2F2023%2Fcsat%2Fapply%2Easp%3F"
				return;
			<% End If %>

    		if ('<%=applyStatus%>' == "0"){
				alert("반드시 응시하고자 하는 학생의 ID로 신청하시기 바랍니다.");
            	window.open('/intro/2023/csat/pop_apply.asp','popup_mock','scrollbars=yes,width=680,height=900');
            	return;
        	} else {
            	window.open('/intro/2023/csat/pop_view.asp','popup_mock','scrollbars=yes,width=650,height=700');
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
            	window.open('/intro/2023/csat/pop_view.asp','popup_mock','scrollbars=yes,width=720,height=900');
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